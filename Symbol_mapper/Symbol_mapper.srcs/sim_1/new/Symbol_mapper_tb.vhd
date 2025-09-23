----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/14/2025 03:02:05 PM
-- Design Name: 
-- Module Name: Symbok_mapper_tb - Behavioral
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

entity Symbol_mapper_tb is
end Symbol_mapper_tb;

architecture Behavioral of Symbol_mapper_tb is

    -- Component Declaration
    component Symbol_mapper is
        port (
            clk               : in  std_logic;
            reset             : in  std_logic;
            mod_type          : in  std_logic_vector(2 downto 0):= (others => '0');
            data_in           : in  std_logic_vector(5 downto 0):= (others => '0');
            data_in_valid     : in  std_logic;
            data_in_ready     : in  std_logic;
            data_in_last      : in  std_logic;
            i_out             : out std_logic_vector(11 downto 0):= (others => '0');
            q_out             : out std_logic_vector(11 downto 0):= (others => '0');
            data_out_last     : out std_logic;
            data_out_ready    : out std_logic;
            data_out_valid    : out std_logic
        );
    end component;

    -- Signals for driving the DUT
    signal clk             : std_logic := '0';
    signal reset           : std_logic := '1';
    signal mod_type        : std_logic_vector(2 downto 0) := (others => '0');
    signal data_in         : std_logic_vector(5 downto 0) := (others => '0');
    signal data_in_valid   : std_logic := '0';
    signal data_in_ready   : std_logic := '0';
    signal data_in_last    : std_logic := '0';
    signal i_out           : std_logic_vector(11 downto 0):= (others => '0');
    signal q_out           : std_logic_vector(11 downto 0):= (others => '0');
    signal data_out_last   : std_logic;
    signal data_out_ready  : std_logic;
    signal data_out_valid  : std_logic;
    
    constant clock_period : time := 5 ns ;
    
