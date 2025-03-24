--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
--Date        : Mon Mar 24 17:10:03 2025
--Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
--Command     : generate_target Design_2.bd
--Design      : Design_2
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Design_2 is
  port (
    S_AXIS_0_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_0_tlast : in STD_LOGIC;
    S_AXIS_0_tready : out STD_LOGIC;
    S_AXIS_0_tvalid : in STD_LOGIC;
    aresetn_0 : in STD_LOGIC;
    axis_data_count_0 : out STD_LOGIC_VECTOR ( 12 downto 0 );
    clk : in STD_LOGIC;
    clk_50MHz : in STD_LOGIC;
    code_rate_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    control_enable_0 : in STD_LOGIC;
    core_finish_0 : out STD_LOGIC;
    data_in_ready_0 : in STD_LOGIC;
    data_out_I_0 : out STD_LOGIC_VECTOR ( 51 downto 0 );
    data_out_Q_0 : out STD_LOGIC_VECTOR ( 51 downto 0 );
    data_out_last_0 : out STD_LOGIC;
    data_out_valid_0 : out STD_LOGIC;
    ldpc_core_clk : in STD_LOGIC;
    mod_type_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    reset : in STD_LOGIC;
    reset_0 : in STD_LOGIC;
    seed_0 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    sel_FEC_code_rate_0 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Design_2 : entity is "Design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Design_2,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=7,numReposBlks=7,numNonXlnxBlks=7,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Design_2 : entity is "Design_2.hwdef";
end Design_2;

architecture STRUCTURE of Design_2 is
  component Design_2_Scrambler_32bits_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_valid : in STD_LOGIC;
    data_in_ready : in STD_LOGIC;
    data_in_last : in STD_LOGIC;
    seed : in STD_LOGIC_VECTOR ( 31 downto 1 );
    control_enable : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 32 downto 1 );
    data_out_valid : out STD_LOGIC;
    data_out_last : out STD_LOGIC;
    data_out_ready : out STD_LOGIC
  );
  end component Design_2_Scrambler_32bits_0_0;
  component Design_2_Pipelined_Polyphase_0_2 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    input_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_ready : in STD_LOGIC;
    data_in_valid : in STD_LOGIC;
    data_out_ready : out STD_LOGIC;
    data_out_valid : out STD_LOGIC;
    data_out_I : out STD_LOGIC_VECTOR ( 51 downto 0 );
    data_out_Q : out STD_LOGIC_VECTOR ( 51 downto 0 )
  );
  end component Design_2_Pipelined_Polyphase_0_2;
  component Design_2_Pre_Distortion_Filter_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    I_input : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Q_input : in STD_LOGIC_VECTOR ( 11 downto 0 );
    data_in_ready : in STD_LOGIC;
    data_in_valid : in STD_LOGIC;
    data_out_valid : out STD_LOGIC;
    Q_output : out STD_LOGIC_VECTOR ( 31 downto 0 );
    I_output : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out_ready : out STD_LOGIC
  );
  end component Design_2_Pre_Distortion_Filter_0_0;
  component Design_2_mapper_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    mod_type : in STD_LOGIC_VECTOR ( 2 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    data_in_valid : in STD_LOGIC;
    data_in_ready : in STD_LOGIC;
    i_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    q_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    data_out_ready : out STD_LOGIC;
    data_out_valid : out STD_LOGIC
  );
  end component Design_2_mapper_0_0;
  component Design_2_Bit_splitter_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    mod_type : in STD_LOGIC_VECTOR ( 2 downto 0 );
    code_rate : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_in_valid : in STD_LOGIC;
    data_in_ready : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out_valid : out STD_LOGIC;
    mod_type2mapper : out STD_LOGIC_VECTOR ( 2 downto 0 );
    data_out_ready : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component Design_2_Bit_splitter_0_0;
  component Design_2_Encoder_0_0 is
  port (
    ldpc_core_clk : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_valid : in STD_LOGIC;
    din_ready_ifsm2enc : in STD_LOGIC;
    data_in_last : in STD_LOGIC;
    sel_FEC_code_rate : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_out_ready : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out_valid : out STD_LOGIC;
    core_finish : out STD_LOGIC;
    axis_data_count : out STD_LOGIC_VECTOR ( 12 downto 0 );
    data_out_last : out STD_LOGIC
  );
  end component Design_2_Encoder_0_0;
  component Design_2_block_interleaver_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_ready : in STD_LOGIC;
    write_en : in STD_LOGIC;
    code_rate : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out_ready : out STD_LOGIC;
    current_code_rate : out STD_LOGIC_VECTOR ( 1 downto 0 );
    read_valid : out STD_LOGIC
  );
  end component Design_2_block_interleaver_0_0;
  signal Bit_splitter_0_data_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal Bit_splitter_0_data_out_ready : STD_LOGIC;
  signal Bit_splitter_0_data_out_valid : STD_LOGIC;
  signal Bit_splitter_0_mod_type2mapper : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Encoder_0_axis_data_count : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal Encoder_0_core_finish : STD_LOGIC;
  signal Encoder_0_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Encoder_0_data_out_last : STD_LOGIC;
  signal Encoder_0_data_out_ready : STD_LOGIC;
  signal Encoder_0_data_out_valid : STD_LOGIC;
  signal Pipelined_Polyphase_0_data_out_I : STD_LOGIC_VECTOR ( 51 downto 0 );
  signal Pipelined_Polyphase_0_data_out_Q : STD_LOGIC_VECTOR ( 51 downto 0 );
  signal Pipelined_Polyphase_0_data_out_ready : STD_LOGIC;
  signal Pipelined_Polyphase_0_data_out_valid : STD_LOGIC;
  signal Pre_Distortion_Filter_0_I_output : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Pre_Distortion_Filter_0_Q_output : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Pre_Distortion_Filter_0_data_out_ready : STD_LOGIC;
  signal Pre_Distortion_Filter_0_data_out_valid : STD_LOGIC;
  signal S_AXIS_0_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXIS_0_1_TLAST : STD_LOGIC;
  signal S_AXIS_0_1_TREADY : STD_LOGIC;
  signal S_AXIS_0_1_TVALID : STD_LOGIC;
  signal Scrambler_32bits_0_data_out : STD_LOGIC_VECTOR ( 32 downto 1 );
  signal Scrambler_32bits_0_data_out_last : STD_LOGIC;
  signal Scrambler_32bits_0_data_out_valid : STD_LOGIC;
  signal aresetn_0_1 : STD_LOGIC;
  signal block_interleaver_0_current_code_rate : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal block_interleaver_0_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal block_interleaver_0_data_out_ready : STD_LOGIC;
  signal block_interleaver_0_read_valid : STD_LOGIC;
  signal clk_0_1 : STD_LOGIC;
  signal clk_50MHz_1 : STD_LOGIC;
  signal code_rate_0_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_enable_0_1 : STD_LOGIC;
  signal data_in_ready_0_1 : STD_LOGIC;
  signal ldpc_core_clk_0_1 : STD_LOGIC;
  signal mapper_0_data_out_ready : STD_LOGIC;
  signal mapper_0_data_out_valid : STD_LOGIC;
  signal mapper_0_i_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal mapper_0_q_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal mod_type_0_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal reset_0_1 : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  signal seed_0_1 : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal sel_FEC_code_rate_0_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXIS_0_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS_0 TLAST";
  attribute X_INTERFACE_INFO of S_AXIS_0_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS_0 TREADY";
  attribute X_INTERFACE_INFO of S_AXIS_0_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_0 TVALID";
  attribute X_INTERFACE_INFO of aresetn_0 : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN_0 RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aresetn_0 : signal is "XIL_INTERFACENAME RST.ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF S_AXIS_0, ASSOCIATED_RESET reset, CLK_DOMAIN Design_2_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clk_50MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_50MHZ CLK";
  attribute X_INTERFACE_PARAMETER of clk_50MHz : signal is "XIL_INTERFACENAME CLK.CLK_50MHZ, ASSOCIATED_RESET reset:reset_0, CLK_DOMAIN Design_2_clk_50MHz, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of ldpc_core_clk : signal is "xilinx.com:signal:clock:1.0 CLK.LDPC_CORE_CLK CLK";
  attribute X_INTERFACE_PARAMETER of ldpc_core_clk : signal is "XIL_INTERFACENAME CLK.LDPC_CORE_CLK, CLK_DOMAIN Design_2_ldpc_core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of reset_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_0 RST";
  attribute X_INTERFACE_PARAMETER of reset_0 : signal is "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of S_AXIS_0_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_0 TDATA";
  attribute X_INTERFACE_PARAMETER of S_AXIS_0_tdata : signal is "XIL_INTERFACENAME S_AXIS_0, CLK_DOMAIN Design_2_clk, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
