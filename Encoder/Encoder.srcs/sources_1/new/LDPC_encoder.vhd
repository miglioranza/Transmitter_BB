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
  CORE_DATA_WIDTH   : integer := 128 ;
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
    axis_wr_data_count : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    almost_full     : OUT STD_LOGIC


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

component Data_controller 
port (
  clk               : in std_logic ;
  reset             : in std_logic ;
  din_last          : in std_logic_vector(N-1 downto 0);
  din_ready         : in std_logic_vector(N-1 downto 0);
  din_valid         : in std_logic_vector(N-1 downto 0);
  din_data_core0    : in std_logic_vector(DATA_WIDTH-1 downto 0) ;
  din_data_core1    : in std_logic_vector(DATA_WIDTH-1 downto 0);
  din_data_core2    : in std_logic_vector(DATA_WIDTH-1 downto 0) ;
  din_data_core3    : in std_logic_vector(DATA_WIDTH-1 downto 0) ;
  dout_valid        : out std_logic_vector(N-1 downto 0) := (others => '0') ;
  dout_ready        : out std_logic_vector(N-1 downto 0):= (others => '0') ; 
  dout_data0        : out std_logic_vector(CORE_DATA_WIDTH-1 downto 0); 
  dout_data1        : out std_logic_vector(CORE_DATA_WIDTH-1 downto 0); 
  dout_data2        : out std_logic_vector(CORE_DATA_WIDTH-1 downto 0); 
  dout_data3        : out std_logic_vector(CORE_DATA_WIDTH-1 downto 0); 
  dout_last         : out std_logic_vector(N-1 downto 0);  
  reset_cores       : out std_logic;       
  last_frame        : out std_logic 
        
);
end component ;
COMPONENT sd_fec_0
  PORT (
    reset_n : IN STD_LOGIC;
    core_clk : IN STD_LOGIC;
    s_axi_aclk : IN STD_LOGIC;
    s_axis_ctrl_aclk : IN STD_LOGIC;
    s_axis_ctrl_tready : OUT STD_LOGIC;
    s_axis_ctrl_tvalid : IN STD_LOGIC;
    s_axis_ctrl_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_din_aclk : IN STD_LOGIC;
    s_axis_din_tready : OUT STD_LOGIC;
    s_axis_din_tvalid : IN STD_LOGIC;
    s_axis_din_tlast : IN STD_LOGIC;
    s_axis_din_tdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    m_axis_status_aclk : IN STD_LOGIC;
    m_axis_status_tready : IN STD_LOGIC;
    m_axis_status_tvalid : OUT STD_LOGIC;
    m_axis_status_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_dout_aclk : IN STD_LOGIC;
    m_axis_dout_tready : IN STD_LOGIC;
    m_axis_dout_tvalid : OUT STD_LOGIC;
    m_axis_dout_tlast : OUT STD_LOGIC;
    m_axis_dout_tdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0)
  );
END COMPONENT;
--component Cores_controller
--  Port ( 
  
--  clk               : in std_logic ;
--  reset             : in std_logic ;
--  ldpc_core_clk     : in std_logic ;
--  din_last          : in std_logic_vector(N-1 downto 0);
--  din_ready         : in std_logic_vector(N-1 downto 0);
--  din_valid         : in std_logic_vector(N-1 downto 0);
--  din_data_core0    : in std_logic_vector(DATA_WIDTH-1 downto 0);
--  din_data_core1    : in std_logic_vector(DATA_WIDTH-1 downto 0);
--  din_data_core2    : in std_logic_vector(DATA_WIDTH-1 downto 0);
--  din_data_core3    : in std_logic_vector(DATA_WIDTH-1 downto 0);
--  dout_valid        : out std_logic_vector(N-1 downto 0); 
--  dout_ready        : out std_logic_vector(N-1 downto 0); 
--  dout_data0        : out std_logic_vector(DATA_WIDTH-1 downto 0); 
--  dout_data1        : out std_logic_vector(DATA_WIDTH-1 downto 0); 
--  dout_data2        : out std_logic_vector(DATA_WIDTH-1 downto 0); 
--  dout_data3        : out std_logic_vector(DATA_WIDTH-1 downto 0); 
--  dout_last         : out std_logic_vector(N-1 downto 0);
--  last_frame        : out std_logic 
--  ); 
--  end component ;