begin

    -- DUT instantiation
    uut: Symbol_mapper
        port map (
            clk            => clk,
            reset          => reset,
            mod_type       => mod_type,
            data_in        => data_in,
            data_in_valid  => data_in_valid,
            data_in_ready  => data_in_ready,
            data_in_last   => data_in_last,
            i_out          => i_out,
            q_out          => q_out,
            data_out_last  => data_out_last,
            data_out_ready => data_out_ready,
            data_out_valid => data_out_valid
        );

        
    
    -- Clock generation (200 MHz)
    clk_process : process
    begin
        clk <= '0';
        wait for clock_period/2;
        clk <= '1';
        wait for clock_period/2;
    end process;
    
    stimuli_process : process 
    begin 
    
    --Reset generation
  
    reset <= '1';
    wait for 20 ns;	
    reset <= '0';

        report "Start of simulation" ;
        mod_type <= "111"  ;
        data_in_last  <= '0';
        data_in_ready <= '1';
        wait until data_out_ready = '1' ;
        data_in_valid <= '1'; 
        data_in <= "101101"; wait for clock_period;
        data_in <= "011010"; wait for clock_period;
        data_in <= "110011"; wait for clock_period;
        data_in <= "001110"; wait for clock_period;
        data_in <= "100101"; wait for clock_period;
        data_in <= "010111"; wait for clock_period;
        data_in <= "111001"; wait for clock_period;
        data_in <= "000011"; wait for clock_period;
        data_in <= "101110"; wait for clock_period;
        data_in <= "011101"; wait for clock_period;
        data_in <= "110100"; wait for clock_period;
        data_in <= "001011"; wait for clock_period;
        data_in <= "100010"; wait for clock_period;
        data_in <= "010001"; wait for clock_period;
        data_in <= "111110"; wait for clock_period;
        data_in <= "000100"; wait for clock_period;
        data_in <= "101011"; wait for clock_period;
        data_in <= "011100"; wait for clock_period;
        data_in <= "110001"; wait for clock_period;
        data_in <= "001010"; wait for clock_period;
        data_in <= "100111"; wait for clock_period;
        data_in <= "010110"; wait for clock_period;
        data_in <= "111101"; wait for clock_period;
        data_in <= "000010"; wait for clock_period;
        data_in <= "101001"; wait for clock_period;
        data_in <= "011110"; wait for clock_period;
        data_in <= "110101"; wait for clock_period;
        data_in <= "001100"; wait for clock_period;
        data_in <= "100011"; wait for clock_period;
        data_in <= "010100"; wait for clock_period;
        data_in <= "111011"; wait for clock_period;
        data_in <= "000110"; wait for clock_period;
        data_in <= "101100"; wait for clock_period;
        data_in <= "011011"; wait for clock_period;
        data_in <= "110110"; wait for clock_period;
        data_in <= "001101"; wait for clock_period;
        data_in <= "100100"; wait for clock_period;
        data_in <= "010011"; wait for clock_period;
        data_in <= "111000"; wait for clock_period;
        data_in <= "000001"; wait for clock_period;
        data_in <= "101010"; wait for clock_period;
        data_in <= "011001"; wait for clock_period;
        data_in <= "110010"; wait for clock_period;
        data_in <= "001111"; wait for clock_period;
        data_in <= "100110"; wait for clock_period;
        data_in <= "010101"; wait for clock_period;
        data_in <= "111100"; wait for clock_period;
        data_in <= "000111"; wait for clock_period;
        data_in <= "101000"; wait for clock_period;
        data_in <= "011111"; wait for clock_period;
        data_in <= "110000"; wait for clock_period;
        data_in <= "001001"; wait for clock_period;
        data_in <= "100000"; wait for clock_period;
        data_in <= "010010"; wait for clock_period;
        data_in <= "111111"; wait for clock_period;
        data_in <= "000000"; wait for clock_period;
        data_in <= "101111"; wait for clock_period;
        data_in <= "011000"; wait for clock_period;
        data_in <= "110111"; wait for clock_period;
        data_in <= "001000"; wait for clock_period;
        data_in <= "100001"; wait for clock_period;
        data_in <= "010000"; wait for clock_period;
        data_in <= "111010"; wait for clock_period;
        data_in <= "000101"; wait for clock_period;
        data_in <= "101101"; wait for clock_period;
        data_in <= "011010"; wait for clock_period;
        data_in <= "110011"; wait for clock_period;
        data_in <= "001110"; wait for clock_period;
        data_in <= "100101"; wait for clock_period;
        data_in <= "010111"; wait for clock_period;
        data_in <= "111001"; wait for clock_period;
        data_in <= "000011"; wait for clock_period;
        data_in <= "101110"; wait for clock_period;
        data_in <= "011101"; wait for clock_period;
        data_in <= "110100"; wait for clock_period;
        data_in <= "001011"; wait for clock_period;
        data_in <= "100010"; wait for clock_period;
        data_in <= "010001"; wait for clock_period;
        data_in <= "111110"; wait for clock_period;
        data_in <= "000100"; wait for clock_period;
        data_in <= "101011"; wait for clock_period;
        data_in <= "011100"; wait for clock_period;
        data_in <= "110001"; wait for clock_period;
        data_in <= "001010"; wait for clock_period;
        data_in <= "100111"; wait for clock_period;
        data_in <= "010110"; wait for clock_period;
        data_in <= "111101"; wait for clock_period;
        data_in <= "000010"; wait for clock_period;
        data_in <= "101001"; wait for clock_period;
        data_in <= "011110"; wait for clock_period;
        data_in <= "110101"; wait for clock_period;
        data_in <= "001100"; wait for clock_period;
        data_in <= "100011"; wait for clock_period;
        data_in <= "010100"; wait for clock_period;
        data_in <= "111011"; wait for clock_period;
        data_in <= "000110"; wait for clock_period;
        data_in <= "101100"; wait for clock_period;
        data_in <= "011011"; wait for clock_period;
        data_in <= "110110"; wait for clock_period;
        data_in <= "001101"; wait for clock_period;
        data_in <= "100100"; wait for clock_period;
        data_in <= "010011"; wait for clock_period;
        data_in <= "111000"; wait for clock_period;
        data_in <= "000001"; wait for clock_period;
        data_in <= "101010"; wait for clock_period;
        data_in <= "011001"; wait for clock_period;
        data_in <= "110010"; wait for clock_period;
        data_in <= "001111"; wait for clock_period;
        data_in <= "100110"; wait for clock_period;
        data_in <= "010101"; wait for clock_period;
        data_in <= "111100"; wait for clock_period;
        data_in <= "000111"; wait for clock_period;
        data_in <= "101000"; wait for clock_period;
        data_in <= "011111"; wait for clock_period;
        data_in <= "110000"; wait for clock_period;
        data_in <= "001001"; wait for clock_period;
        data_in <= "100000"; wait for clock_period;
        data_in <= "010010"; wait for clock_period;
        data_in <= "111111"; wait for clock_period;
        data_in <= "000000"; wait for clock_period;
        data_in <= "101111"; wait for clock_period;
        data_in <= "011000"; wait for clock_period;
        data_in <= "110111"; wait for clock_period;
        data_in <= "001000"; wait for clock_period;
        data_in <= "100001"; wait for clock_period;
        data_in <= "010000"; wait for clock_period;
        data_in <= "111010"; wait for clock_period;
        data_in <= "000101"; wait for clock_period;
        data_in <= "101101"; wait for clock_period;
        data_in <= "011010"; wait for clock_period;
        data_in <= "110011"; wait for clock_period;
        data_in <= "001110"; wait for clock_period;
        data_in <= "100101"; wait for clock_period;
        data_in <= "010111"; wait for clock_period;
        data_in <= "111001"; wait for clock_period;
        data_in <= "000011"; wait for clock_period;
        data_in <= "101110"; wait for clock_period;
        data_in <= "011101"; wait for clock_period;
        data_in <= "110100"; wait for clock_period;
        data_in <= "001011"; wait for clock_period;
        data_in <= "100010"; wait for clock_period;
        data_in <= "010001"; wait for clock_period;
        data_in <= "111110"; wait for clock_period;
        data_in <= "000100"; wait for clock_period;
        data_in <= "101011"; wait for clock_period;
        data_in <= "011100"; wait for clock_period;
        data_in <= "110001"; wait for clock_period;
        data_in <= "001010"; wait for clock_period;
        data_in <= "100111"; wait for clock_period;
        data_in <= "010110"; wait for clock_period;
        data_in <= "111101"; wait for clock_period;
        data_in <= "000010"; wait for clock_period;
        data_in <= "101001"; wait for clock_period;        
        data_in <= "000101"; wait for clock_period;
        data_in <= "111000"; wait for clock_period;
        data_in <= "010110"; wait for clock_period;
        data_in <= "001001"; wait for clock_period;
        data_in <= "101111"; wait for clock_period;
        data_in <= "011100"; wait for clock_period;
        data_in <= "000000"; wait for clock_period;
        data_in <= "100101"; wait for clock_period;
        data_in <= "001111"; wait for clock_period;
        data_in <= "110010"; wait for clock_period;
        data_in <= "011111"; wait for clock_period;
        data_in <= "100000"; wait for clock_period;
        data_in <= "110101"; wait for clock_period;
        data_in <= "010011"; wait for clock_period;
        data_in <= "111011"; wait for clock_period;
        data_in <= "000111"; wait for clock_period;
        data_in <= "101000"; wait for clock_period;
        data_in <= "011001"; wait for clock_period;
        data_in <= "110001"; wait for clock_period;
        data_in <= "100110"; wait for clock_period;
        data_in <= "010101"; wait for clock_period;
        data_in <= "001010"; wait for clock_period;
        data_in <= "111100"; wait for clock_period;
        data_in <= "101101"; wait for clock_period;
        data_in <= "000010"; wait for clock_period;
        data_in <= "011011"; wait for clock_period;
        data_in <= "110111"; wait for clock_period;
        data_in <= "100011"; wait for clock_period;
        data_in <= "001110"; wait for clock_period;
        data_in <= "111111"; 
        data_in_last <= '1' ;
        wait for clock_period;
        data_in_valid <= '0';
        data_in_last <= '0' ;
        wait for clock_period * 5 ;
        report "End of Simulation" ;
