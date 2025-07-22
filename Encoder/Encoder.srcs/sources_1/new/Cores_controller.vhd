----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/22/2025 11:05:51 AM
-- Design Name: 
-- Module Name: Cores_controller - Behavioral
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

entity Cores_controller is
  generic 
   (
  N                 : integer := 4;
  DATA_WIDTH        : integer := 32 ;
  CORE_DATA_WIDTH   : integer := 128
 
  );  
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
end Cores_controller;

architecture Behavioral of Cores_controller is
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

--LDPC cores signals 
type sel_code_rate is array (N-1 downto 0) of std_logic_vector(3 downto 0);
signal sel_cr : sel_code_rate := ("0001", "0100","1000", "1011"); 

type data_in_128bits is array(N-1 downto 0) of std_logic_vector(CORE_DATA_WIDTH downto 0) ;
signal input_data_128bits,output_data_128bits : data_in_128bits := (others => (others => '0')) ; 

signal reset_core        : std_logic_vector(N-1 downto 0)  := (others => '0');
signal din_last          : std_logic_vector(N-1 downto 0)  := (others => '0');

begin

--Generate 4 instances of sd_fec_0 
LDCP_core_inst : for i in 0 to N-1 generate 
    inst: sd_fec_0 
    port map(
    reset_n             => reset_core(i),
    core_clk            => ldpc_core_clk,
    s_axi_aclk          => clk,
    s_axis_ctrl_aclk    => clk,
    s_axis_ctrl_tready  => open,
    s_axis_ctrl_tvalid  => din_valid(i),
    s_axis_ctrl_tdata   => sel_cr(i),
    s_axis_din_aclk     => clk,
    s_axis_din_tready   => dout_ready(i),
    s_axis_din_tvalid   => din_valid(i),
    s_axis_din_tlast    => din_last(i),
    s_axis_din_tdata    => input_data_128bits(i), 
    m_axis_status_aclk  => clk,
    m_axis_status_tready=> open,
    m_axis_status_tvalid=> dout_valid(i),
    m_axis_status_tdata => open ,
    m_axis_dout_aclk    => clk,
    m_axis_dout_tready  => din_ready(i),
    m_axis_dout_tvalid  => dout_valid(i),
    m_axis_dout_tlast   => dout_last(i),
    m_axis_dout_tdata   => output_data_128bits(i)
    );
end generate LDCP_core_inst ;  

end Behavioral;