--Data_controller signals 
signal reset_cores_controller : std_logic := '0';
signal dout_valid_controller  : std_logic_vector(N-1 downto 0) := (others => '0') ;
signal din_ready_controller   : std_logic_vector(N-1 downto 0) := (others => '0') ;
signal dout_last_controller   : std_logic_vector(N-1 downto 0) := (others => '0') ;
signal dout_data_controller0 ,dout_data_controller1 ,dout_data_controller2 ,dout_data_controller3  : std_logic_vector(CORE_DATA_WIDTH-1 downto 0);
type code_rate is array (N-1 downto 0) of std_logic_vector(DATA_WIDTH-1 downto 0);
signal sel_cr : code_rate := (
"00000000000010000000000000000001", --Code rate = 1/2 , N = 1296 
"00000000000010000000000000000100", --Code rate = 2/3 , N = 1296 
"00000000000010000000000000001000", --Code rate = 3/4 , N = 1944
"00000000000010000000000000001011");--Code Rate = 5/6 , N = 1944 

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
signal out_fifo_output_data : out_fifo_data_in := (others => (others => '0')) ;   
type out_fifo_dout is array(N-1 downto 0) of std_logic_vector(CORE_DATA_WIDTH-1 downto 0) ;
signal out_fifo_input_data  : out_fifo_dout  := (others => (others => '0')) ; 
signal out_fifo_valid_in : std_logic_vector(3 downto 0)  := (others => '0');
signal out_fifo_ready_out: std_logic_vector(3 downto 0)  := (others => '0');
signal out_fifo_valid_out: std_logic_vector(3 downto 0)  := (others => '0');
signal out_fifo_ready_in : std_logic_vector(3 downto 0)  := (others => '0');
signal out_fifo_last_in  : std_logic_vector(3 downto 0)  := (others => '0');
signal out_fifo_last_out : std_logic_vector(3 downto 0)  := (others => '0'); 

attribute dont_touch : string ;
attribute dont_touch of Data_controller : component is "yes" ;
--sequential signals for pipelines
signal input_data_register0, input_data_register1, input_data_register2, input_data_register3 : std_logic_vector(DATA_WIDTH -1 downto 0) := (others => '0') ;
begin

--Input_FIFO_inst : for k in 0 to N-1 generate  
--input_fifo : axis_data_fifo_0
--  PORT MAP (
--    s_axis_aresetn      => reset_fifos,
--    s_axis_aclk         => clk,
--    s_axis_tvalid       => data_in_valid,
--    s_axis_tready       => open,
--    s_axis_tdata        => data_in ,
--    s_axis_tlast        => end_of_frame ,
--    m_axis_tvalid       => fifo_valid_out(k) ,
--    m_axis_tready       => fifo_in_ready(k) ,
--    m_axis_tdata        => fifo_data_out(k) ,
--    m_axis_tlast        => fifo_data_out_last(k),
--    axis_wr_data_count  => fifo_data_count(k),
--    almost_full         => open

--  ); 
-- end generate ;
Data_controller_inst : Data_controller 
port map (
clk            => clk,
reset          => reset ,
din_last       =>  fifo_data_out_last,
din_ready      => din_ready_controller,
din_valid      => fifo_valid_out,
din_data_core0 =>fifo_data_out(0),
din_data_core1 =>fifo_data_out(1),
din_data_core2 =>fifo_data_out(2),
din_data_core3 =>fifo_data_out(3),
dout_valid     => dout_valid_controller,
dout_ready     => fifo_in_ready,
dout_data0     => dout_data_controller0,
dout_data1     => dout_data_controller1,
dout_data2     => dout_data_controller2,
dout_data3     => dout_data_controller3,
dout_last      => dout_last_controller,
reset_cores    => reset_cores_controller,
last_frame     => open 

);
-- Instance 0
LDPC_core0 : sd_fec_0
  PORT MAP (
    reset_n => reset_cores_controller,
    core_clk => ldpc_core_clk,
    s_axi_aclk => clk,
    s_axis_ctrl_aclk => clk,
    s_axis_ctrl_tready => open,
    s_axis_ctrl_tvalid => dout_valid_controller(0),
    s_axis_ctrl_tdata => sel_cr(0),
    s_axis_din_aclk => clk,
    s_axis_din_tready => din_ready_controller(0),
    s_axis_din_tvalid => dout_valid_controller(0),
    s_axis_din_tlast => dout_last_controller(0),
    s_axis_din_tdata => dout_data_controller0,
    m_axis_status_aclk => clk,
    m_axis_status_tready => out_fifo_ready_out(0),
    m_axis_status_tvalid => open,
    m_axis_status_tdata => open,
    m_axis_dout_aclk => clk,
    m_axis_dout_tready => out_fifo_ready_out(0),
    m_axis_dout_tvalid => out_fifo_valid_in(0),
    m_axis_dout_tlast => out_fifo_last_in(0),
    m_axis_dout_tdata => out_fifo_input_data(0)
  );
  -- Instance 1
