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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Control_unit_tb is
--  Port ( );
end Control_unit_tb;

architecture Behavioral of Control_unit_tb is
component Control_unit_transmitter 
port (
  
  --General input port 
    clk                         : in std_logic := '0';
    reset                       : in std_logic := '0';
    control_unit_din_data       : in std_logic_vector(31 downto 0 ) := (others => '0') ; 
    control_unit_din_valid      : in std_logic := '0';
    control_unit_end_of_frame   : in std_logic := '0';
    control_unit_dout_ready     : out std_logic := '0';
   
   -- Interface to MAC 
    mod_cod_schemes             : in std_logic_vector(3 downto 0)   := (others => '0') ; --modulation and coding schemes --> Possible values :   BPSK and CR = 1/2  => 0001 ,QPSK and CR = 2/3 => 0010 ,16-QAM/16-APSK  and CR = 3/4 => 0100  ,64-QAM/64-APSK  and CR = 5/6 => 1000              
    num_streams                 : in std_logic_vector(4 downto 0)   := (others => '0') ;
    ref_distance                : in std_logic_vector(7 downto 0)   := (others => '0') ;
    scrambler_init              : in std_logic_vector(31 downto 1)  := (others => '0') ;
    num_words                   : in std_logic_vector(15 downto 0)  := (others => '0') ; --Number of bytes per frame (payload) 
    start_tx                    : in std_logic := '0';   
    phy_src_address             : in std_logic_vector(4 downto 0 ) := (others => '0') ; 
    phy_dest_address            : in std_logic_vector(4 downto 0 ) := (others => '0') ; 
  
 --Scrambler ports 
    
    scrambler_dout_valid        : in std_logic := '0';
    scrambler_dout_last         : in std_logic := '0';
    scrambler_dout_ready        : in std_logic := '0'; --Scrambler ready to receive data from control unit  
    scrambler_din_data          : out std_logic_vector(31 downto 0) := (others => '0') ;  --Data stream coming from Scrambler 
    scrambler_seed              : out std_logic_vector(31 downto 1) := (others => '0') ;
    scrambler_din_valid         : out std_logic := '0';
    scrambler_din_last          : out std_logic := '0' ; --end of frame data
    scrambler_din_ready         : out std_logic := '0'; --Encoder ready to receive data from scrambler
    scrambler_control_enable    : out std_logic := '0' ;  --input seed valid    
    --Scrambler ready to receives the input frames 
--    scrambler_error_detect  : in std_logic := '0';  --signal coming from scrambler voter 
   
--    --Interleaver ports 
--      interleaver_dout_ready      : in std_logic := '0'; --Interleaver ready to receive data stream 
    interleaver_dout_valid      : in std_logic := '0';
    interleaver_dout_data       : in std_logic_vector(31 downto 0) := (others => '0'); 
    interleaver_out_code_rate   : in std_logic_vector(3 downto 0) := (others => '0'); 
    interleaver_dout_last       : in std_logic := '0';
    interleaver_last_frame      : in std_logic := '0';    
    interleaver_mod_type        : out std_logic_vector(3 downto 0) := (others => '0'); 
    interleaver_din_data        : out std_logic_vector(31 downto 0) := (others => '0'); --Encoded data without padding bits 
    interleaver_din_valid       : out std_logic := '0';
    interleaver_din_ready       : out std_logic := '0';
     
--    interleaver_error_detect    : in std_logic := '0';
     
 -- Mapper ports 
   
   mapper_dout_ready           : in std_logic  := '0' ; --Mapper ready to receive data stream 
   mapper_mod_from_splitter    : in std_logic_vector(2 downto 0) := (others => '0') ; --Modulation scheme coming from the bit splitter 
   mapper_dout_data_I          : in std_logic_vector( 11 downto 0) := (others => '0') ; --Output data stream from mapper 
   mapper_dout_data_Q          : in std_logic_vector( 11 downto 0) := (others => '0') ; --Output data stream from mapper 
   mapper_dout_valid           : in std_logic := '0';
   mapper_dout_last            : in std_logic := '0'; -- This port signals if the mapper finished to processing the signal field block
   mapper_last_frame           : in std_logic := '0'; 
   mapper_selected_mod         : out std_logic_vector(2 downto 0) := (others => '0') ; 
   mapper_din_data             : out std_logic_vector(5 downto 0) := (others => '0') ; --Preamble input data to mapper 
   mapper_din_valid            : out std_logic := '0' ;
   mapper_din_ready            : out std_logic := '0' ;
   mapper_signal_field_enable  : out std_logic := '0' ;  --signal for noticing the symbol mapper that the input bits are from the signal field 
   mapper_pilot_insertion_en   : out std_logic := '0' ;  --signal for noticing the symbol mapper  if  pilot insertion has been completed or not 
   mapper_end_of_frame         : out std_logic := '0' ;    
--   mapper_error_detected       : in std_logic := '0';

--   --DPD filter 
   
   dpd_dout_ready              :  in std_logic := '0';
   dpd_din_valid               :  out std_logic := '0';
   dpd_din_data_I              :  out std_logic_vector(11 downto 0)  := (others => '0') ;
   dpd_din_data_Q              :  out std_logic_vector(11 downto 0)  := (others => '0') ;
   dpd_din_ready               :  out std_logic := '0'
   
);
end component ;
-- Testbench signal declarations
signal clk                       : std_logic := '0';
signal reset                     : std_logic := '0';
signal control_unit_din_data     : std_logic_vector(31 downto 0) := (others => '0');
signal control_unit_din_valid    : std_logic := '0';
signal control_unit_end_of_frame : std_logic := '0';
signal control_unit_dout_ready   : std_logic := '0';

