--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
--Date        : Tue Sep 30 15:20:45 2025
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
    clk : in STD_LOGIC;
    control_unit_din_data_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    control_unit_din_valid_0 : in STD_LOGIC;
    control_unit_dout_ready_0 : out STD_LOGIC;
    control_unit_end_of_frame_0 : in STD_LOGIC;
    data_out_I_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out_Q_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out_valid_0 : out STD_LOGIC;
    ldpc_core_clk : in STD_LOGIC;
    mod_cod_schemes_1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    num_streams_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    num_words_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    phy_dest_address_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    phy_src_address_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ref_distance_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    reset : in STD_LOGIC;
    scrambler_init_0 : in STD_LOGIC_VECTOR ( 31 downto 1 );
    start_tx_0 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Design_2 : entity is "Design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Design_2,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=8,numReposBlks=8,numNonXlnxBlks=7,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Design_2 : entity is "Design_2.hwdef";
end Design_2;

architecture STRUCTURE of Design_2 is
  component Design_2_block_interleaver_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_ready : in STD_LOGIC;
    data_in_last : in STD_LOGIC;
    end_of_frame : in STD_LOGIC;
    write_en : in STD_LOGIC;
    code_rate : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out_ready : out STD_LOGIC;
    data_out_last : out STD_LOGIC;
    last_frame_to_cu : out STD_LOGIC;
    read_valid : out STD_LOGIC
  );
  end component Design_2_block_interleaver_0_0;
  component Design_2_Scrambler_32bits_0_1 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 32 downto 1 );
    data_in_valid : in STD_LOGIC;
    data_in_last : in STD_LOGIC;
    end_of_frame : in STD_LOGIC;
    seed : in STD_LOGIC_VECTOR ( 30 downto 0 );
    control_enable : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 32 downto 1 );
    data_out_valid : out STD_LOGIC;
    data_out_last : out STD_LOGIC;
    last_frame : out STD_LOGIC
  );
  end component Design_2_Scrambler_32bits_0_1;
  component Design_2_Pre_Distortion_Filter_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    I_input : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Q_input : in STD_LOGIC_VECTOR ( 11 downto 0 );
    data_in_valid : in STD_LOGIC;
    data_out_valid : out STD_LOGIC;
    Q_output : out STD_LOGIC_VECTOR ( 15 downto 0 );
    I_output : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component Design_2_Pre_Distortion_Filter_0_0;
  component Design_2_MUX_0_2 is
  port (
    I_out : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Q_out : in STD_LOGIC_VECTOR ( 11 downto 0 );
    data_out_valid : in STD_LOGIC;
    dpd_I_OUT : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dpd_Q_OUT : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dpd_valid : in STD_LOGIC;
    select_signal : in STD_LOGIC;
    mux_I : out STD_LOGIC_VECTOR ( 11 downto 0 );
    mux_Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    mux_valid : out STD_LOGIC
  );
  end component Design_2_MUX_0_2;
  component Design_2_Symbol_mapper_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    mod_type : in STD_LOGIC_VECTOR ( 2 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    data_in_valid : in STD_LOGIC;
    data_in_last : in STD_LOGIC;
    i_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    q_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    data_out_last : out STD_LOGIC;
    data_out_valid : out STD_LOGIC
  );
  end component Design_2_Symbol_mapper_0_0;
  component Design_2_Control_unit_top_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    control_unit_din_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    control_unit_din_valid : in STD_LOGIC;
    control_unit_end_of_frame : in STD_LOGIC;
    control_unit_dout_ready : out STD_LOGIC;
    control_unit_enable : out STD_LOGIC;
    mod_cod_schemes : in STD_LOGIC_VECTOR ( 4 downto 0 );
    num_streams : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ref_distance : in STD_LOGIC_VECTOR ( 7 downto 0 );
    scrambler_init : in STD_LOGIC_VECTOR ( 31 downto 1 );
    num_words : in STD_LOGIC_VECTOR ( 15 downto 0 );
    start_tx : in STD_LOGIC;
    phy_src_address : in STD_LOGIC_VECTOR ( 4 downto 0 );
    phy_dest_address : in STD_LOGIC_VECTOR ( 4 downto 0 );
    scrambler_din_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    scrambler_seed : out STD_LOGIC_VECTOR ( 31 downto 1 );
    scrambler_din_valid : out STD_LOGIC;
    scrambler_din_last : out STD_LOGIC;
    scrambler_control_enable : out STD_LOGIC;
    scrambler_last_frame : out STD_LOGIC;
    encoder_code_rate : out STD_LOGIC_VECTOR ( 1 downto 0 );
    encoder_reset_fifos : out STD_LOGIC;
    interleaver_dout_valid : in STD_LOGIC;
    interleaver_dout_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    interleaver_last_frame : in STD_LOGIC;
    interleaver_din_ready : out STD_LOGIC;
    mapper_dout_last : in STD_LOGIC;
    mapper_selected_mod : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mapper_din_data : out STD_LOGIC_VECTOR ( 5 downto 0 );
    mapper_din_valid : out STD_LOGIC;
    mapper_din_last : out STD_LOGIC;
    dpd_din_valid : out STD_LOGIC;
    dpd_din_data_I : out STD_LOGIC_VECTOR ( 11 downto 0 );
    dpd_din_data_Q : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component Design_2_Control_unit_top_0_0;
  component Design_2_LDPC_encoder_0_2 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    reset_fifos : in STD_LOGIC;
    ldpc_core_clk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_valid : in STD_LOGIC;
    data_in_last : in STD_LOGIC;
    data_in_ready : in STD_LOGIC;
    sel_code_rate : in STD_LOGIC_VECTOR ( 1 downto 0 );
    end_of_frame : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out_valid : out STD_LOGIC;
    data_out_last : out STD_LOGIC;
    current_cr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    last_frame : out STD_LOGIC
  );
  end component Design_2_LDPC_encoder_0_2;
  component Design_2_Polyphase_filter_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    FIFO_reset : in STD_LOGIC;
    input_I : in STD_LOGIC_VECTOR ( 15 downto 0 );
    input_Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in_valid : in STD_LOGIC;
    data_out_valid : out STD_LOGIC;
    data_out_I : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out_Q : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component Design_2_Polyphase_filter_0_0;
  signal Control_unit_top_0_control_unit_dout_ready : STD_LOGIC;
  signal Control_unit_top_0_control_unit_last_frame : STD_LOGIC;
  signal Control_unit_top_0_dpd_din_data_I : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Control_unit_top_0_dpd_din_data_Q : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Control_unit_top_0_dpd_din_valid : STD_LOGIC;
  signal Control_unit_top_0_encoder_code_rate : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Control_unit_top_0_encoder_reset_fifos : STD_LOGIC;
  signal Control_unit_top_0_interleaver_din_ready : STD_LOGIC;
  signal Control_unit_top_0_mapper_din_data : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal Control_unit_top_0_mapper_din_last : STD_LOGIC;
  signal Control_unit_top_0_mapper_din_valid : STD_LOGIC;
  signal Control_unit_top_0_mapper_pilot_insertion_en : STD_LOGIC;
  signal Control_unit_top_0_mapper_selected_mod : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Control_unit_top_0_scrambler_control_enable : STD_LOGIC;
  signal Control_unit_top_0_scrambler_din_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Control_unit_top_0_scrambler_din_last : STD_LOGIC;
  signal Control_unit_top_0_scrambler_din_valid : STD_LOGIC;
  signal Control_unit_top_0_scrambler_seed : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal LDPC_encoder_0_current_cr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal LDPC_encoder_0_data_out_1_2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal LDPC_encoder_0_data_out_last : STD_LOGIC;
  signal LDPC_encoder_0_data_out_valid : STD_LOGIC;
  signal LDPC_encoder_0_last_frame : STD_LOGIC;
  signal MUX_0_mux_I : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal MUX_0_mux_Q : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal MUX_0_mux_valid : STD_LOGIC;
  signal Polyphase_filter_0_data_out_I : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Polyphase_filter_0_data_out_Q : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Polyphase_filter_0_data_out_valid : STD_LOGIC;
  signal Pre_Distortion_Filter_0_I_output : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pre_Distortion_Filter_0_Q_output : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Pre_Distortion_Filter_0_data_out_valid : STD_LOGIC;
  signal Scrambler_32bits_0_data_out : STD_LOGIC_VECTOR ( 32 downto 1 );
  signal Scrambler_32bits_0_data_out_last : STD_LOGIC;
  signal Scrambler_32bits_0_data_out_valid : STD_LOGIC;
  signal Scrambler_32bits_0_last_frame : STD_LOGIC;
  signal Symbol_mapper_0_data_out_last : STD_LOGIC;
  signal Symbol_mapper_0_data_out_valid : STD_LOGIC;
  signal Symbol_mapper_0_i_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Symbol_mapper_0_q_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal block_interleaver_0_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal block_interleaver_0_data_out_last : STD_LOGIC;
  signal block_interleaver_0_data_out_ready : STD_LOGIC;
  signal block_interleaver_0_last_frame_to_cu : STD_LOGIC;
  signal block_interleaver_0_read_valid : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal control_unit_din_data_0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_unit_din_valid_0_1 : STD_LOGIC;
  signal control_unit_end_of_frame_0_1 : STD_LOGIC;
  signal ldpc_core_clk_1 : STD_LOGIC;
  signal mod_cod_schemes_1_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal num_streams_0_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal num_words_0_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal phy_dest_address_0_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal phy_src_address_0_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ref_distance_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reset_1 : STD_LOGIC;
  signal scrambler_init_0_1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal start_tx_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET reset, CLK_DOMAIN Design_2_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of ldpc_core_clk : signal is "xilinx.com:signal:clock:1.0 CLK.LDPC_CORE_CLK CLK";
  attribute X_INTERFACE_PARAMETER of ldpc_core_clk : signal is "XIL_INTERFACENAME CLK.LDPC_CORE_CLK, CLK_DOMAIN Design_2_ldpc_core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  clk_1 <= clk;
  control_unit_din_data_0_1(31 downto 0) <= control_unit_din_data_0(31 downto 0);
  control_unit_din_valid_0_1 <= control_unit_din_valid_0;
  control_unit_dout_ready_0 <= Control_unit_top_0_control_unit_dout_ready;
  control_unit_end_of_frame_0_1 <= control_unit_end_of_frame_0;
  data_out_I_0(15 downto 0) <= Polyphase_filter_0_data_out_I(15 downto 0);
  data_out_Q_0(15 downto 0) <= Polyphase_filter_0_data_out_Q(15 downto 0);
  data_out_valid_0 <= Polyphase_filter_0_data_out_valid;
  ldpc_core_clk_1 <= ldpc_core_clk;
  mod_cod_schemes_1_1(4 downto 0) <= mod_cod_schemes_1(4 downto 0);
  num_streams_0_1(4 downto 0) <= num_streams_0(4 downto 0);
  num_words_0_1(15 downto 0) <= num_words_0(15 downto 0);
  phy_dest_address_0_1(4 downto 0) <= phy_dest_address_0(4 downto 0);
  phy_src_address_0_1(4 downto 0) <= phy_src_address_0(4 downto 0);
  ref_distance_0_1(7 downto 0) <= ref_distance_0(7 downto 0);
  reset_1 <= reset;
  scrambler_init_0_1(31 downto 1) <= scrambler_init_0(31 downto 1);
  start_tx_0_1 <= start_tx_0;
