----------------------------------------------------------------------------------
-- Company: IHP
-- Engineer: Nicola Miglioranza
-- 
-- Create Date:
-- Design Name: 
-- Module Name: Pipelined_Polyphase_Filter - RTL
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pipelined_Polyphase_Filter is
    Generic(
        DATA_WIDTH          : integer := 16;    
        CONVERSION_FACTOR   : integer := 4; --Upsampling factor
        FILTER_TAPS         : integer := 16; --Number of coefficients 
        DECIMATION_FILTER   : boolean := false  
    );
    Port (
        clk             : in std_logic;
        reset           : in std_logic;
        input_I         : in std_logic_vector(DATA_WIDTH-1 downto 0);
        input_Q         : in std_logic_vector(DATA_WIDTH-1 downto 0);
        data_in_ready   : in std_logic ;
        data_in_valid   : in std_logic ;
--        data_in_last    : in std_logic ;
        data_out_ready  : out std_logic ;
        data_out_valid  : out std_logic ;       
        data_out_I      : out std_logic_vector(15 downto 0) := (others => '0') ;
        data_out_Q      : out std_logic_vector(15 downto 0) := (others => '0')      
--        data_out_last   : out std_logic 
    );
end Pipelined_Polyphase_Filter;

architecture RTL of Pipelined_Polyphase_Filter is



type mul_reg_array is array (0 to FILTER_TAPS-1) of signed(35 downto 0);
signal mul_reg_I ,mul_reg_Q : mul_reg_array :=(others=>(others=>'0'));

signal tmp : integer := 0 ;

type reg_array is array (0 to CONVERSION_FACTOR-1) of signed(15 downto 0);
signal coeff_reg  : reg_array :=(others=>(others=>'0'));

signal data_input_I,data_input_Q: signed(Data_Width-1 downto 0) := (others=>'0');
 
signal delay    : std_logic := '0';
-- Filter coeffs
type coefficients is array(15 downto 0) of signed(15 downto 0);
constant coeff : coefficients := (
    x"6AAA", x"5555", x"2666", x"2000", x"1999", x"1333", x"0CCD", x"4000",
    x"4000", x"0CCD", x"1333", x"1999", x"2000", x"2666", x"5555", x"6AAA"
 );


begin 


--------------------------------------------------------------------------------
-- Filtering Process
--------------------------------------------------------------------------------
process(clk,reset)

    variable phase_counter   : integer range 0 to CONVERSION_FACTOR := 0; 
    variable filter_counter  : integer := 0 ;
    variable tmp_I,tmp_Q     : std_logic_vector(15 downto 0) := (others => '0') ;
begin

    
    if reset = '1'then
        mul_reg_I         <= (others => (others=> '0'));  
        coeff_reg       <= (others => (others=> '0'));        
        data_out_valid  <= '0';
        data_out_ready  <= '0' ;
--        data_out_last   <= '0' ;
        filter_counter  :=  0 ;  
        phase_counter   :=  0 ;
        
    elsif rising_edge (clk) then  
--            if data_in_ready = '1' and data_in_valid = '1'  then
if data_in_ready = '1'then 
     data_out_ready  <= '1' ;
   if data_in_valid = '1' then  
--              if delay = '0' then
--                 delay <= '1';
                              
                  if  phase_counter < CONVERSION_FACTOR-1  then
                      data_out_ready  <= '0' ;
                      data_input_I  <= signed(input_I) ; 
                      data_input_Q  <= signed(input_Q) ; 
                  elsif phase_counter = CONVERSION_FACTOR  then
                      data_out_ready     <= '1' ;
                      phase_counter :=  0 ;
                      data_input_I   <= signed(input_I) ; 
                      data_input_Q   <= signed(input_Q) ;  
                  end if ;
                        
                -- Filter loops
                for k in 0 to CONVERSION_FACTOR-1 loop                  -- Phase loop
                    for i in 0 to ((FILTER_TAPS/CONVERSION_FACTOR) -1 ) loop                 -- Sub-phase loop
                                                   
             
                        -- Coefficients
--                        coeff_reg(i) <= coeff( i*CONVERSION_FACTOR + phase_counter) & x"0000";
                                     coeff_reg(i) <= coeff( i*CONVERSION_FACTOR + phase_counter) ;

--                    N
 -- Filtering :x[n] = ∑ x[i]*h[n - L*i]
 --                   i 
                        -- Multiplication  
                        if i = (FILTER_TAPS/CONVERSION_FACTOR) -1 then        
                            mul_reg_I( i*CONVERSION_FACTOR + CONVERSION_FACTOR-1 ) <= data_input_I * coeff_reg(i) & "0000";
                            mul_reg_Q(i*CONVERSION_FACTOR + CONVERSION_FACTOR-1 ) <= data_input_Q * coeff_reg(i)  & "0000" ;
                        else
                             mul_reg_I( i*CONVERSION_FACTOR + CONVERSION_FACTOR-1 ) <=  data_input_I * coeff_reg(i) + mul_reg_I( (i+1)*CONVERSION_FACTOR );
                             mul_reg_Q( i*CONVERSION_FACTOR + CONVERSION_FACTOR-1 ) <= data_input_Q *  coeff_reg(i) + mul_reg_Q( (i+1)*CONVERSION_FACTOR );
                        end if;
                        
                        -- Pipeline shifting
                        if k < CONVERSION_FACTOR-1 then
        
                            mul_reg_I( i*CONVERSION_FACTOR + k ) <= mul_reg_I( i*CONVERSION_FACTOR + k + 1);
                            mul_reg_Q( i*CONVERSION_FACTOR + k ) <= mul_reg_Q( i*CONVERSION_FACTOR + k + 1);
                        end if;            
                    end loop;          
                end loop;
    --        data_out_I<= std_logic_vector( mul_reg(0)(DATA_WIDTH -1 downto 0)); --Data truncation from 64 to 32 bits
                tmp_I := std_logic_vector(mul_reg_I(0)(DATA_WIDTH -1 downto 0));
                tmp_Q := std_logic_vector(mul_reg_Q(0)(DATA_WIDTH -1 downto 0));
                data_out_I <= tmp_I ;
                data_out_Q <= tmp_Q ;
                data_out_valid <= '1' ;  
                tmp <= tmp + 1 ;         
                phase_counter := phase_counter + 1; 
--           else  
--            delay <= '0';
   else 
                   data_out_valid <= '0' ;
       end if   ;   
               
--           if data_in_last = '1'  then
--              filter_counter :=   filter_counter + 1 ;
--                if  filter_counter <= CONVERSION_FACTOR then   
--                        tmp_I := std_logic_vector(mul_reg_I(filter_counter-1)(31 downto 16));
--                        tmp_Q := std_logic_vector(mul_reg_Q(filter_counter-1)(31 downto 16)) ;
--                        data_out <= (tmp_I & tmp_Q);
--                        data_out_valid <= '1' ;    
--                    else     
                                  
--                        data_out_last   <= '1' ;                  
--                        data_out_valid <= '0' ;
--                end if ;
--            else 
--                    data_out_last   <= '0' ;   
--   end if ;

 else 
    data_out_ready <= '0';
    data_out_valid <= '0';
                          
 end if ;
end if ; 
end process;

end RTL;
