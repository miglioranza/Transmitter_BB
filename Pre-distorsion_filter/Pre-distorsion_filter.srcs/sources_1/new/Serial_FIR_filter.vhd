----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/11/2024 10:53:15 AM
-- Design Name: 
-- Module Name: Serial_FIR_filter - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Serial_FIR_filter is
 Generic (
        FILTER_TAPS  : integer := 60;
        INPUT_WIDTH  : integer := 16; 
        COEFF_WIDTH  : integer range 8 to 32 := 16;
        OUTPUT_WIDTH : integer range 8 to 43 := 32   -- This should be < (Input+Coeff width-1) 
    );
    Port ( 
           clk    : in STD_LOGIC;
           reset  : in STD_LOGIC;
           enable : in STD_LOGIC;
           data_i : in STD_LOGIC_VECTOR (INPUT_WIDTH-1 downto 0);
           data_o : out STD_LOGIC_VECTOR (31 downto 0)
           );end Serial_FIR_filter;

architecture Behavioral of Serial_FIR_filter is

type input_registers is array(0 to FILTER_TAPS-1) of signed(INPUT_WIDTH-1 downto 0);
signal delay_line_s  : input_registers := (others=>(others=>'0'));

type coefficients is array(59 downto 0) of signed(15 downto 0);
constant coeff : coefficients := (
x"ffff", x"ffb3", x"00d6", x"0063", x"fdb1", x"01d9", x"025f", x"fab4", x"0141", x"063b", 
x"f92d", x"fe5a", x"0825", x"fbe0", x"fccd", x"031e", x"0011", x"0410", x"f766", x"fcc2",
x"1730", x"eeb3", x"ea68", x"2dac", x"f57a", x"cd9b", x"3731", x"0dd7", x"b74e", x"2a15", 
x"2a15", x"b74e", x"0dd7", x"3731", x"cd9b", x"f57a", x"2dac", x"ea68", x"eeb3", x"1730",
x"fcc2", x"f766", x"0410", x"0011", x"031e", x"fccd", x"fbe0", x"0825", x"fe5a", x"f92d", 
x"063b", x"0141", x"fab4", x"025f", x"01d9", x"fdb1", x"0063", x"00d6", x"ffb3", x"ffff"
);

signal accum  : signed(INPUT_WIDTH+COEFF_WIDTH-1 downto 0) := (others=>'0');
signal counter : integer range 0 to FILTER_TAPS-1 := FILTER_TAPS-1;
signal output       : signed(INPUT_WIDTH+COEFF_WIDTH-1 downto 0) := (others=>'0');

type state_machine is (idle, active);
signal state : state_machine := idle;




begin
data_o <= std_logic_vector(output(INPUT_WIDTH+COEFF_WIDTH-1 downto 0));

 
process(clk, reset)
variable sum : signed(INPUT_WIDTH+COEFF_WIDTH-1 downto 0) := (others=>'0');

begin
    if reset = '1' then
    sum := (others => '0' ) ;
    accum <= (others => '0') ;
    data_o <= (others => '0') ;
    elsif rising_edge(clk) then 
               
     -- Counter

    case state is 
        when  idle => 
        if enable = '1' then 
        state  <= active ;
        end if ;

        when active =>
        if counter > 0 then
        counter <= counter -1 ;
        else 
        counter <= FILTER_TAPS -1 ;
        state <= idle ;
        end if ;
  
        -- Delay line shifting

        if counter > 0 then 
        delay_line_s(counter) <= delay_line_s(counter-1) ;
        else 
        delay_line_s(counter) <= signed(data_i) ;
        end if ;
        
        -- MAC calculations
         if counter > 0 then
                sum := delay_line_s(counter)*coeff(counter);
                accum <= accum + sum ;   
            else
                accum <= (others=>'0');
                sum := delay_line_s(counter)*coeff(counter);
                output <= accum+ sum; 
            end if;
      end case ;
   end if ;
end process ;  
end Behavioral;
