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
  signal clk                       : std_logic := '0';
  signal reset                     : std_logic := '0';
  signal control_unit_din_data      : std_logic_vector(31 downto 0);
  signal control_unit_din_valid     : std_logic;
  signal control_unit_end_of_frame  : std_logic;
  signal control_unit_dout_ready    : std_logic;
  signal control_unit_last_frame    : std_logic;
  signal control_unit_enable        : std_logic;
  signal mod_cod_schemes            : std_logic_vector(4 downto 0);
  signal num_streams                : std_logic_vector(4 downto 0);
  signal ref_distance               : std_logic_vector(7 downto 0);
  signal scrambler_init             : std_logic_vector(31 downto 1);
  signal num_words                  : std_logic_vector(15 downto 0);
  signal start_tx                   : std_logic;
  signal phy_src_address            : std_logic_vector(4 downto 0);
  signal phy_dest_address           : std_logic_vector(4 downto 0);

  -- Scrambler interface
  signal scrambler_din_data         : std_logic_vector(31 downto 0);
  signal scrambler_seed             : std_logic_vector(31 downto 1);
  signal scrambler_din_valid        : std_logic;
  signal scrambler_din_last         : std_logic;
  signal scrambler_control_enable   : std_logic;
  signal scrambler_last_frame       : std_logic;

  -- Encoder interface
  signal encoder_code_rate          : std_logic_vector(1 downto 0);

  -- Interleaver interface
  signal interleaver_dout_valid     : std_logic;
  signal interleaver_dout_data      : std_logic_vector(31 downto 0);
--  signal interleaver_dout_last      : std_logic;
  signal interleaver_last_frame     : std_logic;
  signal interleaver_din_ready      : std_logic;

  -- Mapper interface
  signal mapper_dout_ready          : std_logic;
  signal mapper_dout_last           : std_logic;
  signal mapper_last_frame          : std_logic;
  signal mapper_selected_mod        : std_logic_vector(2 downto 0);
  signal mapper_din_data            : std_logic_vector(5 downto 0);
  signal mapper_din_valid           : std_logic;
  signal mapper_din_last            : std_logic;
  signal mapper_end_of_frame        : std_logic;

  -- DPD interface
--  signal dpd_dout_ready             : std_logic;
  signal dpd_din_valid              : std_logic;
  signal dpd_din_data_I             : std_logic_vector(11 downto 0);
  signal dpd_din_data_Q             : std_logic_vector(11 downto 0);
  signal multi_din_ready            : std_logic;
  
  constant clock_period            : time := 5 ns ;
  signal start_payload             : std_logic := '0' ;

begin
--! DUT Instantiation

