----------------------------------------------------------------------------------
-- Company: IHP
-- Engineer: Nicola Miglioranza
-- 
-- Create Date: 06/10/2024 02:34:44 PM
-- Design Name: 
-- Module Name: Parallel_FIR_filter - Behavioral
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
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.math_real.all;


-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Parallel_FIR_filter is
 Generic (
        FILTER_TAPS  : integer := 16; --Number of taps depending on the degree of the coefficients 
        INPUT_WIDTH  : integer := 12; 
        COEFF_WIDTH  : integer range 8 to 32 := 16 --bitwidth of the coefficients 
--        MEMORY_DEPTH : integer := 5 ;
--        ORDER        : integer := 3  -- Nonlinear polynomial order (odd only: 1,3,5...)
    );
    Port ( 
           clk              : in STD_LOGIC;
           reset            : in STD_LOGIC;
           I_input          : in STD_LOGIC_VECTOR (INPUT_WIDTH-1 downto 0);  --valid/ready AXI protocol 
           Q_input          : in STD_LOGIC_VECTOR (INPUT_WIDTH-1 downto 0);
           data_in_ready    : in std_logic := '0' ; --Multi-rate filter ready to receive the input data stream 
           data_in_valid    : in std_logic := '0';
           data_out_valid   : out std_logic := '0' ;
           Q_output         : out STD_LOGIC_VECTOR (31 downto 0) := (others =>'0') ;
           I_output         : out STD_LOGIC_VECTOR (31 downto 0) := (others =>'0') ; 
           data_out_ready   : out STD_LOGIC := '0' --DPD filter ready to receive the data stream from the Mapper 
           
           );
end Parallel_FIR_filter;

architecture Behavioral of Parallel_FIR_filter is

--signal acc_reg  : unsigned(31 downto 0 ):= (others=>'0'); --accumulation register for storing sums/products results 
--type mult_registers is array(0 to FILTER_TAPS-1) of unsigned(31 downto 0);
--signal I_mul_reg : mult_registers := (others=>(others=>'0'));          
--signal Q_mul_reg : mult_registers := (others=>(others=>'0'));          

--type power is array (0 to ORDER -1) of unsigned (31 downto 0) ;
--signal I_pow : power :=(others=>(others=>'0'));    
--signal Q_pow : power :=(others=>(others=>'0'));    

 
type shift_register is array(0 to FILTER_TAPS -1) of signed(11 downto 0) ; 
signal I_shift_reg : shift_register := (others => (others => '0')); 
signal Q_shift_reg : shift_register := (others => (others => '0')); 
----signal I_shift_reg : std_logic_vector(15 downto 0) := (others => '0') ;
----signal Q_shift_reg : std_logic_vector(15 downto 0) := (others => '0') ;

--signal acc_reg  : unsigned(31 downto 0 ):= (others=>'0'); --accumulation register for storing sums/products results 
--type mult_registers is array(0 to FILTER_TAPS-1) of signed(27 downto 0);
--signal mul_reg_I, mul_reg_Q: mult_registers := (others=>(others=>'0'));          



--type sum_registers is array(0 to FILTER_TAPS-1) of signed(31 downto 0);
signal I_sum_reg, Q_sum_reg : signed(31  downto 0 ):= (others => '0'); 
--type shift_register is array(0 to FILTER_TAPS -1) of unsigned(15 downto 0) ; 
--signal shift_reg: shift_register := (others => (others => '0')); 

type coefficients is array(15 downto 0) of signed(15 downto 0);

signal coeff : coefficients := (
    x"6AAA", x"5555", x"2666", x"2000", x"1999", x"1333", x"0CCD", x"4000",
    x"4000", x"0CCD", x"1333", x"1999", x"2000", x"2666", x"5555", x"6AAA"

);

begin

process(clk, reset)
variable temp_reg_I  : signed(31 downto 0) := (others => '0') ; --variable for saving the i-th sum result 
variable temp_reg_Q  : signed(31 downto 0) := (others => '0') ;
variable mul_reg_I   : signed(27 downto 0) := ( others=>'0');          
variable mul_reg_Q   : signed(27 downto 0) := ( others=>'0');          
 
begin
    if (reset = '1') then
            mul_reg_I :=(others =>  '0'); 
            mul_reg_Q :=(others =>  '0');       
    elsif  rising_edge(clk) then
    
--       if data_in_ready = '1' and data_in_valid = '1'then  
       if data_in_ready = '1' then  

            -- Shift the data through the shift register
           data_out_ready <= '1';
        if  data_in_valid = '1' then 
           for j in FILTER_TAPS-1 downto 1 loop                              
                 I_shift_reg(j) <=  I_shift_reg(j-1); --shift every input value for N=FILTER_TAPS-1 times 
                 Q_shift_reg(j) <=  Q_shift_reg(j-1); --shift every input value for N=FILTER_TAPS-1 times 
           end loop;  
              I_shift_reg(0) <= signed(I_input) ;  
              Q_shift_reg(0) <= signed(Q_input) ; 
              
--              I_sum_reg <= (others =>  '0'); 
--              Q_sum_reg <= (others  => '0'); 
             