LDPC_core1 : sd_fec_0
  PORT MAP (
    reset_n => reset_cores_controller,
    core_clk => ldpc_core_clk,
    s_axi_aclk => clk,
    s_axis_ctrl_aclk => clk,
    s_axis_ctrl_tready => open,
    s_axis_ctrl_tvalid => dout_valid_controller(1),
    s_axis_ctrl_tdata => sel_cr(1),
    s_axis_din_aclk => clk,
    s_axis_din_tready => din_ready_controller(1),
    s_axis_din_tvalid => dout_valid_controller(1),
    s_axis_din_tlast => dout_last_controller(1),
    s_axis_din_tdata => dout_data_controller1,
    m_axis_status_aclk => clk,
    m_axis_status_tready => out_fifo_ready_out(1),
    m_axis_status_tvalid => open,
    m_axis_status_tdata => open,
    m_axis_dout_aclk => clk,
    m_axis_dout_tready => out_fifo_ready_out(1),
    m_axis_dout_tvalid => out_fifo_valid_in(1),
    m_axis_dout_tlast => out_fifo_last_in(1),
    m_axis_dout_tdata => out_fifo_input_data(1)
  );
  -- Instance 0
LDPC_core2 : sd_fec_0
  PORT MAP (
    reset_n => reset_cores_controller,
    core_clk => ldpc_core_clk,
    s_axi_aclk => clk,
    s_axis_ctrl_aclk => clk,
    s_axis_ctrl_tready => open,
    s_axis_ctrl_tvalid => dout_valid_controller(2),
    s_axis_ctrl_tdata => sel_cr(2),
    s_axis_din_aclk => clk,
    s_axis_din_tready => din_ready_controller(2),
    s_axis_din_tvalid => dout_valid_controller(2),
    s_axis_din_tlast => dout_last_controller(2),
    s_axis_din_tdata => dout_data_controller2,
    m_axis_status_aclk => clk,
    m_axis_status_tready => out_fifo_ready_out(2),
    m_axis_status_tvalid => open,
    m_axis_status_tdata => open,
    m_axis_dout_aclk => clk,
    m_axis_dout_tready => out_fifo_ready_out(2),
    m_axis_dout_tvalid => out_fifo_valid_in(2),
    m_axis_dout_tlast => out_fifo_last_in(2),
    m_axis_dout_tdata => out_fifo_input_data(2)
  );
  -- Instance 0
LDPC_core3 : sd_fec_0
  PORT MAP (
    reset_n => reset_cores_controller,
    core_clk => ldpc_core_clk,
    s_axi_aclk => clk,
    s_axis_ctrl_aclk => clk,
    s_axis_ctrl_tready => open,
    s_axis_ctrl_tvalid => dout_valid_controller(3),
    s_axis_ctrl_tdata => sel_cr(3),
    s_axis_din_aclk => clk,
    s_axis_din_tready => din_ready_controller(3),
    s_axis_din_tvalid => dout_valid_controller(3),
    s_axis_din_tlast => dout_last_controller(3),
    s_axis_din_tdata => dout_data_controller3,
    m_axis_status_aclk => clk,
    m_axis_status_tready => out_fifo_ready_out(3),
    m_axis_status_tvalid => open,
    m_axis_status_tdata => open,
    m_axis_dout_aclk => clk,
    m_axis_dout_tready => out_fifo_ready_out(3),
    m_axis_dout_tvalid => out_fifo_valid_in(3),
    m_axis_dout_tlast => out_fifo_last_in(3),
    m_axis_dout_tdata => out_fifo_input_data(3)
  );
  
input_fifo_0 : axis_data_fifo_0
  PORT MAP (
    s_axis_aresetn      => reset_fifos,
    s_axis_aclk         => clk,
    s_axis_tvalid       => data_in_valid,
    s_axis_tready       => open,
    s_axis_tdata        => data_in,
    s_axis_tlast        => end_of_frame,
    m_axis_tvalid       => fifo_valid_out(0),
    m_axis_tready       => fifo_in_ready(0),
    m_axis_tdata        => fifo_data_out(0),
    m_axis_tlast        => fifo_data_out_last(0),
    axis_wr_data_count  => fifo_data_count(0),
    almost_full         => open
  );

-- Instance 1
input_fifo_1 : axis_data_fifo_0
  PORT MAP (
    s_axis_aresetn      => reset_fifos,
    s_axis_aclk         => clk,
    s_axis_tvalid       => data_in_valid,
    s_axis_tready       => open,
    s_axis_tdata        => data_in,
    s_axis_tlast        => end_of_frame,
    m_axis_tvalid       => fifo_valid_out(1),
    m_axis_tready       => fifo_in_ready(1),
    m_axis_tdata        => fifo_data_out(1),
    m_axis_tlast        => fifo_data_out_last(1),
    axis_wr_data_count  => fifo_data_count(1),
    almost_full         => open
  );

