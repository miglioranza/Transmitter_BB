----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/24/2025 11:49:37 AM
-- Design Name: 
-- Module Name: LDPC_encoder_tb - Behavioral
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

entity LDPC_encoder_tb is
--  Port ( );
end LDPC_encoder_tb;

architecture Behavioral of LDPC_encoder_tb is
constant DATA_WIDTH : integer := 32  ;
constant N          : integer := 4;  -- Number of cores or vector width
constant clk_period : time := 5 ns ; --100MHz
constant ldpc_core_clk_period  : time := 3.3 ns ; --300MHz
component LDPC_encoder 
port (
  clk            : in  std_logic ;
  reset          : in  std_logic ;
  reset_fifos    : in  std_logic ;
  ldpc_core_clk  : in  std_logic ;
  data_in        : in  std_logic_vector(DATA_WIDTH-1 downto 0) ;
  data_in_valid  : in  std_logic ;
  data_in_ready  : in  std_logic ;
--  data_in_last   : in  std_logic ;
  sel_code_rate  : in  std_logic_vector(1 downto 0); 
  end_of_frame   : in  std_logic;
--  data_out_5_6   : out std_logic_vector(DATA_WIDTH-1 downto 0);
--  data_out_3_4   : out std_logic_vector(DATA_WIDTH-1 downto 0);
--  data_out_2_3   : out std_logic_vector(DATA_WIDTH-1 downto 0);
  data_out      : out std_logic_vector(DATA_WIDTH-1 downto 0);
--  data_out_ready : out std_logic ;
  data_out_valid : out std_logic ;
  current_cr     : out std_logic_vector(1 downto 0) ;

--  data_out_valid_2_3 : out std_logic ;
--  data_out_valid_3_4 : out std_logic ;
--  data_out_valid_5_6 : out std_logic ;
  data_out_last  : out std_logic ;
  last_frame     : out std_logic
);
end component ;

-- Signal declarations for testbench
  signal clk_tb            : std_logic := '0';
  signal reset_tb          : std_logic := '0';
  signal reset_fifos_tb    : std_logic := '0';
  signal ldpc_core_clk_tb  : std_logic := '0';
  signal data_in_tb        : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
--  signal data_in_last      : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
  signal data_in_valid_tb  : std_logic := '0';
  signal data_in_ready_tb  : std_logic := '0';
  signal sel_code_rate_tb  : std_logic_vector(1 downto 0) := (others => '0');
  signal end_of_frame_tb   : std_logic := '0';
--  signal data_out0_tb      : std_logic_vector(DATA_WIDTH-1 downto 0);
--  signal data_out1_tb      : std_logic_vector(DATA_WIDTH-1 downto 0);
--  signal data_out2_tb      : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal data_out3_tb      : std_logic_vector(DATA_WIDTH-1 downto 0);
--  signal data_out_ready_tb : std_logic;
  signal data_out_valid_tb1 : std_logic ;
--  signal data_out_valid_tb2 : std_logic ;
--  signal data_out_valid_tb3 : std_logic ;
--  signal data_out_valid_tb4 : std_logic ;
  signal data_out_last_tb  : std_logic;
  signal last_frame_tb     : std_logic;
  signal data_in_last_tb   : std_logic ;
  signal current_cr_tb     : std_logic_vector (1 downto 0) := (others => '0') ;
begin


clock_generation : process 
begin 
clk_tb <= '0' ;
wait for clk_period / 2 ;
clk_tb <= '1' ;
wait for clk_period / 2 ;
end process ;

ldcp_core_generation : process 
begin 
ldpc_core_clk_tb <= '0';
wait for ldpc_core_clk_period / 2 ;
ldpc_core_clk_tb <= '1';
wait for ldpc_core_clk_period / 2 ;
end process ;

-- Instantiate the LDPC_encoder
  uut: LDPC_encoder
    port map (
      clk            => clk_tb,
      reset          => reset_tb,
      reset_fifos    => reset_fifos_tb ,
      ldpc_core_clk  => ldpc_core_clk_tb,
      data_in        => data_in_tb,
      data_in_valid  => data_in_valid_tb,
      data_in_ready  => data_in_ready_tb ,
      sel_code_rate  => sel_code_rate_tb,
      end_of_frame   => end_of_frame_tb,
--      data_in_last => data_in_last_tb ,
--      data_out_5_6 => data_out0_tb,
--      data_out_3_4 => data_out1_tb,
--      data_out_2_3 => data_out2_tb,
      data_out       => data_out3_tb,
--      data_out_ready => data_out_ready_tb,
      data_out_valid  => data_out_valid_tb1,
--      data_out_valid_2_3  => data_out_valid_tb2,
--      data_out_valid_3_4  => data_out_valid_tb3,
--      data_out_valid_5_6  => data_out_valid_tb4,
      data_out_last  => data_out_last_tb,
      current_cr     => current_cr_tb,
      last_frame     => last_frame_tb
    );

stimuli_generation : process 
variable k : integer := 1 ;
variable tmp : integer := 0 ;
begin 
--reset signal 
reset_tb       <= '1', '0' after 50 ns ;
reset_fifos_tb <= '0', '1' after 50 ns ;
report ("Start of simulation") ;
data_in_ready_tb <= '0';
end_of_frame_tb  <= '0';
wait for 50 ns ;


--Simulate the Signal Field insertion
while tmp < 8 loop 
data_in_tb <= std_logic_vector(to_unsigned(k,32)) ; 
data_in_valid_tb <= '1';
K := k + 10 ;
tmp := tmp + 1 ;
wait until rising_edge (clk_tb) ;
end loop ;
data_in_valid_tb <= '0';
end_of_frame_tb  <= '1';
k := 0 ;
tmp := 0 ;
wait for 50 ns ;
end_of_frame_tb  <= '0';
data_in_ready_tb <= '1';

--Data feeding in the  input FIFO 
while tmp < 2048 loop 
data_in_tb <= std_logic_vector(to_unsigned(k,32)) ; 
data_in_valid_tb <= '1';
k   := k + 10 ;
tmp := tmp + 1 ;
--data_in_valid_tb <= '1';
wait until rising_edge (clk_tb);
end loop ;
end_of_frame_tb <= '1';
--wait for clk_period ;
--end_of_frame_tb <= '0';
data_in_valid_tb <= '0';
report ("End of simulation") ;

wait ;
--report ("End of simulation");

end process ;
end Behavioral;