-- Interface to MAC
signal mod_cod_schemes           : std_logic_vector(3 downto 0) := (others => '0');
signal num_streams               : std_logic_vector(4 downto 0) := (others => '0');
signal ref_distance              : std_logic_vector(7 downto 0) := (others => '0');
signal scrambler_init            : std_logic_vector(31 downto 1) := (others => '0');
signal num_words                 : std_logic_vector(15 downto 0) := (others => '0');
signal start_tx                  : std_logic := '0';
signal phy_src_address           : std_logic_vector(4 downto 0) := (others => '0');
signal phy_dest_address          : std_logic_vector(4 downto 0) := (others => '0');

-- Scrambler ports
signal scrambler_dout_valid      : std_logic := '0';
signal scrambler_dout_last       : std_logic := '0';
signal scrambler_dout_ready      : std_logic := '0';
signal scrambler_din_data        : std_logic_vector(31 downto 0) := (others => '0');
signal scrambler_seed            : std_logic_vector(31 downto 1) := (others => '0');
signal scrambler_din_valid       : std_logic := '0';
signal scrambler_din_last        : std_logic := '0';
signal scrambler_din_ready       : std_logic := '0';
signal scrambler_control_enable  : std_logic := '0';

-- Interleaver ports
signal interleaver_dout_valid    : std_logic := '0';
signal interleaver_dout_data     : std_logic_vector(31 downto 0) := (others => '0');
signal interleaver_out_code_rate : std_logic_vector(3 downto 0) := (others => '0');
signal interleaver_dout_last     : std_logic := '0';
signal interleaver_last_frame    : std_logic := '0';
signal interleaver_mod_type      : std_logic_vector(3 downto 0) := (others => '0');
signal interleaver_din_data      : std_logic_vector(31 downto 0) := (others => '0');
signal interleaver_din_valid     : std_logic := '0';
signal interleaver_din_ready     : std_logic := '0';

-- Mapper ports
signal mapper_dout_ready         : std_logic := '0';
signal mapper_mod_from_splitter  : std_logic_vector(2 downto 0) := (others => '0');
signal mapper_dout_data_I        : std_logic_vector(11 downto 0) := (others => '0');
signal mapper_dout_data_Q        : std_logic_vector(11 downto 0) := (others => '0');
signal mapper_dout_valid         : std_logic := '0';
signal mapper_dout_last          : std_logic := '0';
signal mapper_last_frame         : std_logic := '0';
signal mapper_selected_mod       : std_logic_vector(2 downto 0) := (others => '0');
signal mapper_din_data           : std_logic_vector(5 downto 0) := (others => '0');
signal mapper_din_valid          : std_logic := '0';
signal mapper_din_ready          : std_logic := '0';
signal mapper_signal_field_enable: std_logic := '0';
signal mapper_pilot_insertion_en : std_logic := '0';
signal mapper_end_of_frame       : std_logic := '0';

