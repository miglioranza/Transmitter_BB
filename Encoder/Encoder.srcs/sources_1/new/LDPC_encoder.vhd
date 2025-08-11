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
  DATA_WIDTH        : integer := 32 ;
  CORE_DATA_WIDTH  : integer := 127 ;
  N                 : integer := 4
  );
  Port ( 
  clk            : in  std_logic ;
  reset          : in  std_logic ;
  reset_fifos    : in  std_logic ;
  ldpc_core_clk  : in  std_logic ;
  data_in        : in  std_logic_vector(DATA_WIDTH-1 downto 0) ;
  data_in_valid  : in  std_logic ;
  data_in_ready  : in  std_logic ;
  sel_code_rate  : in  std_logic_vector(N-1 downto 0); 
  end_of_frame   : in  std_logic;
  data_out0      : out std_logic_vector(DATA_WIDTH-1 downto 0);
  data_out1      : out std_logic_vector(DATA_WIDTH-1 downto 0);
  data_out2      : out std_logic_vector(DATA_WIDTH-1 downto 0);
  data_out3      : out std_logic_vector(DATA_WIDTH-1 downto 0);
  data_out_ready : out std_logic ;
  data_out_valid : out std_logic_vector(N-1 downto 0) ;
  data_out_last  : out std_logic ;
--  current_cr     : out std_logic_vector(2 downto 0) ;
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
    s_axis_tdata    : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
    s_axis_tlast    : IN STD_LOGIC;
    m_axis_tvalid   : OUT STD_LOGIC;
    m_axis_tready   : IN STD_LOGIC;
    m_axis_tdata    : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
    m_axis_tlast    : OUT STD_LOGIC ;
    axis_wr_data_count : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)

  );
END COMPONENT;
COMPONENT axis_data_fifo_1
  PORT (
    s_axis_aresetn  : IN STD_LOGIC;
    s_axis_aclk     : IN STD_LOGIC;
    s_axis_tvalid   : IN STD_LOGIC;
    s_axis_tready   : OUT STD_LOGIC;
    s_axis_tdata    : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
    s_axis_tlast    : IN STD_LOGIC;
    m_axis_tvalid   : OUT STD_LOGIC;
    m_axis_tready   : IN STD_LOGIC;
    m_axis_tdata    : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
    m_axis_tlast    : OUT STD_LOGIC 
  );
END COMPONENT;

component Cores_controller
  Port ( 
  
  clk               : in std_logic ;
  reset             : in std_logic ;
  ldpc_core_clk     : in std_logic ;
  din_last          : in std_logic_vector(N-1 downto 0);
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
type data_out_fifo is array(N-1 downto 0) of std_logic_vector(DATA_WIDTH-1 downto 0) ;
signal fifo_data_out, fifo_data_count    : data_out_fifo := (others => (others => '0')) ;

signal fifo_data_in      : std_logic_vector(DATA_WIDTH-1 downto 0) ;
signal fifo_data_in_last : std_logic  := '0'; 
signal fifo_out_ready    : std_logic_vector(N-1 downto 0) ;
signal fifo_valid_out    : std_logic_vector(N-1 downto 0) ;
signal fifo_in_ready     : std_logic_vector(N-1 downto 0) ;
signal fifo_data_out_last: std_logic_vector(N-1 downto 0 );
--Output FIFOs signals
type out_fifo_data_in is array(N-1 downto 0) of std_logic_vector(DATA_WIDTH-1 downto 0) ;
signal out_fifo_input_data, out_fifo_output_data : out_fifo_data_in := (others => (others => '0')) ;   

signal out_fifo_valid_in : std_logic_vector(3 downto 0)  := (others => '0');
signal out_fifo_ready_out: std_logic_vector(3 downto 0)  := (others => '0');
signal out_fifo_valid_out: std_logic_vector(3 downto 0)  := (others => '0');
signal out_fifo_ready_in : std_logic_vector(3 downto 0)  := (others => '0');
signal out_fifo_last_in  : std_logic_vector(3 downto 0)  := (others => '0');
signal out_fifo_last_out : std_logic_vector(3 downto 0)  := (others => '0'); 
begin

Input_FIFO_inst : for k in 0 to N-1 generate  
input_fifo : axis_data_fifo_0
  PORT MAP (
    s_axis_aresetn      => reset_fifos,
    s_axis_aclk         => clk,
    s_axis_tvalid       => data_in_valid,
    s_axis_tready       => open,
    s_axis_tdata        => data_in ,
    s_axis_tlast        => end_of_frame ,
    m_axis_tvalid       => fifo_valid_out(k) ,
    m_axis_tready       => fifo_in_ready(k) ,
    m_axis_tdata        => fifo_data_out(k) ,
    m_axis_tlast        => fifo_data_out_last(k),
    axis_wr_data_count  => fifo_data_count(k)

  ); 
 end generate ;
 --Controller instantiation 
 Cores_Contr : Cores_controller 
 port map (
     clk                => clk ,
     reset              => reset,
     ldpc_core_clk      => ldpc_core_clk,
     din_last           => fifo_data_out_last,
     din_ready          => out_fifo_ready_out,
     din_valid          => fifo_valid_out,
     din_data_core0     => fifo_data_out(0) ,
     din_data_core1     => fifo_data_out(1) ,
     din_data_core2     => fifo_data_out(2) ,
     din_data_core3     => fifo_data_out(3) ,
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
output_fifo : axis_data_fifo_1
  PORT MAP (
    s_axis_aresetn      => reset_fifos,
    s_axis_aclk         => clk,
    s_axis_tvalid       => out_fifo_valid_in(i) ,
    s_axis_tready       => out_fifo_ready_out(i),
    s_axis_tdata        => out_fifo_input_data(i),
    s_axis_tlast        => out_fifo_last_in(i),
    m_axis_tvalid       => data_out_valid(i),
    m_axis_tready       => data_in_ready,
    m_axis_tdata        => out_fifo_output_data(i),
    m_axis_tlast        => out_fifo_last_out(i)
  ); 
end generate  Output_FIFO_inst;
data_out0 <= out_fifo_output_data(0) ;
data_out1 <= out_fifo_output_data(1) ;
data_out2 <= out_fifo_output_data(2) ;
data_out3 <= out_fifo_output_data(3) ;
 
end Behavioral;