--        sum_reg := (others => '0') ;
         for i in 0 to FILTER_TAPS-1 loop
                        mul_reg_I  :=  I_shift_reg(i) * coeff(i); 
                        mul_reg_Q  :=  Q_shift_reg(i) * coeff(i);                                                                  
                        temp_reg_I :=  temp_reg_I + mul_reg_I;
                        temp_reg_Q :=  temp_reg_Q + mul_reg_Q ;    
        end loop;  
            data_out_valid <= '1' ;
            Q_output <= std_logic_vector(temp_reg_Q);   
            I_output <= std_logic_vector(temp_reg_I); 
       else 
                   data_out_valid <= '0';
end if ;
        else 
            data_out_valid <= '0';
            data_out_ready <= '0';
        end if ;                    
    
    end if;

end process ;



--process(clk, reset, data_in_ready)
----variable I_sum_reg           : signed(31 downto 0) := (others => '0') ; --variable for saving the i-th sum result 
----variable Q_sum_reg           : signed(31 downto 0) := (others => '0') ; --variable for saving the i-th sum result 
--variable I_sum_reg           : signed(63 downto 0) := (others => '0') ; --variable for saving the i-th sum result 
--variable Q_sum_reg           : signed(63 downto 0) := (others => '0') ;
--variable index               : integer ;
--variable power_I,power_Q     : signed(11 downto 0) := (others => '0') ;
--variable partial_I,partial_Q : signed(35 downto 0) := (others => '0') ;
--begin
--    if reset = '1'then 
----         I_mul_reg      <= (others => (others=> '0'));  
----         Q_mul_reg      <= (others => (others=> '0')); 
--         I_shift_reg    <= (others => (others=> '0'));   
--         Q_shift_reg    <= (others => (others=> '0')); 
--         I_output       <= (others => '0') ;
--         Q_output       <= (others => '0') ;
--         data_out_valid <= '0' ;
--         data_out_ready <= '0' ;
         
--     elsif rising_edge(clk) then 
        
--        if data_in_ready = '1' then 
--           data_out_ready <= '1' ;
           
--           if data_in_valid = '1'then 
    
--           for j in FILTER_TAPS-1 downto 1 loop                              
--                 I_shift_reg(j) <=  I_shift_reg(j-1); --shift every input value for N=FILTER_TAPS-1 times 
--                 Q_shift_reg(j) <=  Q_shift_reg(j-1); --shift every input value for N=FILTER_TAPS-1 times 
--           end loop;  
--              I_shift_reg(0) <= signed(I_input) ;  
--              Q_shift_reg(0) <= signed(Q_input) ; 
              
--              I_sum_reg := (others => '0') ;
--              Q_sum_reg := (others => '0') ;
             
--              --The coefficients are stored in a LUT and indexed based on the memory delay q and non-linear order k.
----      K  Q  
----y(n)= ∑  ∑ akq⋅x(n-q)⋅∣x(n-q)∣^k-1      -> Volterra Series 
--   --  k=1 q=0
--               for q in 0 to MEMORY_DEPTH-1 loop

--                for k in 1 to ORDER loop
--                    -- Calculate the index for the LUT (based on q and k)
--                   index := q * ORDER + (k - 1);
--                     if k = 1  then
--                      I_sum_reg :=  I_sum_reg + coeff(index) * I_shift_reg(q);
--                      Q_sum_reg :=  Q_sum_reg + coeff(index) * Q_shift_reg(q);  
--                     elsif k = 2 then 
--                         partial_I := I_shift_reg(q) * I_shift_reg(q)  & (11 downto 0 => '0')  ;
--                         partial_Q := Q_shift_reg(q) * Q_shift_reg(q) & (11 downto 0 => '0');
----                         I_sum_reg :=  I_sum_reg + coeff(index) *  partial_I(35 downto 20);
----                         Q_sum_reg :=  Q_sum_reg + coeff(index) * partial_Q(35 downto 20);
--                         I_sum_reg :=  I_sum_reg + coeff(index) *  partial_I;
--                         Q_sum_reg :=  Q_sum_reg + coeff(index) * partial_Q;
                      
--                     else 
--                         partial_I := I_shift_reg(q) * I_shift_reg(q) * I_shift_reg(q) ;
--                         partial_Q := Q_shift_reg(q) * Q_shift_reg(q) * Q_shift_reg(q);
----                         I_sum_reg :=  I_sum_reg + coeff(index) *  partial_I(35 downto 20);
----                         Q_sum_reg :=  Q_sum_reg + coeff(index) * partial_Q(35 downto 20);
--                         I_sum_reg :=  I_sum_reg + coeff(index) *  partial_I;
--                         Q_sum_reg :=  Q_sum_reg + coeff(index) * partial_Q;
--                     end if ;

--                 end loop ;
--        end loop; 
--            data_out_valid <= '1';
--            I_output <= std_logic_vector(I_sum_reg(63 downto 48)) ;
--            Q_output <= std_logic_vector(Q_sum_reg(63 downto 48)) ;
          
--        else 
--            data_out_valid <= '0';

--        end if ;                    
--        data_out_ready <= '0';
--    end if;
--end if ;
--end process ;

end Behavioral;