Control_unit_top_0: component Design_2_Control_unit_top_0_0
     port map (
      clk => clk_1,
      control_unit_din_data(31 downto 0) => control_unit_din_data_0_1(31 downto 0),
      control_unit_din_valid => control_unit_din_valid_0_1,
      control_unit_dout_ready => Control_unit_top_0_control_unit_dout_ready,
      control_unit_enable => Control_unit_top_0_mapper_pilot_insertion_en,
      control_unit_end_of_frame => control_unit_end_of_frame_0_1,
      dpd_din_data_I(11 downto 0) => Control_unit_top_0_dpd_din_data_I(11 downto 0),
      dpd_din_data_Q(11 downto 0) => Control_unit_top_0_dpd_din_data_Q(11 downto 0),
      dpd_din_valid => Control_unit_top_0_dpd_din_valid,
      encoder_code_rate(1 downto 0) => Control_unit_top_0_encoder_code_rate(1 downto 0),
      encoder_reset_fifos => Control_unit_top_0_encoder_reset_fifos,
      interleaver_din_ready => Control_unit_top_0_interleaver_din_ready,
      interleaver_dout_data(31 downto 0) => block_interleaver_0_data_out(31 downto 0),
      interleaver_dout_valid => block_interleaver_0_read_valid,
      interleaver_last_frame => block_interleaver_0_last_frame_to_cu,
      mapper_din_data(5 downto 0) => Control_unit_top_0_mapper_din_data(5 downto 0),
      mapper_din_last => Control_unit_top_0_mapper_din_last,
      mapper_din_valid => Control_unit_top_0_mapper_din_valid,
      mapper_dout_last => Symbol_mapper_0_data_out_last,
      mapper_selected_mod(2 downto 0) => Control_unit_top_0_mapper_selected_mod(2 downto 0),
      mod_cod_schemes(4 downto 0) => mod_cod_schemes_1_1(4 downto 0),
      num_streams(4 downto 0) => num_streams_0_1(4 downto 0),
      num_words(15 downto 0) => num_words_0_1(15 downto 0),
      phy_dest_address(4 downto 0) => phy_dest_address_0_1(4 downto 0),
      phy_src_address(4 downto 0) => phy_src_address_0_1(4 downto 0),
      ref_distance(7 downto 0) => ref_distance_0_1(7 downto 0),
      reset => reset_1,
      scrambler_control_enable => Control_unit_top_0_scrambler_control_enable,
      scrambler_din_data(31 downto 0) => Control_unit_top_0_scrambler_din_data(31 downto 0),
      scrambler_din_last => Control_unit_top_0_scrambler_din_last,
      scrambler_din_valid => Control_unit_top_0_scrambler_din_valid,
      scrambler_init(31 downto 1) => scrambler_init_0_1(31 downto 1),
      scrambler_last_frame => Control_unit_top_0_control_unit_last_frame,
      scrambler_seed(31 downto 1) => Control_unit_top_0_scrambler_seed(31 downto 1),
      start_tx => start_tx_0_1
    );