--        data_in <= "000000"; wait for clock_period; 
--        data_in <= "000001"; wait for clock_period; 
--        data_in <= "000000"; wait for clock_period; 
--        data_in <= "000001"; wait for clock_period; 
--        data_in <= "000000"; wait for clock_period; 
--        data_in <= "000001"; wait for clock_period; 
--        data_in <= "000000"; wait for clock_period; 
--        data_in <= "000001"; wait for clock_period; 
--        data_in <= "000000"; wait for clock_period; 
--        data_in <= "000001"; wait for clock_period; 
--        data_in <= "000000"; wait for clock_period; 
--        data_in <= "000001"; wait for clock_period; 
--        data_in <= "000000"; wait for clock_period; 
--        data_in <= "000001"; wait for clock_period;
--        data_in <= "000000"; wait for clock_period; 
--        data_in <= "000000"; wait for clock_period;
--        data_in <= "000001"; wait for clock_period;
--        data_in <= "000000"; wait for clock_period; 
--        data_in <= "000001"; wait for clock_period; 
--        data_in <= "000000"; wait for clock_period; 
--        data_in <= "000001"; wait for clock_period; 
--        data_in <= "000000"; wait for clock_period; 
--        data_in <= "000001"; wait for clock_period; 
--        data_in <= "000000"; wait for clock_period; 
--        data_in <= "000001"; wait for clock_period; 
--        data_in <= "000000"; wait for clock_period; 
--        data_in <= "000001"; wait for clock_period; 
--        data_in <= "000000"; wait for clock_period; 
--        data_in <= "000001"; wait for clock_period;
        