begin
  S_AXIS_0_1_TDATA(31 downto 0) <= S_AXIS_0_tdata(31 downto 0);
  S_AXIS_0_1_TLAST <= S_AXIS_0_tlast;
  S_AXIS_0_1_TVALID <= S_AXIS_0_tvalid;
  S_AXIS_0_tready <= S_AXIS_0_1_TREADY;
  aresetn_0_1 <= aresetn_0;
  axis_data_count_0(12 downto 0) <= Encoder_0_axis_data_count(12 downto 0);
  clk_0_1 <= clk;
  clk_50MHz_1 <= clk_50MHz;
  code_rate_0_1(1 downto 0) <= code_rate_0(1 downto 0);
  control_enable_0_1 <= control_enable_0;
  core_finish_0 <= Encoder_0_core_finish;
  data_in_ready_0_1 <= data_in_ready_0;
  data_out_I_0(51 downto 0) <= Pipelined_Polyphase_0_data_out_I(51 downto 0);
  data_out_Q_0(51 downto 0) <= Pipelined_Polyphase_0_data_out_Q(51 downto 0);
  data_out_last_0 <= Encoder_0_data_out_last;
  data_out_valid_0 <= Pipelined_Polyphase_0_data_out_valid;
  ldpc_core_clk_0_1 <= ldpc_core_clk;
  mod_type_0_1(2 downto 0) <= mod_type_0(2 downto 0);
  reset_0_1 <= reset_0;
  reset_1 <= reset;
  seed_0_1(30 downto 0) <= seed_0(30 downto 0);
  sel_FEC_code_rate_0_1(1 downto 0) <= sel_FEC_code_rate_0(1 downto 0);
