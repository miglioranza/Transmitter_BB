----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/21/2025 10:42:45 AM
-- Design Name: 
-- Module Name: Control_unit_tb - Behavioral
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
use std.textio.all;
use ieee.std_logic_textio.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Control_unit_tb is
--  Port ( );
end Control_unit_tb;

architecture Behavioral of Control_unit_tb is

-- Testbench signal declarations
  -- DUT Signals
  
    -- DUT port signals
    signal clk                       : std_logic := '0';
    signal reset                     : std_logic := '0';
    signal tx_data                   : std_logic_vector(31 downto 0) := (others => '0');
    signal tx_data_valid             : std_logic := '0';
    signal control_unit_enable       : std_logic;
    signal tx_almost_full            : std_logic;

    signal tx_init                   : std_logic := '0';
    signal tx_start                  : std_logic := '0';
    signal tx_scrambler_ena          : std_logic := '0';
    signal tx_dst_addr               : std_logic_vector(7 downto 0)  := (others => '0');
    signal tx_length                 : std_logic_vector(17 downto 0) := (others => '0');
    signal tx_modulation             : std_logic_vector(3 downto 0)  := (others => '0');
    signal tx_fec                    : std_logic_vector(7 downto 0)  := (others => '0');
    signal scrambler_init            : std_logic_vector(31 downto 1) := (others => '0');

    signal scrambler_din_data        : std_logic_vector(31 downto 0);
    signal scrambler_seed            : std_logic_vector(31 downto 1);
    signal scrambler_din_valid       : std_logic;
    signal scrambler_din_last        : std_logic;
    signal scrambler_control_enable  : std_logic;
    signal scrambler_last_frame      : std_logic;

    signal encoder_code_rate         : std_logic_vector(1 downto 0);

    signal interleaver_dout_valid    : std_logic := '0';
    signal interleaver_dout_data     : std_logic_vector(31 downto 0) := (others => '0');
    signal interleaver_last_frame    : std_logic := '0';
    signal interleaver_din_ready     : std_logic;

    signal mapper_dout_last          : std_logic := '0';
    signal mapper_selected_mod       : std_logic_vector(2 downto 0);
    signal mapper_din_data           : std_logic_vector(5 downto 0);
    signal mapper_din_valid          : std_logic;
    signal mapper_din_last           : std_logic;

    signal dpd_din_valid             : std_logic;
    signal dpd_din_data_I            : std_logic_vector(11 downto 0);
    signal dpd_din_data_Q            : std_logic_vector(11 downto 0);
    constant clock_period            : time := 5 ns ;

begin
--! DUT Instantiation

DUT : entity work.CU_top 

    port map (
            clk                     => clk,
            reset                   => reset,
            tx_data                 => tx_data,
            tx_data_valid           => tx_data_valid,
            control_unit_enable     => control_unit_enable,
            tx_almost_full          => tx_almost_full,

            tx_init                 => tx_init,
            tx_start                => tx_start,
            tx_scrambler_ena        => tx_scrambler_ena,
            tx_dst_addr             => tx_dst_addr,
            tx_length               => tx_length,
            tx_modulation           => tx_modulation,
            tx_fec                  => tx_fec,
            scrambler_init          => scrambler_init,

            scrambler_din_data      => scrambler_din_data,
            scrambler_seed          => scrambler_seed,
            scrambler_din_valid     => scrambler_din_valid,
            scrambler_din_last      => scrambler_din_last,
            scrambler_control_enable=> scrambler_control_enable,
--            scrambler_last_frame    => scrambler_last_frame,

            encoder_code_rate       => encoder_code_rate,
--            encoder_reset_fifos     => encoder_reset_fifos,

            interleaver_dout_valid  => interleaver_dout_valid,
            interleaver_dout_data   => interleaver_dout_data,
            interleaver_last_frame  => interleaver_last_frame,
            interleaver_din_ready   => interleaver_din_ready,
--            mapper_dout_last        => mapper_dout_last,
            mapper_selected_mod     => mapper_selected_mod,
            mapper_din_data         => mapper_din_data,
            mapper_din_valid        => mapper_din_valid,
            mapper_din_last         => mapper_din_last,

            dpd_din_valid           => dpd_din_valid,
            dpd_din_data_I          => dpd_din_data_I,
            dpd_din_data_Q          => dpd_din_data_Q
        );
 --------------------------------------------------------------------------
  -- Clock and Reset generation
  --------------------------------------------------------------------------    
 clk_process :process
    begin
        clk <= '1';
        wait for clock_period/2;
        clk <= '0';
        wait for clock_period/2;
 end process;
 reset_process : process 
 begin 
        reset <= '1';
        wait for 50 ns ;
        reset <=  '0';
        wait ;