LDPC_encoder_0: component Design_2_LDPC_encoder_0_2
     port map (
      clk => clk_1,
      current_cr(1 downto 0) => LDPC_encoder_0_current_cr(1 downto 0),
      data_in(31 downto 0) => Scrambler_32bits_0_data_out(32 downto 1),
      data_in_last => Scrambler_32bits_0_data_out_last,
      data_in_ready => block_interleaver_0_data_out_ready,
      data_in_valid => Scrambler_32bits_0_data_out_valid,
      data_out(31 downto 0) => LDPC_encoder_0_data_out_1_2(31 downto 0),
      data_out_last => LDPC_encoder_0_data_out_last,
      data_out_valid => LDPC_encoder_0_data_out_valid,
      end_of_frame => Scrambler_32bits_0_last_frame,
      last_frame => LDPC_encoder_0_last_frame,
      ldpc_core_clk => ldpc_core_clk_1,
      reset => reset_1,
      reset_fifos => Control_unit_top_0_encoder_reset_fifos,
      sel_code_rate(1 downto 0) => Control_unit_top_0_encoder_code_rate(1 downto 0)
    );
MUX_0: component Design_2_MUX_0_2
     port map (
      I_out(11 downto 0) => Symbol_mapper_0_i_out(11 downto 0),
      Q_out(11 downto 0) => Symbol_mapper_0_q_out(11 downto 0),
      data_out_valid => Symbol_mapper_0_data_out_valid,
      dpd_I_OUT(11 downto 0) => Control_unit_top_0_dpd_din_data_I(11 downto 0),
      dpd_Q_OUT(11 downto 0) => Control_unit_top_0_dpd_din_data_Q(11 downto 0),
      dpd_valid => Control_unit_top_0_dpd_din_valid,
      mux_I(11 downto 0) => MUX_0_mux_I(11 downto 0),
      mux_Q(11 downto 0) => MUX_0_mux_Q(11 downto 0),
      mux_valid => MUX_0_mux_valid,
      select_signal => Control_unit_top_0_mapper_pilot_insertion_en
    );
