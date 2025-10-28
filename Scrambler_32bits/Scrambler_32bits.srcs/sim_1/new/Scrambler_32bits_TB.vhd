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
use std.env.finish;

entity Scrambler_32bits_TB is
end Scrambler_32bits_TB;

architecture tb of Scrambler_32bits_TB is
    --clock and reset signals 
    signal clk             : std_logic := '0';     
    signal rst             : std_logic := '0';
    -- Data input 
    signal data_in         : std_logic_vector(31 downto 0) := (others => '0');
    signal seed            : std_logic_vector(30 downto 0) := (others => '0');
    signal data_in_valid   : std_logic := '0' ;
    signal control_enable  : std_logic := '0';
    signal data_in_last    : std_logic := '0';
    --Data output 
    signal data_out        : std_logic_vector(31 downto 0);
    signal data_out_valid   : std_logic := '0' ;
    signal data_out_last    : std_logic := '0';
    signal end_of_frame     : std_logic  := '0';
    -- Clock period
    constant clk_period : time := 5 ns;

    -- UUT: Unit Under Test
    component Scrambler_32bits
--        generic (
--            POLY_DEG : integer := 32;
--            DATA_DIM : integer := 32;
--            poly     : std_logic_vector(31 downto 0) := "10010000000000000000000000000001"
--        );
        port (
            clk             : in  std_logic;
            rst             : in  std_logic;
            data_in         : in  std_logic_vector(32 downto 1);
            data_in_valid   : in  std_logic;
            data_in_last    : in  std_logic;
            seed            : in  std_logic_vector(30 downto 0);
            control_enable  : in  std_logic;
            data_out        : out std_logic_vector(32 downto 1);
            data_out_valid  : out std_logic;
            data_out_last   : out std_logic
 
        );
    end component;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: Scrambler_32bits
        port map (
            clk                 => clk,
            rst                 => rst,
            data_in             => data_in,
            data_in_valid       => data_in_valid,
            data_in_last        => data_in_last ,
            seed                => seed,  
            control_enable      => control_enable,                 
            data_out            => data_out,        
            data_out_valid      => data_out_valid

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
        data_in_last <= '0' ;
        control_enable <= '0' ;
        
        wait for 100 ns ;
     
        -- Apply test vectors
        seed <= "1001001000101001000100101111101";
        control_enable <= '1' ;
        wait for clk_period;
        
        control_enable <= '0' ;
        
        data_in <= x"12345678" ;      
        data_in_valid <= '1';    

        wait for clk_period ;
        data_in <= x"922912F2";
        wait for clk_period ; 
              
        data_in <= x"3208EC47";
        wait for clk_period ;
               
        data_in <= x"922912F0";
        wait for clk_period ;

        data_in <= x"1337ABCD";
        wait for clk_period ;

        data_in <= x"FADE1234";
        wait for clk_period ;

        data_in <= x"5678EF90";
        wait for clk_period ;

        data_in <= x"ABCD9876";
        wait for clk_period ;

        data_in <= x"01234567";
        wait for clk_period ;

        data_in <= x"89ABCDEF";
        wait for clk_period ;

        data_in <= x"DEADBEEF";
        wait for clk_period ;

        data_in <= x"CAFE1234";
        wait for clk_period ;

        data_in <= x"BABE5678";
        wait for clk_period ;

        data_in <= x"FACE9012";
        wait for clk_period ;

        data_in <= x"3456DEFA";
        wait for clk_period ;

        data_in <= x"7890ABCD";
        wait for clk_period ;

        data_in <= x"EF123456";
        wait for clk_period ;

        data_in <= x"9876FEDC";
        wait for clk_period ;

        data_in <= x"5432BA98";
        wait for clk_period ;

        data_in <= x"1ABCDEF0";
        wait for clk_period ;

        data_in <= x"654321AB";
        wait for clk_period ;

        data_in <= x"0FEDCBA9";
        wait for clk_period ;

        data_in <= x"BCDE7890";
        wait for clk_period ;
        data_in_last <= '1' ;
        data_in_valid <= '0';    

        wait for clk_period * 5;
         
        -- Stop simulation
         report "End of simulation"  ;
         finish;
    end process stim_proc;
end tb;