--        data_in_valid <= '0';
--        --QPSK 

--        wait for 50 ns ;
--        mod_type <= "001";
--        data_in_valid <= '1';
        
--        data_in <= "000010"; wait for clock_period;
--        data_in <= "000011"; wait for clock_period;
--        data_in <= "000000"; wait for clock_period;
--        data_in <= "000010"; wait for clock_period;
--        data_in <= "000011"; wait for clock_period;
--        data_in <= "000001"; wait for clock_period;
--        data_in <= "000000"; wait for clock_period;
--        data_in <= "000010"; wait for clock_period;
--        data_in <= "000011"; wait for clock_period;
--        data_in <= "000000"; wait for clock_period;
--        data_in <= "000010"; wait for clock_period;
--        data_in <= "000001"; wait for clock_period;
--        data_in <= "000000"; wait for clock_period;
--        data_in <= "000011"; wait for clock_period;
--        data_in <= "000010"; wait for clock_period;
--        data_in <= "000001"; wait for clock_period;
--        data_in <= "000011"; wait for clock_period;
--        data_in <= "000000"; wait for clock_period;
--        data_in <= "000010"; wait for clock_period;
--        data_in <= "000001"; wait for clock_period;
--        data_in <= "000011"; wait for clock_period;
--        data_in <= "000010"; wait for clock_period;
--        data_in <= "000000"; wait for clock_period;
--        data_in <= "000001"; wait for clock_period;
--        data_in <= "000010"; wait for clock_period;
--        data_in <= "000000"; wait for clock_period;
--        data_in <= "000011"; wait for clock_period;
--        data_in <= "000001"; wait for clock_period;
--        data_in <= "000000"; wait for clock_period;
--        data_in <= "000010"; wait for clock_period;
        
--        data_in_valid <= '0';
--        --16-QAM
           
--        wait for 50 ns ;
--        mod_type <= "010";
--        data_in_valid <= '1';
        
