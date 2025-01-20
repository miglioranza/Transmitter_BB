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


-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Parallel_FIR_filter is
 Generic (
        FILTER_TAPS  : integer := 60; --Number of taps depending on the degree of the coefficients 
        INPUT_WIDTH  : integer := 16; 
        COEFF_WIDTH  : integer range 8 to 32 := 16 --bitwidth of the coefficients 
    );
    Port ( 
           clk    : in STD_LOGIC;
           reset  : in STD_LOGIC;
           data_i : in STD_LOGIC_VECTOR (INPUT_WIDTH-1 downto 0);  --valid/ready AXI protocol 
           data_ready  : in std_logic := '0' ;
           data_o_valid : out std_logic := '0' ;
           data_o : out STD_LOGIC_VECTOR (15 downto 0) := (others =>'0') 
           );
end Parallel_FIR_filter;

architecture Behavioral of Parallel_FIR_filter is

signal acc_reg  : unsigned(31 downto 0 ):= (others=>'0'); --accumulation register for storing sums/products results 
type mult_registers is array(0 to FILTER_TAPS-1) of unsigned(31 downto 0);
signal mul_reg : mult_registers := (others=>(others=>'0'));          

type shift_register is array(0 to FILTER_TAPS -1) of unsigned(15 downto 0) ; 
signal shift_reg : shift_register := (others => (others => '0')); 


type coefficients is array(59 downto 0) of unsigned(15 downto 0);
constant coeff : coefficients := (
x"ffff", x"ffb3", x"00d6", x"0063", x"fdb1", x"01d9", x"025f", x"fab4", x"0141", x"063b", 
x"f92d", x"fe5a", x"0825", x"fbe0", x"fccd", x"031e", x"0011", x"0410", x"f766", x"fcc2",
x"1730", x"eeb3", x"ea68", x"2dac", x"f57a", x"cd9b", x"3731", x"0dd7", x"b74e", x"2a15", 
x"2a15", x"b74e", x"0dd7", x"3731", x"cd9b", x"f57a", x"2dac", x"ea68", x"eeb3", x"1730",
x"fcc2", x"f766", x"0410", x"0011", x"031e", x"fccd", x"fbe0", x"0825", x"fe5a", x"f92d", 
x"063b", x"0141", x"fab4", x"025f", x"01d9", x"fdb1", x"0063", x"00d6", x"ffb3", x"ffff"
);


begin

process(clk,reset, data_ready)
variable sum_reg : unsigned(31 downto 0) := (others => '0') ; --variable for saving the i-th sum result 


begin
    data_o_valid <= '0' ;
    if (reset = '1') then
            mul_reg <=(others => (others=> '0'));        
    elsif  rising_edge(clk) then
    
       if data_ready = '1' then  
       -- Shift the data through the shift register
          shift_reg(0) <= unsigned(data_i); --store the first input value 
           for j in 1 to FILTER_TAPS-1 loop

                shift_reg(j) <= shift_reg(j-1); --shift every input value for N=FILTER_TAPS-1 times 
           end loop;  

        sum_reg := (others => '0') ;
         for i in 0 to FILTER_TAPS-1 loop

                  if (shift_reg(i) /= 0 and i > 0) then  --check if the input value is valid otherwise it skip the calculation ,because if there are less input value than FILTER_TAPS it calculates just the number of valids inputs 
                        mul_reg(i) <= shift_reg(i) * coeff(i); 
                     sum_reg := sum_reg + mul_reg(i);
                    elsif  (shift_reg(i) /= 0 and i=0)  then
                         mul_reg(i)  <= shift_reg(i) * coeff(i);    
                         sum_reg     := mul_reg(i) ;   
                   end if;
                   acc_reg <= sum_reg ;
  
        end loop; 
        
        end if ;                    

    end if;
data_o_valid <= '1' ;
data_o <= std_logic_vector(acc_reg(15 downto 0));   --truncate the results for having an output of 16 bits 

end process ;

end Behavioral;
