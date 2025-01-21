----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/27/2024 01:34:57 PM
-- Design Name: 
-- Module Name: Bit_splitter_tb - Behavioral
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
use std.env.finish;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Bit_splitter_tb is
end Bit_splitter_tb;

architecture Behavioral of Bit_splitter_tb is

--Clock period 
constant clk_period :time := 5 ns ;

-- UUT 
component Bit_splitter 
  
 generic (
 INPUT_BW       : integer := 32 ;
 OUTPUT_BW      : integer := 6 
 );
 Port ( 
 clk            : in std_logic ;
 reset          : in std_logic ;
 mod_type       : in std_logic_vector(2 downto 0) ;
 data_in_valid  : in std_logic;
 data_in        : in std_logic_vector(INPUT_BW-1 downto 0 ) ;
 data_out_valid    : out std_logic ;
 output       : out std_logic_vector(OUTPUT_BW-1 downto 0) ;
 data_last      : out std_logic 
  );
  end component ;
  
  signal clk            : std_logic := '0';
  signal reset          : std_logic ;
  signal mod_type       : std_logic_vector(2 downto 0) ;
  signal data_in_valid  : std_logic ;
  signal data_in        : std_logic_vector(31 downto 0 ) ;
  signal data_out       : std_logic_vector(5 downto 0) := (others => '0');
  signal data_out_valid    : std_logic ;
  signal data_last      : std_logic ;

begin

--Clock generation and reset 
clk     <= not clk after clk_period/2 ;
reset   <= '1', '0' after 5 ns ;

uut: Bit_splitter 
port map( 
clk           =>              clk ,
reset         =>              reset,
data_in       =>              data_in,
data_in_valid =>              data_in_valid ,
output        =>              data_out,
mod_type      =>              mod_type,
data_out_valid   =>           data_out_valid,
data_last     =>              data_last  

);

--Stimuli process 
stim_process : process 
begin 

report "Start of simulation" ;

mod_type <= "000" ;
data_in_valid <= '1' ;
data_in <= x"1A2B3C4D" ;
wait until data_last = '1' ;

data_in <= x"5E6F7A8B" ;
wait until data_last = '1' ;

data_in <= x"9C0D1E2F" ;
wait until data_last = '1' ;
data_in_valid <= '0';
wait for clk_period ;

mod_type <= "001" ;

data_in_valid <= '1' ;
data_in <= x"DEADBEEF" ;
wait until data_last = '1' ;

data_in <= x"CAFEBABE" ;
wait until data_last = '1' ;

data_in <= x"8BADF00D" ;
wait until data_last = '1' ;
data_in_valid <= '0';
wait for clk_period ;

mod_type <= "011" ;

data_in_valid <= '1' ;
data_in <= x"C0FFEE00" ;
wait until data_last = '1' ;

data_in <= x"B11B00B1" ;
wait until data_last = '1' ;

data_in <= x"0BADC0DE" ;
wait until data_last = '1' ;
data_in_valid <= '0';
wait for clk_period ;

mod_type <= "111" ;

data_in_valid <= '1' ;
data_in <= x"BAADF00D" ;
wait until data_last = '1' ;

data_in <= x"B105F00D" ;
wait until data_last = '1' ;

data_in <= x"0BADC0DE" ;
wait until data_last = '1' ;

mod_type <= "101" ;
wait for clk_period ;

data_in <= x"3F4E5A6B" ;
wait until data_last = '1' ;

data_in <= x"7B8C9D0E" ;
wait until data_last = '1' ;
data_in_valid <= '0';
wait for clk_period *2  ;

--End simulation 
report "End of simulation" ;
finish ;
end process ;
end Behavioral;
