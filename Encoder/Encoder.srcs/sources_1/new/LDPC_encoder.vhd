----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/21/2025 09:59:31 AM
-- Design Name: 
-- Module Name: LDPC_encoder - Behavioral
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

entity LDPC_encoder is
  generic (
  DATA_WIDTH        : integer := 31 ;
  CORE_DATA_WIDTH  : integer := 127 ;
  N                 : integer := 4
  );
  Port ( 
  clk            : in  std_logic ;
  reset          : in  std_logic ;
  ldpc_core_clk  : in  std_logic ;
  data_in        : in  std_logic_vector(DATA_WIDTH downto 0) ;
  data_in_valid  : in  std_logic ;
  sel_code_rate  : in  std_logic_vector(3 downto 0); 
  end_of_frame   : in  std_logic;
  data_out       : out std_logic(DATA_WIDTH downto 0);
  data_out_ready : out std_logic ;
  data_out_valid : out std_logic ;
  data_out_last  : out std_logic ;
  current_cr     : out std_logic_vector(2 downto 0) ;
  last_frame     : out std_logic 
  
  );
end LDPC_encoder;

architecture Behavioral of LDPC_encoder is



COMPONENT axis_data_fifo_0
  PORT (
    s_axis_aresetn  : IN STD_LOGIC;
    s_axis_aclk     : IN STD_LOGIC;
    s_axis_tvalid   : IN STD_LOGIC;
    s_axis_tready   : OUT STD_LOGIC;
    s_axis_tdata    : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_tlast    : IN STD_LOGIC;
    m_axis_tvalid   : OUT STD_LOGIC;
    m_axis_tready   : IN STD_LOGIC;
    m_axis_tdata    : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

component Cores_controller
  Port ( 
  
  clk               : in std_logic ;
  reset             : in std_logic ;
  ldpc_core_clk     : in std_logic ;
  end_of_frame      : in  std_logic;
  code_rate         : in std_logic_vector(N-1 downto 0);
  din_ready         : in std_logic_vector(N-1 downto 0);
  din_valid         : in std_logic_vector(N-1 downto 0);
  din_data_core0    : in std_logic_vector(DATA_WIDTH-1 downto 0);
  din_data_core1    : in std_logic_vector(DATA_WIDTH-1 downto 0);
  din_data_core2    : in std_logic_vector(DATA_WIDTH-1 downto 0);
  din_data_core3    : in std_logic_vector(DATA_WIDTH-1 downto 0);
  dout_valid        : out std_logic_vector(N-1 downto 0); 
  dout_ready        : out std_logic_vector(N-1 downto 0); 
  dout_data0        : out std_logic_vector(DATA_WIDTH-1 downto 0); 
  dout_data1        : out std_logic_vector(DATA_WIDTH-1 downto 0); 
  dout_data2        : out std_logic_vector(DATA_WIDTH-1 downto 0); 
  dout_data3        : out std_logic_vector(DATA_WIDTH-1 downto 0); 
  dout_last         : out std_logic_vector(N-1 downto 0);
  last_frame        : out std_logic 
  
  ); 
  end component ;



--Input FIFO signals
type input_fifo_data is array(N-1 downto 0) of std_logic_vector(DATA_WIDTH downto 0) ;
signal fifo_data_in,fifo_data_out : input_fifo_data := (others => (others => '0')) ;   

signal fifo_valid_in     : std_logic_vector(3 downto 0)  := (others => '0');
signal fifo_out_ready    : std_logic_vector(3 downto 0)  := (others => '0');
signal fifo_valid_out    : std_logic_vector(3 downto 0)  := (others => '0');
signal fifo_in_ready     : std_logic_vector(3 downto 0)  := (others => '0');

--Output FIFOs signals
type out_fifo_data_in is array(N-1 downto 0) of std_logic_vector(DATA_WIDTH downto 0) ;
signal out_fifo_input_data, out_fifo_output_data : out_fifo_data_in := (others => (others => '0')) ;   

signal out_fifo_valid_in : std_logic_vector(3 downto 0)  := (others => '0');
signal out_fifo_ready_out: std_logic_vector(3 downto 0)  := (others => '0');
signal out_fifo_valid_out: std_logic_vector(3 downto 0)  := (others => '0');
signal out_fifo_ready_in : std_logic_vector(3 downto 0)  := (others => '0');
signal out_fifo_last_in  : std_logic_vector(3 downto 0)  := (others => '0');
begin

--Generate 4 instances of input axis_data_fifo_0
Input_FIFO_inst : for i in 0 to N-1 generate
input_fifo : axis_data_fifo_0
  PORT MAP (
    s_axis_aresetn      => reset,
    s_axis_aclk         => clk,
    s_axis_tvalid       => fifo_valid_in(i),
    s_axis_tready       => fifo_in_ready(i),
    s_axis_tdata        => fifo_data_in(i) ,
    s_axis_tlast        => open,
    m_axis_tvalid       => fifo_valid_in(i) ,
    m_axis_tready       => fifo_in_ready(i) ,
    m_axis_tdata        => fifo_data_out(i) 
  ); 
 end generate Input_FIFO_inst ;
 
 --Controller instantiation 
 Cores_Contr : Cores_controller 
 port map (
     clk                => clk ,
     reset              => reset,
     ldpc_core_clk      => ldpc_core_clk,
     end_of_frame       => end_of_frame,
     code_rate          => sel_code_rate,
     din_ready          => out_fifo_ready_out,
     din_valid          => fifo_valid_in,
     din_data_core0     => fifo_data_in(0) ,
     din_data_core1     => fifo_data_in(1) ,
     din_data_core2     => fifo_data_in(2) ,
     din_data_core3     => fifo_data_in(3) ,
     dout_valid         => out_fifo_valid_in,
     dout_ready         => fifo_in_ready,
     dout_data0         => out_fifo_input_data(0),
     dout_data1         => out_fifo_input_data(1),
     dout_data2         => out_fifo_input_data(2),
     dout_data3         => out_fifo_input_data(3),
     dout_last          => out_fifo_last_in
 
 );
 
--Generate 4 instances of output axis_data_fifo_0
Output_FIFO_inst : for i in 0 to N-1 generate 
output_fifo : axis_data_fifo_0
  PORT MAP (
    s_axis_aresetn      => reset,
    s_axis_aclk         => clk,
    s_axis_tvalid       => out_fifo_valid_in(i) ,
    s_axis_tready       => out_fifo_ready_out(i),
    s_axis_tdata        => out_fifo_input_data(i),
    s_axis_tlast        => out_fifo_last_in(i),
    m_axis_tvalid       => out_fifo_valid_in(i),
    m_axis_tready       => out_fifo_ready_out(i),
    m_axis_tdata        => out_fifo_output_data(i) 
  ); 
end generate  Output_FIFO_inst;
end Behavioral;
