----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/18/2025 10:05:05 AM
-- Design Name: 
-- Module Name: Control_unit_top - Behavioral
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

entity Control_unit_top is
  Port ( 
  --General input port 
    clk                         : in std_logic := '0';
    reset                       : in std_logic := '0';
    bytes_per_frame             : in std_logic_vector(16 downto 0 ) := (others => '0') ; --Number of bytes per frame (payload) 
    mod_cod_schemes             : in std_logic_vector(5 downto 0)   := (others => '0') ; --mdoulation and coding schemes --> starting schemes  BPSk and CR = 1/2
  --Scrambler ports for fault tolerance analysis 
    
    scrambler_dout_valid        : in std_logic := '0' ;
    scrambler_dout_ready        : in std_logic := '0';  
    scrambler_dout_data         : in std_logic_vector(31 downto 0) := (others => '0') ;  --Data stream comiing from Scrambler 
    scrambler_seed              : out std_logic_vector(31 downto 1) := (others => '0') ;
    --Scrambler ready to receives the input frames 
--    scrambler_error_detect  : in std_logic := '0';  --signal coming from scrambler voter 
   
   --Because the Signal Field must be added before the encoder, the data coming from the scrambler pass throught the TCU and then to the enconder 
    --Encoder ports 
    encoder_dout_ready          : in std_logic := '0' ;  --Encoder ready to receive data 
    encoder_finish2encode       : in std_logic := '0' ; 
    encoder_fifo_data_count     : in std_logic_vector(12 downto 0) := (others => '0');
    encoder_din_data            : out std_logic_vector(31 downto 0) := (others => '0'); --Data stream fed to the encoder 
    encoder_code_rate           : out std_logic_vector(1 downto 0) := (others => '0'); --coding scheme selected for encoder --> starting CR = 1/2 ;
    encoder_din_valid           : out std_logic := '0' ;
    encoder_din_last            : out std_logic := '0' ;
    
    --Interleaver ports 
    interleaver_dout_ready      : in std_logic := '0'; --Interleaver ready to receive data stream 
    interleaver_dout_valid      : in std_logic := '0';
    interleaver_code_rate       : out std_logic_vector(1 downto 0) := (others => '0'); 
--    interleaver_error_detect    : in std_logic := '0';
--    interleaver_dout_data       : in std_logic_vector(31 downto 0) := (others => '0') ; --Corrupted data 

   -- Bit splitter ports
    splitter_dout_valid         : in std_logic := '0' ;
    splitter_dout_ready         : in std_logic := '0' ;--Splitter ready to receive data stream 
    splitter_dout_data          : in std_logic_vector(5 downto 0) := (others => '0') ; --Data output from srambler . since the preamble is fed from the control unit to the mapper and it has only one input for data stream , the output of the splitter 
    -- must pass through the TCU and then to then to mapper   
    splitter_mod_type           : out std_logic_vector(2 downto 0) := (others => '0') ;
    splitter_din_ready          : out std_logic := '0'; --since the preambles are added before mapper , when mapper is ready sends the short and long sequences (640 + 128 bits ) to the mapper and when it finishes start sending the signal field + payload
--    splitter_din_data           : out std_logic_vector(5 downto 0) := ( others => '0') ; --Corrupted data 
--    splitter_error_detect       : in std_logic := '0' ;
     
 -- Mapper ports 
   
   mapper_dout_ready           : in std_logic  := '0' ; --Mapper ready to receive data stream 
   mapper_mod_from_splitter    : in std_logic_vector(2 downto 0) := (others => '0') ; --Modulation scheme coming from the bit splitter 
   mapper_selected_mod         : out std_logic_vector(2 downto 0) := (others => '0') ; 
   mapper_din                  : out std_logic_vector(5 downto 0) := (others => '0') ; --Preamble input data to mapper 
   mapper_din_valid            : out std_logic := '0' ;
   
   
   
             );
end Control_unit_top;
 
architecture Behavioral of Control_unit_top is

begin


end Behavioral;
