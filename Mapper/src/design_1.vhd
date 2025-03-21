--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
--Date        : Wed Mar  5 15:22:36 2025
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
    clk : in STD_LOGIC;
    data_in_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_valid_0 : in STD_LOGIC;
    data_out_ready : out STD_LOGIC;
    data_out_ready_0 : out STD_LOGIC;
    data_out_valid : out STD_LOGIC;
    i_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    mod_type : in STD_LOGIC_VECTOR ( 2 downto 0 );
    q_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    reset : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_Bit_splitter_0_1 is
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
  end component design_1_Bit_splitter_0_1;
  component design_1_mapper_0_0 is
  port (
    clk : in STD_LOGIC;
    nreset : in STD_LOGIC;
    mod_type : in STD_LOGIC_VECTOR ( 2 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    data_in_valid : in STD_LOGIC;
    data_in_ready : in STD_LOGIC;
    i_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    q_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    data_out_ready : out STD_LOGIC;
    data_out_valid : out STD_LOGIC
  );
  end component design_1_mapper_0_0;
  signal Bit_splitter_0_data_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal Bit_splitter_0_data_out_ready : STD_LOGIC;
  signal Bit_splitter_0_data_out_valid : STD_LOGIC;
  signal Mapper_0_data_out_ready : STD_LOGIC;
  signal Mapper_0_data_out_valid : STD_LOGIC;
  signal Mapper_0_i_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Mapper_0_q_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal clk_0_1 : STD_LOGIC;
  signal data_in_0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data_in_valid_0_1 : STD_LOGIC;
  signal mod_type_0_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal reset_0_1 : STD_LOGIC;
  signal NLW_Bit_splitter_0_data_in_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_Mapper_0_data_in_ready_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET reset, CLK_DOMAIN design_1_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  clk_0_1 <= clk;
  data_in_0_1(31 downto 0) <= data_in_0(31 downto 0);
  data_in_valid_0_1 <= data_in_valid_0;
  data_out_ready <= Mapper_0_data_out_ready;
  data_out_ready_0 <= Bit_splitter_0_data_out_ready;
  data_out_valid <= Mapper_0_data_out_valid;
  i_out(11 downto 0) <= Mapper_0_i_out(11 downto 0);
  mod_type_0_1(2 downto 0) <= mod_type(2 downto 0);
  q_out(11 downto 0) <= Mapper_0_q_out(11 downto 0);
  reset_0_1 <= reset;
Bit_splitter_0: component design_1_Bit_splitter_0_1
     port map (
      clk => clk_0_1,
      data_in(31 downto 0) => data_in_0_1(31 downto 0),
      data_in_ready => NLW_Bit_splitter_0_data_in_ready_UNCONNECTED,
      data_in_valid => data_in_valid_0_1,
      data_out(5 downto 0) => Bit_splitter_0_data_out(5 downto 0),
      data_out_ready => Bit_splitter_0_data_out_ready,
      data_out_valid => Bit_splitter_0_data_out_valid,
      mod_type(2 downto 0) => mod_type_0_1(2 downto 0),
      reset => reset_0_1
    );
Mapper_0: component design_1_mapper_0_0
     port map (
      clk => clk_0_1,
      data_in(5 downto 0) => Bit_splitter_0_data_out(5 downto 0),
      data_in_ready => NLW_Mapper_0_data_in_ready_UNCONNECTED,
      data_in_valid => Bit_splitter_0_data_out_valid,
      data_out_ready => Mapper_0_data_out_ready,
      data_out_valid => Mapper_0_data_out_valid,
      i_out(11 downto 0) => Mapper_0_i_out(11 downto 0),
      mod_type(2 downto 0) => mod_type_0_1(2 downto 0),
      nreset => reset_0_1,
      q_out(11 downto 0) => Mapper_0_q_out(11 downto 0)
    );
end STRUCTURE;