--        data_in <= "000110"; wait for clock_period;
--        data_in <= "001001"; wait for clock_period;
--        data_in <= "000000"; wait for clock_period;
--        data_in <= "000111"; wait for clock_period;
--        data_in <= "000011"; wait for clock_period;
--        data_in <= "001011"; wait for clock_period;
--        data_in <= "000101"; wait for clock_period;
--        data_in <= "000010"; wait for clock_period;
--        data_in <= "000001"; wait for clock_period;
--        data_in <= "000110"; wait for clock_period;
--        data_in <= "001010"; wait for clock_period;
--        data_in <= "000100"; wait for clock_period;
--        data_in <= "001100"; wait for clock_period;
--        data_in <= "000011"; wait for clock_period;
--        data_in <= "001000"; wait for clock_period;
--        data_in <= "000111"; wait for clock_period;
--        data_in <= "000001"; wait for clock_period;
--        data_in <= "000101"; wait for clock_period;
--        data_in <= "000010"; wait for clock_period;
--        data_in <= "001110"; wait for clock_period;
--        data_in <= "001001"; wait for clock_period;
--        data_in <= "000000"; wait for clock_period;
--        data_in <= "001101"; wait for clock_period;
--        data_in <= "001111"; wait for clock_period;
--        data_in <= "000100"; wait for clock_period;
--        data_in <= "001011"; wait for clock_period;
--        data_in <= "001000"; wait for clock_period;
--        data_in <= "001010"; wait for clock_period;
--        data_in <= "000110"; wait for clock_period;
--        data_in <= "000001"; wait for clock_period;
                
----        data_in_valid <= '0';
----        --32-QAM
           
----        wait for 50 ns ;
----        mod_type <= "011";
----        data_in_valid <= '1';
        
--        data_in <= "010011"; wait for clock_period;
--        data_in <= "000101"; wait for clock_period;
--        data_in <= "001111"; wait for clock_period;
--        data_in <= "000000"; wait for clock_period;
--        data_in <= "001010"; wait for clock_period;
--        data_in <= "011100"; wait for clock_period;
--        data_in <= "000011"; wait for clock_period;
--        data_in <= "010101"; wait for clock_period;
--        data_in <= "000111"; wait for clock_period;
--        data_in <= "001100"; wait for clock_period;
--        data_in <= "011001"; wait for clock_period;
--        data_in <= "001110"; wait for clock_period;
--        data_in <= "010000"; wait for clock_period;
--        data_in <= "011111"; wait for clock_period;
--        data_in <= "010110"; wait for clock_period;
--        data_in <= "001011"; wait for clock_period;
--        data_in <= "000100"; wait for clock_period;
--        data_in <= "011010"; wait for clock_period;
--        data_in <= "001001"; wait for clock_period;
--        data_in <= "000010"; wait for clock_period;
--        data_in <= "010001"; wait for clock_period;
--        data_in <= "011011"; wait for clock_period;
--        data_in <= "001101"; wait for clock_period;
--        data_in <= "010111"; wait for clock_period;
--        data_in <= "011000"; wait for clock_period;
--        data_in <= "000110"; wait for clock_period;
--        data_in <= "000001"; wait for clock_period;
--        data_in <= "011110"; wait for clock_period;
--        data_in <= "010010"; wait for clock_period;
--        data_in <= "000001"; wait for clock_period;
        
----          data_in_valid <= '0';
----        --64-QAM
           
----        wait for 50 ns ;
----        mod_type <= "100";
----        data_in_valid <= '1';
        
--        data_in <= "000101"; wait for clock_period;
--        data_in <= "111000"; wait for clock_period;
--        data_in <= "010110"; wait for clock_period;
--        data_in <= "001001"; wait for clock_period;
--        data_in <= "101111"; wait for clock_period;
--        data_in <= "011100"; wait for clock_period;
--        data_in <= "000000"; wait for clock_period;
--        data_in <= "100101"; wait for clock_period;
--        data_in <= "001111"; wait for clock_period;
--        data_in <= "110010"; wait for clock_period;
--        data_in <= "011111"; wait for clock_period;
--        data_in <= "100000"; wait for clock_period;
--        data_in <= "110101"; wait for clock_period;
--        data_in <= "010011"; wait for clock_period;
--        data_in <= "111011"; wait for clock_period;
--        data_in <= "000111"; wait for clock_period;
--        data_in <= "101000"; wait for clock_period;
--        data_in <= "011001"; wait for clock_period;
--        data_in <= "110001"; wait for clock_period;
--        data_in <= "100110"; wait for clock_period;
--        data_in <= "010101"; wait for clock_period;
--        data_in <= "001010"; wait for clock_period;
--        data_in <= "111100"; wait for clock_period;
--        data_in <= "101101"; wait for clock_period;
--        data_in <= "000010"; wait for clock_period;
--        data_in <= "011011"; wait for clock_period;
--        data_in <= "110111"; wait for clock_period;
--        data_in <= "100011"; wait for clock_period;
--        data_in <= "001110"; wait for clock_period;
--        data_in <= "111111"; wait for clock_period;
        