Bit_splitter_0: component Design_2_Bit_splitter_0_0
     port map (
      clk => clk_0_1,
      code_rate(1 downto 0) => block_interleaver_0_current_code_rate(1 downto 0),
      data_in(31 downto 0) => block_interleaver_0_data_out(31 downto 0),
      data_in_ready => mapper_0_data_out_ready,
      data_in_valid => block_interleaver_0_read_valid,
      data_out(5 downto 0) => Bit_splitter_0_data_out(5 downto 0),
      data_out_ready => Bit_splitter_0_data_out_ready,
      data_out_valid => Bit_splitter_0_data_out_valid,
      mod_type(2 downto 0) => mod_type_0_1(2 downto 0),
      mod_type2mapper(2 downto 0) => Bit_splitter_0_mod_type2mapper(2 downto 0),
      reset => reset_1
    );
Encoder_0: component Design_2_Encoder_0_0
     port map (
      aresetn => aresetn_0_1,
      axis_data_count(12 downto 0) => Encoder_0_axis_data_count(12 downto 0),
      clk => clk_0_1,
      core_finish => Encoder_0_core_finish,
      data_in(31 downto 0) => Scrambler_32bits_0_data_out(32 downto 1),
      data_in_last => Scrambler_32bits_0_data_out_last,
      data_in_valid => Scrambler_32bits_0_data_out_valid,
      data_out(31 downto 0) => Encoder_0_data_out(31 downto 0),
      data_out_last => Encoder_0_data_out_last,
      data_out_ready => Encoder_0_data_out_ready,
      data_out_valid => Encoder_0_data_out_valid,
      din_ready_ifsm2enc => block_interleaver_0_data_out_ready,
      ldpc_core_clk => ldpc_core_clk_0_1,
      reset => reset_1,
      sel_FEC_code_rate(1 downto 0) => sel_FEC_code_rate_0_1(1 downto 0)
    );