DUT : entity work.Control_unit_top 
port map( 

    clk                         => clk,
    reset                       => reset,
    control_unit_din_data       => control_unit_din_data,
    control_unit_din_valid      => control_unit_din_valid,
    control_unit_end_of_frame   => control_unit_end_of_frame,
    control_unit_dout_ready     => control_unit_dout_ready,
    control_unit_last_frame     => control_unit_last_frame,
    mod_cod_schemes             => mod_cod_schemes,
    num_streams                 => num_streams,
    ref_distance                => ref_distance,
    scrambler_init              => scrambler_init,
    num_words                   => num_words,
    start_tx                    => start_tx,
    phy_src_address             => phy_src_address,
    phy_dest_address            => phy_dest_address,
    scrambler_din_data          => scrambler_din_data,
    scrambler_seed              => scrambler_seed,
    scrambler_din_valid         => scrambler_din_valid,
    scrambler_din_last          => scrambler_din_last,
    scrambler_control_enable    => scrambler_control_enable,
    interleaver_dout_valid      => interleaver_dout_valid,
    interleaver_dout_data       => interleaver_dout_data,
--    interleaver_dout_last       => interleaver_dout_last,
    interleaver_last_frame      => interleaver_last_frame,
    interleaver_din_ready       => interleaver_din_ready,
    mapper_dout_ready           => mapper_dout_ready,
    mapper_dout_last            => mapper_dout_last,
    mapper_last_frame           => mapper_last_frame,
    mapper_selected_mod         => mapper_selected_mod,
    mapper_din_data             => mapper_din_data,
    mapper_din_valid            => mapper_din_valid,
    mapper_din_last             => mapper_din_last,
    mapper_end_of_frame         => mapper_end_of_frame,
    encoder_code_rate           => encoder_code_rate,
--    dpd_dout_ready              => dpd_dout_ready,
    dpd_din_valid               => dpd_din_valid,
    dpd_din_data_I              => dpd_din_data_I,
    dpd_din_data_Q              => dpd_din_data_Q,
    multi_din_ready             => multi_din_ready
--    dpd_din_ready               => dpd_din_ready

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
-- --------------------------------------------------------------------------
  -- Stimulus Process
  --------------------------------------------------------------------------
stimuli_process : process 


begin

--start_tx <= '1';
control_unit_din_data <= (others => '0');
control_unit_din_valid      <= '0';
control_unit_end_of_frame   <= '0';
mod_cod_schemes             <= "00000";
num_streams                 <= "10000" ; 
ref_distance                <= "10000000" ;
scrambler_init              <= "1001001000101001000100101111101"; --Scrambler seed
phy_src_address             <= "10000";
phy_dest_address            <= "01000";
num_words                   <= "0000000110000000" ;
start_payload               <= '0' ;
wait for 50 ns ;

 ------------------------------------------------------------------------
    -- START TRANSMISSION - Trigger PREAMBLES
    ------------------------------------------------------------------------

report  "Starting Transmission";
start_tx <= '1';
wait for 20 ns;
start_tx <= '0';
mapper_dout_ready <= '1';
wait for 4500 ns  ;

------------------------------------------------------------------------
    -- FEED CONTROL DATA (simulate signal field)
------------------------------------------------------------------------
--for i in 0 to 7 loop
--  control_unit_din_data <= std_logic_vector(to_unsigned(i, 32));
--  control_unit_din_valid <= '1';
--  wait for clock_period ;
--end loop;
--control_unit_din_valid <= '0';

wait for 50 ns;
start_payload <= '1';
wait for 10 ns ;
 ------------------------------------------------------------------------
    -- SIMULATE PAYLOAD PROCESSING
------------------------------------------------------------------------
for j in 0 to 1000 loop
  control_unit_din_data <= std_logic_vector(to_unsigned(j, 32));
  control_unit_din_valid <= '1';
  wait for clock_period ;
end loop;
control_unit_end_of_frame <= '1';
control_unit_din_valid <= '0';
wait for 50 ns;
------------------------------------------------------------------------
    -- COMPLETE SIMULATION
    ------------------------------------------------------------------------
report "End  of Simulation";
wait;
end process;
--wait for 100 ns ;
--report "Feeding Interleaver Data with 16QAM mod";
--while j < 1000 loop

--if interleaver_din_ready = '1' then
--      interleaver_dout_data <= std_logic_vector(to_unsigned(j, 32));
--      interleaver_dout_valid <= '1';
--      j := j + 1 ;
--      if  j = 896 then 
--        mapper_dout_last  <= '1' ;
--      else 
--        mapper_dout_last  <= '0' ; 
--      end if ;  
--      wait for clock_period  ;
--else 
--    interleaver_dout_valid <= '0';
--    wait until rising_edge (clk) ;
--end if ;      
      
--end loop;
--j := 0 ;
--interleaver_last_frame      <= '1';
--interleaver_dout_valid <= '0';
--wait until mapper_din_last = '1';

------------------------------------------------------------------------
--SIMULATE INTERLEAVER OUTPUT  
------------------------------------------------------------------------

interleaver_stimuli : process 
variable j   : integer range 0 to 1000 := 0 ;

begin 
mapper_dout_last <= '0';
interleaver_last_frame      <= '0';
wait on start_payload ;
report "Feeding Interleaver Data with BPSK mod";

while j < 1000 loop

if interleaver_din_ready = '1' then
      interleaver_dout_data <= std_logic_vector(to_unsigned(j, 32));
      interleaver_dout_valid <= '1';
      j := j + 1 ;
      wait for clock_period  ;
else 
    interleaver_dout_valid <= '0';
       if mapper_din_last = '1' then 
          wait for 10 ns ;
          mapper_dout_last <= '1';
       end if ;   
    wait until rising_edge (clk) ;
    
end if ; 
  
end loop;
report "End of interleaver simulation" ;      
j := 0 ;
interleaver_last_frame      <= '1';
interleaver_dout_valid <= '0';
wait until mapper_din_last = '1';

end process ;  

monitor: process(clk)
  begin
    if rising_edge(clk) then
      if control_unit_enable = '1' then
        report "Control Unit Enabled at " & time'image(now);
      end if;
   end if ;  
  end process ;   
  
    
end Behavioral;