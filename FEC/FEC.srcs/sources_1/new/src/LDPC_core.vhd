----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/09/2024 01:26:06 PM
-- Design Name: 
-- Module Name: LDPC_core - Behavioral
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

entity LDPC_core is
  Port ( 
           clk_core              : in STD_LOGIC;
           clk                   : in STD_LOGIC;
           reset_n               : in STD_LOGIC;
           din                   : in STD_LOGIC_VECTOR (31 downto 0);
           din_valid             : in STD_LOGIC;  
           ctrl_valid            : in std_logic ;
           din_ready_fsm2core    : in STD_LOGIC;  -- Output Control Unit ready to receive the encoded data from the Encoder 
           din_last              : in std_logic := '0';
           din_ready_core2fsm    : out STD_LOGIC; --LDPC core ready to receive the data input
           dout                  : out STD_LOGIC_VECTOR (31 downto 0);
           dout_valid            : out STD_LOGIC; 
           dout_last             : out STD_LOGIC := '0';	
           ctrl_ready_out        : out std_logic ;	   		         
	       bg   	             : STD_LOGIC_VECTOR(2 DOWNTO 0);--:= "001";-- (base graph)
		   z_set	             : STD_LOGIC_VECTOR(2 DOWNTO 0);--:= "000";-- Base graph cyclic shift set
		   z_j		             : STD_LOGIC_VECTOR(2 DOWNTO 0);--:= "100";--
		   mb		             : STD_LOGIC_VECTOR(5 DOWNTO 0)
  );
end LDPC_core;

architecture rtl of LDPC_core is

component sd_fec_0 
port ( 
        reset_n                 : IN STD_LOGIC;
        core_clk                : IN STD_LOGIC;
        s_axi_aclk              : IN STD_LOGIC;
        s_axis_ctrl_aclk        : IN STD_LOGIC;
        s_axis_ctrl_tready      : OUT STD_LOGIC;
        s_axis_ctrl_tvalid      : IN STD_LOGIC := '0';
        s_axis_ctrl_tdata       : IN STD_LOGIC_VECTOR(39 DOWNTO 0);
        s_axis_din_aclk         : IN STD_LOGIC;
        s_axis_din_tready       : OUT STD_LOGIC;
        s_axis_din_tvalid       : IN STD_LOGIC;
        s_axis_din_tlast        : IN STD_LOGIC;
        s_axis_din_tdata        : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
        m_axis_status_aclk      : IN STD_LOGIC;
        m_axis_status_tready    : IN STD_LOGIC;
        m_axis_status_tvalid    : OUT STD_LOGIC;
        m_axis_status_tdata     : OUT STD_LOGIC_VECTOR(39 DOWNTO 0) := (others => '0');
        m_axis_dout_aclk        : IN STD_LOGIC;
        m_axis_dout_tready      : IN STD_LOGIC;  --Control Unit ready to receive the data 
        m_axis_dout_tvalid      : OUT STD_LOGIC;
        m_axis_dout_tlast       : OUT STD_LOGIC;
        m_axis_dout_tdata       : OUT STD_LOGIC_VECTOR(127 DOWNTO 0):= (others => '0')
      );
end component ;
signal LDPC_core_control        : std_logic_vector(39 downto 0) := (others => '0');
signal s_axis_ctrl_tready_core	: STD_LOGIC := '0';
signal data_in_core             : std_logic_vector(127 downto 0) := (others => '0') ;
signal data_in_ready_core       : std_logic := '0';
signal data_out_valid           : std_logic := '0';
signal data_out_core            : std_logic_vector(127 downto 0) := (others => '0') ;
signal data_out_ready_core      : std_logic := '0'; 
signal tmp_32bits               : std_logic_vector(31 downto 0) := (others => '0') ;
signal data_out_last_core       : std_logic := '0';
begin


LDPC_core_control_settings: process( bg, z_set, z_j, mb) begin
	LDPC_core_control                  <= x"0500002003"; --init val
--    LDPC_core_control                  <= x"0700002044";
	LDPC_core_control(8 downto 6)	   <= bg;
	LDPC_core_control(5 downto 3)	   <= z_set;
	LDPC_core_control(2 downto 0)	   <= z_j;
	LDPC_core_control(37 downto 32)	   <= mb;
 end process;   
 
 ldpc_encoder : sd_fec_0
  PORT MAP ( 
    reset_n                 => reset_n, 
    core_clk                => clk_core, 	
	--slave axi to uC
    s_axi_aclk              => clk, 	
	--axi ctrl
    s_axis_ctrl_aclk        => clk, --in 
    s_axis_ctrl_tready      => ctrl_ready_out, --out
    s_axis_ctrl_tvalid      => ctrl_valid , --in
    s_axis_ctrl_tdata       => LDPC_core_control, --in
	
	--axi stream data in iface
    s_axis_din_aclk         => clk, --ok
    s_axis_din_tready       => din_ready_core2fsm, --Encoder sends ready signal to receive the data
    s_axis_din_tvalid       => din_valid,
    s_axis_din_tlast        => din_last ,
    s_axis_din_tdata        => data_in_core, --in
	--end of axi stream data in iface
	
    m_axis_status_aclk      => clk, --clk_iface,
    m_axis_status_tready    => '1',
    m_axis_status_tvalid    => open,
    m_axis_status_tdata     => open,
	
    m_axis_dout_aclk        => clk,
    m_axis_dout_tready      => din_ready_fsm2core ,
    m_axis_dout_tvalid      => data_out_valid   ,
    m_axis_dout_tlast       => data_out_last_core , 
    m_axis_dout_tdata       => data_out_core 

  );


process(clk) 
begin
if din_valid = '1' then 
data_in_core <= x"000000000000000000000000" & din ; 
else 
data_in_core  <= (others => '0') ;
end if ;
if data_out_valid = '1' and (data_out_last_core = '0' or data_out_last_core = '1') then    --Control Unit ready to receive          
     dout        <= data_out_core(31 downto 0) ; 
     dout_valid  <= '1' ; 
     dout_last   <= data_out_last_core  ;
elsif data_out_valid = '0' and data_out_last_core = '1' then 
    dout        <= (others => '0');  
    dout_valid  <= '0' ;  
    dout_last   <= '1';  

else    
    dout        <= (others => '0') ;
    dout_valid  <= '0' ;  
    dout_last   <= '0'; 
end if ;
end process ;
end rtl;