Pipelined_Polyphase_0: component Design_2_Pipelined_Polyphase_0_2
     port map (
      clk => clk_50MHz_1,
      data_in_ready => data_in_ready_0_1,
      data_in_valid => Pre_Distortion_Filter_0_data_out_valid,
      data_out_I(51 downto 0) => Pipelined_Polyphase_0_data_out_I(51 downto 0),
      data_out_Q(51 downto 0) => Pipelined_Polyphase_0_data_out_Q(51 downto 0),
      data_out_ready => Pipelined_Polyphase_0_data_out_ready,
      data_out_valid => Pipelined_Polyphase_0_data_out_valid,
      input_I(31 downto 0) => Pre_Distortion_Filter_0_I_output(31 downto 0),
      input_Q(31 downto 0) => Pre_Distortion_Filter_0_Q_output(31 downto 0),
      reset => reset_0_1
    );
Pre_Distortion_Filter_0: component Design_2_Pre_Distortion_Filter_0_0
     port map (
      I_input(11 downto 0) => mapper_0_i_out(11 downto 0),
      I_output(31 downto 0) => Pre_Distortion_Filter_0_I_output(31 downto 0),
      Q_input(11 downto 0) => mapper_0_q_out(11 downto 0),
      Q_output(31 downto 0) => Pre_Distortion_Filter_0_Q_output(31 downto 0),
      clk => clk_0_1,
      data_in_ready => Pipelined_Polyphase_0_data_out_ready,
      data_in_valid => mapper_0_data_out_valid,
      data_out_ready => Pre_Distortion_Filter_0_data_out_ready,
      data_out_valid => Pre_Distortion_Filter_0_data_out_valid,
      reset => reset_1
    );
Scrambler_32bits_0: component Design_2_Scrambler_32bits_0_0
     port map (
      clk => clk_0_1,
      control_enable => control_enable_0_1,
      data_in(31 downto 0) => S_AXIS_0_1_TDATA(31 downto 0),
      data_in_last => S_AXIS_0_1_TLAST,
      data_in_ready => Encoder_0_data_out_ready,
      data_in_valid => S_AXIS_0_1_TVALID,
      data_out(32 downto 1) => Scrambler_32bits_0_data_out(32 downto 1),
      data_out_last => Scrambler_32bits_0_data_out_last,
      data_out_ready => S_AXIS_0_1_TREADY,
      data_out_valid => Scrambler_32bits_0_data_out_valid,
      rst => '0',
      seed(31 downto 1) => seed_0_1(30 downto 0)
    );
block_interleaver_0: component Design_2_block_interleaver_0_0
     port map (
      clk => clk_0_1,
      code_rate(1 downto 0) => code_rate_0_1(1 downto 0),
      current_code_rate(1 downto 0) => block_interleaver_0_current_code_rate(1 downto 0),
      data_in(31 downto 0) => Encoder_0_data_out(31 downto 0),
      data_in_ready => Bit_splitter_0_data_out_ready,
      data_out(31 downto 0) => block_interleaver_0_data_out(31 downto 0),
      data_out_ready => block_interleaver_0_data_out_ready,
      read_valid => block_interleaver_0_read_valid,
      rst => reset_1,
      write_en => Encoder_0_data_out_valid
    );
mapper_0: component Design_2_mapper_0_0
     port map (
      clk => clk_0_1,
      data_in(5 downto 0) => Bit_splitter_0_data_out(5 downto 0),
      data_in_ready => Pre_Distortion_Filter_0_data_out_ready,
      data_in_valid => Bit_splitter_0_data_out_valid,
      data_out_ready => mapper_0_data_out_ready,
      data_out_valid => mapper_0_data_out_valid,
      i_out(11 downto 0) => mapper_0_i_out(11 downto 0),
      mod_type(2 downto 0) => Bit_splitter_0_mod_type2mapper(2 downto 0),
      q_out(11 downto 0) => mapper_0_q_out(11 downto 0),
      reset => reset_1
    );
end STRUCTURE;