-- DPD filter
signal dpd_dout_ready            : std_logic := '0';
signal dpd_din_valid             : std_logic := '0';
signal dpd_din_data_I            : std_logic_vector(11 downto 0) := (others => '0');
signal dpd_din_data_Q            : std_logic_vector(11 downto 0) := (others => '0');
signal dpd_din_ready             : std_logic := '0';

constant clock_period : time := 5 ns ;


begin
-- DUT Instantiation

DUT : Control_unit_transmitter 
port map( 

    clk                         => clk,
    reset                       => reset,
    control_unit_din_data       => control_unit_din_data,
    control_unit_din_valid      => control_unit_din_valid,
    control_unit_end_of_frame   => control_unit_end_of_frame,
    control_unit_dout_ready     => control_unit_dout_ready,

    -- Interface to MAC
    mod_cod_schemes             => mod_cod_schemes,
    num_streams                 => num_streams,
    ref_distance                => ref_distance,
    scrambler_init              => scrambler_init,
    num_words                   => num_words,
    start_tx                    => start_tx,
    phy_src_address             => phy_src_address,
    phy_dest_address            => phy_dest_address,

    -- Scrambler ports
    scrambler_dout_valid        => scrambler_dout_valid,
    scrambler_dout_last         => scrambler_dout_last,
    scrambler_dout_ready        => scrambler_dout_ready,
    scrambler_din_data          => scrambler_din_data,
    scrambler_seed              => scrambler_seed,
    scrambler_din_valid         => scrambler_din_valid,
    scrambler_din_last          => scrambler_din_last,
    scrambler_din_ready         => scrambler_din_ready,
    scrambler_control_enable    => scrambler_control_enable,

    -- Interleaver ports
    interleaver_dout_valid      => interleaver_dout_valid,
    interleaver_dout_data       => interleaver_dout_data,
    interleaver_out_code_rate   => interleaver_out_code_rate,
    interleaver_dout_last       => interleaver_dout_last,
    interleaver_last_frame      => interleaver_last_frame,
    interleaver_mod_type        => interleaver_mod_type,
    interleaver_din_data        => interleaver_din_data,
    interleaver_din_valid       => interleaver_din_valid,
    interleaver_din_ready       => interleaver_din_ready,

    -- Mapper ports
    mapper_dout_ready           => mapper_dout_ready,
    mapper_mod_from_splitter    => mapper_mod_from_splitter,
    mapper_dout_data_I          => mapper_dout_data_I,
    mapper_dout_data_Q          => mapper_dout_data_Q,
    mapper_dout_valid           => mapper_dout_valid,
    mapper_dout_last            => mapper_dout_last,
    mapper_last_frame           => mapper_last_frame,
    mapper_selected_mod         => mapper_selected_mod,
    mapper_din_data             => mapper_din_data,
    mapper_din_valid            => mapper_din_valid,
    mapper_din_ready            => mapper_din_ready,
    mapper_signal_field_enable  => mapper_signal_field_enable,
    mapper_pilot_insertion_en   => mapper_pilot_insertion_en,
    mapper_end_of_frame         => mapper_end_of_frame,

    -- DPD filter
    dpd_dout_ready              => dpd_dout_ready,
    dpd_din_valid               => dpd_din_valid,
    dpd_din_data_I              => dpd_din_data_I,
    dpd_din_data_Q              => dpd_din_data_Q,
    dpd_din_ready               => dpd_din_ready

);
    -- Clock process definition
    clk_process :process
    begin
        clk <= '0';
        wait for clock_period/2;
        clk <= '1';
        wait for clock_period/2;
    end process;
stimuli_process : process 
begin
reset <= '1', '0' after 20 ns ;


end process ;
end Behavioral;