-- Instance 2
input_fifo_2 : axis_data_fifo_0
  PORT MAP (
    s_axis_aresetn      => reset_fifos,
    s_axis_aclk         => clk,
    s_axis_tvalid       => data_in_valid,
    s_axis_tready       => open,
    s_axis_tdata        => data_in,
    s_axis_tlast        => end_of_frame,
    m_axis_tvalid       => fifo_valid_out(2),
    m_axis_tready       => fifo_in_ready(2),
    m_axis_tdata        => fifo_data_out(2),
    m_axis_tlast        => fifo_data_out_last(2),
    axis_wr_data_count  => fifo_data_count(2),
    almost_full         => open
  );

-- Instance 3
input_fifo_3 : axis_data_fifo_0
  PORT MAP (
    s_axis_aresetn      => reset_fifos,
    s_axis_aclk         => clk,
    s_axis_tvalid       => data_in_valid,
    s_axis_tready       => open,
    s_axis_tdata        => data_in,
    s_axis_tlast        => end_of_frame,
    m_axis_tvalid       => fifo_valid_out(3),
    m_axis_tready       => fifo_in_ready(3),
    m_axis_tdata        => fifo_data_out(3),
    m_axis_tlast        => fifo_data_out_last(3),
    axis_wr_data_count  => fifo_data_count(3),
    almost_full         => open
  );


 
--Generate 4 instances of output axis_data_fifo_0
Output_FIFO_inst : for i in 0 to N-1 generate 
output_fifo : axis_data_fifo_1
  PORT MAP (
    s_axis_aresetn      => reset_fifos,
    s_axis_aclk         => clk,
    s_axis_tvalid       => out_fifo_valid_in(i) ,
    s_axis_tready       => out_fifo_ready_out(i),
    s_axis_tdata        => out_fifo_input_data(i)(31 downto 0),
    s_axis_tlast        => out_fifo_last_in(i),
    m_axis_tvalid       => out_fifo_valid_out(i),
    m_axis_tready       => data_in_ready,
    m_axis_tdata        => out_fifo_output_data(i),
    m_axis_tlast        => out_fifo_last_out(i)
  ); 
end generate  Output_FIFO_inst;


output_logic_core0 : process (out_fifo_output_data(0) ,out_fifo_valid_out(0)) 
begin
 data_out0 <= out_fifo_output_data(0) ;
if out_fifo_output_data(0) /= x"0000000000000000000000005A5A5A5A" and out_fifo_valid_out(0) = '1' then
data_out_valid(0) <= '1' ;     
elsif out_fifo_output_data(0) = x"0000000000000000000000005A5A5A5A" and out_fifo_valid_out(0) = '1' then
data_out_valid(0) <= '0' ;
else 
data_out_valid(0) <= '0' ;
end if ;     
end process ;
output_logic_core1 : process (out_fifo_output_data(1) ,out_fifo_valid_out(1)) 
begin
 data_out1 <= out_fifo_output_data(1) ;
if out_fifo_output_data(1) /= x"0000000000000000000000005A5A5A5A" and out_fifo_valid_out(1) = '1' then
data_out_valid(1) <= '1' ;     
elsif out_fifo_output_data(1) = x"0000000000000000000000005A5A5A5A" and out_fifo_valid_out(1) = '1' then
data_out_valid(1) <= '0' ;
else 
data_out_valid(1) <= '0' ;
end if ;     
end process ;
output_logic_core2 : process (out_fifo_output_data(2) ,out_fifo_valid_out(2)) 
begin
 data_out2 <= out_fifo_output_data(2) ;
if out_fifo_output_data(2) /= x"0000000000000000000000005A5A5A5A" and out_fifo_valid_out(2) = '1' then
data_out_valid(2) <= '1' ;     
elsif out_fifo_output_data(2) = x"0000000000000000000000005A5A5A5A" and out_fifo_valid_out(2) = '1' then
data_out_valid(2) <= '0' ;
else 
data_out_valid(2) <= '0' ;
end if ;     
end process ;
output_logic_core3 : process (out_fifo_output_data(3) ,out_fifo_valid_out(3)) 
begin
 data_out3 <= out_fifo_output_data(3) ;
if out_fifo_output_data(3) /= x"0000000000000000000000005A5A5A5A" and out_fifo_valid_out(3) = '1' then
data_out_valid(3) <= '1' ;     
elsif out_fifo_output_data(3) = x"0000000000000000000000005A5A5A5A" and out_fifo_valid_out(3) = '1' then
data_out_valid(3) <= '0' ;
else 
data_out_valid(3) <= '0' ;
end if ;     
end process ;

 
end Behavioral;