Polyphase_filter_0: component Design_2_Polyphase_filter_0_0
     port map (
      FIFO_reset => Control_unit_top_0_encoder_reset_fifos,
      clk => clk_1,
      data_in_valid => Pre_Distortion_Filter_0_data_out_valid,
      data_out_I(15 downto 0) => Polyphase_filter_0_data_out_I(15 downto 0),
      data_out_Q(15 downto 0) => Polyphase_filter_0_data_out_Q(15 downto 0),
      data_out_valid => Polyphase_filter_0_data_out_valid,
      input_I(15 downto 0) => Pre_Distortion_Filter_0_I_output(15 downto 0),
      input_Q(15 downto 0) => Pre_Distortion_Filter_0_Q_output(15 downto 0),
      reset => reset_1
    );
Pre_Distortion_Filter_0: component Design_2_Pre_Distortion_Filter_0_0
     port map (
      I_input(11 downto 0) => MUX_0_mux_I(11 downto 0),
      I_output(15 downto 0) => Pre_Distortion_Filter_0_I_output(15 downto 0),
      Q_input(11 downto 0) => MUX_0_mux_Q(11 downto 0),
      Q_output(15 downto 0) => Pre_Distortion_Filter_0_Q_output(15 downto 0),
      clk => clk_1,
      data_in_valid => MUX_0_mux_valid,
      data_out_valid => Pre_Distortion_Filter_0_data_out_valid,
      reset => reset_1
    );
