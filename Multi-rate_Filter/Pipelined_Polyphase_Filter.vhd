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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pipelined_Polyphase_Filter is
    Generic(
        DATA_WIDTH          : integer := 32;    
        CONVERSION_FACTOR   : integer := 4; --Upsampling factor
        FILTER_TAPS         : integer := 16; --Number of coefficients 
        DECIMATION_FILTER   : boolean := false  
    );
    Port (
        clk             : in std_logic;
        reset           : in std_logic;
        data_i          : in std_logic_vector(DATA_WIDTH-1 downto 0);
        control_ready   : in std_logic ;
        in_valid        : in std_logic ;
        data_in_last    : in std_logic ;
        out_ready       : out std_logic ;
        out_valid       : out std_logic ;       
        data_o          : out std_logic_vector(DATA_WIDTH-1 downto 0) ;
        data_out_last   : out std_logic 
    );
end Pipelined_Polyphase_Filter;

architecture RTL of Pipelined_Polyphase_Filter is



type mul_reg_array is array (0 to FILTER_TAPS-1) of unsigned(2*Data_Width-1 downto 0);
signal mul_reg : mul_reg_array :=(others=>(others=>'0'));

signal product_sum  : unsigned(Data_Width-1 downto 0) := (others=>'0');
signal final_sum    : unsigned(Data_Width-1 downto 0) := (others=>'0');


type reg_array is array (0 to CONVERSION_FACTOR-1) of unsigned(DATA_WIDTH-1 downto 0);
signal coeff_reg  : reg_array :=(others=>(others=>'0'));
signal data_input : unsigned(Data_Width-1 downto 0) := (others=>'0');

signal delay    : std_logic := '0';
-- Filter coeffs
type coefficients is array(15 downto 0) of unsigned(15 downto 0);
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
begin

    
    if reset = '1'then
        mul_reg         <= (others => (others=> '0'));  
        product_sum     <= (others => '0') ;
        final_sum       <= (others => '0'); 
        coeff_reg       <= (others => (others=> '0'));        
        out_valid       <= '0';
        out_ready       <= '0' ;
        data_out_last   <= '0' ;
        filter_counter  :=  0 ;  
        phase_counter   :=  0 ;
        
    elsif rising_edge (clk) then  
            if control_ready = '1' and in_valid = '1'  then
--              if delay = '0' then
--                 delay <= '1';
                              
                  if  phase_counter < CONVERSION_FACTOR-1  then
                 
                      out_ready  <= '0' ;
                      data_input <= unsigned(data_i) ; 
        
                  elsif phase_counter = CONVERSION_FACTOR  then
                      
                      out_ready     <= '1' ;
                      phase_counter :=  0 ;
                      data_input    <= unsigned(data_i) ; 
                         
                  end if ;
                        
                -- Filter loops
                for k in 0 to CONVERSION_FACTOR-1 loop                  -- Phase loop
                    for i in 0 to ((FILTER_TAPS/CONVERSION_FACTOR) -1 ) loop                 -- Sub-phase loop
                                                   
             
                        -- Coefficients
                        coeff_reg(i) <= coeff( i*CONVERSION_FACTOR + phase_counter) & x"0000";
                        
                        -- Multiplication 
                        if i = (FILTER_TAPS/CONVERSION_FACTOR) -1 then        
                            mul_reg( i*CONVERSION_FACTOR + CONVERSION_FACTOR-1 ) <= unsigned(data_i) * coeff_reg(i);
        
                        else
                            mul_reg( i*CONVERSION_FACTOR + CONVERSION_FACTOR-1 ) <= unsigned(data_i)* coeff_reg(i) + mul_reg( (i+1)*CONVERSION_FACTOR );
        
                        end if;
                        
                        -- Pipeline shifting
                        if k < CONVERSION_FACTOR-1 then
        
                            mul_reg( i*CONVERSION_FACTOR + k ) <= mul_reg( i*CONVERSION_FACTOR + k + 1);
        
                        end if;            
                    end loop;          
                end loop;
    --        data_o <= std_logic_vector( mul_reg(0)(DATA_WIDTH -1 downto 0)); --Data truncation from 64 to 32 bits
                data_o <= std_logic_vector( mul_reg(0)(DATA_WIDTH -1 downto 0));
                out_valid <= '1' ;           
                phase_counter := phase_counter + 1; 
--           else 
--            delay <= '0';
   else 
                   out_valid <= '0' ;
       end if   ;   
               
           if data_in_last = '1'  then
              filter_counter :=   filter_counter + 1 ;
                if  filter_counter <= CONVERSION_FACTOR then   
                        data_o <= std_logic_vector(mul_reg(filter_counter-1)(DATA_WIDTH -1 downto 0));
                        out_valid <= '1' ;    
                    else               
                        data_out_last   <= '1' ;                  
                        out_valid <= '0' ;
                end if ;
            else 
                    data_out_last   <= '0' ;   
   end if ;
                
end if ;
 
end process;

end RTL;