end process ;
----------------------------------------------------------------------------
  -- Stimulus Process
--------------------------------------------------------------------------
stimuli_process : process 

begin
tx_init       <= '0';
tx_start      <= '0';
tx_data       <= (others => '0') ;
tx_data_valid <= '0';
tx_fec        <= (others => '0') ;
tx_dst_addr   <= (others => '0') ;
tx_length     <= (others => '0') ;
tx_modulation <= (others => '0') ;
wait for 50 ns ;
report  "Initializing Transmission";
tx_init  <= '1';
wait for 50 ns ;
tx_init  <= '0';
report "Start Transmission" ;
tx_start <= '1';
tx_scrambler_ena <= '1';
--Start feeding the Signal Field
tx_modulation               <= "0100"; --64-QAM scheme
tx_length                   <= "000000100000000000" ; -- 2 KiB of data (2048 bytes) 
tx_dst_addr                 <= "10000000" ; --Random value
scrambler_init              <= "1001001000101001000100101111101"; --Scrambler seed, random value
tx_fec                      <= "00000000";  --CR = 1/2 
wait for 10 ns ;  
 report "Start of data stream" ;
    for j in 0 to 511 loop
      tx_data        <= std_logic_vector(to_unsigned(j, 32));
      tx_data_valid  <= '1';
      wait for clock_period ;
    end loop;
tx_data_valid    <= '0';
tx_start         <= '0';
tx_scrambler_ena <= '0';

report "End of data stream" ;
wait ;
end process;
------------------------------------------------------------------------
--SIMULATE INTERLEAVER OUTPUT  
------------------------------------------------------------------------

interleaver_stimuli : process 
variable j   : integer range 0 to 511 := 0 ;

begin 
mapper_dout_last            <= '0';
interleaver_last_frame      <= '0';
interleaver_dout_valid      <= '0';

wait on tx_start  ;
report "Feeding Interleaver Data with BPSK mod";
while j < 512 loop
interleaver_dout_valid <= '1';
if interleaver_din_ready = '1' then
      interleaver_dout_data  <= std_logic_vector(to_unsigned(j, 32));
      j := j + 1 ;
      if j = 512 then 
         interleaver_last_frame      <= '1';
      else 
        interleaver_last_frame      <= '0';
      end if ;
    wait for clock_period  ;
else 
    wait for clock_period ;
    
end if ; 
end loop;
report "End of interleaver simulation" ;      
j := 0 ;
--interleaver_dout_valid <= '0';
--wait until mapper_din_last = '1';
wait until mapper_din_last = '1' ;
interleaver_dout_valid <= '0';
interleaver_last_frame <= '0';

end process ;  
------------------------------------------------------------------------
--CHECK INTERLEAVER OUTPUT  
------------------------------------------------------------------------
output_checker : process
--Adjust the path to the current folder
file        output_file         : text open read_mode is "/home/miglioranza/splitted_values.txt";
variable    output_values       : std_logic_vector(5 downto 0 ) ;
variable    out_line            : line ;
begin

while not endfile(output_file) loop
    wait for clock_period ;
    if mapper_din_valid = '1' then 
       readline(output_file, out_line) ;
        -- Skip empty or comment lines
        if out_line.all'length = 0 then
            next;
        end if;        
         -- Parse expected values
        read(out_line, output_values);         
         -- Compare DUT output vs expected
        assert mapper_din_data = output_values 
                report "Mismatch in mapper_output. Expected: " & to_string(to_bitvector(output_values)) &
                           " Got: " & to_string(to_bitvector(mapper_din_data))
                 severity error; 
    end if ;
end loop ;   
wait until mapper_din_last = '1' ;
wait for 500 ns ;
report "End of simulation" ;
finish ;              
end process ;
      
end Behavioral;