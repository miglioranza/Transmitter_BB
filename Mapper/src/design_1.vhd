--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
--Date        : Fri Feb 28 10:56:59 2025
--Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    S_AXIS_0_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_0_tready : out STD_LOGIC;
    S_AXIS_0_tvalid : in STD_LOGIC;
    clk_0 : in STD_LOGIC;
    mod_type_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    reset_0 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_Bit_splitter_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    mod_type : in STD_LOGIC_VECTOR ( 2 downto 0 );
    data_in_valid : in STD_LOGIC;
    data_in_ready : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out_valid : out STD_LOGIC;
    data_out_ready : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component design_1_Bit_splitter_0_0;
  component design_1_mapper_0_0 is
  port (
    clk : in STD_LOGIC;
    nreset : in STD_LOGIC;
    mod_type : in STD_LOGIC_VECTOR ( 2 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    data_in_valid : in STD_LOGIC;
    i_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    q_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    data_out_valid : out STD_LOGIC
  );
  end component design_1_mapper_0_0;
  signal Bit_splitter_0_data_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal Bit_splitter_0_data_out_valid : STD_LOGIC;
  signal S_AXIS_0_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXIS_0_1_TREADY : STD_LOGIC;
  signal S_AXIS_0_1_TVALID : STD_LOGIC;
  signal clk_0_1 : STD_LOGIC;
  signal mod_type_0_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal reset_0_1 : STD_LOGIC;
  signal NLW_Bit_splitter_0_data_in_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_Mapper_0_data_out_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_Mapper_0_i_out_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_Mapper_0_q_out_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXIS_0_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS_0 TREADY";
  attribute X_INTERFACE_INFO of S_AXIS_0_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_0 TVALID";
  attribute X_INTERFACE_INFO of clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_BUSIF S_AXIS_0, ASSOCIATED_RESET reset_0, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of reset_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_0 RST";
  attribute X_INTERFACE_PARAMETER of reset_0 : signal is "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of S_AXIS_0_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_0 TDATA";
  attribute X_INTERFACE_PARAMETER of S_AXIS_0_tdata : signal is "XIL_INTERFACENAME S_AXIS_0, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
begin
  S_AXIS_0_1_TDATA(31 downto 0) <= S_AXIS_0_tdata(31 downto 0);
  S_AXIS_0_1_TVALID <= S_AXIS_0_tvalid;
  S_AXIS_0_tready <= S_AXIS_0_1_TREADY;
  clk_0_1 <= clk_0;
  mod_type_0_1(2 downto 0) <= mod_type_0(2 downto 0);
  reset_0_1 <= reset_0;
Bit_splitter_0: component design_1_Bit_splitter_0_0
     port map (
      clk => clk_0_1,
      data_in(31 downto 0) => S_AXIS_0_1_TDATA(31 downto 0),
      data_in_ready => NLW_Bit_splitter_0_data_in_ready_UNCONNECTED,
      data_in_valid => S_AXIS_0_1_TVALID,
      data_out(5 downto 0) => Bit_splitter_0_data_out(5 downto 0),
      data_out_ready => S_AXIS_0_1_TREADY,
      data_out_valid => Bit_splitter_0_data_out_valid,
      mod_type(2 downto 0) => mod_type_0_1(2 downto 0),
      reset => reset_0_1
    );
Mapper_0: component design_1_mapper_0_0
     port map (
      clk => clk_0_1,
      data_in(5 downto 0) => Bit_splitter_0_data_out(5 downto 0),
      data_in_valid => Bit_splitter_0_data_out_valid,
      data_out_valid => NLW_Mapper_0_data_out_valid_UNCONNECTED,
      i_out(11 downto 0) => NLW_Mapper_0_i_out_UNCONNECTED(11 downto 0),
      mod_type(2 downto 0) => mod_type_0_1(2 downto 0),
      nreset => reset_0_1,
      q_out(11 downto 0) => NLW_Mapper_0_q_out_UNCONNECTED(11 downto 0)
    );
end STRUCTURE;