Scrambler_32bits_0: component Design_2_Scrambler_32bits_0_1
     port map (
      clk => clk_1,
      control_enable => Control_unit_top_0_scrambler_control_enable,
      data_in(32 downto 1) => Control_unit_top_0_scrambler_din_data(31 downto 0),
      data_in_last => Control_unit_top_0_scrambler_din_last,
      data_in_valid => Control_unit_top_0_scrambler_din_valid,
      data_out(32 downto 1) => Scrambler_32bits_0_data_out(32 downto 1),
      data_out_last => Scrambler_32bits_0_data_out_last,
      data_out_valid => Scrambler_32bits_0_data_out_valid,
      end_of_frame => Control_unit_top_0_control_unit_last_frame,
      last_frame => Scrambler_32bits_0_last_frame,
      rst => reset_1,
      seed(30 downto 0) => Control_unit_top_0_scrambler_seed(31 downto 1)
    );
Symbol_mapper_0: component Design_2_Symbol_mapper_0_0
     port map (
      clk => clk_1,
      data_in(5 downto 0) => Control_unit_top_0_mapper_din_data(5 downto 0),
      data_in_last => Control_unit_top_0_mapper_din_last,
      data_in_valid => Control_unit_top_0_mapper_din_valid,
      data_out_last => Symbol_mapper_0_data_out_last,
      data_out_valid => Symbol_mapper_0_data_out_valid,
      i_out(11 downto 0) => Symbol_mapper_0_i_out(11 downto 0),
      mod_type(2 downto 0) => Control_unit_top_0_mapper_selected_mod(2 downto 0),
      q_out(11 downto 0) => Symbol_mapper_0_q_out(11 downto 0),
      reset => reset_1
    );
block_interleaver_0: component Design_2_block_interleaver_0_0
     port map (
      clk => clk_1,
      code_rate(1 downto 0) => LDPC_encoder_0_current_cr(1 downto 0),
      data_in(31 downto 0) => LDPC_encoder_0_data_out_1_2(31 downto 0),
      data_in_last => LDPC_encoder_0_data_out_last,
      data_in_ready => Control_unit_top_0_interleaver_din_ready,
      data_out(31 downto 0) => block_interleaver_0_data_out(31 downto 0),
      data_out_last => block_interleaver_0_data_out_last,
      data_out_ready => block_interleaver_0_data_out_ready,
      end_of_frame => LDPC_encoder_0_last_frame,
      last_frame_to_cu => block_interleaver_0_last_frame_to_cu,
      read_valid => block_interleaver_0_read_valid,
      rst => reset_1,
      write_en => LDPC_encoder_0_data_out_valid
    );
end STRUCTURE;