----        data_in_valid <= '0';
----        --16-APSK
           
----        wait for 50 ns ;
----        mod_type <= "101";
----        data_in_valid <= '1';
        
--        data_in <= "000110"; wait for clock_period;
--        data_in <= "001001"; wait for clock_period;
--        data_in <= "000000"; wait for clock_period;
--        data_in <= "000111"; wait for clock_period;
--        data_in <= "000011"; wait for clock_period;
--        data_in <= "001011"; wait for clock_period;
--        data_in <= "000101"; wait for clock_period;
--        data_in <= "000010"; wait for clock_period;
--        data_in <= "000001"; wait for clock_period;
--        data_in <= "000110"; wait for clock_period;
--        data_in <= "001010"; wait for clock_period;
--        data_in <= "000100"; wait for clock_period;
--        data_in <= "001100"; wait for clock_period;
--        data_in <= "000011"; wait for clock_period;
--        data_in <= "001000"; wait for clock_period;
--        data_in <= "000111"; wait for clock_period;
--        data_in <= "000001"; wait for clock_period;
--        data_in <= "000101"; wait for clock_period;
--        data_in <= "000010"; wait for clock_period;
--        data_in <= "001110"; wait for clock_period;
--        data_in <= "001001"; wait for clock_period;
--        data_in <= "000000"; wait for clock_period;
--        data_in <= "001101"; wait for clock_period;
--        data_in <= "001111"; wait for clock_period;
--        data_in <= "000100"; wait for clock_period;
--        data_in <= "001011"; wait for clock_period;
--        data_in <= "001000"; wait for clock_period;
--        data_in <= "001010"; wait for clock_period;
--        data_in <= "000110"; wait for clock_period;
--        data_in <= "000001"; wait for clock_period;
                
----        data_in_valid <= '0';
----        --32-APSK
           
----        wait for 50 ns ;
----        mod_type <= "110";
----        data_in_valid <= '1';
        
--        data_in <= "010011"; wait for clock_period;
--        data_in <= "000101"; wait for clock_period;
--        data_in <= "001111"; wait for clock_period;
--        data_in <= "000000"; wait for clock_period;
--        data_in <= "001010"; wait for clock_period;
--        data_in <= "011100"; wait for clock_period;
--        data_in <= "000011"; wait for clock_period;
--        data_in <= "010101"; wait for clock_period;
--        data_in <= "000111"; wait for clock_period;
--        data_in <= "001100"; wait for clock_period;
--        data_in <= "011001"; wait for clock_period;
--        data_in <= "001110"; wait for clock_period;
--        data_in <= "010000"; wait for clock_period;
--        data_in <= "011111"; wait for clock_period;
--        data_in <= "010110"; wait for clock_period;
--        data_in <= "001011"; wait for clock_period;
--        data_in <= "000100"; wait for clock_period;
--        data_in <= "011010"; wait for clock_period;
--        data_in <= "001001"; wait for clock_period;
--        data_in <= "000010"; wait for clock_period;
--        data_in <= "010001"; wait for clock_period;
--        data_in <= "011011"; wait for clock_period;
--        data_in <= "001101"; wait for clock_period;
--        data_in <= "010111"; wait for clock_period;
--        data_in <= "011000"; wait for clock_period;
--        data_in <= "000110"; wait for clock_period;
--        data_in <= "000001"; wait for clock_period;
--        data_in <= "011110"; wait for clock_period;
--        data_in <= "010010"; wait for clock_period;
--        data_in <= "000001"; wait for clock_period;
        
--          data_in_valid <= '0';
--        --64-APSK
           
--        wait for 50 ns ;
--        mod_type <= "111";
      
--        data_in_valid <= '1';

     finish ;
        
       
    end process ;

end Behavioral;