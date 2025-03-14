----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/13/2025 02:52:38 PM
-- Design Name: 
-- Module Name: tb_block_interleaver - Behavioral
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
use std.env.finish;
entity tb_block_interleaver is
end tb_block_interleaver;

architecture Behavioral of tb_block_interleaver is
    -- Constants
    constant DATA_WIDTH : integer := 32;
    constant NUM_COLS   : integer := 7;
    constant CLK_PERIOD : time := 5 ns; -- 100 MHz clock

    -- Signals for 21 codewords
    signal clk              : std_logic := '0';
    signal rst              : std_logic := '1';
    signal data_in          : signed(DATA_WIDTH-1 downto 0) := (others => '0');
    signal write_en         : std_logic := '0';
    signal data_out         : signed(DATA_WIDTH-1 downto 0);
    signal read_valid       : std_logic;
    signal data_in_ready    : std_logic ;
    signal data_out_ready   : std_logic ;
    signal code_rate        : std_logic_vector(1 downto 0) := (others => '0');


    -- Test control
    signal sim_done     : std_logic := '0';

    -- Clock generation
       begin
   clk <= not clk after CLK_PERIOD / 2;
         -- Reset
          rst <= '1', '0' after 10 ns ;
   
 
    -- Instantiate the interleaver for 21 codewords
    uut: entity work.block_interleaver
        generic map (
            DATA_WIDTH => DATA_WIDTH,
            NUM_COLS   => 7,
            NUM_ROWS   => 3
            
        )
        port map (
            clk             => clk,
            rst             => rst,
            data_in         => data_in ,
            write_en        => write_en,
            data_out        => data_out,
            data_out_ready  => data_out_ready,     
            data_in_ready   => data_in_ready,     
            read_valid      => read_valid,
            code_rate       => code_rate
        );


        
      process
                 variable num_rows : integer := 3 ;
                 variable total_words : integer := 0 ;
                 variable i : integer := 0 ;
    begin

            -- Write phase: Fill memory row-wise
            data_in_ready <= '1' ;
            code_rate <= "00";
            total_words :=  num_rows * NUM_COLS ;
--           write_en <= '1';
           wait for CLK_PERIOD ;
            while i <= 62  loop
            if data_out_ready = '1'then
                 write_en <= '1';
                 data_in <= signed(to_unsigned(i, DATA_WIDTH)); 
                 i := i + 1 ;              
                wait for CLK_PERIOD;
             else 
--               write_en <= '1';
                wait until rising_edge (clk) ;
             end if ;   
            end loop;
--            wait for clk_period ;
            write_en <= '0';
            wait until read_valid = '1'; 
            wait until read_valid = '0';
            code_rate <= "01";

            -- Wait for read phase to start (state transition)
            wait for CLK_PERIOD * 2;

            -- Read phase: Check column-wise output
            i := 0; 
--            num_rows := 6  ;     
--            total_words :=  num_rows * NUM_COLS ;
             write_en <= '1';
             while i < 82  loop 
            if data_out_ready = '1'then
                data_in <= signed(to_unsigned(i, DATA_WIDTH));
                i := i + 1 ;
                wait for CLK_PERIOD;
             else 
                wait for CLK_PERIOD;
             end if ;   
            end loop;
            write_en <= '0';
            wait until read_valid = '1'; 
            wait until read_valid = '0';
            code_rate <= "10";
           
            -- Wait for read phase to start (state transition)
--            wait for CLK_PERIOD * 2;

            -- Read phase: Check column-wise output
 i := 0; 
--            num_rows := 6  ;     
--            total_words :=  num_rows * NUM_COLS ;
             write_en <= '1';
             while i < 122  loop 
            if data_out_ready = '1'then
                data_in <= signed(to_unsigned(i, DATA_WIDTH));
                i := i + 1 ;
                wait for CLK_PERIOD;
             else 
                wait for CLK_PERIOD;
             end if ;   
            end loop;
            write_en <= '0';
            data_in_ready <= '0' ;


            -- Wait for read to complete
            wait until read_valid = '0';

            wait for CLK_PERIOD * 5;

    -- Stop simulation
--        wait until sim_done = '1';
        report "Simulation finished successfully";
        finish ;
    end process;

end Behavioral;