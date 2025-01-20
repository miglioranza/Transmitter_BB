----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/03/2024 04:09:38 PM
-- Design Name: 
-- Module Name: Scrambler_32bits_TB - Behavioral
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

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Scrambler_32bits_TB is
end Scrambler_32bits_TB;

architecture tb of Scrambler_32bits_TB is
    signal clk      : std_logic := '0';
    signal rst      : std_logic := '0';
    signal data_in  : std_logic_vector(31 downto 0) := (others => '0');
    signal data_out : std_logic_vector(31 downto 0);
    signal seed     : std_logic_vector(31 downto 0) := (others => '0');
    signal control_enable  : std_logic := '0';
    signal data_valid  : std_logic;
    signal data_ready  : std_logic;

    -- Clock period
    constant clk_period : time := 5 ns;

    -- UUT: Unit Under Test
    component Scrambler_32bits
        generic (
            POLY_DEG : integer := 32;
            DATA_DIM : integer := 32;
            poly     : std_logic_vector(31 downto 0) := "10010000000000000000000000000001"
        );
        port (
            clk       : in  std_logic;
            rst       : in  std_logic;
            data_in   : in  std_logic_vector(31 downto 0);
            data_out  : out std_logic_vector(31 downto 0);
            seed      : in  std_logic_vector(31 downto 0);
            data_valid   : out std_logic;
            control_enable   : in std_logic;
            data_ready   : out std_logic 
        );
    end component;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: Scrambler_32bits
        port map (
            clk       => clk,
            rst       => rst,
            data_in   => data_in,
            data_out  => data_out,
            seed      => seed,
            control_enable   => control_enable,
            data_valid   => data_valid,
            data_ready   => data_ready 
        );

    -- Clock generation
    clk_process : process
    begin
        clk <= '0';
        wait for clk_period / 2;
        clk <= '1';
        wait for clk_period / 2;
    end process clk_process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Reset the UUT
        rst <= '1';
        wait for 20 ns;
        rst <= '0';
        wait for 20 ns;
        
        -- Apply test vectors
        seed <= x"C50C43B0";
        data_in <= x"12345678";
        control_enable <= '1' ;
        wait for clk_period ;
        control_enable <= '0' ;
                
        wait for clk_period * 10;

        seed <= x"3208EC47";
        data_in <= x"922912F2";
        control_enable <= '1' ;     
        wait for clk_period ;
        control_enable <= '0' ;
        
        wait for clk_period * 10;

        seed <= x"933912F2";
        data_in <= x"3208EC47";
        control_enable <= '1' ;     
        wait for clk_period ;
        control_enable <= '0' ;

        wait for clk_period * 5;

        -- Stop simulation
         assert false report "End of simulation" severity FAILURE  ;
    end process stim_proc;
end tb;

