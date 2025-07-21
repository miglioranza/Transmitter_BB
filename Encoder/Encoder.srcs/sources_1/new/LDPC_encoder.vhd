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

component sd_fec_0 
port ( 
        reset_n                 : IN STD_LOGIC := '0';
        core_clk                : IN STD_LOGIC;
        s_axi_aclk              : IN STD_LOGIC;
        s_axis_ctrl_aclk        : IN STD_LOGIC;
        s_axis_ctrl_tready      : OUT STD_LOGIC;
        s_axis_ctrl_tvalid      : IN STD_LOGIC := '0';
        s_axis_ctrl_tdata       : IN STD_LOGIC_VECTOR(31 DOWNTO 0):= (others => '0');
        s_axis_din_aclk         : IN STD_LOGIC;
        s_axis_din_tready       : OUT STD_LOGIC;
        s_axis_din_tvalid       : IN STD_LOGIC;
        s_axis_din_tlast        : IN STD_LOGIC;
        s_axis_din_tdata        : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
        m_axis_status_aclk      : IN STD_LOGIC;
        m_axis_status_tready    : IN STD_LOGIC;
        m_axis_status_tvalid    : OUT STD_LOGIC;
        m_axis_status_tdata     : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) := (others => '0');
        m_axis_dout_aclk        : IN STD_LOGIC;
        m_axis_dout_tready      : IN STD_LOGIC;  --Control Unit ready to receive the data 
        m_axis_dout_tvalid      : OUT STD_LOGIC;
        m_axis_dout_tlast       : OUT STD_LOGIC;
        m_axis_dout_tdata       : OUT STD_LOGIC_VECTOR(127 DOWNTO 0):= (others => '0')
      );
end component ;

COMPONENT axis_data_fifo_0
  PORT (
    s_axis_aresetn : IN STD_LOGIC;
    s_axis_aclk : IN STD_LOGIC;
    s_axis_tvalid : IN STD_LOGIC;
    s_axis_tready : OUT STD_LOGIC;
    s_axis_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_tvalid : OUT STD_LOGIC;
    m_axis_tready : IN STD_LOGIC;
    m_axis_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

--LDPC cores signals 
type code_rate is array (N-1 downto 0) of std_logic_vector(3 downto 0);
signal sel_cr : code_rate := ("0001", "0100","1000", "1011"); 

type data_in_cores is array(N-1 downto 0) of std_logic_vector(DATA_WIDTH downto 0) ;
signal input_data,output_data : data_in_cores := (others => (others => '0')) ;  

type data_in_128bits is array(N-1 downto 0) of std_logic_vector(CORE_DATA_WIDTH downto 0) ;
signal input_data_128bits,output_data_128bits : data_in_128bits := (others => (others => '0')) ;  

signal reset_core        : std_logic_vector(3 downto 0)  := (others => '0');
signal din_tready        : std_logic_vector(3 downto 0)  := (others => '0');
signal din_valid         : std_logic_vector(3 downto 0)  := (others => '0');
signal dout_ready        : std_logic_vector(3 downto 0)  := (others => '0');  
signal din_last          : std_logic_vector(3 downto 0)  := (others => '0');  
signal ready_fifo2core   : std_logic_vector(3 downto 0)  := (others => '0');   
signal dout_valid        : std_logic_vector(3 downto 0)  := (others => '0');
signal dout_last         : std_logic_vector(3 downto 0)  := (others => '0'); 

--Input FIFO signals
signal fifo_valid_in     : std_logic := '0' ;
signal fifo_out_ready    : std_logic := '0';
signal fifo_data_in      : std_logic_vector(DATA_WIDTH downto 0) := (others => '0');
signal fifo_valid_out    : std_logic := '0';
signal fifo_in_ready     : std_logic := '0';
signal fifo_data_out     : std_logic_vector(DATA_WIDTH downto 0) := (others => '0');

--Output FIFOs signals
type out_fifo_data_in is array(N-1 downto 0) of std_logic_vector(DATA_WIDTH downto 0) ;
signal out_fifo_input_data, out_fifo_output_data : out_fifo_data_in := (others => (others => '0')) ;   

signal out_fifo_valid_in : std_logic_vector(3 downto 0)  := (others => '0');
signal out_fifo_ready_out: std_logic_vector(3 downto 0)  := (others => '0');
signal out_fifo_valid_out: std_logic_vector(3 downto 0)  := (others => '0');
signal out_fifo_ready_in : std_logic_vector(3 downto 0)  := (others => '0');

begin

--Generate 4 instances of sd_fec_0 
LDCP_core_inst : for i in 0 to N-1 generate 
    inst: sd_fec_0 
    port map(
    reset_n             => reset_core(i),
    core_clk            => ldpc_core_clk,
    s_axi_aclk          => clk,
    s_axis_ctrl_aclk    => clk,
    s_axis_ctrl_tready  => din_tready(i),
    s_axis_ctrl_tvalid  => din_valid(i),
    s_axis_ctrl_tdata   => input_data(i),
    s_axis_din_aclk     => clk,
    s_axis_din_tready   => din_tready(i),
    s_axis_din_tvalid   => din_valid(i),
    s_axis_din_tlast    => din_last(i),
    s_axis_din_tdata    => input_data_128bits(i), 
    m_axis_status_aclk  => clk,
    m_axis_status_tready=> ready_fifo2core(i),
    m_axis_status_tvalid=> dout_valid(i),
    m_axis_status_tdata => open ,
    m_axis_dout_aclk    => clk,
    m_axis_dout_tready  => ready_fifo2core(i),
    m_axis_dout_tvalid  => dout_valid(i),
    m_axis_dout_tlast   => dout_last(i),
    m_axis_dout_tdata   => output_data_128bits(i)
    );
end generate LDCP_core_inst ;    


input_fifo : axis_data_fifo_0
  PORT MAP (
    s_axis_aresetn      => reset,
    s_axis_aclk         => clk,
    s_axis_tvalid       => fifo_valid_in ,
    s_axis_tready       => fifo_out_ready,
    s_axis_tdata        => fifo_data_in ,
    m_axis_tvalid       => fifo_valid_out ,
    m_axis_tready       => fifo_in_ready ,
    m_axis_tdata        => fifo_data_out 
  ); 
 
--Generate 4 instances of output axis_data_fifo_0
Output_FIFO_inst : for i in 0 to N-1 generate 
input_fifo : axis_data_fifo_0
  PORT MAP (
    s_axis_aresetn      => reset,
    s_axis_aclk         => clk,
    s_axis_tvalid       => out_fifo_valid_in(i) ,
    s_axis_tready       => out_fifo_ready_out(i),
    s_axis_tdata        => out_fifo_input_data(i),
    m_axis_tvalid       => out_fifo_valid_in(i),
    m_axis_tready       => out_fifo_ready_out(i),
    m_axis_tdata        => out_fifo_output_data(i) 
  ); 
end generate  Output_FIFO_inst;
end Behavioral;
