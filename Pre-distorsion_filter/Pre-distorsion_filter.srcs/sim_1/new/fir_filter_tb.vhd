----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/10/2024 11:31:56 AM
-- Design Name: 
-- Module Name: fir_filter_tb - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fir_filter_tb is
--  Port ( );
end fir_filter_tb;

architecture Behavioral of fir_filter_tb is
	signal clk				:std_logic :='0' ; 
	signal rst_n			: std_logic :='0';	
	signal data_in 		: std_logic_vector(15 downto 0) := (others => '0');
	signal data_valid_in 	: std_logic := '0';
    signal data_out 		:  std_logic_vector(37 downto 0);
	signal data_valid_out 	:  std_logic;
	
	--Clock period 
	constant clk_period : time := 5 ns ;
	
	--UUT: Unit Under Test
	component fir_filter 
	
port (
	clk				: in std_logic;
	rst_n			: in std_logic;
	
	data_in 		: in std_logic_vector(15 downto 0);
	data_valid_in 	: in std_logic;
	
	data_out 		: out std_logic_vector(37 downto 0);
	data_valid_out 	: out std_logic
	);
 end component ;	
 
 begin
     uut: fir_filter 
     port map( 
     clk => clk ,
     rst_n => rst_n ,
     data_in => data_in ,
     data_valid_in => data_valid_in,
     data_out => data_out,
     data_valid_out => data_valid_out
     );
    --Clock generation
    clk_process : process 
    begin 
        clk <= '1' ;
        wait for clk_period /2  ;
        clk <= '0' ;
        wait for clk_period / 2 ;
    end process  clk_process ; 
    
    --Stimulus process ;
    stim_process : process 
    begin 
        rst_n <= '1' ;
        wait for 20 ns ;
        rst_n <='0' ;
        wait for 20 ns ;
    
    --Test vectors 
        data_in <= x"FAAC" ;
        data_valid_in <= '1' ;
        wait until data_valid_out = '0'  ;
        data_valid_in <= '0' ;
    
        wait for clk_period * 10 ;
        
        data_in <= x"CACA" ;
        data_valid_in <= '1' ;
        wait until data_valid_out = '0'  ;
        data_valid_in <= '0' ;
         
        wait for clk_period * 10 ;
 
        wait ;    
     
    end process stim_process;

  end Behavioral;
