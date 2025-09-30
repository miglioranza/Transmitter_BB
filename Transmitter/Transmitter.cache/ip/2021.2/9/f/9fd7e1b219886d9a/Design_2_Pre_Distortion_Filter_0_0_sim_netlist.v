// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sun Sep  7 19:30:53 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_Pre_Distortion_Filter_0_0_sim_netlist.v
// Design      : Design_2_Pre_Distortion_Filter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Design_2_Pre_Distortion_Filter_0_0,Parallel_FIR_filter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "Parallel_FIR_filter,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset,
    I_input,
    Q_input,
    data_in_ready,
    data_in_valid,
    data_out_valid,
    Q_output,
    I_output,
    data_out_ready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Design_2_clk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [11:0]I_input;
  input [11:0]Q_input;
  input data_in_ready;
  input data_in_valid;
  output data_out_valid;
  output [15:0]Q_output;
  output [15:0]I_output;
  output data_out_ready;

  wire [11:0]I_input;
  wire [15:0]I_output;
  wire [11:0]Q_input;
  wire [15:0]Q_output;
  wire clk;
  wire data_in_ready;
  wire data_in_valid;
  wire data_out_ready;
  wire data_out_valid;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Parallel_FIR_filter U0
       (.I_input(I_input),
        .I_output(I_output),
        .Q_input(Q_input),
        .Q_output(Q_output),
        .clk(clk),
        .data_in_ready(data_in_ready),
        .data_in_valid(data_in_valid),
        .data_out_ready(data_out_ready),
        .data_out_valid(data_out_valid),
        .reset(reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Parallel_FIR_filter
   (data_out_valid,
    Q_output,
    I_output,
    data_out_ready,
    clk,
    data_in_valid,
    data_in_ready,
    reset,
    Q_input,
    I_input);
  output data_out_valid;
  output [15:0]Q_output;
  output [15:0]I_output;
  output data_out_ready;
  input clk;
  input data_in_valid;
  input data_in_ready;
  input reset;
  input [11:0]Q_input;
  input [11:0]I_input;

  wire [31:13]C;
  wire [11:0]I_input;
  wire [15:0]I_output;
  wire [11:0]\I_shift_reg_reg[0]_12 ;
  wire [11:0]\I_shift_reg_reg[10]_19 ;
  wire [11:0]\I_shift_reg_reg[11]_20 ;
  wire [11:0]\I_shift_reg_reg[12]_21 ;
  wire [11:0]\I_shift_reg_reg[1]_13 ;
  wire [11:0]\I_shift_reg_reg[2]_14 ;
  wire [11:0]\I_shift_reg_reg[3]_15 ;
  wire [11:0]\I_shift_reg_reg[4]_16 ;
  wire \I_shift_reg_reg[6][0]_srl2_n_0 ;
  wire \I_shift_reg_reg[6][10]_srl2_n_0 ;
  wire \I_shift_reg_reg[6][11]_srl2_n_0 ;
  wire \I_shift_reg_reg[6][1]_srl2_n_0 ;
  wire \I_shift_reg_reg[6][2]_srl2_n_0 ;
  wire \I_shift_reg_reg[6][3]_srl2_n_0 ;
  wire \I_shift_reg_reg[6][4]_srl2_n_0 ;
  wire \I_shift_reg_reg[6][5]_srl2_n_0 ;
  wire \I_shift_reg_reg[6][6]_srl2_n_0 ;
  wire \I_shift_reg_reg[6][7]_srl2_n_0 ;
  wire \I_shift_reg_reg[6][8]_srl2_n_0 ;
  wire \I_shift_reg_reg[6][9]_srl2_n_0 ;
  wire [11:0]\I_shift_reg_reg[7]_1 ;
  wire [11:0]\I_shift_reg_reg[8]_17 ;
  wire [11:0]\I_shift_reg_reg[9]_18 ;
  wire [11:0]Q_input;
  wire [15:0]Q_output;
  wire [11:0]\Q_shift_reg_reg[0]_2 ;
  wire [11:0]\Q_shift_reg_reg[10]_9 ;
  wire [11:0]\Q_shift_reg_reg[11]_10 ;
  wire [11:0]\Q_shift_reg_reg[12]_11 ;
  wire [11:0]\Q_shift_reg_reg[1]_3 ;
  wire [11:0]\Q_shift_reg_reg[2]_4 ;
  wire [11:0]\Q_shift_reg_reg[3]_5 ;
  wire [11:0]\Q_shift_reg_reg[4]_6 ;
  wire \Q_shift_reg_reg[6][0]_srl2_n_0 ;
  wire \Q_shift_reg_reg[6][10]_srl2_n_0 ;
  wire \Q_shift_reg_reg[6][11]_srl2_n_0 ;
  wire \Q_shift_reg_reg[6][1]_srl2_n_0 ;
  wire \Q_shift_reg_reg[6][2]_srl2_n_0 ;
  wire \Q_shift_reg_reg[6][3]_srl2_n_0 ;
  wire \Q_shift_reg_reg[6][4]_srl2_n_0 ;
  wire \Q_shift_reg_reg[6][5]_srl2_n_0 ;
  wire \Q_shift_reg_reg[6][6]_srl2_n_0 ;
  wire \Q_shift_reg_reg[6][7]_srl2_n_0 ;
  wire \Q_shift_reg_reg[6][8]_srl2_n_0 ;
  wire \Q_shift_reg_reg[6][9]_srl2_n_0 ;
  wire [11:0]\Q_shift_reg_reg[7]_0 ;
  wire [11:0]\Q_shift_reg_reg[8]_7 ;
  wire [11:0]\Q_shift_reg_reg[9]_8 ;
  wire clk;
  wire data_in_ready;
  wire data_in_valid;
  wire data_out_ready;
  wire data_out_valid;
  wire data_out_valid_i_1_n_0;
  wire data_out_valid_i_2_n_0;
  wire reset;
  wire [31:16]temp_reg_I;
  wire temp_reg_I0__0_n_100;
  wire temp_reg_I0__0_n_101;
  wire temp_reg_I0__0_n_102;
  wire temp_reg_I0__0_n_103;
  wire temp_reg_I0__0_n_104;
  wire temp_reg_I0__0_n_105;
  wire temp_reg_I0__0_n_74;
  wire temp_reg_I0__0_n_75;
  wire temp_reg_I0__0_n_76;
  wire temp_reg_I0__0_n_77;
  wire temp_reg_I0__0_n_78;
  wire temp_reg_I0__0_n_79;
  wire temp_reg_I0__0_n_80;
  wire temp_reg_I0__0_n_81;
  wire temp_reg_I0__0_n_82;
  wire temp_reg_I0__0_n_83;
  wire temp_reg_I0__0_n_84;
  wire temp_reg_I0__0_n_85;
  wire temp_reg_I0__0_n_86;
  wire temp_reg_I0__0_n_87;
  wire temp_reg_I0__0_n_88;
  wire temp_reg_I0__0_n_89;
  wire temp_reg_I0__0_n_90;
  wire temp_reg_I0__0_n_91;
  wire temp_reg_I0__0_n_92;
  wire temp_reg_I0__0_n_93;
  wire temp_reg_I0__0_n_94;
  wire temp_reg_I0__0_n_95;
  wire temp_reg_I0__0_n_96;
  wire temp_reg_I0__0_n_97;
  wire temp_reg_I0__0_n_98;
  wire temp_reg_I0__0_n_99;
  wire [31:12]temp_reg_I0__10;
  wire temp_reg_I0__1_i_10_n_0;
  wire temp_reg_I0__1_i_11_n_0;
  wire temp_reg_I0__1_i_12_n_0;
  wire temp_reg_I0__1_i_13_n_0;
  wire temp_reg_I0__1_i_14_n_0;
  wire temp_reg_I0__1_i_15_n_0;
  wire temp_reg_I0__1_i_16_n_0;
  wire temp_reg_I0__1_i_17_n_0;
  wire temp_reg_I0__1_i_18_n_0;
  wire temp_reg_I0__1_i_19_n_0;
  wire temp_reg_I0__1_i_1_n_12;
  wire temp_reg_I0__1_i_1_n_13;
  wire temp_reg_I0__1_i_1_n_14;
  wire temp_reg_I0__1_i_1_n_15;
  wire temp_reg_I0__1_i_1_n_5;
  wire temp_reg_I0__1_i_1_n_6;
  wire temp_reg_I0__1_i_1_n_7;
  wire temp_reg_I0__1_i_20_n_0;
  wire temp_reg_I0__1_i_21_n_0;
  wire temp_reg_I0__1_i_22_n_0;
  wire temp_reg_I0__1_i_23_n_0;
  wire temp_reg_I0__1_i_2_n_0;
  wire temp_reg_I0__1_i_2_n_1;
  wire temp_reg_I0__1_i_2_n_10;
  wire temp_reg_I0__1_i_2_n_11;
  wire temp_reg_I0__1_i_2_n_12;
  wire temp_reg_I0__1_i_2_n_13;
  wire temp_reg_I0__1_i_2_n_14;
  wire temp_reg_I0__1_i_2_n_15;
  wire temp_reg_I0__1_i_2_n_2;
  wire temp_reg_I0__1_i_2_n_3;
  wire temp_reg_I0__1_i_2_n_4;
  wire temp_reg_I0__1_i_2_n_5;
  wire temp_reg_I0__1_i_2_n_6;
  wire temp_reg_I0__1_i_2_n_7;
  wire temp_reg_I0__1_i_2_n_8;
  wire temp_reg_I0__1_i_2_n_9;
  wire temp_reg_I0__1_i_3_n_0;
  wire temp_reg_I0__1_i_3_n_1;
  wire temp_reg_I0__1_i_3_n_10;
  wire temp_reg_I0__1_i_3_n_11;
  wire temp_reg_I0__1_i_3_n_12;
  wire temp_reg_I0__1_i_3_n_13;
  wire temp_reg_I0__1_i_3_n_14;
  wire temp_reg_I0__1_i_3_n_15;
  wire temp_reg_I0__1_i_3_n_2;
  wire temp_reg_I0__1_i_3_n_3;
  wire temp_reg_I0__1_i_3_n_4;
  wire temp_reg_I0__1_i_3_n_5;
  wire temp_reg_I0__1_i_3_n_6;
  wire temp_reg_I0__1_i_3_n_7;
  wire temp_reg_I0__1_i_3_n_8;
  wire temp_reg_I0__1_i_3_n_9;
  wire temp_reg_I0__1_i_4_n_0;
  wire temp_reg_I0__1_i_5_n_0;
  wire temp_reg_I0__1_i_6_n_0;
  wire temp_reg_I0__1_i_7_n_0;
  wire temp_reg_I0__1_i_8_n_0;
  wire temp_reg_I0__1_i_9_n_0;
  wire temp_reg_I0__1_n_106;
  wire temp_reg_I0__1_n_107;
  wire temp_reg_I0__1_n_108;
  wire temp_reg_I0__1_n_109;
  wire temp_reg_I0__1_n_110;
  wire temp_reg_I0__1_n_111;
  wire temp_reg_I0__1_n_112;
  wire temp_reg_I0__1_n_113;
  wire temp_reg_I0__1_n_114;
  wire temp_reg_I0__1_n_115;
  wire temp_reg_I0__1_n_116;
  wire temp_reg_I0__1_n_117;
  wire temp_reg_I0__1_n_118;
  wire temp_reg_I0__1_n_119;
  wire temp_reg_I0__1_n_120;
  wire temp_reg_I0__1_n_121;
  wire temp_reg_I0__1_n_122;
  wire temp_reg_I0__1_n_123;
  wire temp_reg_I0__1_n_124;
  wire temp_reg_I0__1_n_125;
  wire temp_reg_I0__1_n_126;
  wire temp_reg_I0__1_n_127;
  wire temp_reg_I0__1_n_128;
  wire temp_reg_I0__1_n_129;
  wire temp_reg_I0__1_n_130;
  wire temp_reg_I0__1_n_131;
  wire temp_reg_I0__1_n_132;
  wire temp_reg_I0__1_n_133;
  wire temp_reg_I0__1_n_134;
  wire temp_reg_I0__1_n_135;
  wire temp_reg_I0__1_n_136;
  wire temp_reg_I0__1_n_137;
  wire temp_reg_I0__1_n_138;
  wire temp_reg_I0__1_n_139;
  wire temp_reg_I0__1_n_140;
  wire temp_reg_I0__1_n_141;
  wire temp_reg_I0__1_n_142;
  wire temp_reg_I0__1_n_143;
  wire temp_reg_I0__1_n_144;
  wire temp_reg_I0__1_n_145;
  wire temp_reg_I0__1_n_146;
  wire temp_reg_I0__1_n_147;
  wire temp_reg_I0__1_n_148;
  wire temp_reg_I0__1_n_149;
  wire temp_reg_I0__1_n_150;
  wire temp_reg_I0__1_n_151;
  wire temp_reg_I0__1_n_152;
  wire temp_reg_I0__1_n_153;
  wire temp_reg_I0__2_n_106;
  wire temp_reg_I0__2_n_107;
  wire temp_reg_I0__2_n_108;
  wire temp_reg_I0__2_n_109;
  wire temp_reg_I0__2_n_110;
  wire temp_reg_I0__2_n_111;
  wire temp_reg_I0__2_n_112;
  wire temp_reg_I0__2_n_113;
  wire temp_reg_I0__2_n_114;
  wire temp_reg_I0__2_n_115;
  wire temp_reg_I0__2_n_116;
  wire temp_reg_I0__2_n_117;
  wire temp_reg_I0__2_n_118;
  wire temp_reg_I0__2_n_119;
  wire temp_reg_I0__2_n_120;
  wire temp_reg_I0__2_n_121;
  wire temp_reg_I0__2_n_122;
  wire temp_reg_I0__2_n_123;
  wire temp_reg_I0__2_n_124;
  wire temp_reg_I0__2_n_125;
  wire temp_reg_I0__2_n_126;
  wire temp_reg_I0__2_n_127;
  wire temp_reg_I0__2_n_128;
  wire temp_reg_I0__2_n_129;
  wire temp_reg_I0__2_n_130;
  wire temp_reg_I0__2_n_131;
  wire temp_reg_I0__2_n_132;
  wire temp_reg_I0__2_n_133;
  wire temp_reg_I0__2_n_134;
  wire temp_reg_I0__2_n_135;
  wire temp_reg_I0__2_n_136;
  wire temp_reg_I0__2_n_137;
  wire temp_reg_I0__2_n_138;
  wire temp_reg_I0__2_n_139;
  wire temp_reg_I0__2_n_140;
  wire temp_reg_I0__2_n_141;
  wire temp_reg_I0__2_n_142;
  wire temp_reg_I0__2_n_143;
  wire temp_reg_I0__2_n_144;
  wire temp_reg_I0__2_n_145;
  wire temp_reg_I0__2_n_146;
  wire temp_reg_I0__2_n_147;
  wire temp_reg_I0__2_n_148;
  wire temp_reg_I0__2_n_149;
  wire temp_reg_I0__2_n_150;
  wire temp_reg_I0__2_n_151;
  wire temp_reg_I0__2_n_152;
  wire temp_reg_I0__2_n_153;
  wire temp_reg_I0__3_n_100;
  wire temp_reg_I0__3_n_101;
  wire temp_reg_I0__3_n_102;
  wire temp_reg_I0__3_n_103;
  wire temp_reg_I0__3_n_104;
  wire temp_reg_I0__3_n_105;
  wire temp_reg_I0__3_n_74;
  wire temp_reg_I0__3_n_75;
  wire temp_reg_I0__3_n_76;
  wire temp_reg_I0__3_n_77;
  wire temp_reg_I0__3_n_78;
  wire temp_reg_I0__3_n_79;
  wire temp_reg_I0__3_n_80;
  wire temp_reg_I0__3_n_81;
  wire temp_reg_I0__3_n_82;
  wire temp_reg_I0__3_n_83;
  wire temp_reg_I0__3_n_84;
  wire temp_reg_I0__3_n_85;
  wire temp_reg_I0__3_n_86;
  wire temp_reg_I0__3_n_87;
  wire temp_reg_I0__3_n_88;
  wire temp_reg_I0__3_n_89;
  wire temp_reg_I0__3_n_90;
  wire temp_reg_I0__3_n_91;
  wire temp_reg_I0__3_n_92;
  wire temp_reg_I0__3_n_93;
  wire temp_reg_I0__3_n_94;
  wire temp_reg_I0__3_n_95;
  wire temp_reg_I0__3_n_96;
  wire temp_reg_I0__3_n_97;
  wire temp_reg_I0__3_n_98;
  wire temp_reg_I0__3_n_99;
  wire temp_reg_I0__4_i_10_n_0;
  wire temp_reg_I0__4_i_11_n_0;
  wire temp_reg_I0__4_i_12_n_0;
  wire temp_reg_I0__4_i_13_n_0;
  wire temp_reg_I0__4_i_14_n_0;
  wire temp_reg_I0__4_i_15_n_0;
  wire temp_reg_I0__4_i_16_n_0;
  wire temp_reg_I0__4_i_17_n_0;
  wire temp_reg_I0__4_i_18_n_0;
  wire temp_reg_I0__4_i_19_n_0;
  wire temp_reg_I0__4_i_1_n_13;
  wire temp_reg_I0__4_i_1_n_14;
  wire temp_reg_I0__4_i_1_n_15;
  wire temp_reg_I0__4_i_1_n_6;
  wire temp_reg_I0__4_i_1_n_7;
  wire temp_reg_I0__4_i_20_n_0;
  wire temp_reg_I0__4_i_21_n_0;
  wire temp_reg_I0__4_i_22_n_0;
  wire temp_reg_I0__4_i_23_n_0;
  wire temp_reg_I0__4_i_24_n_0;
  wire temp_reg_I0__4_i_25_n_0;
  wire temp_reg_I0__4_i_25_n_1;
  wire temp_reg_I0__4_i_25_n_10;
  wire temp_reg_I0__4_i_25_n_11;
  wire temp_reg_I0__4_i_25_n_12;
  wire temp_reg_I0__4_i_25_n_13;
  wire temp_reg_I0__4_i_25_n_14;
  wire temp_reg_I0__4_i_25_n_15;
  wire temp_reg_I0__4_i_25_n_2;
  wire temp_reg_I0__4_i_25_n_3;
  wire temp_reg_I0__4_i_25_n_4;
  wire temp_reg_I0__4_i_25_n_5;
  wire temp_reg_I0__4_i_25_n_6;
  wire temp_reg_I0__4_i_25_n_7;
  wire temp_reg_I0__4_i_25_n_8;
  wire temp_reg_I0__4_i_25_n_9;
  wire temp_reg_I0__4_i_26_n_0;
  wire temp_reg_I0__4_i_27_n_0;
  wire temp_reg_I0__4_i_28_n_0;
  wire temp_reg_I0__4_i_29_n_0;
  wire temp_reg_I0__4_i_2_n_0;
  wire temp_reg_I0__4_i_2_n_1;
  wire temp_reg_I0__4_i_2_n_10;
  wire temp_reg_I0__4_i_2_n_11;
  wire temp_reg_I0__4_i_2_n_12;
  wire temp_reg_I0__4_i_2_n_13;
  wire temp_reg_I0__4_i_2_n_14;
  wire temp_reg_I0__4_i_2_n_15;
  wire temp_reg_I0__4_i_2_n_2;
  wire temp_reg_I0__4_i_2_n_3;
  wire temp_reg_I0__4_i_2_n_4;
  wire temp_reg_I0__4_i_2_n_5;
  wire temp_reg_I0__4_i_2_n_6;
  wire temp_reg_I0__4_i_2_n_7;
  wire temp_reg_I0__4_i_2_n_8;
  wire temp_reg_I0__4_i_2_n_9;
  wire temp_reg_I0__4_i_30_n_0;
  wire temp_reg_I0__4_i_31_n_0;
  wire temp_reg_I0__4_i_32_n_0;
  wire temp_reg_I0__4_i_33_n_0;
  wire temp_reg_I0__4_i_34_n_0;
  wire temp_reg_I0__4_i_35_n_0;
  wire temp_reg_I0__4_i_36_n_0;
  wire temp_reg_I0__4_i_37_n_0;
  wire temp_reg_I0__4_i_38_n_0;
  wire temp_reg_I0__4_i_39_n_0;
  wire temp_reg_I0__4_i_3_n_0;
  wire temp_reg_I0__4_i_3_n_1;
  wire temp_reg_I0__4_i_3_n_10;
  wire temp_reg_I0__4_i_3_n_11;
  wire temp_reg_I0__4_i_3_n_12;
  wire temp_reg_I0__4_i_3_n_13;
  wire temp_reg_I0__4_i_3_n_14;
  wire temp_reg_I0__4_i_3_n_15;
  wire temp_reg_I0__4_i_3_n_2;
  wire temp_reg_I0__4_i_3_n_3;
  wire temp_reg_I0__4_i_3_n_4;
  wire temp_reg_I0__4_i_3_n_5;
  wire temp_reg_I0__4_i_3_n_6;
  wire temp_reg_I0__4_i_3_n_7;
  wire temp_reg_I0__4_i_3_n_8;
  wire temp_reg_I0__4_i_3_n_9;
  wire temp_reg_I0__4_i_40_n_0;
  wire temp_reg_I0__4_i_41_n_0;
  wire temp_reg_I0__4_i_42_n_0;
  wire temp_reg_I0__4_i_43_n_0;
  wire temp_reg_I0__4_i_44_n_0;
  wire temp_reg_I0__4_i_4_n_13;
  wire temp_reg_I0__4_i_4_n_14;
  wire temp_reg_I0__4_i_4_n_15;
  wire temp_reg_I0__4_i_4_n_6;
  wire temp_reg_I0__4_i_4_n_7;
  wire temp_reg_I0__4_i_5_n_0;
  wire temp_reg_I0__4_i_5_n_1;
  wire temp_reg_I0__4_i_5_n_10;
  wire temp_reg_I0__4_i_5_n_11;
  wire temp_reg_I0__4_i_5_n_12;
  wire temp_reg_I0__4_i_5_n_13;
  wire temp_reg_I0__4_i_5_n_14;
  wire temp_reg_I0__4_i_5_n_15;
  wire temp_reg_I0__4_i_5_n_2;
  wire temp_reg_I0__4_i_5_n_3;
  wire temp_reg_I0__4_i_5_n_4;
  wire temp_reg_I0__4_i_5_n_5;
  wire temp_reg_I0__4_i_5_n_6;
  wire temp_reg_I0__4_i_5_n_7;
  wire temp_reg_I0__4_i_5_n_8;
  wire temp_reg_I0__4_i_5_n_9;
  wire temp_reg_I0__4_i_6_n_0;
  wire temp_reg_I0__4_i_7_n_0;
  wire temp_reg_I0__4_i_8_n_0;
  wire temp_reg_I0__4_i_9_n_0;
  wire temp_reg_I0__4_n_106;
  wire temp_reg_I0__4_n_107;
  wire temp_reg_I0__4_n_108;
  wire temp_reg_I0__4_n_109;
  wire temp_reg_I0__4_n_110;
  wire temp_reg_I0__4_n_111;
  wire temp_reg_I0__4_n_112;
  wire temp_reg_I0__4_n_113;
  wire temp_reg_I0__4_n_114;
  wire temp_reg_I0__4_n_115;
  wire temp_reg_I0__4_n_116;
  wire temp_reg_I0__4_n_117;
  wire temp_reg_I0__4_n_118;
  wire temp_reg_I0__4_n_119;
  wire temp_reg_I0__4_n_120;
  wire temp_reg_I0__4_n_121;
  wire temp_reg_I0__4_n_122;
  wire temp_reg_I0__4_n_123;
  wire temp_reg_I0__4_n_124;
  wire temp_reg_I0__4_n_125;
  wire temp_reg_I0__4_n_126;
  wire temp_reg_I0__4_n_127;
  wire temp_reg_I0__4_n_128;
  wire temp_reg_I0__4_n_129;
  wire temp_reg_I0__4_n_130;
  wire temp_reg_I0__4_n_131;
  wire temp_reg_I0__4_n_132;
  wire temp_reg_I0__4_n_133;
  wire temp_reg_I0__4_n_134;
  wire temp_reg_I0__4_n_135;
  wire temp_reg_I0__4_n_136;
  wire temp_reg_I0__4_n_137;
  wire temp_reg_I0__4_n_138;
  wire temp_reg_I0__4_n_139;
  wire temp_reg_I0__4_n_140;
  wire temp_reg_I0__4_n_141;
  wire temp_reg_I0__4_n_142;
  wire temp_reg_I0__4_n_143;
  wire temp_reg_I0__4_n_144;
  wire temp_reg_I0__4_n_145;
  wire temp_reg_I0__4_n_146;
  wire temp_reg_I0__4_n_147;
  wire temp_reg_I0__4_n_148;
  wire temp_reg_I0__4_n_149;
  wire temp_reg_I0__4_n_150;
  wire temp_reg_I0__4_n_151;
  wire temp_reg_I0__4_n_152;
  wire temp_reg_I0__4_n_153;
  wire temp_reg_I0__5_n_106;
  wire temp_reg_I0__5_n_107;
  wire temp_reg_I0__5_n_108;
  wire temp_reg_I0__5_n_109;
  wire temp_reg_I0__5_n_110;
  wire temp_reg_I0__5_n_111;
  wire temp_reg_I0__5_n_112;
  wire temp_reg_I0__5_n_113;
  wire temp_reg_I0__5_n_114;
  wire temp_reg_I0__5_n_115;
  wire temp_reg_I0__5_n_116;
  wire temp_reg_I0__5_n_117;
  wire temp_reg_I0__5_n_118;
  wire temp_reg_I0__5_n_119;
  wire temp_reg_I0__5_n_120;
  wire temp_reg_I0__5_n_121;
  wire temp_reg_I0__5_n_122;
  wire temp_reg_I0__5_n_123;
  wire temp_reg_I0__5_n_124;
  wire temp_reg_I0__5_n_125;
  wire temp_reg_I0__5_n_126;
  wire temp_reg_I0__5_n_127;
  wire temp_reg_I0__5_n_128;
  wire temp_reg_I0__5_n_129;
  wire temp_reg_I0__5_n_130;
  wire temp_reg_I0__5_n_131;
  wire temp_reg_I0__5_n_132;
  wire temp_reg_I0__5_n_133;
  wire temp_reg_I0__5_n_134;
  wire temp_reg_I0__5_n_135;
  wire temp_reg_I0__5_n_136;
  wire temp_reg_I0__5_n_137;
  wire temp_reg_I0__5_n_138;
  wire temp_reg_I0__5_n_139;
  wire temp_reg_I0__5_n_140;
  wire temp_reg_I0__5_n_141;
  wire temp_reg_I0__5_n_142;
  wire temp_reg_I0__5_n_143;
  wire temp_reg_I0__5_n_144;
  wire temp_reg_I0__5_n_145;
  wire temp_reg_I0__5_n_146;
  wire temp_reg_I0__5_n_147;
  wire temp_reg_I0__5_n_148;
  wire temp_reg_I0__5_n_149;
  wire temp_reg_I0__5_n_150;
  wire temp_reg_I0__5_n_151;
  wire temp_reg_I0__5_n_152;
  wire temp_reg_I0__5_n_153;
  wire temp_reg_I0__6_n_100;
  wire temp_reg_I0__6_n_101;
  wire temp_reg_I0__6_n_102;
  wire temp_reg_I0__6_n_103;
  wire temp_reg_I0__6_n_104;
  wire temp_reg_I0__6_n_105;
  wire temp_reg_I0__6_n_74;
  wire temp_reg_I0__6_n_75;
  wire temp_reg_I0__6_n_76;
  wire temp_reg_I0__6_n_77;
  wire temp_reg_I0__6_n_78;
  wire temp_reg_I0__6_n_79;
  wire temp_reg_I0__6_n_80;
  wire temp_reg_I0__6_n_81;
  wire temp_reg_I0__6_n_82;
  wire temp_reg_I0__6_n_83;
  wire temp_reg_I0__6_n_84;
  wire temp_reg_I0__6_n_85;
  wire temp_reg_I0__6_n_86;
  wire temp_reg_I0__6_n_87;
  wire temp_reg_I0__6_n_88;
  wire temp_reg_I0__6_n_89;
  wire temp_reg_I0__6_n_90;
  wire temp_reg_I0__6_n_91;
  wire temp_reg_I0__6_n_92;
  wire temp_reg_I0__6_n_93;
  wire temp_reg_I0__6_n_94;
  wire temp_reg_I0__6_n_95;
  wire temp_reg_I0__6_n_96;
  wire temp_reg_I0__6_n_97;
  wire temp_reg_I0__6_n_98;
  wire temp_reg_I0__6_n_99;
  wire temp_reg_I0__7_i_10_n_0;
  wire temp_reg_I0__7_i_11_n_0;
  wire temp_reg_I0__7_i_12_n_0;
  wire temp_reg_I0__7_i_13_n_0;
  wire temp_reg_I0__7_i_14_n_0;
  wire temp_reg_I0__7_i_15_n_0;
  wire temp_reg_I0__7_i_16_n_0;
  wire temp_reg_I0__7_i_17_n_0;
  wire temp_reg_I0__7_i_18_n_0;
  wire temp_reg_I0__7_i_19_n_0;
  wire temp_reg_I0__7_i_1_n_5;
  wire temp_reg_I0__7_i_1_n_6;
  wire temp_reg_I0__7_i_1_n_7;
  wire temp_reg_I0__7_i_20_n_0;
  wire temp_reg_I0__7_i_21_n_0;
  wire temp_reg_I0__7_i_22_n_0;
  wire temp_reg_I0__7_i_23_n_0;
  wire temp_reg_I0__7_i_2_n_0;
  wire temp_reg_I0__7_i_2_n_1;
  wire temp_reg_I0__7_i_2_n_2;
  wire temp_reg_I0__7_i_2_n_3;
  wire temp_reg_I0__7_i_2_n_4;
  wire temp_reg_I0__7_i_2_n_5;
  wire temp_reg_I0__7_i_2_n_6;
  wire temp_reg_I0__7_i_2_n_7;
  wire temp_reg_I0__7_i_3_n_0;
  wire temp_reg_I0__7_i_3_n_1;
  wire temp_reg_I0__7_i_3_n_2;
  wire temp_reg_I0__7_i_3_n_3;
  wire temp_reg_I0__7_i_3_n_4;
  wire temp_reg_I0__7_i_3_n_5;
  wire temp_reg_I0__7_i_3_n_6;
  wire temp_reg_I0__7_i_3_n_7;
  wire temp_reg_I0__7_i_4_n_0;
  wire temp_reg_I0__7_i_5_n_0;
  wire temp_reg_I0__7_i_6_n_0;
  wire temp_reg_I0__7_i_7_n_0;
  wire temp_reg_I0__7_i_8_n_0;
  wire temp_reg_I0__7_i_9_n_0;
  wire temp_reg_I0__7_n_106;
  wire temp_reg_I0__7_n_107;
  wire temp_reg_I0__7_n_108;
  wire temp_reg_I0__7_n_109;
  wire temp_reg_I0__7_n_110;
  wire temp_reg_I0__7_n_111;
  wire temp_reg_I0__7_n_112;
  wire temp_reg_I0__7_n_113;
  wire temp_reg_I0__7_n_114;
  wire temp_reg_I0__7_n_115;
  wire temp_reg_I0__7_n_116;
  wire temp_reg_I0__7_n_117;
  wire temp_reg_I0__7_n_118;
  wire temp_reg_I0__7_n_119;
  wire temp_reg_I0__7_n_120;
  wire temp_reg_I0__7_n_121;
  wire temp_reg_I0__7_n_122;
  wire temp_reg_I0__7_n_123;
  wire temp_reg_I0__7_n_124;
  wire temp_reg_I0__7_n_125;
  wire temp_reg_I0__7_n_126;
  wire temp_reg_I0__7_n_127;
  wire temp_reg_I0__7_n_128;
  wire temp_reg_I0__7_n_129;
  wire temp_reg_I0__7_n_130;
  wire temp_reg_I0__7_n_131;
  wire temp_reg_I0__7_n_132;
  wire temp_reg_I0__7_n_133;
  wire temp_reg_I0__7_n_134;
  wire temp_reg_I0__7_n_135;
  wire temp_reg_I0__7_n_136;
  wire temp_reg_I0__7_n_137;
  wire temp_reg_I0__7_n_138;
  wire temp_reg_I0__7_n_139;
  wire temp_reg_I0__7_n_140;
  wire temp_reg_I0__7_n_141;
  wire temp_reg_I0__7_n_142;
  wire temp_reg_I0__7_n_143;
  wire temp_reg_I0__7_n_144;
  wire temp_reg_I0__7_n_145;
  wire temp_reg_I0__7_n_146;
  wire temp_reg_I0__7_n_147;
  wire temp_reg_I0__7_n_148;
  wire temp_reg_I0__7_n_149;
  wire temp_reg_I0__7_n_150;
  wire temp_reg_I0__7_n_151;
  wire temp_reg_I0__7_n_152;
  wire temp_reg_I0__7_n_153;
  wire temp_reg_I0__8_n_106;
  wire temp_reg_I0__8_n_107;
  wire temp_reg_I0__8_n_108;
  wire temp_reg_I0__8_n_109;
  wire temp_reg_I0__8_n_110;
  wire temp_reg_I0__8_n_111;
  wire temp_reg_I0__8_n_112;
  wire temp_reg_I0__8_n_113;
  wire temp_reg_I0__8_n_114;
  wire temp_reg_I0__8_n_115;
  wire temp_reg_I0__8_n_116;
  wire temp_reg_I0__8_n_117;
  wire temp_reg_I0__8_n_118;
  wire temp_reg_I0__8_n_119;
  wire temp_reg_I0__8_n_120;
  wire temp_reg_I0__8_n_121;
  wire temp_reg_I0__8_n_122;
  wire temp_reg_I0__8_n_123;
  wire temp_reg_I0__8_n_124;
  wire temp_reg_I0__8_n_125;
  wire temp_reg_I0__8_n_126;
  wire temp_reg_I0__8_n_127;
  wire temp_reg_I0__8_n_128;
  wire temp_reg_I0__8_n_129;
  wire temp_reg_I0__8_n_130;
  wire temp_reg_I0__8_n_131;
  wire temp_reg_I0__8_n_132;
  wire temp_reg_I0__8_n_133;
  wire temp_reg_I0__8_n_134;
  wire temp_reg_I0__8_n_135;
  wire temp_reg_I0__8_n_136;
  wire temp_reg_I0__8_n_137;
  wire temp_reg_I0__8_n_138;
  wire temp_reg_I0__8_n_139;
  wire temp_reg_I0__8_n_140;
  wire temp_reg_I0__8_n_141;
  wire temp_reg_I0__8_n_142;
  wire temp_reg_I0__8_n_143;
  wire temp_reg_I0__8_n_144;
  wire temp_reg_I0__8_n_145;
  wire temp_reg_I0__8_n_146;
  wire temp_reg_I0__8_n_147;
  wire temp_reg_I0__8_n_148;
  wire temp_reg_I0__8_n_149;
  wire temp_reg_I0__8_n_150;
  wire temp_reg_I0__8_n_151;
  wire temp_reg_I0__8_n_152;
  wire temp_reg_I0__8_n_153;
  wire temp_reg_I0__9_n_58;
  wire temp_reg_I0__9_n_59;
  wire temp_reg_I0__9_n_60;
  wire temp_reg_I0__9_n_61;
  wire temp_reg_I0__9_n_62;
  wire temp_reg_I0__9_n_63;
  wire temp_reg_I0__9_n_64;
  wire temp_reg_I0__9_n_65;
  wire temp_reg_I0__9_n_66;
  wire temp_reg_I0__9_n_67;
  wire temp_reg_I0__9_n_68;
  wire temp_reg_I0__9_n_69;
  wire temp_reg_I0__9_n_70;
  wire temp_reg_I0__9_n_71;
  wire temp_reg_I0__9_n_72;
  wire temp_reg_I0__9_n_73;
  wire temp_reg_I0_n_106;
  wire temp_reg_I0_n_107;
  wire temp_reg_I0_n_108;
  wire temp_reg_I0_n_109;
  wire temp_reg_I0_n_110;
  wire temp_reg_I0_n_111;
  wire temp_reg_I0_n_112;
  wire temp_reg_I0_n_113;
  wire temp_reg_I0_n_114;
  wire temp_reg_I0_n_115;
  wire temp_reg_I0_n_116;
  wire temp_reg_I0_n_117;
  wire temp_reg_I0_n_118;
  wire temp_reg_I0_n_119;
  wire temp_reg_I0_n_120;
  wire temp_reg_I0_n_121;
  wire temp_reg_I0_n_122;
  wire temp_reg_I0_n_123;
  wire temp_reg_I0_n_124;
  wire temp_reg_I0_n_125;
  wire temp_reg_I0_n_126;
  wire temp_reg_I0_n_127;
  wire temp_reg_I0_n_128;
  wire temp_reg_I0_n_129;
  wire temp_reg_I0_n_130;
  wire temp_reg_I0_n_131;
  wire temp_reg_I0_n_132;
  wire temp_reg_I0_n_133;
  wire temp_reg_I0_n_134;
  wire temp_reg_I0_n_135;
  wire temp_reg_I0_n_136;
  wire temp_reg_I0_n_137;
  wire temp_reg_I0_n_138;
  wire temp_reg_I0_n_139;
  wire temp_reg_I0_n_140;
  wire temp_reg_I0_n_141;
  wire temp_reg_I0_n_142;
  wire temp_reg_I0_n_143;
  wire temp_reg_I0_n_144;
  wire temp_reg_I0_n_145;
  wire temp_reg_I0_n_146;
  wire temp_reg_I0_n_147;
  wire temp_reg_I0_n_148;
  wire temp_reg_I0_n_149;
  wire temp_reg_I0_n_150;
  wire temp_reg_I0_n_151;
  wire temp_reg_I0_n_152;
  wire temp_reg_I0_n_153;
  wire temp_reg_I2_n_10;
  wire temp_reg_I2_n_106;
  wire temp_reg_I2_n_107;
  wire temp_reg_I2_n_108;
  wire temp_reg_I2_n_109;
  wire temp_reg_I2_n_11;
  wire temp_reg_I2_n_110;
  wire temp_reg_I2_n_111;
  wire temp_reg_I2_n_112;
  wire temp_reg_I2_n_113;
  wire temp_reg_I2_n_114;
  wire temp_reg_I2_n_115;
  wire temp_reg_I2_n_116;
  wire temp_reg_I2_n_117;
  wire temp_reg_I2_n_118;
  wire temp_reg_I2_n_119;
  wire temp_reg_I2_n_12;
  wire temp_reg_I2_n_120;
  wire temp_reg_I2_n_121;
  wire temp_reg_I2_n_122;
  wire temp_reg_I2_n_123;
  wire temp_reg_I2_n_124;
  wire temp_reg_I2_n_125;
  wire temp_reg_I2_n_126;
  wire temp_reg_I2_n_127;
  wire temp_reg_I2_n_128;
  wire temp_reg_I2_n_129;
  wire temp_reg_I2_n_13;
  wire temp_reg_I2_n_130;
  wire temp_reg_I2_n_131;
  wire temp_reg_I2_n_132;
  wire temp_reg_I2_n_133;
  wire temp_reg_I2_n_134;
  wire temp_reg_I2_n_135;
  wire temp_reg_I2_n_136;
  wire temp_reg_I2_n_137;
  wire temp_reg_I2_n_138;
  wire temp_reg_I2_n_139;
  wire temp_reg_I2_n_14;
  wire temp_reg_I2_n_140;
  wire temp_reg_I2_n_141;
  wire temp_reg_I2_n_142;
  wire temp_reg_I2_n_143;
  wire temp_reg_I2_n_144;
  wire temp_reg_I2_n_145;
  wire temp_reg_I2_n_146;
  wire temp_reg_I2_n_147;
  wire temp_reg_I2_n_148;
  wire temp_reg_I2_n_149;
  wire temp_reg_I2_n_15;
  wire temp_reg_I2_n_150;
  wire temp_reg_I2_n_151;
  wire temp_reg_I2_n_152;
  wire temp_reg_I2_n_153;
  wire temp_reg_I2_n_16;
  wire temp_reg_I2_n_17;
  wire temp_reg_I2_n_18;
  wire temp_reg_I2_n_19;
  wire temp_reg_I2_n_20;
  wire temp_reg_I2_n_21;
  wire temp_reg_I2_n_22;
  wire temp_reg_I2_n_23;
  wire temp_reg_I2_n_6;
  wire temp_reg_I2_n_7;
  wire temp_reg_I2_n_8;
  wire temp_reg_I2_n_9;
  wire [31:16]temp_reg_Q;
  wire temp_reg_Q0__0_n_100;
  wire temp_reg_Q0__0_n_101;
  wire temp_reg_Q0__0_n_102;
  wire temp_reg_Q0__0_n_103;
  wire temp_reg_Q0__0_n_104;
  wire temp_reg_Q0__0_n_105;
  wire temp_reg_Q0__0_n_74;
  wire temp_reg_Q0__0_n_75;
  wire temp_reg_Q0__0_n_76;
  wire temp_reg_Q0__0_n_77;
  wire temp_reg_Q0__0_n_78;
  wire temp_reg_Q0__0_n_79;
  wire temp_reg_Q0__0_n_80;
  wire temp_reg_Q0__0_n_81;
  wire temp_reg_Q0__0_n_82;
  wire temp_reg_Q0__0_n_83;
  wire temp_reg_Q0__0_n_84;
  wire temp_reg_Q0__0_n_85;
  wire temp_reg_Q0__0_n_86;
  wire temp_reg_Q0__0_n_87;
  wire temp_reg_Q0__0_n_88;
  wire temp_reg_Q0__0_n_89;
  wire temp_reg_Q0__0_n_90;
  wire temp_reg_Q0__0_n_91;
  wire temp_reg_Q0__0_n_92;
  wire temp_reg_Q0__0_n_93;
  wire temp_reg_Q0__0_n_94;
  wire temp_reg_Q0__0_n_95;
  wire temp_reg_Q0__0_n_96;
  wire temp_reg_Q0__0_n_97;
  wire temp_reg_Q0__0_n_98;
  wire temp_reg_Q0__0_n_99;
  wire [31:12]temp_reg_Q0__10;
  wire temp_reg_Q0__1_i_10_n_0;
  wire temp_reg_Q0__1_i_11_n_0;
  wire temp_reg_Q0__1_i_12_n_0;
  wire temp_reg_Q0__1_i_13_n_0;
  wire temp_reg_Q0__1_i_14_n_0;
  wire temp_reg_Q0__1_i_15_n_0;
  wire temp_reg_Q0__1_i_16_n_0;
  wire temp_reg_Q0__1_i_17_n_0;
  wire temp_reg_Q0__1_i_18_n_0;
  wire temp_reg_Q0__1_i_19_n_0;
  wire temp_reg_Q0__1_i_1_n_12;
  wire temp_reg_Q0__1_i_1_n_13;
  wire temp_reg_Q0__1_i_1_n_14;
  wire temp_reg_Q0__1_i_1_n_15;
  wire temp_reg_Q0__1_i_1_n_5;
  wire temp_reg_Q0__1_i_1_n_6;
  wire temp_reg_Q0__1_i_1_n_7;
  wire temp_reg_Q0__1_i_20_n_0;
  wire temp_reg_Q0__1_i_21_n_0;
  wire temp_reg_Q0__1_i_22_n_0;
  wire temp_reg_Q0__1_i_23_n_0;
  wire temp_reg_Q0__1_i_2_n_0;
  wire temp_reg_Q0__1_i_2_n_1;
  wire temp_reg_Q0__1_i_2_n_10;
  wire temp_reg_Q0__1_i_2_n_11;
  wire temp_reg_Q0__1_i_2_n_12;
  wire temp_reg_Q0__1_i_2_n_13;
  wire temp_reg_Q0__1_i_2_n_14;
  wire temp_reg_Q0__1_i_2_n_15;
  wire temp_reg_Q0__1_i_2_n_2;
  wire temp_reg_Q0__1_i_2_n_3;
  wire temp_reg_Q0__1_i_2_n_4;
  wire temp_reg_Q0__1_i_2_n_5;
  wire temp_reg_Q0__1_i_2_n_6;
  wire temp_reg_Q0__1_i_2_n_7;
  wire temp_reg_Q0__1_i_2_n_8;
  wire temp_reg_Q0__1_i_2_n_9;
  wire temp_reg_Q0__1_i_3_n_0;
  wire temp_reg_Q0__1_i_3_n_1;
  wire temp_reg_Q0__1_i_3_n_10;
  wire temp_reg_Q0__1_i_3_n_11;
  wire temp_reg_Q0__1_i_3_n_12;
  wire temp_reg_Q0__1_i_3_n_13;
  wire temp_reg_Q0__1_i_3_n_14;
  wire temp_reg_Q0__1_i_3_n_15;
  wire temp_reg_Q0__1_i_3_n_2;
  wire temp_reg_Q0__1_i_3_n_3;
  wire temp_reg_Q0__1_i_3_n_4;
  wire temp_reg_Q0__1_i_3_n_5;
  wire temp_reg_Q0__1_i_3_n_6;
  wire temp_reg_Q0__1_i_3_n_7;
  wire temp_reg_Q0__1_i_3_n_8;
  wire temp_reg_Q0__1_i_3_n_9;
  wire temp_reg_Q0__1_i_4_n_0;
  wire temp_reg_Q0__1_i_5_n_0;
  wire temp_reg_Q0__1_i_6_n_0;
  wire temp_reg_Q0__1_i_7_n_0;
  wire temp_reg_Q0__1_i_8_n_0;
  wire temp_reg_Q0__1_i_9_n_0;
  wire temp_reg_Q0__1_n_106;
  wire temp_reg_Q0__1_n_107;
  wire temp_reg_Q0__1_n_108;
  wire temp_reg_Q0__1_n_109;
  wire temp_reg_Q0__1_n_110;
  wire temp_reg_Q0__1_n_111;
  wire temp_reg_Q0__1_n_112;
  wire temp_reg_Q0__1_n_113;
  wire temp_reg_Q0__1_n_114;
  wire temp_reg_Q0__1_n_115;
  wire temp_reg_Q0__1_n_116;
  wire temp_reg_Q0__1_n_117;
  wire temp_reg_Q0__1_n_118;
  wire temp_reg_Q0__1_n_119;
  wire temp_reg_Q0__1_n_120;
  wire temp_reg_Q0__1_n_121;
  wire temp_reg_Q0__1_n_122;
  wire temp_reg_Q0__1_n_123;
  wire temp_reg_Q0__1_n_124;
  wire temp_reg_Q0__1_n_125;
  wire temp_reg_Q0__1_n_126;
  wire temp_reg_Q0__1_n_127;
  wire temp_reg_Q0__1_n_128;
  wire temp_reg_Q0__1_n_129;
  wire temp_reg_Q0__1_n_130;
  wire temp_reg_Q0__1_n_131;
  wire temp_reg_Q0__1_n_132;
  wire temp_reg_Q0__1_n_133;
  wire temp_reg_Q0__1_n_134;
  wire temp_reg_Q0__1_n_135;
  wire temp_reg_Q0__1_n_136;
  wire temp_reg_Q0__1_n_137;
  wire temp_reg_Q0__1_n_138;
  wire temp_reg_Q0__1_n_139;
  wire temp_reg_Q0__1_n_140;
  wire temp_reg_Q0__1_n_141;
  wire temp_reg_Q0__1_n_142;
  wire temp_reg_Q0__1_n_143;
  wire temp_reg_Q0__1_n_144;
  wire temp_reg_Q0__1_n_145;
  wire temp_reg_Q0__1_n_146;
  wire temp_reg_Q0__1_n_147;
  wire temp_reg_Q0__1_n_148;
  wire temp_reg_Q0__1_n_149;
  wire temp_reg_Q0__1_n_150;
  wire temp_reg_Q0__1_n_151;
  wire temp_reg_Q0__1_n_152;
  wire temp_reg_Q0__1_n_153;
  wire temp_reg_Q0__2_n_106;
  wire temp_reg_Q0__2_n_107;
  wire temp_reg_Q0__2_n_108;
  wire temp_reg_Q0__2_n_109;
  wire temp_reg_Q0__2_n_110;
  wire temp_reg_Q0__2_n_111;
  wire temp_reg_Q0__2_n_112;
  wire temp_reg_Q0__2_n_113;
  wire temp_reg_Q0__2_n_114;
  wire temp_reg_Q0__2_n_115;
  wire temp_reg_Q0__2_n_116;
  wire temp_reg_Q0__2_n_117;
  wire temp_reg_Q0__2_n_118;
  wire temp_reg_Q0__2_n_119;
  wire temp_reg_Q0__2_n_120;
  wire temp_reg_Q0__2_n_121;
  wire temp_reg_Q0__2_n_122;
  wire temp_reg_Q0__2_n_123;
  wire temp_reg_Q0__2_n_124;
  wire temp_reg_Q0__2_n_125;
  wire temp_reg_Q0__2_n_126;
  wire temp_reg_Q0__2_n_127;
  wire temp_reg_Q0__2_n_128;
  wire temp_reg_Q0__2_n_129;
  wire temp_reg_Q0__2_n_130;
  wire temp_reg_Q0__2_n_131;
  wire temp_reg_Q0__2_n_132;
  wire temp_reg_Q0__2_n_133;
  wire temp_reg_Q0__2_n_134;
  wire temp_reg_Q0__2_n_135;
  wire temp_reg_Q0__2_n_136;
  wire temp_reg_Q0__2_n_137;
  wire temp_reg_Q0__2_n_138;
  wire temp_reg_Q0__2_n_139;
  wire temp_reg_Q0__2_n_140;
  wire temp_reg_Q0__2_n_141;
  wire temp_reg_Q0__2_n_142;
  wire temp_reg_Q0__2_n_143;
  wire temp_reg_Q0__2_n_144;
  wire temp_reg_Q0__2_n_145;
  wire temp_reg_Q0__2_n_146;
  wire temp_reg_Q0__2_n_147;
  wire temp_reg_Q0__2_n_148;
  wire temp_reg_Q0__2_n_149;
  wire temp_reg_Q0__2_n_150;
  wire temp_reg_Q0__2_n_151;
  wire temp_reg_Q0__2_n_152;
  wire temp_reg_Q0__2_n_153;
  wire temp_reg_Q0__3_n_100;
  wire temp_reg_Q0__3_n_101;
  wire temp_reg_Q0__3_n_102;
  wire temp_reg_Q0__3_n_103;
  wire temp_reg_Q0__3_n_104;
  wire temp_reg_Q0__3_n_105;
  wire temp_reg_Q0__3_n_74;
  wire temp_reg_Q0__3_n_75;
  wire temp_reg_Q0__3_n_76;
  wire temp_reg_Q0__3_n_77;
  wire temp_reg_Q0__3_n_78;
  wire temp_reg_Q0__3_n_79;
  wire temp_reg_Q0__3_n_80;
  wire temp_reg_Q0__3_n_81;
  wire temp_reg_Q0__3_n_82;
  wire temp_reg_Q0__3_n_83;
  wire temp_reg_Q0__3_n_84;
  wire temp_reg_Q0__3_n_85;
  wire temp_reg_Q0__3_n_86;
  wire temp_reg_Q0__3_n_87;
  wire temp_reg_Q0__3_n_88;
  wire temp_reg_Q0__3_n_89;
  wire temp_reg_Q0__3_n_90;
  wire temp_reg_Q0__3_n_91;
  wire temp_reg_Q0__3_n_92;
  wire temp_reg_Q0__3_n_93;
  wire temp_reg_Q0__3_n_94;
  wire temp_reg_Q0__3_n_95;
  wire temp_reg_Q0__3_n_96;
  wire temp_reg_Q0__3_n_97;
  wire temp_reg_Q0__3_n_98;
  wire temp_reg_Q0__3_n_99;
  wire temp_reg_Q0__4_i_10_n_0;
  wire temp_reg_Q0__4_i_11_n_0;
  wire temp_reg_Q0__4_i_12_n_0;
  wire temp_reg_Q0__4_i_13_n_0;
  wire temp_reg_Q0__4_i_14_n_0;
  wire temp_reg_Q0__4_i_15_n_0;
  wire temp_reg_Q0__4_i_16_n_0;
  wire temp_reg_Q0__4_i_17_n_0;
  wire temp_reg_Q0__4_i_18_n_0;
  wire temp_reg_Q0__4_i_19_n_0;
  wire temp_reg_Q0__4_i_1_n_6;
  wire temp_reg_Q0__4_i_1_n_7;
  wire temp_reg_Q0__4_i_20_n_0;
  wire temp_reg_Q0__4_i_21_n_0;
  wire temp_reg_Q0__4_i_22_n_0;
  wire temp_reg_Q0__4_i_23_n_0;
  wire temp_reg_Q0__4_i_24_n_0;
  wire temp_reg_Q0__4_i_25_n_0;
  wire temp_reg_Q0__4_i_25_n_1;
  wire temp_reg_Q0__4_i_25_n_10;
  wire temp_reg_Q0__4_i_25_n_11;
  wire temp_reg_Q0__4_i_25_n_12;
  wire temp_reg_Q0__4_i_25_n_13;
  wire temp_reg_Q0__4_i_25_n_14;
  wire temp_reg_Q0__4_i_25_n_15;
  wire temp_reg_Q0__4_i_25_n_2;
  wire temp_reg_Q0__4_i_25_n_3;
  wire temp_reg_Q0__4_i_25_n_4;
  wire temp_reg_Q0__4_i_25_n_5;
  wire temp_reg_Q0__4_i_25_n_6;
  wire temp_reg_Q0__4_i_25_n_7;
  wire temp_reg_Q0__4_i_25_n_8;
  wire temp_reg_Q0__4_i_25_n_9;
  wire temp_reg_Q0__4_i_26_n_0;
  wire temp_reg_Q0__4_i_27_n_0;
  wire temp_reg_Q0__4_i_28_n_0;
  wire temp_reg_Q0__4_i_29_n_0;
  wire temp_reg_Q0__4_i_2_n_0;
  wire temp_reg_Q0__4_i_2_n_1;
  wire temp_reg_Q0__4_i_2_n_2;
  wire temp_reg_Q0__4_i_2_n_3;
  wire temp_reg_Q0__4_i_2_n_4;
  wire temp_reg_Q0__4_i_2_n_5;
  wire temp_reg_Q0__4_i_2_n_6;
  wire temp_reg_Q0__4_i_2_n_7;
  wire temp_reg_Q0__4_i_30_n_0;
  wire temp_reg_Q0__4_i_31_n_0;
  wire temp_reg_Q0__4_i_32_n_0;
  wire temp_reg_Q0__4_i_33_n_0;
  wire temp_reg_Q0__4_i_34_n_0;
  wire temp_reg_Q0__4_i_35_n_0;
  wire temp_reg_Q0__4_i_36_n_0;
  wire temp_reg_Q0__4_i_37_n_0;
  wire temp_reg_Q0__4_i_38_n_0;
  wire temp_reg_Q0__4_i_39_n_0;
  wire temp_reg_Q0__4_i_3_n_0;
  wire temp_reg_Q0__4_i_3_n_1;
  wire temp_reg_Q0__4_i_3_n_2;
  wire temp_reg_Q0__4_i_3_n_3;
  wire temp_reg_Q0__4_i_3_n_4;
  wire temp_reg_Q0__4_i_3_n_5;
  wire temp_reg_Q0__4_i_3_n_6;
  wire temp_reg_Q0__4_i_3_n_7;
  wire temp_reg_Q0__4_i_40_n_0;
  wire temp_reg_Q0__4_i_41_n_0;
  wire temp_reg_Q0__4_i_42_n_0;
  wire temp_reg_Q0__4_i_43_n_0;
  wire temp_reg_Q0__4_i_44_n_0;
  wire temp_reg_Q0__4_i_4_n_13;
  wire temp_reg_Q0__4_i_4_n_14;
  wire temp_reg_Q0__4_i_4_n_15;
  wire temp_reg_Q0__4_i_4_n_6;
  wire temp_reg_Q0__4_i_4_n_7;
  wire temp_reg_Q0__4_i_5_n_0;
  wire temp_reg_Q0__4_i_5_n_1;
  wire temp_reg_Q0__4_i_5_n_10;
  wire temp_reg_Q0__4_i_5_n_11;
  wire temp_reg_Q0__4_i_5_n_12;
  wire temp_reg_Q0__4_i_5_n_13;
  wire temp_reg_Q0__4_i_5_n_14;
  wire temp_reg_Q0__4_i_5_n_15;
  wire temp_reg_Q0__4_i_5_n_2;
  wire temp_reg_Q0__4_i_5_n_3;
  wire temp_reg_Q0__4_i_5_n_4;
  wire temp_reg_Q0__4_i_5_n_5;
  wire temp_reg_Q0__4_i_5_n_6;
  wire temp_reg_Q0__4_i_5_n_7;
  wire temp_reg_Q0__4_i_5_n_8;
  wire temp_reg_Q0__4_i_5_n_9;
  wire temp_reg_Q0__4_i_6_n_0;
  wire temp_reg_Q0__4_i_7_n_0;
  wire temp_reg_Q0__4_i_8_n_0;
  wire temp_reg_Q0__4_i_9_n_0;
  wire temp_reg_Q0__4_n_106;
  wire temp_reg_Q0__4_n_107;
  wire temp_reg_Q0__4_n_108;
  wire temp_reg_Q0__4_n_109;
  wire temp_reg_Q0__4_n_110;
  wire temp_reg_Q0__4_n_111;
  wire temp_reg_Q0__4_n_112;
  wire temp_reg_Q0__4_n_113;
  wire temp_reg_Q0__4_n_114;
  wire temp_reg_Q0__4_n_115;
  wire temp_reg_Q0__4_n_116;
  wire temp_reg_Q0__4_n_117;
  wire temp_reg_Q0__4_n_118;
  wire temp_reg_Q0__4_n_119;
  wire temp_reg_Q0__4_n_120;
  wire temp_reg_Q0__4_n_121;
  wire temp_reg_Q0__4_n_122;
  wire temp_reg_Q0__4_n_123;
  wire temp_reg_Q0__4_n_124;
  wire temp_reg_Q0__4_n_125;
  wire temp_reg_Q0__4_n_126;
  wire temp_reg_Q0__4_n_127;
  wire temp_reg_Q0__4_n_128;
  wire temp_reg_Q0__4_n_129;
  wire temp_reg_Q0__4_n_130;
  wire temp_reg_Q0__4_n_131;
  wire temp_reg_Q0__4_n_132;
  wire temp_reg_Q0__4_n_133;
  wire temp_reg_Q0__4_n_134;
  wire temp_reg_Q0__4_n_135;
  wire temp_reg_Q0__4_n_136;
  wire temp_reg_Q0__4_n_137;
  wire temp_reg_Q0__4_n_138;
  wire temp_reg_Q0__4_n_139;
  wire temp_reg_Q0__4_n_140;
  wire temp_reg_Q0__4_n_141;
  wire temp_reg_Q0__4_n_142;
  wire temp_reg_Q0__4_n_143;
  wire temp_reg_Q0__4_n_144;
  wire temp_reg_Q0__4_n_145;
  wire temp_reg_Q0__4_n_146;
  wire temp_reg_Q0__4_n_147;
  wire temp_reg_Q0__4_n_148;
  wire temp_reg_Q0__4_n_149;
  wire temp_reg_Q0__4_n_150;
  wire temp_reg_Q0__4_n_151;
  wire temp_reg_Q0__4_n_152;
  wire temp_reg_Q0__4_n_153;
  wire temp_reg_Q0__5_n_106;
  wire temp_reg_Q0__5_n_107;
  wire temp_reg_Q0__5_n_108;
  wire temp_reg_Q0__5_n_109;
  wire temp_reg_Q0__5_n_110;
  wire temp_reg_Q0__5_n_111;
  wire temp_reg_Q0__5_n_112;
  wire temp_reg_Q0__5_n_113;
  wire temp_reg_Q0__5_n_114;
  wire temp_reg_Q0__5_n_115;
  wire temp_reg_Q0__5_n_116;
  wire temp_reg_Q0__5_n_117;
  wire temp_reg_Q0__5_n_118;
  wire temp_reg_Q0__5_n_119;
  wire temp_reg_Q0__5_n_120;
  wire temp_reg_Q0__5_n_121;
  wire temp_reg_Q0__5_n_122;
  wire temp_reg_Q0__5_n_123;
  wire temp_reg_Q0__5_n_124;
  wire temp_reg_Q0__5_n_125;
  wire temp_reg_Q0__5_n_126;
  wire temp_reg_Q0__5_n_127;
  wire temp_reg_Q0__5_n_128;
  wire temp_reg_Q0__5_n_129;
  wire temp_reg_Q0__5_n_130;
  wire temp_reg_Q0__5_n_131;
  wire temp_reg_Q0__5_n_132;
  wire temp_reg_Q0__5_n_133;
  wire temp_reg_Q0__5_n_134;
  wire temp_reg_Q0__5_n_135;
  wire temp_reg_Q0__5_n_136;
  wire temp_reg_Q0__5_n_137;
  wire temp_reg_Q0__5_n_138;
  wire temp_reg_Q0__5_n_139;
  wire temp_reg_Q0__5_n_140;
  wire temp_reg_Q0__5_n_141;
  wire temp_reg_Q0__5_n_142;
  wire temp_reg_Q0__5_n_143;
  wire temp_reg_Q0__5_n_144;
  wire temp_reg_Q0__5_n_145;
  wire temp_reg_Q0__5_n_146;
  wire temp_reg_Q0__5_n_147;
  wire temp_reg_Q0__5_n_148;
  wire temp_reg_Q0__5_n_149;
  wire temp_reg_Q0__5_n_150;
  wire temp_reg_Q0__5_n_151;
  wire temp_reg_Q0__5_n_152;
  wire temp_reg_Q0__5_n_153;
  wire temp_reg_Q0__6_n_100;
  wire temp_reg_Q0__6_n_101;
  wire temp_reg_Q0__6_n_102;
  wire temp_reg_Q0__6_n_103;
  wire temp_reg_Q0__6_n_104;
  wire temp_reg_Q0__6_n_105;
  wire temp_reg_Q0__6_n_74;
  wire temp_reg_Q0__6_n_75;
  wire temp_reg_Q0__6_n_76;
  wire temp_reg_Q0__6_n_77;
  wire temp_reg_Q0__6_n_78;
  wire temp_reg_Q0__6_n_79;
  wire temp_reg_Q0__6_n_80;
  wire temp_reg_Q0__6_n_81;
  wire temp_reg_Q0__6_n_82;
  wire temp_reg_Q0__6_n_83;
  wire temp_reg_Q0__6_n_84;
  wire temp_reg_Q0__6_n_85;
  wire temp_reg_Q0__6_n_86;
  wire temp_reg_Q0__6_n_87;
  wire temp_reg_Q0__6_n_88;
  wire temp_reg_Q0__6_n_89;
  wire temp_reg_Q0__6_n_90;
  wire temp_reg_Q0__6_n_91;
  wire temp_reg_Q0__6_n_92;
  wire temp_reg_Q0__6_n_93;
  wire temp_reg_Q0__6_n_94;
  wire temp_reg_Q0__6_n_95;
  wire temp_reg_Q0__6_n_96;
  wire temp_reg_Q0__6_n_97;
  wire temp_reg_Q0__6_n_98;
  wire temp_reg_Q0__6_n_99;
  wire temp_reg_Q0__7_i_10_n_0;
  wire temp_reg_Q0__7_i_11_n_0;
  wire temp_reg_Q0__7_i_12_n_0;
  wire temp_reg_Q0__7_i_13_n_0;
  wire temp_reg_Q0__7_i_14_n_0;
  wire temp_reg_Q0__7_i_15_n_0;
  wire temp_reg_Q0__7_i_16_n_0;
  wire temp_reg_Q0__7_i_17_n_0;
  wire temp_reg_Q0__7_i_18_n_0;
  wire temp_reg_Q0__7_i_19_n_0;
  wire temp_reg_Q0__7_i_1_n_5;
  wire temp_reg_Q0__7_i_1_n_6;
  wire temp_reg_Q0__7_i_1_n_7;
  wire temp_reg_Q0__7_i_20_n_0;
  wire temp_reg_Q0__7_i_21_n_0;
  wire temp_reg_Q0__7_i_22_n_0;
  wire temp_reg_Q0__7_i_23_n_0;
  wire temp_reg_Q0__7_i_2_n_0;
  wire temp_reg_Q0__7_i_2_n_1;
  wire temp_reg_Q0__7_i_2_n_2;
  wire temp_reg_Q0__7_i_2_n_3;
  wire temp_reg_Q0__7_i_2_n_4;
  wire temp_reg_Q0__7_i_2_n_5;
  wire temp_reg_Q0__7_i_2_n_6;
  wire temp_reg_Q0__7_i_2_n_7;
  wire temp_reg_Q0__7_i_3_n_0;
  wire temp_reg_Q0__7_i_3_n_1;
  wire temp_reg_Q0__7_i_3_n_2;
  wire temp_reg_Q0__7_i_3_n_3;
  wire temp_reg_Q0__7_i_3_n_4;
  wire temp_reg_Q0__7_i_3_n_5;
  wire temp_reg_Q0__7_i_3_n_6;
  wire temp_reg_Q0__7_i_3_n_7;
  wire temp_reg_Q0__7_i_4_n_0;
  wire temp_reg_Q0__7_i_5_n_0;
  wire temp_reg_Q0__7_i_6_n_0;
  wire temp_reg_Q0__7_i_7_n_0;
  wire temp_reg_Q0__7_i_8_n_0;
  wire temp_reg_Q0__7_i_9_n_0;
  wire temp_reg_Q0__7_n_106;
  wire temp_reg_Q0__7_n_107;
  wire temp_reg_Q0__7_n_108;
  wire temp_reg_Q0__7_n_109;
  wire temp_reg_Q0__7_n_110;
  wire temp_reg_Q0__7_n_111;
  wire temp_reg_Q0__7_n_112;
  wire temp_reg_Q0__7_n_113;
  wire temp_reg_Q0__7_n_114;
  wire temp_reg_Q0__7_n_115;
  wire temp_reg_Q0__7_n_116;
  wire temp_reg_Q0__7_n_117;
  wire temp_reg_Q0__7_n_118;
  wire temp_reg_Q0__7_n_119;
  wire temp_reg_Q0__7_n_120;
  wire temp_reg_Q0__7_n_121;
  wire temp_reg_Q0__7_n_122;
  wire temp_reg_Q0__7_n_123;
  wire temp_reg_Q0__7_n_124;
  wire temp_reg_Q0__7_n_125;
  wire temp_reg_Q0__7_n_126;
  wire temp_reg_Q0__7_n_127;
  wire temp_reg_Q0__7_n_128;
  wire temp_reg_Q0__7_n_129;
  wire temp_reg_Q0__7_n_130;
  wire temp_reg_Q0__7_n_131;
  wire temp_reg_Q0__7_n_132;
  wire temp_reg_Q0__7_n_133;
  wire temp_reg_Q0__7_n_134;
  wire temp_reg_Q0__7_n_135;
  wire temp_reg_Q0__7_n_136;
  wire temp_reg_Q0__7_n_137;
  wire temp_reg_Q0__7_n_138;
  wire temp_reg_Q0__7_n_139;
  wire temp_reg_Q0__7_n_140;
  wire temp_reg_Q0__7_n_141;
  wire temp_reg_Q0__7_n_142;
  wire temp_reg_Q0__7_n_143;
  wire temp_reg_Q0__7_n_144;
  wire temp_reg_Q0__7_n_145;
  wire temp_reg_Q0__7_n_146;
  wire temp_reg_Q0__7_n_147;
  wire temp_reg_Q0__7_n_148;
  wire temp_reg_Q0__7_n_149;
  wire temp_reg_Q0__7_n_150;
  wire temp_reg_Q0__7_n_151;
  wire temp_reg_Q0__7_n_152;
  wire temp_reg_Q0__7_n_153;
  wire temp_reg_Q0__8_n_106;
  wire temp_reg_Q0__8_n_107;
  wire temp_reg_Q0__8_n_108;
  wire temp_reg_Q0__8_n_109;
  wire temp_reg_Q0__8_n_110;
  wire temp_reg_Q0__8_n_111;
  wire temp_reg_Q0__8_n_112;
  wire temp_reg_Q0__8_n_113;
  wire temp_reg_Q0__8_n_114;
  wire temp_reg_Q0__8_n_115;
  wire temp_reg_Q0__8_n_116;
  wire temp_reg_Q0__8_n_117;
  wire temp_reg_Q0__8_n_118;
  wire temp_reg_Q0__8_n_119;
  wire temp_reg_Q0__8_n_120;
  wire temp_reg_Q0__8_n_121;
  wire temp_reg_Q0__8_n_122;
  wire temp_reg_Q0__8_n_123;
  wire temp_reg_Q0__8_n_124;
  wire temp_reg_Q0__8_n_125;
  wire temp_reg_Q0__8_n_126;
  wire temp_reg_Q0__8_n_127;
  wire temp_reg_Q0__8_n_128;
  wire temp_reg_Q0__8_n_129;
  wire temp_reg_Q0__8_n_130;
  wire temp_reg_Q0__8_n_131;
  wire temp_reg_Q0__8_n_132;
  wire temp_reg_Q0__8_n_133;
  wire temp_reg_Q0__8_n_134;
  wire temp_reg_Q0__8_n_135;
  wire temp_reg_Q0__8_n_136;
  wire temp_reg_Q0__8_n_137;
  wire temp_reg_Q0__8_n_138;
  wire temp_reg_Q0__8_n_139;
  wire temp_reg_Q0__8_n_140;
  wire temp_reg_Q0__8_n_141;
  wire temp_reg_Q0__8_n_142;
  wire temp_reg_Q0__8_n_143;
  wire temp_reg_Q0__8_n_144;
  wire temp_reg_Q0__8_n_145;
  wire temp_reg_Q0__8_n_146;
  wire temp_reg_Q0__8_n_147;
  wire temp_reg_Q0__8_n_148;
  wire temp_reg_Q0__8_n_149;
  wire temp_reg_Q0__8_n_150;
  wire temp_reg_Q0__8_n_151;
  wire temp_reg_Q0__8_n_152;
  wire temp_reg_Q0__8_n_153;
  wire temp_reg_Q0__9_i_1_n_0;
  wire temp_reg_Q0__9_n_58;
  wire temp_reg_Q0__9_n_59;
  wire temp_reg_Q0__9_n_60;
  wire temp_reg_Q0__9_n_61;
  wire temp_reg_Q0__9_n_62;
  wire temp_reg_Q0__9_n_63;
  wire temp_reg_Q0__9_n_64;
  wire temp_reg_Q0__9_n_65;
  wire temp_reg_Q0__9_n_66;
  wire temp_reg_Q0__9_n_67;
  wire temp_reg_Q0__9_n_68;
  wire temp_reg_Q0__9_n_69;
  wire temp_reg_Q0__9_n_70;
  wire temp_reg_Q0__9_n_71;
  wire temp_reg_Q0__9_n_72;
  wire temp_reg_Q0__9_n_73;
  wire temp_reg_Q0_n_106;
  wire temp_reg_Q0_n_107;
  wire temp_reg_Q0_n_108;
  wire temp_reg_Q0_n_109;
  wire temp_reg_Q0_n_110;
  wire temp_reg_Q0_n_111;
  wire temp_reg_Q0_n_112;
  wire temp_reg_Q0_n_113;
  wire temp_reg_Q0_n_114;
  wire temp_reg_Q0_n_115;
  wire temp_reg_Q0_n_116;
  wire temp_reg_Q0_n_117;
  wire temp_reg_Q0_n_118;
  wire temp_reg_Q0_n_119;
  wire temp_reg_Q0_n_120;
  wire temp_reg_Q0_n_121;
  wire temp_reg_Q0_n_122;
  wire temp_reg_Q0_n_123;
  wire temp_reg_Q0_n_124;
  wire temp_reg_Q0_n_125;
  wire temp_reg_Q0_n_126;
  wire temp_reg_Q0_n_127;
  wire temp_reg_Q0_n_128;
  wire temp_reg_Q0_n_129;
  wire temp_reg_Q0_n_130;
  wire temp_reg_Q0_n_131;
  wire temp_reg_Q0_n_132;
  wire temp_reg_Q0_n_133;
  wire temp_reg_Q0_n_134;
  wire temp_reg_Q0_n_135;
  wire temp_reg_Q0_n_136;
  wire temp_reg_Q0_n_137;
  wire temp_reg_Q0_n_138;
  wire temp_reg_Q0_n_139;
  wire temp_reg_Q0_n_140;
  wire temp_reg_Q0_n_141;
  wire temp_reg_Q0_n_142;
  wire temp_reg_Q0_n_143;
  wire temp_reg_Q0_n_144;
  wire temp_reg_Q0_n_145;
  wire temp_reg_Q0_n_146;
  wire temp_reg_Q0_n_147;
  wire temp_reg_Q0_n_148;
  wire temp_reg_Q0_n_149;
  wire temp_reg_Q0_n_150;
  wire temp_reg_Q0_n_151;
  wire temp_reg_Q0_n_152;
  wire temp_reg_Q0_n_153;
  wire temp_reg_Q2_n_10;
  wire temp_reg_Q2_n_106;
  wire temp_reg_Q2_n_107;
  wire temp_reg_Q2_n_108;
  wire temp_reg_Q2_n_109;
  wire temp_reg_Q2_n_11;
  wire temp_reg_Q2_n_110;
  wire temp_reg_Q2_n_111;
  wire temp_reg_Q2_n_112;
  wire temp_reg_Q2_n_113;
  wire temp_reg_Q2_n_114;
  wire temp_reg_Q2_n_115;
  wire temp_reg_Q2_n_116;
  wire temp_reg_Q2_n_117;
  wire temp_reg_Q2_n_118;
  wire temp_reg_Q2_n_119;
  wire temp_reg_Q2_n_12;
  wire temp_reg_Q2_n_120;
  wire temp_reg_Q2_n_121;
  wire temp_reg_Q2_n_122;
  wire temp_reg_Q2_n_123;
  wire temp_reg_Q2_n_124;
  wire temp_reg_Q2_n_125;
  wire temp_reg_Q2_n_126;
  wire temp_reg_Q2_n_127;
  wire temp_reg_Q2_n_128;
  wire temp_reg_Q2_n_129;
  wire temp_reg_Q2_n_13;
  wire temp_reg_Q2_n_130;
  wire temp_reg_Q2_n_131;
  wire temp_reg_Q2_n_132;
  wire temp_reg_Q2_n_133;
  wire temp_reg_Q2_n_134;
  wire temp_reg_Q2_n_135;
  wire temp_reg_Q2_n_136;
  wire temp_reg_Q2_n_137;
  wire temp_reg_Q2_n_138;
  wire temp_reg_Q2_n_139;
  wire temp_reg_Q2_n_14;
  wire temp_reg_Q2_n_140;
  wire temp_reg_Q2_n_141;
  wire temp_reg_Q2_n_142;
  wire temp_reg_Q2_n_143;
  wire temp_reg_Q2_n_144;
  wire temp_reg_Q2_n_145;
  wire temp_reg_Q2_n_146;
  wire temp_reg_Q2_n_147;
  wire temp_reg_Q2_n_148;
  wire temp_reg_Q2_n_149;
  wire temp_reg_Q2_n_15;
  wire temp_reg_Q2_n_150;
  wire temp_reg_Q2_n_151;
  wire temp_reg_Q2_n_152;
  wire temp_reg_Q2_n_153;
  wire temp_reg_Q2_n_16;
  wire temp_reg_Q2_n_17;
  wire temp_reg_Q2_n_18;
  wire temp_reg_Q2_n_19;
  wire temp_reg_Q2_n_20;
  wire temp_reg_Q2_n_21;
  wire temp_reg_Q2_n_22;
  wire temp_reg_Q2_n_23;
  wire temp_reg_Q2_n_6;
  wire temp_reg_Q2_n_7;
  wire temp_reg_Q2_n_8;
  wire temp_reg_Q2_n_9;
  wire NLW_temp_reg_I0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp_reg_I0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp_reg_I0_OVERFLOW_UNCONNECTED;
  wire NLW_temp_reg_I0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp_reg_I0_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp_reg_I0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp_reg_I0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp_reg_I0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp_reg_I0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_temp_reg_I0_P_UNCONNECTED;
  wire [7:0]NLW_temp_reg_I0_XOROUT_UNCONNECTED;
  wire NLW_temp_reg_I0__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp_reg_I0__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp_reg_I0__0_OVERFLOW_UNCONNECTED;
  wire NLW_temp_reg_I0__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp_reg_I0__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp_reg_I0__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp_reg_I0__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp_reg_I0__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp_reg_I0__0_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_temp_reg_I0__0_P_UNCONNECTED;
  wire [47:0]NLW_temp_reg_I0__0_PCOUT_UNCONNECTED;
  wire [7:0]NLW_temp_reg_I0__0_XOROUT_UNCONNECTED;
  wire NLW_temp_reg_I0__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp_reg_I0__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp_reg_I0__1_OVERFLOW_UNCONNECTED;
  wire NLW_temp_reg_I0__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp_reg_I0__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp_reg_I0__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp_reg_I0__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp_reg_I0__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp_reg_I0__1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_temp_reg_I0__1_P_UNCONNECTED;
  wire [7:0]NLW_temp_reg_I0__1_XOROUT_UNCONNECTED;
  wire [7:3]NLW_temp_reg_I0__1_i_1_CO_UNCONNECTED;
  wire [7:4]NLW_temp_reg_I0__1_i_1_O_UNCONNECTED;
  wire NLW_temp_reg_I0__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp_reg_I0__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp_reg_I0__2_OVERFLOW_UNCONNECTED;
  wire NLW_temp_reg_I0__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp_reg_I0__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp_reg_I0__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp_reg_I0__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp_reg_I0__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp_reg_I0__2_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_temp_reg_I0__2_P_UNCONNECTED;
  wire [7:0]NLW_temp_reg_I0__2_XOROUT_UNCONNECTED;
  wire NLW_temp_reg_I0__3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp_reg_I0__3_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp_reg_I0__3_OVERFLOW_UNCONNECTED;
  wire NLW_temp_reg_I0__3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp_reg_I0__3_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp_reg_I0__3_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp_reg_I0__3_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp_reg_I0__3_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp_reg_I0__3_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_temp_reg_I0__3_P_UNCONNECTED;
  wire [47:0]NLW_temp_reg_I0__3_PCOUT_UNCONNECTED;
  wire [7:0]NLW_temp_reg_I0__3_XOROUT_UNCONNECTED;
  wire NLW_temp_reg_I0__4_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp_reg_I0__4_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp_reg_I0__4_OVERFLOW_UNCONNECTED;
  wire NLW_temp_reg_I0__4_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp_reg_I0__4_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp_reg_I0__4_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp_reg_I0__4_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp_reg_I0__4_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp_reg_I0__4_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_temp_reg_I0__4_P_UNCONNECTED;
  wire [7:0]NLW_temp_reg_I0__4_XOROUT_UNCONNECTED;
  wire [7:2]NLW_temp_reg_I0__4_i_1_CO_UNCONNECTED;
  wire [7:3]NLW_temp_reg_I0__4_i_1_O_UNCONNECTED;
  wire [7:2]NLW_temp_reg_I0__4_i_4_CO_UNCONNECTED;
  wire [7:3]NLW_temp_reg_I0__4_i_4_O_UNCONNECTED;
  wire NLW_temp_reg_I0__5_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp_reg_I0__5_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp_reg_I0__5_OVERFLOW_UNCONNECTED;
  wire NLW_temp_reg_I0__5_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp_reg_I0__5_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp_reg_I0__5_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp_reg_I0__5_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp_reg_I0__5_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp_reg_I0__5_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_temp_reg_I0__5_P_UNCONNECTED;
  wire [7:0]NLW_temp_reg_I0__5_XOROUT_UNCONNECTED;
  wire NLW_temp_reg_I0__6_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp_reg_I0__6_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp_reg_I0__6_OVERFLOW_UNCONNECTED;
  wire NLW_temp_reg_I0__6_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp_reg_I0__6_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp_reg_I0__6_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp_reg_I0__6_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp_reg_I0__6_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp_reg_I0__6_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_temp_reg_I0__6_P_UNCONNECTED;
  wire [47:0]NLW_temp_reg_I0__6_PCOUT_UNCONNECTED;
  wire [7:0]NLW_temp_reg_I0__6_XOROUT_UNCONNECTED;
  wire NLW_temp_reg_I0__7_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp_reg_I0__7_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp_reg_I0__7_OVERFLOW_UNCONNECTED;
  wire NLW_temp_reg_I0__7_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp_reg_I0__7_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp_reg_I0__7_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp_reg_I0__7_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp_reg_I0__7_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp_reg_I0__7_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_temp_reg_I0__7_P_UNCONNECTED;
  wire [7:0]NLW_temp_reg_I0__7_XOROUT_UNCONNECTED;
  wire [7:3]NLW_temp_reg_I0__7_i_1_CO_UNCONNECTED;
  wire [7:4]NLW_temp_reg_I0__7_i_1_O_UNCONNECTED;
  wire NLW_temp_reg_I0__8_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp_reg_I0__8_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp_reg_I0__8_OVERFLOW_UNCONNECTED;
  wire NLW_temp_reg_I0__8_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp_reg_I0__8_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp_reg_I0__8_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp_reg_I0__8_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp_reg_I0__8_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp_reg_I0__8_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_temp_reg_I0__8_P_UNCONNECTED;
  wire [7:0]NLW_temp_reg_I0__8_XOROUT_UNCONNECTED;
  wire NLW_temp_reg_I0__9_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp_reg_I0__9_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp_reg_I0__9_OVERFLOW_UNCONNECTED;
  wire NLW_temp_reg_I0__9_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp_reg_I0__9_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp_reg_I0__9_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp_reg_I0__9_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp_reg_I0__9_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp_reg_I0__9_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_temp_reg_I0__9_PCOUT_UNCONNECTED;
  wire [7:0]NLW_temp_reg_I0__9_XOROUT_UNCONNECTED;
  wire NLW_temp_reg_I2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp_reg_I2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp_reg_I2_OVERFLOW_UNCONNECTED;
  wire NLW_temp_reg_I2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp_reg_I2_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp_reg_I2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp_reg_I2_ACOUT_UNCONNECTED;
  wire [3:0]NLW_temp_reg_I2_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_temp_reg_I2_P_UNCONNECTED;
  wire [7:0]NLW_temp_reg_I2_XOROUT_UNCONNECTED;
  wire NLW_temp_reg_Q0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp_reg_Q0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp_reg_Q0_OVERFLOW_UNCONNECTED;
  wire NLW_temp_reg_Q0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp_reg_Q0_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp_reg_Q0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp_reg_Q0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp_reg_Q0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp_reg_Q0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_temp_reg_Q0_P_UNCONNECTED;
  wire [7:0]NLW_temp_reg_Q0_XOROUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__0_OVERFLOW_UNCONNECTED;
  wire NLW_temp_reg_Q0__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp_reg_Q0__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp_reg_Q0__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp_reg_Q0__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp_reg_Q0__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp_reg_Q0__0_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_temp_reg_Q0__0_P_UNCONNECTED;
  wire [47:0]NLW_temp_reg_Q0__0_PCOUT_UNCONNECTED;
  wire [7:0]NLW_temp_reg_Q0__0_XOROUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__1_OVERFLOW_UNCONNECTED;
  wire NLW_temp_reg_Q0__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp_reg_Q0__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp_reg_Q0__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp_reg_Q0__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp_reg_Q0__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp_reg_Q0__1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_temp_reg_Q0__1_P_UNCONNECTED;
  wire [7:0]NLW_temp_reg_Q0__1_XOROUT_UNCONNECTED;
  wire [7:3]NLW_temp_reg_Q0__1_i_1_CO_UNCONNECTED;
  wire [7:4]NLW_temp_reg_Q0__1_i_1_O_UNCONNECTED;
  wire NLW_temp_reg_Q0__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__2_OVERFLOW_UNCONNECTED;
  wire NLW_temp_reg_Q0__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp_reg_Q0__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp_reg_Q0__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp_reg_Q0__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp_reg_Q0__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp_reg_Q0__2_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_temp_reg_Q0__2_P_UNCONNECTED;
  wire [7:0]NLW_temp_reg_Q0__2_XOROUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__3_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__3_OVERFLOW_UNCONNECTED;
  wire NLW_temp_reg_Q0__3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp_reg_Q0__3_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp_reg_Q0__3_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp_reg_Q0__3_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp_reg_Q0__3_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp_reg_Q0__3_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_temp_reg_Q0__3_P_UNCONNECTED;
  wire [47:0]NLW_temp_reg_Q0__3_PCOUT_UNCONNECTED;
  wire [7:0]NLW_temp_reg_Q0__3_XOROUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__4_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__4_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__4_OVERFLOW_UNCONNECTED;
  wire NLW_temp_reg_Q0__4_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp_reg_Q0__4_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp_reg_Q0__4_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp_reg_Q0__4_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp_reg_Q0__4_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp_reg_Q0__4_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_temp_reg_Q0__4_P_UNCONNECTED;
  wire [7:0]NLW_temp_reg_Q0__4_XOROUT_UNCONNECTED;
  wire [7:2]NLW_temp_reg_Q0__4_i_1_CO_UNCONNECTED;
  wire [7:3]NLW_temp_reg_Q0__4_i_1_O_UNCONNECTED;
  wire [7:2]NLW_temp_reg_Q0__4_i_4_CO_UNCONNECTED;
  wire [7:3]NLW_temp_reg_Q0__4_i_4_O_UNCONNECTED;
  wire NLW_temp_reg_Q0__5_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__5_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__5_OVERFLOW_UNCONNECTED;
  wire NLW_temp_reg_Q0__5_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp_reg_Q0__5_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp_reg_Q0__5_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp_reg_Q0__5_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp_reg_Q0__5_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp_reg_Q0__5_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_temp_reg_Q0__5_P_UNCONNECTED;
  wire [7:0]NLW_temp_reg_Q0__5_XOROUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__6_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__6_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__6_OVERFLOW_UNCONNECTED;
  wire NLW_temp_reg_Q0__6_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp_reg_Q0__6_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp_reg_Q0__6_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp_reg_Q0__6_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp_reg_Q0__6_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp_reg_Q0__6_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_temp_reg_Q0__6_P_UNCONNECTED;
  wire [47:0]NLW_temp_reg_Q0__6_PCOUT_UNCONNECTED;
  wire [7:0]NLW_temp_reg_Q0__6_XOROUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__7_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__7_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__7_OVERFLOW_UNCONNECTED;
  wire NLW_temp_reg_Q0__7_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp_reg_Q0__7_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp_reg_Q0__7_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp_reg_Q0__7_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp_reg_Q0__7_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp_reg_Q0__7_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_temp_reg_Q0__7_P_UNCONNECTED;
  wire [7:0]NLW_temp_reg_Q0__7_XOROUT_UNCONNECTED;
  wire [7:3]NLW_temp_reg_Q0__7_i_1_CO_UNCONNECTED;
  wire [7:4]NLW_temp_reg_Q0__7_i_1_O_UNCONNECTED;
  wire NLW_temp_reg_Q0__8_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__8_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__8_OVERFLOW_UNCONNECTED;
  wire NLW_temp_reg_Q0__8_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp_reg_Q0__8_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp_reg_Q0__8_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp_reg_Q0__8_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp_reg_Q0__8_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp_reg_Q0__8_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_temp_reg_Q0__8_P_UNCONNECTED;
  wire [7:0]NLW_temp_reg_Q0__8_XOROUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__9_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__9_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp_reg_Q0__9_OVERFLOW_UNCONNECTED;
  wire NLW_temp_reg_Q0__9_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp_reg_Q0__9_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp_reg_Q0__9_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp_reg_Q0__9_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp_reg_Q0__9_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp_reg_Q0__9_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_temp_reg_Q0__9_PCOUT_UNCONNECTED;
  wire [7:0]NLW_temp_reg_Q0__9_XOROUT_UNCONNECTED;
  wire NLW_temp_reg_Q2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp_reg_Q2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp_reg_Q2_OVERFLOW_UNCONNECTED;
  wire NLW_temp_reg_Q2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp_reg_Q2_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp_reg_Q2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp_reg_Q2_ACOUT_UNCONNECTED;
  wire [3:0]NLW_temp_reg_Q2_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_temp_reg_Q2_P_UNCONNECTED;
  wire [7:0]NLW_temp_reg_Q2_XOROUT_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[0][0] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(I_input[0]),
        .Q(\I_shift_reg_reg[0]_12 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[0][10] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(I_input[10]),
        .Q(\I_shift_reg_reg[0]_12 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[0][11] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(I_input[11]),
        .Q(\I_shift_reg_reg[0]_12 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[0][1] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(I_input[1]),
        .Q(\I_shift_reg_reg[0]_12 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[0][2] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(I_input[2]),
        .Q(\I_shift_reg_reg[0]_12 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[0][3] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(I_input[3]),
        .Q(\I_shift_reg_reg[0]_12 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[0][4] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(I_input[4]),
        .Q(\I_shift_reg_reg[0]_12 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[0][5] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(I_input[5]),
        .Q(\I_shift_reg_reg[0]_12 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[0][6] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(I_input[6]),
        .Q(\I_shift_reg_reg[0]_12 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[0][7] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(I_input[7]),
        .Q(\I_shift_reg_reg[0]_12 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[0][8] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(I_input[8]),
        .Q(\I_shift_reg_reg[0]_12 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[0][9] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(I_input[9]),
        .Q(\I_shift_reg_reg[0]_12 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[10][0] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[9]_18 [0]),
        .Q(\I_shift_reg_reg[10]_19 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[10][10] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[9]_18 [10]),
        .Q(\I_shift_reg_reg[10]_19 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[10][11] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[9]_18 [11]),
        .Q(\I_shift_reg_reg[10]_19 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[10][1] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[9]_18 [1]),
        .Q(\I_shift_reg_reg[10]_19 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[10][2] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[9]_18 [2]),
        .Q(\I_shift_reg_reg[10]_19 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[10][3] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[9]_18 [3]),
        .Q(\I_shift_reg_reg[10]_19 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[10][4] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[9]_18 [4]),
        .Q(\I_shift_reg_reg[10]_19 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[10][5] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[9]_18 [5]),
        .Q(\I_shift_reg_reg[10]_19 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[10][6] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[9]_18 [6]),
        .Q(\I_shift_reg_reg[10]_19 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[10][7] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[9]_18 [7]),
        .Q(\I_shift_reg_reg[10]_19 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[10][8] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[9]_18 [8]),
        .Q(\I_shift_reg_reg[10]_19 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[10][9] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[9]_18 [9]),
        .Q(\I_shift_reg_reg[10]_19 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[11][0] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[10]_19 [0]),
        .Q(\I_shift_reg_reg[11]_20 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[11][10] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[10]_19 [10]),
        .Q(\I_shift_reg_reg[11]_20 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[11][11] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[10]_19 [11]),
        .Q(\I_shift_reg_reg[11]_20 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[11][1] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[10]_19 [1]),
        .Q(\I_shift_reg_reg[11]_20 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[11][2] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[10]_19 [2]),
        .Q(\I_shift_reg_reg[11]_20 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[11][3] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[10]_19 [3]),
        .Q(\I_shift_reg_reg[11]_20 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[11][4] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[10]_19 [4]),
        .Q(\I_shift_reg_reg[11]_20 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[11][5] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[10]_19 [5]),
        .Q(\I_shift_reg_reg[11]_20 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[11][6] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[10]_19 [6]),
        .Q(\I_shift_reg_reg[11]_20 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[11][7] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[10]_19 [7]),
        .Q(\I_shift_reg_reg[11]_20 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[11][8] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[10]_19 [8]),
        .Q(\I_shift_reg_reg[11]_20 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[11][9] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[10]_19 [9]),
        .Q(\I_shift_reg_reg[11]_20 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[12][0] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[11]_20 [0]),
        .Q(\I_shift_reg_reg[12]_21 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[12][10] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[11]_20 [10]),
        .Q(\I_shift_reg_reg[12]_21 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[12][11] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[11]_20 [11]),
        .Q(\I_shift_reg_reg[12]_21 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[12][1] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[11]_20 [1]),
        .Q(\I_shift_reg_reg[12]_21 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[12][2] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[11]_20 [2]),
        .Q(\I_shift_reg_reg[12]_21 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[12][3] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[11]_20 [3]),
        .Q(\I_shift_reg_reg[12]_21 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[12][4] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[11]_20 [4]),
        .Q(\I_shift_reg_reg[12]_21 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[12][5] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[11]_20 [5]),
        .Q(\I_shift_reg_reg[12]_21 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[12][6] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[11]_20 [6]),
        .Q(\I_shift_reg_reg[12]_21 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[12][7] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[11]_20 [7]),
        .Q(\I_shift_reg_reg[12]_21 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[12][8] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[11]_20 [8]),
        .Q(\I_shift_reg_reg[12]_21 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[12][9] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[11]_20 [9]),
        .Q(\I_shift_reg_reg[12]_21 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[1][0] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[0]_12 [0]),
        .Q(\I_shift_reg_reg[1]_13 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[1][10] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[0]_12 [10]),
        .Q(\I_shift_reg_reg[1]_13 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[1][11] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[0]_12 [11]),
        .Q(\I_shift_reg_reg[1]_13 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[1][1] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[0]_12 [1]),
        .Q(\I_shift_reg_reg[1]_13 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[1][2] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[0]_12 [2]),
        .Q(\I_shift_reg_reg[1]_13 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[1][3] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[0]_12 [3]),
        .Q(\I_shift_reg_reg[1]_13 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[1][4] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[0]_12 [4]),
        .Q(\I_shift_reg_reg[1]_13 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[1][5] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[0]_12 [5]),
        .Q(\I_shift_reg_reg[1]_13 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[1][6] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[0]_12 [6]),
        .Q(\I_shift_reg_reg[1]_13 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[1][7] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[0]_12 [7]),
        .Q(\I_shift_reg_reg[1]_13 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[1][8] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[0]_12 [8]),
        .Q(\I_shift_reg_reg[1]_13 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[1][9] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[0]_12 [9]),
        .Q(\I_shift_reg_reg[1]_13 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[2][0] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[1]_13 [0]),
        .Q(\I_shift_reg_reg[2]_14 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[2][10] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[1]_13 [10]),
        .Q(\I_shift_reg_reg[2]_14 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[2][11] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[1]_13 [11]),
        .Q(\I_shift_reg_reg[2]_14 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[2][1] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[1]_13 [1]),
        .Q(\I_shift_reg_reg[2]_14 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[2][2] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[1]_13 [2]),
        .Q(\I_shift_reg_reg[2]_14 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[2][3] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[1]_13 [3]),
        .Q(\I_shift_reg_reg[2]_14 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[2][4] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[1]_13 [4]),
        .Q(\I_shift_reg_reg[2]_14 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[2][5] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[1]_13 [5]),
        .Q(\I_shift_reg_reg[2]_14 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[2][6] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[1]_13 [6]),
        .Q(\I_shift_reg_reg[2]_14 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[2][7] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[1]_13 [7]),
        .Q(\I_shift_reg_reg[2]_14 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[2][8] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[1]_13 [8]),
        .Q(\I_shift_reg_reg[2]_14 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[2][9] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[1]_13 [9]),
        .Q(\I_shift_reg_reg[2]_14 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[3][0] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[2]_14 [0]),
        .Q(\I_shift_reg_reg[3]_15 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[3][10] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[2]_14 [10]),
        .Q(\I_shift_reg_reg[3]_15 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[3][11] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[2]_14 [11]),
        .Q(\I_shift_reg_reg[3]_15 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[3][1] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[2]_14 [1]),
        .Q(\I_shift_reg_reg[3]_15 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[3][2] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[2]_14 [2]),
        .Q(\I_shift_reg_reg[3]_15 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[3][3] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[2]_14 [3]),
        .Q(\I_shift_reg_reg[3]_15 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[3][4] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[2]_14 [4]),
        .Q(\I_shift_reg_reg[3]_15 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[3][5] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[2]_14 [5]),
        .Q(\I_shift_reg_reg[3]_15 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[3][6] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[2]_14 [6]),
        .Q(\I_shift_reg_reg[3]_15 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[3][7] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[2]_14 [7]),
        .Q(\I_shift_reg_reg[3]_15 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[3][8] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[2]_14 [8]),
        .Q(\I_shift_reg_reg[3]_15 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[3][9] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[2]_14 [9]),
        .Q(\I_shift_reg_reg[3]_15 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[4][0] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[3]_15 [0]),
        .Q(\I_shift_reg_reg[4]_16 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[4][10] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[3]_15 [10]),
        .Q(\I_shift_reg_reg[4]_16 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[4][11] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[3]_15 [11]),
        .Q(\I_shift_reg_reg[4]_16 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[4][1] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[3]_15 [1]),
        .Q(\I_shift_reg_reg[4]_16 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[4][2] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[3]_15 [2]),
        .Q(\I_shift_reg_reg[4]_16 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[4][3] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[3]_15 [3]),
        .Q(\I_shift_reg_reg[4]_16 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[4][4] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[3]_15 [4]),
        .Q(\I_shift_reg_reg[4]_16 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[4][5] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[3]_15 [5]),
        .Q(\I_shift_reg_reg[4]_16 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[4][6] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[3]_15 [6]),
        .Q(\I_shift_reg_reg[4]_16 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[4][7] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[3]_15 [7]),
        .Q(\I_shift_reg_reg[4]_16 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[4][8] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[3]_15 [8]),
        .Q(\I_shift_reg_reg[4]_16 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[4][9] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[3]_15 [9]),
        .Q(\I_shift_reg_reg[4]_16 [9]),
        .R(1'b0));
  (* srl_bus_name = "\U0/I_shift_reg_reg[6] " *) 
  (* srl_name = "\U0/I_shift_reg_reg[6][0]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \I_shift_reg_reg[6][0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D(\I_shift_reg_reg[4]_16 [0]),
        .Q(\I_shift_reg_reg[6][0]_srl2_n_0 ));
  (* srl_bus_name = "\U0/I_shift_reg_reg[6] " *) 
  (* srl_name = "\U0/I_shift_reg_reg[6][10]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \I_shift_reg_reg[6][10]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D(\I_shift_reg_reg[4]_16 [10]),
        .Q(\I_shift_reg_reg[6][10]_srl2_n_0 ));
  (* srl_bus_name = "\U0/I_shift_reg_reg[6] " *) 
  (* srl_name = "\U0/I_shift_reg_reg[6][11]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \I_shift_reg_reg[6][11]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D(\I_shift_reg_reg[4]_16 [11]),
        .Q(\I_shift_reg_reg[6][11]_srl2_n_0 ));
  (* srl_bus_name = "\U0/I_shift_reg_reg[6] " *) 
  (* srl_name = "\U0/I_shift_reg_reg[6][1]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \I_shift_reg_reg[6][1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D(\I_shift_reg_reg[4]_16 [1]),
        .Q(\I_shift_reg_reg[6][1]_srl2_n_0 ));
  (* srl_bus_name = "\U0/I_shift_reg_reg[6] " *) 
  (* srl_name = "\U0/I_shift_reg_reg[6][2]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \I_shift_reg_reg[6][2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D(\I_shift_reg_reg[4]_16 [2]),
        .Q(\I_shift_reg_reg[6][2]_srl2_n_0 ));
  (* srl_bus_name = "\U0/I_shift_reg_reg[6] " *) 
  (* srl_name = "\U0/I_shift_reg_reg[6][3]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \I_shift_reg_reg[6][3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D(\I_shift_reg_reg[4]_16 [3]),
        .Q(\I_shift_reg_reg[6][3]_srl2_n_0 ));
  (* srl_bus_name = "\U0/I_shift_reg_reg[6] " *) 
  (* srl_name = "\U0/I_shift_reg_reg[6][4]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \I_shift_reg_reg[6][4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D(\I_shift_reg_reg[4]_16 [4]),
        .Q(\I_shift_reg_reg[6][4]_srl2_n_0 ));
  (* srl_bus_name = "\U0/I_shift_reg_reg[6] " *) 
  (* srl_name = "\U0/I_shift_reg_reg[6][5]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \I_shift_reg_reg[6][5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D(\I_shift_reg_reg[4]_16 [5]),
        .Q(\I_shift_reg_reg[6][5]_srl2_n_0 ));
  (* srl_bus_name = "\U0/I_shift_reg_reg[6] " *) 
  (* srl_name = "\U0/I_shift_reg_reg[6][6]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \I_shift_reg_reg[6][6]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D(\I_shift_reg_reg[4]_16 [6]),
        .Q(\I_shift_reg_reg[6][6]_srl2_n_0 ));
  (* srl_bus_name = "\U0/I_shift_reg_reg[6] " *) 
  (* srl_name = "\U0/I_shift_reg_reg[6][7]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \I_shift_reg_reg[6][7]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D(\I_shift_reg_reg[4]_16 [7]),
        .Q(\I_shift_reg_reg[6][7]_srl2_n_0 ));
  (* srl_bus_name = "\U0/I_shift_reg_reg[6] " *) 
  (* srl_name = "\U0/I_shift_reg_reg[6][8]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \I_shift_reg_reg[6][8]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D(\I_shift_reg_reg[4]_16 [8]),
        .Q(\I_shift_reg_reg[6][8]_srl2_n_0 ));
  (* srl_bus_name = "\U0/I_shift_reg_reg[6] " *) 
  (* srl_name = "\U0/I_shift_reg_reg[6][9]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \I_shift_reg_reg[6][9]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D(\I_shift_reg_reg[4]_16 [9]),
        .Q(\I_shift_reg_reg[6][9]_srl2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[7][0] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[6][0]_srl2_n_0 ),
        .Q(\I_shift_reg_reg[7]_1 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[7][10] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[6][10]_srl2_n_0 ),
        .Q(\I_shift_reg_reg[7]_1 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[7][11] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[6][11]_srl2_n_0 ),
        .Q(\I_shift_reg_reg[7]_1 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[7][1] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[6][1]_srl2_n_0 ),
        .Q(\I_shift_reg_reg[7]_1 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[7][2] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[6][2]_srl2_n_0 ),
        .Q(\I_shift_reg_reg[7]_1 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[7][3] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[6][3]_srl2_n_0 ),
        .Q(\I_shift_reg_reg[7]_1 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[7][4] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[6][4]_srl2_n_0 ),
        .Q(\I_shift_reg_reg[7]_1 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[7][5] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[6][5]_srl2_n_0 ),
        .Q(\I_shift_reg_reg[7]_1 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[7][6] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[6][6]_srl2_n_0 ),
        .Q(\I_shift_reg_reg[7]_1 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[7][7] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[6][7]_srl2_n_0 ),
        .Q(\I_shift_reg_reg[7]_1 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[7][8] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[6][8]_srl2_n_0 ),
        .Q(\I_shift_reg_reg[7]_1 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[7][9] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[6][9]_srl2_n_0 ),
        .Q(\I_shift_reg_reg[7]_1 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[8][0] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[7]_1 [0]),
        .Q(\I_shift_reg_reg[8]_17 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[8][10] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[7]_1 [10]),
        .Q(\I_shift_reg_reg[8]_17 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[8][11] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[7]_1 [11]),
        .Q(\I_shift_reg_reg[8]_17 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[8][1] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[7]_1 [1]),
        .Q(\I_shift_reg_reg[8]_17 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[8][2] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[7]_1 [2]),
        .Q(\I_shift_reg_reg[8]_17 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[8][3] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[7]_1 [3]),
        .Q(\I_shift_reg_reg[8]_17 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[8][4] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[7]_1 [4]),
        .Q(\I_shift_reg_reg[8]_17 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[8][5] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[7]_1 [5]),
        .Q(\I_shift_reg_reg[8]_17 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[8][6] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[7]_1 [6]),
        .Q(\I_shift_reg_reg[8]_17 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[8][7] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[7]_1 [7]),
        .Q(\I_shift_reg_reg[8]_17 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[8][8] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[7]_1 [8]),
        .Q(\I_shift_reg_reg[8]_17 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[8][9] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[7]_1 [9]),
        .Q(\I_shift_reg_reg[8]_17 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[9][0] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[8]_17 [0]),
        .Q(\I_shift_reg_reg[9]_18 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[9][10] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[8]_17 [10]),
        .Q(\I_shift_reg_reg[9]_18 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[9][11] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[8]_17 [11]),
        .Q(\I_shift_reg_reg[9]_18 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[9][1] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[8]_17 [1]),
        .Q(\I_shift_reg_reg[9]_18 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[9][2] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[8]_17 [2]),
        .Q(\I_shift_reg_reg[9]_18 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[9][3] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[8]_17 [3]),
        .Q(\I_shift_reg_reg[9]_18 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[9][4] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[8]_17 [4]),
        .Q(\I_shift_reg_reg[9]_18 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[9][5] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[8]_17 [5]),
        .Q(\I_shift_reg_reg[9]_18 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[9][6] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[8]_17 [6]),
        .Q(\I_shift_reg_reg[9]_18 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[9][7] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[8]_17 [7]),
        .Q(\I_shift_reg_reg[9]_18 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[9][8] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[8]_17 [8]),
        .Q(\I_shift_reg_reg[9]_18 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \I_shift_reg_reg[9][9] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\I_shift_reg_reg[8]_17 [9]),
        .Q(\I_shift_reg_reg[9]_18 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[0][0] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(Q_input[0]),
        .Q(\Q_shift_reg_reg[0]_2 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[0][10] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(Q_input[10]),
        .Q(\Q_shift_reg_reg[0]_2 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[0][11] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(Q_input[11]),
        .Q(\Q_shift_reg_reg[0]_2 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[0][1] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(Q_input[1]),
        .Q(\Q_shift_reg_reg[0]_2 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[0][2] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(Q_input[2]),
        .Q(\Q_shift_reg_reg[0]_2 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[0][3] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(Q_input[3]),
        .Q(\Q_shift_reg_reg[0]_2 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[0][4] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(Q_input[4]),
        .Q(\Q_shift_reg_reg[0]_2 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[0][5] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(Q_input[5]),
        .Q(\Q_shift_reg_reg[0]_2 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[0][6] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(Q_input[6]),
        .Q(\Q_shift_reg_reg[0]_2 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[0][7] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(Q_input[7]),
        .Q(\Q_shift_reg_reg[0]_2 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[0][8] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(Q_input[8]),
        .Q(\Q_shift_reg_reg[0]_2 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[0][9] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(Q_input[9]),
        .Q(\Q_shift_reg_reg[0]_2 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[10][0] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[9]_8 [0]),
        .Q(\Q_shift_reg_reg[10]_9 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[10][10] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[9]_8 [10]),
        .Q(\Q_shift_reg_reg[10]_9 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[10][11] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[9]_8 [11]),
        .Q(\Q_shift_reg_reg[10]_9 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[10][1] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[9]_8 [1]),
        .Q(\Q_shift_reg_reg[10]_9 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[10][2] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[9]_8 [2]),
        .Q(\Q_shift_reg_reg[10]_9 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[10][3] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[9]_8 [3]),
        .Q(\Q_shift_reg_reg[10]_9 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[10][4] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[9]_8 [4]),
        .Q(\Q_shift_reg_reg[10]_9 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[10][5] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[9]_8 [5]),
        .Q(\Q_shift_reg_reg[10]_9 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[10][6] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[9]_8 [6]),
        .Q(\Q_shift_reg_reg[10]_9 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[10][7] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[9]_8 [7]),
        .Q(\Q_shift_reg_reg[10]_9 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[10][8] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[9]_8 [8]),
        .Q(\Q_shift_reg_reg[10]_9 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[10][9] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[9]_8 [9]),
        .Q(\Q_shift_reg_reg[10]_9 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[11][0] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[10]_9 [0]),
        .Q(\Q_shift_reg_reg[11]_10 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[11][10] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[10]_9 [10]),
        .Q(\Q_shift_reg_reg[11]_10 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[11][11] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[10]_9 [11]),
        .Q(\Q_shift_reg_reg[11]_10 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[11][1] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[10]_9 [1]),
        .Q(\Q_shift_reg_reg[11]_10 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[11][2] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[10]_9 [2]),
        .Q(\Q_shift_reg_reg[11]_10 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[11][3] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[10]_9 [3]),
        .Q(\Q_shift_reg_reg[11]_10 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[11][4] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[10]_9 [4]),
        .Q(\Q_shift_reg_reg[11]_10 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[11][5] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[10]_9 [5]),
        .Q(\Q_shift_reg_reg[11]_10 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[11][6] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[10]_9 [6]),
        .Q(\Q_shift_reg_reg[11]_10 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[11][7] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[10]_9 [7]),
        .Q(\Q_shift_reg_reg[11]_10 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[11][8] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[10]_9 [8]),
        .Q(\Q_shift_reg_reg[11]_10 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[11][9] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[10]_9 [9]),
        .Q(\Q_shift_reg_reg[11]_10 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[12][0] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[11]_10 [0]),
        .Q(\Q_shift_reg_reg[12]_11 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[12][10] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[11]_10 [10]),
        .Q(\Q_shift_reg_reg[12]_11 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[12][11] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[11]_10 [11]),
        .Q(\Q_shift_reg_reg[12]_11 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[12][1] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[11]_10 [1]),
        .Q(\Q_shift_reg_reg[12]_11 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[12][2] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[11]_10 [2]),
        .Q(\Q_shift_reg_reg[12]_11 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[12][3] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[11]_10 [3]),
        .Q(\Q_shift_reg_reg[12]_11 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[12][4] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[11]_10 [4]),
        .Q(\Q_shift_reg_reg[12]_11 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[12][5] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[11]_10 [5]),
        .Q(\Q_shift_reg_reg[12]_11 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[12][6] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[11]_10 [6]),
        .Q(\Q_shift_reg_reg[12]_11 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[12][7] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[11]_10 [7]),
        .Q(\Q_shift_reg_reg[12]_11 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[12][8] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[11]_10 [8]),
        .Q(\Q_shift_reg_reg[12]_11 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[12][9] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[11]_10 [9]),
        .Q(\Q_shift_reg_reg[12]_11 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[1][0] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[0]_2 [0]),
        .Q(\Q_shift_reg_reg[1]_3 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[1][10] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[0]_2 [10]),
        .Q(\Q_shift_reg_reg[1]_3 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[1][11] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[0]_2 [11]),
        .Q(\Q_shift_reg_reg[1]_3 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[1][1] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[0]_2 [1]),
        .Q(\Q_shift_reg_reg[1]_3 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[1][2] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[0]_2 [2]),
        .Q(\Q_shift_reg_reg[1]_3 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[1][3] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[0]_2 [3]),
        .Q(\Q_shift_reg_reg[1]_3 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[1][4] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[0]_2 [4]),
        .Q(\Q_shift_reg_reg[1]_3 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[1][5] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[0]_2 [5]),
        .Q(\Q_shift_reg_reg[1]_3 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[1][6] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[0]_2 [6]),
        .Q(\Q_shift_reg_reg[1]_3 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[1][7] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[0]_2 [7]),
        .Q(\Q_shift_reg_reg[1]_3 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[1][8] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[0]_2 [8]),
        .Q(\Q_shift_reg_reg[1]_3 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[1][9] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[0]_2 [9]),
        .Q(\Q_shift_reg_reg[1]_3 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[2][0] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[1]_3 [0]),
        .Q(\Q_shift_reg_reg[2]_4 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[2][10] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[1]_3 [10]),
        .Q(\Q_shift_reg_reg[2]_4 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[2][11] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[1]_3 [11]),
        .Q(\Q_shift_reg_reg[2]_4 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[2][1] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[1]_3 [1]),
        .Q(\Q_shift_reg_reg[2]_4 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[2][2] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[1]_3 [2]),
        .Q(\Q_shift_reg_reg[2]_4 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[2][3] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[1]_3 [3]),
        .Q(\Q_shift_reg_reg[2]_4 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[2][4] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[1]_3 [4]),
        .Q(\Q_shift_reg_reg[2]_4 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[2][5] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[1]_3 [5]),
        .Q(\Q_shift_reg_reg[2]_4 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[2][6] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[1]_3 [6]),
        .Q(\Q_shift_reg_reg[2]_4 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[2][7] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[1]_3 [7]),
        .Q(\Q_shift_reg_reg[2]_4 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[2][8] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[1]_3 [8]),
        .Q(\Q_shift_reg_reg[2]_4 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[2][9] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[1]_3 [9]),
        .Q(\Q_shift_reg_reg[2]_4 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[3][0] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[2]_4 [0]),
        .Q(\Q_shift_reg_reg[3]_5 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[3][10] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[2]_4 [10]),
        .Q(\Q_shift_reg_reg[3]_5 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[3][11] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[2]_4 [11]),
        .Q(\Q_shift_reg_reg[3]_5 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[3][1] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[2]_4 [1]),
        .Q(\Q_shift_reg_reg[3]_5 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[3][2] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[2]_4 [2]),
        .Q(\Q_shift_reg_reg[3]_5 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[3][3] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[2]_4 [3]),
        .Q(\Q_shift_reg_reg[3]_5 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[3][4] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[2]_4 [4]),
        .Q(\Q_shift_reg_reg[3]_5 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[3][5] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[2]_4 [5]),
        .Q(\Q_shift_reg_reg[3]_5 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[3][6] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[2]_4 [6]),
        .Q(\Q_shift_reg_reg[3]_5 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[3][7] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[2]_4 [7]),
        .Q(\Q_shift_reg_reg[3]_5 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[3][8] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[2]_4 [8]),
        .Q(\Q_shift_reg_reg[3]_5 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[3][9] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[2]_4 [9]),
        .Q(\Q_shift_reg_reg[3]_5 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[4][0] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[3]_5 [0]),
        .Q(\Q_shift_reg_reg[4]_6 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[4][10] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[3]_5 [10]),
        .Q(\Q_shift_reg_reg[4]_6 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[4][11] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[3]_5 [11]),
        .Q(\Q_shift_reg_reg[4]_6 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[4][1] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[3]_5 [1]),
        .Q(\Q_shift_reg_reg[4]_6 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[4][2] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[3]_5 [2]),
        .Q(\Q_shift_reg_reg[4]_6 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[4][3] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[3]_5 [3]),
        .Q(\Q_shift_reg_reg[4]_6 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[4][4] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[3]_5 [4]),
        .Q(\Q_shift_reg_reg[4]_6 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[4][5] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[3]_5 [5]),
        .Q(\Q_shift_reg_reg[4]_6 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[4][6] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[3]_5 [6]),
        .Q(\Q_shift_reg_reg[4]_6 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[4][7] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[3]_5 [7]),
        .Q(\Q_shift_reg_reg[4]_6 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[4][8] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[3]_5 [8]),
        .Q(\Q_shift_reg_reg[4]_6 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[4][9] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[3]_5 [9]),
        .Q(\Q_shift_reg_reg[4]_6 [9]),
        .R(1'b0));
  (* srl_bus_name = "\U0/Q_shift_reg_reg[6] " *) 
  (* srl_name = "\U0/Q_shift_reg_reg[6][0]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \Q_shift_reg_reg[6][0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D(\Q_shift_reg_reg[4]_6 [0]),
        .Q(\Q_shift_reg_reg[6][0]_srl2_n_0 ));
  (* srl_bus_name = "\U0/Q_shift_reg_reg[6] " *) 
  (* srl_name = "\U0/Q_shift_reg_reg[6][10]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \Q_shift_reg_reg[6][10]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D(\Q_shift_reg_reg[4]_6 [10]),
        .Q(\Q_shift_reg_reg[6][10]_srl2_n_0 ));
  (* srl_bus_name = "\U0/Q_shift_reg_reg[6] " *) 
  (* srl_name = "\U0/Q_shift_reg_reg[6][11]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \Q_shift_reg_reg[6][11]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D(\Q_shift_reg_reg[4]_6 [11]),
        .Q(\Q_shift_reg_reg[6][11]_srl2_n_0 ));
  (* srl_bus_name = "\U0/Q_shift_reg_reg[6] " *) 
  (* srl_name = "\U0/Q_shift_reg_reg[6][1]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \Q_shift_reg_reg[6][1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D(\Q_shift_reg_reg[4]_6 [1]),
        .Q(\Q_shift_reg_reg[6][1]_srl2_n_0 ));
  (* srl_bus_name = "\U0/Q_shift_reg_reg[6] " *) 
  (* srl_name = "\U0/Q_shift_reg_reg[6][2]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \Q_shift_reg_reg[6][2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D(\Q_shift_reg_reg[4]_6 [2]),
        .Q(\Q_shift_reg_reg[6][2]_srl2_n_0 ));
  (* srl_bus_name = "\U0/Q_shift_reg_reg[6] " *) 
  (* srl_name = "\U0/Q_shift_reg_reg[6][3]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \Q_shift_reg_reg[6][3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D(\Q_shift_reg_reg[4]_6 [3]),
        .Q(\Q_shift_reg_reg[6][3]_srl2_n_0 ));
  (* srl_bus_name = "\U0/Q_shift_reg_reg[6] " *) 
  (* srl_name = "\U0/Q_shift_reg_reg[6][4]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \Q_shift_reg_reg[6][4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D(\Q_shift_reg_reg[4]_6 [4]),
        .Q(\Q_shift_reg_reg[6][4]_srl2_n_0 ));
  (* srl_bus_name = "\U0/Q_shift_reg_reg[6] " *) 
  (* srl_name = "\U0/Q_shift_reg_reg[6][5]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \Q_shift_reg_reg[6][5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D(\Q_shift_reg_reg[4]_6 [5]),
        .Q(\Q_shift_reg_reg[6][5]_srl2_n_0 ));
  (* srl_bus_name = "\U0/Q_shift_reg_reg[6] " *) 
  (* srl_name = "\U0/Q_shift_reg_reg[6][6]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \Q_shift_reg_reg[6][6]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D(\Q_shift_reg_reg[4]_6 [6]),
        .Q(\Q_shift_reg_reg[6][6]_srl2_n_0 ));
  (* srl_bus_name = "\U0/Q_shift_reg_reg[6] " *) 
  (* srl_name = "\U0/Q_shift_reg_reg[6][7]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \Q_shift_reg_reg[6][7]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D(\Q_shift_reg_reg[4]_6 [7]),
        .Q(\Q_shift_reg_reg[6][7]_srl2_n_0 ));
  (* srl_bus_name = "\U0/Q_shift_reg_reg[6] " *) 
  (* srl_name = "\U0/Q_shift_reg_reg[6][8]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \Q_shift_reg_reg[6][8]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D(\Q_shift_reg_reg[4]_6 [8]),
        .Q(\Q_shift_reg_reg[6][8]_srl2_n_0 ));
  (* srl_bus_name = "\U0/Q_shift_reg_reg[6] " *) 
  (* srl_name = "\U0/Q_shift_reg_reg[6][9]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \Q_shift_reg_reg[6][9]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D(\Q_shift_reg_reg[4]_6 [9]),
        .Q(\Q_shift_reg_reg[6][9]_srl2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[7][0] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[6][0]_srl2_n_0 ),
        .Q(\Q_shift_reg_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[7][10] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[6][10]_srl2_n_0 ),
        .Q(\Q_shift_reg_reg[7]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[7][11] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[6][11]_srl2_n_0 ),
        .Q(\Q_shift_reg_reg[7]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[7][1] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[6][1]_srl2_n_0 ),
        .Q(\Q_shift_reg_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[7][2] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[6][2]_srl2_n_0 ),
        .Q(\Q_shift_reg_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[7][3] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[6][3]_srl2_n_0 ),
        .Q(\Q_shift_reg_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[7][4] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[6][4]_srl2_n_0 ),
        .Q(\Q_shift_reg_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[7][5] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[6][5]_srl2_n_0 ),
        .Q(\Q_shift_reg_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[7][6] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[6][6]_srl2_n_0 ),
        .Q(\Q_shift_reg_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[7][7] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[6][7]_srl2_n_0 ),
        .Q(\Q_shift_reg_reg[7]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[7][8] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[6][8]_srl2_n_0 ),
        .Q(\Q_shift_reg_reg[7]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[7][9] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[6][9]_srl2_n_0 ),
        .Q(\Q_shift_reg_reg[7]_0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[8][0] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[7]_0 [0]),
        .Q(\Q_shift_reg_reg[8]_7 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[8][10] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[7]_0 [10]),
        .Q(\Q_shift_reg_reg[8]_7 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[8][11] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[7]_0 [11]),
        .Q(\Q_shift_reg_reg[8]_7 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[8][1] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[7]_0 [1]),
        .Q(\Q_shift_reg_reg[8]_7 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[8][2] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[7]_0 [2]),
        .Q(\Q_shift_reg_reg[8]_7 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[8][3] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[7]_0 [3]),
        .Q(\Q_shift_reg_reg[8]_7 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[8][4] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[7]_0 [4]),
        .Q(\Q_shift_reg_reg[8]_7 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[8][5] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[7]_0 [5]),
        .Q(\Q_shift_reg_reg[8]_7 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[8][6] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[7]_0 [6]),
        .Q(\Q_shift_reg_reg[8]_7 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[8][7] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[7]_0 [7]),
        .Q(\Q_shift_reg_reg[8]_7 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[8][8] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[7]_0 [8]),
        .Q(\Q_shift_reg_reg[8]_7 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[8][9] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[7]_0 [9]),
        .Q(\Q_shift_reg_reg[8]_7 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[9][0] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[8]_7 [0]),
        .Q(\Q_shift_reg_reg[9]_8 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[9][10] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[8]_7 [10]),
        .Q(\Q_shift_reg_reg[9]_8 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[9][11] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[8]_7 [11]),
        .Q(\Q_shift_reg_reg[9]_8 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[9][1] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[8]_7 [1]),
        .Q(\Q_shift_reg_reg[9]_8 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[9][2] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[8]_7 [2]),
        .Q(\Q_shift_reg_reg[9]_8 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[9][3] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[8]_7 [3]),
        .Q(\Q_shift_reg_reg[9]_8 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[9][4] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[8]_7 [4]),
        .Q(\Q_shift_reg_reg[9]_8 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[9][5] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[8]_7 [5]),
        .Q(\Q_shift_reg_reg[9]_8 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[9][6] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[8]_7 [6]),
        .Q(\Q_shift_reg_reg[9]_8 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[9][7] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[8]_7 [7]),
        .Q(\Q_shift_reg_reg[9]_8 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[9][8] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[8]_7 [8]),
        .Q(\Q_shift_reg_reg[9]_8 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_shift_reg_reg[9][9] 
       (.C(clk),
        .CE(temp_reg_Q0__9_i_1_n_0),
        .D(\Q_shift_reg_reg[8]_7 [9]),
        .Q(\Q_shift_reg_reg[9]_8 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    data_out_ready_reg
       (.C(clk),
        .CE(data_out_valid_i_1_n_0),
        .D(data_in_ready),
        .Q(data_out_ready),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_valid_i_1
       (.I0(reset),
        .O(data_out_valid_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    data_out_valid_i_2
       (.I0(data_in_ready),
        .I1(data_in_valid),
        .O(data_out_valid_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_out_valid_reg
       (.C(clk),
        .CE(data_out_valid_i_1_n_0),
        .D(data_out_valid_i_2_n_0),
        .Q(data_out_valid),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("CASCADE"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    temp_reg_I0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp_reg_I0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({temp_reg_I2_n_6,temp_reg_I2_n_7,temp_reg_I2_n_8,temp_reg_I2_n_9,temp_reg_I2_n_10,temp_reg_I2_n_11,temp_reg_I2_n_12,temp_reg_I2_n_13,temp_reg_I2_n_14,temp_reg_I2_n_15,temp_reg_I2_n_16,temp_reg_I2_n_17,temp_reg_I2_n_18,temp_reg_I2_n_19,temp_reg_I2_n_20,temp_reg_I2_n_21,temp_reg_I2_n_22,temp_reg_I2_n_23}),
        .BCOUT(NLW_temp_reg_I0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp_reg_I0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp_reg_I0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(temp_reg_Q0__9_i_1_n_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_temp_reg_I0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp_reg_I0_OVERFLOW_UNCONNECTED),
        .P(NLW_temp_reg_I0_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_temp_reg_I0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp_reg_I0_PATTERNDETECT_UNCONNECTED),
        .PCIN({temp_reg_I2_n_106,temp_reg_I2_n_107,temp_reg_I2_n_108,temp_reg_I2_n_109,temp_reg_I2_n_110,temp_reg_I2_n_111,temp_reg_I2_n_112,temp_reg_I2_n_113,temp_reg_I2_n_114,temp_reg_I2_n_115,temp_reg_I2_n_116,temp_reg_I2_n_117,temp_reg_I2_n_118,temp_reg_I2_n_119,temp_reg_I2_n_120,temp_reg_I2_n_121,temp_reg_I2_n_122,temp_reg_I2_n_123,temp_reg_I2_n_124,temp_reg_I2_n_125,temp_reg_I2_n_126,temp_reg_I2_n_127,temp_reg_I2_n_128,temp_reg_I2_n_129,temp_reg_I2_n_130,temp_reg_I2_n_131,temp_reg_I2_n_132,temp_reg_I2_n_133,temp_reg_I2_n_134,temp_reg_I2_n_135,temp_reg_I2_n_136,temp_reg_I2_n_137,temp_reg_I2_n_138,temp_reg_I2_n_139,temp_reg_I2_n_140,temp_reg_I2_n_141,temp_reg_I2_n_142,temp_reg_I2_n_143,temp_reg_I2_n_144,temp_reg_I2_n_145,temp_reg_I2_n_146,temp_reg_I2_n_147,temp_reg_I2_n_148,temp_reg_I2_n_149,temp_reg_I2_n_150,temp_reg_I2_n_151,temp_reg_I2_n_152,temp_reg_I2_n_153}),
        .PCOUT({temp_reg_I0_n_106,temp_reg_I0_n_107,temp_reg_I0_n_108,temp_reg_I0_n_109,temp_reg_I0_n_110,temp_reg_I0_n_111,temp_reg_I0_n_112,temp_reg_I0_n_113,temp_reg_I0_n_114,temp_reg_I0_n_115,temp_reg_I0_n_116,temp_reg_I0_n_117,temp_reg_I0_n_118,temp_reg_I0_n_119,temp_reg_I0_n_120,temp_reg_I0_n_121,temp_reg_I0_n_122,temp_reg_I0_n_123,temp_reg_I0_n_124,temp_reg_I0_n_125,temp_reg_I0_n_126,temp_reg_I0_n_127,temp_reg_I0_n_128,temp_reg_I0_n_129,temp_reg_I0_n_130,temp_reg_I0_n_131,temp_reg_I0_n_132,temp_reg_I0_n_133,temp_reg_I0_n_134,temp_reg_I0_n_135,temp_reg_I0_n_136,temp_reg_I0_n_137,temp_reg_I0_n_138,temp_reg_I0_n_139,temp_reg_I0_n_140,temp_reg_I0_n_141,temp_reg_I0_n_142,temp_reg_I0_n_143,temp_reg_I0_n_144,temp_reg_I0_n_145,temp_reg_I0_n_146,temp_reg_I0_n_147,temp_reg_I0_n_148,temp_reg_I0_n_149,temp_reg_I0_n_150,temp_reg_I0_n_151,temp_reg_I0_n_152,temp_reg_I0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_temp_reg_I0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_temp_reg_I0_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    temp_reg_I0__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp_reg_I0__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\I_shift_reg_reg[11]_20 [11],\I_shift_reg_reg[11]_20 [11],\I_shift_reg_reg[11]_20 [11],\I_shift_reg_reg[11]_20 [11],\I_shift_reg_reg[11]_20 [11],\I_shift_reg_reg[11]_20 [11],\I_shift_reg_reg[11]_20 }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_temp_reg_I0__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp_reg_I0__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp_reg_I0__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(temp_reg_Q0__9_i_1_n_0),
        .CEB2(temp_reg_Q0__9_i_1_n_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_temp_reg_I0__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp_reg_I0__0_OVERFLOW_UNCONNECTED),
        .P({NLW_temp_reg_I0__0_P_UNCONNECTED[47:32],temp_reg_I0__0_n_74,temp_reg_I0__0_n_75,temp_reg_I0__0_n_76,temp_reg_I0__0_n_77,temp_reg_I0__0_n_78,temp_reg_I0__0_n_79,temp_reg_I0__0_n_80,temp_reg_I0__0_n_81,temp_reg_I0__0_n_82,temp_reg_I0__0_n_83,temp_reg_I0__0_n_84,temp_reg_I0__0_n_85,temp_reg_I0__0_n_86,temp_reg_I0__0_n_87,temp_reg_I0__0_n_88,temp_reg_I0__0_n_89,temp_reg_I0__0_n_90,temp_reg_I0__0_n_91,temp_reg_I0__0_n_92,temp_reg_I0__0_n_93,temp_reg_I0__0_n_94,temp_reg_I0__0_n_95,temp_reg_I0__0_n_96,temp_reg_I0__0_n_97,temp_reg_I0__0_n_98,temp_reg_I0__0_n_99,temp_reg_I0__0_n_100,temp_reg_I0__0_n_101,temp_reg_I0__0_n_102,temp_reg_I0__0_n_103,temp_reg_I0__0_n_104,temp_reg_I0__0_n_105}),
        .PATTERNBDETECT(NLW_temp_reg_I0__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp_reg_I0__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({temp_reg_I0_n_106,temp_reg_I0_n_107,temp_reg_I0_n_108,temp_reg_I0_n_109,temp_reg_I0_n_110,temp_reg_I0_n_111,temp_reg_I0_n_112,temp_reg_I0_n_113,temp_reg_I0_n_114,temp_reg_I0_n_115,temp_reg_I0_n_116,temp_reg_I0_n_117,temp_reg_I0_n_118,temp_reg_I0_n_119,temp_reg_I0_n_120,temp_reg_I0_n_121,temp_reg_I0_n_122,temp_reg_I0_n_123,temp_reg_I0_n_124,temp_reg_I0_n_125,temp_reg_I0_n_126,temp_reg_I0_n_127,temp_reg_I0_n_128,temp_reg_I0_n_129,temp_reg_I0_n_130,temp_reg_I0_n_131,temp_reg_I0_n_132,temp_reg_I0_n_133,temp_reg_I0_n_134,temp_reg_I0_n_135,temp_reg_I0_n_136,temp_reg_I0_n_137,temp_reg_I0_n_138,temp_reg_I0_n_139,temp_reg_I0_n_140,temp_reg_I0_n_141,temp_reg_I0_n_142,temp_reg_I0_n_143,temp_reg_I0_n_144,temp_reg_I0_n_145,temp_reg_I0_n_146,temp_reg_I0_n_147,temp_reg_I0_n_148,temp_reg_I0_n_149,temp_reg_I0_n_150,temp_reg_I0_n_151,temp_reg_I0_n_152,temp_reg_I0_n_153}),
        .PCOUT(NLW_temp_reg_I0__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_temp_reg_I0__0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_temp_reg_I0__0_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    temp_reg_I0__1
       (.A({\I_shift_reg_reg[9]_18 [11],\I_shift_reg_reg[9]_18 [11],\I_shift_reg_reg[9]_18 [11],\I_shift_reg_reg[9]_18 [11],\I_shift_reg_reg[9]_18 [11],\I_shift_reg_reg[9]_18 [11],\I_shift_reg_reg[9]_18 [11],\I_shift_reg_reg[9]_18 [11],\I_shift_reg_reg[9]_18 [11],\I_shift_reg_reg[9]_18 [11],\I_shift_reg_reg[9]_18 [11],\I_shift_reg_reg[9]_18 [11],\I_shift_reg_reg[9]_18 [11],\I_shift_reg_reg[9]_18 [11],\I_shift_reg_reg[9]_18 [11],\I_shift_reg_reg[9]_18 [11],\I_shift_reg_reg[9]_18 [11],\I_shift_reg_reg[9]_18 [11],\I_shift_reg_reg[9]_18 }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp_reg_I0__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_temp_reg_I0__1_BCOUT_UNCONNECTED[17:0]),
        .C({temp_reg_I0__1_i_1_n_12,temp_reg_I0__1_i_1_n_12,temp_reg_I0__1_i_1_n_12,temp_reg_I0__1_i_1_n_12,temp_reg_I0__1_i_1_n_12,temp_reg_I0__1_i_1_n_12,temp_reg_I0__1_i_1_n_12,temp_reg_I0__1_i_1_n_12,temp_reg_I0__1_i_1_n_12,temp_reg_I0__1_i_1_n_12,temp_reg_I0__1_i_1_n_12,temp_reg_I0__1_i_1_n_12,temp_reg_I0__1_i_1_n_12,temp_reg_I0__1_i_1_n_12,temp_reg_I0__1_i_1_n_12,temp_reg_I0__1_i_1_n_12,temp_reg_I0__1_i_1_n_12,temp_reg_I0__1_i_1_n_13,temp_reg_I0__1_i_1_n_14,temp_reg_I0__1_i_1_n_15,temp_reg_I0__1_i_2_n_8,temp_reg_I0__1_i_2_n_9,temp_reg_I0__1_i_2_n_10,temp_reg_I0__1_i_2_n_11,temp_reg_I0__1_i_2_n_12,temp_reg_I0__1_i_2_n_13,temp_reg_I0__1_i_2_n_14,temp_reg_I0__1_i_2_n_15,temp_reg_I0__1_i_3_n_8,temp_reg_I0__1_i_3_n_9,temp_reg_I0__1_i_3_n_10,temp_reg_I0__1_i_3_n_11,temp_reg_I0__1_i_3_n_12,temp_reg_I0__1_i_3_n_13,temp_reg_I0__1_i_3_n_14,temp_reg_I0__1_i_3_n_15,temp_reg_I0__0_n_94,temp_reg_I0__0_n_95,temp_reg_I0__0_n_96,temp_reg_I0__0_n_97,temp_reg_I0__0_n_98,temp_reg_I0__0_n_99,temp_reg_I0__0_n_100,temp_reg_I0__0_n_101,temp_reg_I0__0_n_102,temp_reg_I0__0_n_103,temp_reg_I0__0_n_104,temp_reg_I0__0_n_105}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp_reg_I0__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp_reg_I0__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(temp_reg_Q0__9_i_1_n_0),
        .CEA2(temp_reg_Q0__9_i_1_n_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_temp_reg_I0__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp_reg_I0__1_OVERFLOW_UNCONNECTED),
        .P(NLW_temp_reg_I0__1_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_temp_reg_I0__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp_reg_I0__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({temp_reg_I0__1_n_106,temp_reg_I0__1_n_107,temp_reg_I0__1_n_108,temp_reg_I0__1_n_109,temp_reg_I0__1_n_110,temp_reg_I0__1_n_111,temp_reg_I0__1_n_112,temp_reg_I0__1_n_113,temp_reg_I0__1_n_114,temp_reg_I0__1_n_115,temp_reg_I0__1_n_116,temp_reg_I0__1_n_117,temp_reg_I0__1_n_118,temp_reg_I0__1_n_119,temp_reg_I0__1_n_120,temp_reg_I0__1_n_121,temp_reg_I0__1_n_122,temp_reg_I0__1_n_123,temp_reg_I0__1_n_124,temp_reg_I0__1_n_125,temp_reg_I0__1_n_126,temp_reg_I0__1_n_127,temp_reg_I0__1_n_128,temp_reg_I0__1_n_129,temp_reg_I0__1_n_130,temp_reg_I0__1_n_131,temp_reg_I0__1_n_132,temp_reg_I0__1_n_133,temp_reg_I0__1_n_134,temp_reg_I0__1_n_135,temp_reg_I0__1_n_136,temp_reg_I0__1_n_137,temp_reg_I0__1_n_138,temp_reg_I0__1_n_139,temp_reg_I0__1_n_140,temp_reg_I0__1_n_141,temp_reg_I0__1_n_142,temp_reg_I0__1_n_143,temp_reg_I0__1_n_144,temp_reg_I0__1_n_145,temp_reg_I0__1_n_146,temp_reg_I0__1_n_147,temp_reg_I0__1_n_148,temp_reg_I0__1_n_149,temp_reg_I0__1_n_150,temp_reg_I0__1_n_151,temp_reg_I0__1_n_152,temp_reg_I0__1_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_temp_reg_I0__1_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_temp_reg_I0__1_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 temp_reg_I0__1_i_1
       (.CI(temp_reg_I0__1_i_2_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_temp_reg_I0__1_i_1_CO_UNCONNECTED[7:3],temp_reg_I0__1_i_1_n_5,temp_reg_I0__1_i_1_n_6,temp_reg_I0__1_i_1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,temp_reg_I0__0_n_76,temp_reg_I0__0_n_77,temp_reg_I0__0_n_78}),
        .O({NLW_temp_reg_I0__1_i_1_O_UNCONNECTED[7:4],temp_reg_I0__1_i_1_n_12,temp_reg_I0__1_i_1_n_13,temp_reg_I0__1_i_1_n_14,temp_reg_I0__1_i_1_n_15}),
        .S({1'b0,1'b0,1'b0,1'b0,temp_reg_I0__1_i_4_n_0,temp_reg_I0__1_i_5_n_0,temp_reg_I0__1_i_6_n_0,temp_reg_I0__1_i_7_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__1_i_10
       (.I0(temp_reg_I0__0_n_80),
        .I1(temp_reg_I0__0_n_79),
        .O(temp_reg_I0__1_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__1_i_11
       (.I0(temp_reg_I0__0_n_81),
        .I1(temp_reg_I0__0_n_80),
        .O(temp_reg_I0__1_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__1_i_12
       (.I0(temp_reg_I0__0_n_81),
        .I1(\I_shift_reg_reg[12]_21 [11]),
        .O(temp_reg_I0__1_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__1_i_13
       (.I0(\I_shift_reg_reg[12]_21 [10]),
        .I1(temp_reg_I0__0_n_82),
        .O(temp_reg_I0__1_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__1_i_14
       (.I0(\I_shift_reg_reg[12]_21 [9]),
        .I1(temp_reg_I0__0_n_83),
        .O(temp_reg_I0__1_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__1_i_15
       (.I0(\I_shift_reg_reg[12]_21 [8]),
        .I1(temp_reg_I0__0_n_84),
        .O(temp_reg_I0__1_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__1_i_16
       (.I0(\I_shift_reg_reg[12]_21 [7]),
        .I1(temp_reg_I0__0_n_85),
        .O(temp_reg_I0__1_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__1_i_17
       (.I0(\I_shift_reg_reg[12]_21 [6]),
        .I1(temp_reg_I0__0_n_86),
        .O(temp_reg_I0__1_i_17_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__1_i_18
       (.I0(\I_shift_reg_reg[12]_21 [5]),
        .I1(temp_reg_I0__0_n_87),
        .O(temp_reg_I0__1_i_18_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__1_i_19
       (.I0(\I_shift_reg_reg[12]_21 [4]),
        .I1(temp_reg_I0__0_n_88),
        .O(temp_reg_I0__1_i_19_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 temp_reg_I0__1_i_2
       (.CI(temp_reg_I0__1_i_3_n_0),
        .CI_TOP(1'b0),
        .CO({temp_reg_I0__1_i_2_n_0,temp_reg_I0__1_i_2_n_1,temp_reg_I0__1_i_2_n_2,temp_reg_I0__1_i_2_n_3,temp_reg_I0__1_i_2_n_4,temp_reg_I0__1_i_2_n_5,temp_reg_I0__1_i_2_n_6,temp_reg_I0__1_i_2_n_7}),
        .DI({temp_reg_I0__0_n_79,temp_reg_I0__0_n_80,temp_reg_I0__0_n_81,temp_reg_I0__1_i_8_n_0,\I_shift_reg_reg[12]_21 [10:7]}),
        .O({temp_reg_I0__1_i_2_n_8,temp_reg_I0__1_i_2_n_9,temp_reg_I0__1_i_2_n_10,temp_reg_I0__1_i_2_n_11,temp_reg_I0__1_i_2_n_12,temp_reg_I0__1_i_2_n_13,temp_reg_I0__1_i_2_n_14,temp_reg_I0__1_i_2_n_15}),
        .S({temp_reg_I0__1_i_9_n_0,temp_reg_I0__1_i_10_n_0,temp_reg_I0__1_i_11_n_0,temp_reg_I0__1_i_12_n_0,temp_reg_I0__1_i_13_n_0,temp_reg_I0__1_i_14_n_0,temp_reg_I0__1_i_15_n_0,temp_reg_I0__1_i_16_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__1_i_20
       (.I0(\I_shift_reg_reg[12]_21 [3]),
        .I1(temp_reg_I0__0_n_89),
        .O(temp_reg_I0__1_i_20_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__1_i_21
       (.I0(\I_shift_reg_reg[12]_21 [2]),
        .I1(temp_reg_I0__0_n_90),
        .O(temp_reg_I0__1_i_21_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__1_i_22
       (.I0(\I_shift_reg_reg[12]_21 [1]),
        .I1(temp_reg_I0__0_n_91),
        .O(temp_reg_I0__1_i_22_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__1_i_23
       (.I0(\I_shift_reg_reg[12]_21 [0]),
        .I1(temp_reg_I0__0_n_92),
        .O(temp_reg_I0__1_i_23_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 temp_reg_I0__1_i_3
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({temp_reg_I0__1_i_3_n_0,temp_reg_I0__1_i_3_n_1,temp_reg_I0__1_i_3_n_2,temp_reg_I0__1_i_3_n_3,temp_reg_I0__1_i_3_n_4,temp_reg_I0__1_i_3_n_5,temp_reg_I0__1_i_3_n_6,temp_reg_I0__1_i_3_n_7}),
        .DI({\I_shift_reg_reg[12]_21 [6:0],1'b0}),
        .O({temp_reg_I0__1_i_3_n_8,temp_reg_I0__1_i_3_n_9,temp_reg_I0__1_i_3_n_10,temp_reg_I0__1_i_3_n_11,temp_reg_I0__1_i_3_n_12,temp_reg_I0__1_i_3_n_13,temp_reg_I0__1_i_3_n_14,temp_reg_I0__1_i_3_n_15}),
        .S({temp_reg_I0__1_i_17_n_0,temp_reg_I0__1_i_18_n_0,temp_reg_I0__1_i_19_n_0,temp_reg_I0__1_i_20_n_0,temp_reg_I0__1_i_21_n_0,temp_reg_I0__1_i_22_n_0,temp_reg_I0__1_i_23_n_0,temp_reg_I0__0_n_93}));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__1_i_4
       (.I0(temp_reg_I0__0_n_75),
        .I1(temp_reg_I0__0_n_74),
        .O(temp_reg_I0__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__1_i_5
       (.I0(temp_reg_I0__0_n_76),
        .I1(temp_reg_I0__0_n_75),
        .O(temp_reg_I0__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__1_i_6
       (.I0(temp_reg_I0__0_n_77),
        .I1(temp_reg_I0__0_n_76),
        .O(temp_reg_I0__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__1_i_7
       (.I0(temp_reg_I0__0_n_78),
        .I1(temp_reg_I0__0_n_77),
        .O(temp_reg_I0__1_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    temp_reg_I0__1_i_8
       (.I0(temp_reg_I0__0_n_81),
        .O(temp_reg_I0__1_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__1_i_9
       (.I0(temp_reg_I0__0_n_79),
        .I1(temp_reg_I0__0_n_78),
        .O(temp_reg_I0__1_i_9_n_0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    temp_reg_I0__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp_reg_I0__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\I_shift_reg_reg[8]_17 [11],\I_shift_reg_reg[8]_17 [11],\I_shift_reg_reg[8]_17 [11],\I_shift_reg_reg[8]_17 [11],\I_shift_reg_reg[8]_17 [11],\I_shift_reg_reg[8]_17 [11],\I_shift_reg_reg[8]_17 }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_temp_reg_I0__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp_reg_I0__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp_reg_I0__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(temp_reg_Q0__9_i_1_n_0),
        .CEB2(temp_reg_Q0__9_i_1_n_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_temp_reg_I0__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp_reg_I0__2_OVERFLOW_UNCONNECTED),
        .P(NLW_temp_reg_I0__2_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_temp_reg_I0__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp_reg_I0__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({temp_reg_I0__1_n_106,temp_reg_I0__1_n_107,temp_reg_I0__1_n_108,temp_reg_I0__1_n_109,temp_reg_I0__1_n_110,temp_reg_I0__1_n_111,temp_reg_I0__1_n_112,temp_reg_I0__1_n_113,temp_reg_I0__1_n_114,temp_reg_I0__1_n_115,temp_reg_I0__1_n_116,temp_reg_I0__1_n_117,temp_reg_I0__1_n_118,temp_reg_I0__1_n_119,temp_reg_I0__1_n_120,temp_reg_I0__1_n_121,temp_reg_I0__1_n_122,temp_reg_I0__1_n_123,temp_reg_I0__1_n_124,temp_reg_I0__1_n_125,temp_reg_I0__1_n_126,temp_reg_I0__1_n_127,temp_reg_I0__1_n_128,temp_reg_I0__1_n_129,temp_reg_I0__1_n_130,temp_reg_I0__1_n_131,temp_reg_I0__1_n_132,temp_reg_I0__1_n_133,temp_reg_I0__1_n_134,temp_reg_I0__1_n_135,temp_reg_I0__1_n_136,temp_reg_I0__1_n_137,temp_reg_I0__1_n_138,temp_reg_I0__1_n_139,temp_reg_I0__1_n_140,temp_reg_I0__1_n_141,temp_reg_I0__1_n_142,temp_reg_I0__1_n_143,temp_reg_I0__1_n_144,temp_reg_I0__1_n_145,temp_reg_I0__1_n_146,temp_reg_I0__1_n_147,temp_reg_I0__1_n_148,temp_reg_I0__1_n_149,temp_reg_I0__1_n_150,temp_reg_I0__1_n_151,temp_reg_I0__1_n_152,temp_reg_I0__1_n_153}),
        .PCOUT({temp_reg_I0__2_n_106,temp_reg_I0__2_n_107,temp_reg_I0__2_n_108,temp_reg_I0__2_n_109,temp_reg_I0__2_n_110,temp_reg_I0__2_n_111,temp_reg_I0__2_n_112,temp_reg_I0__2_n_113,temp_reg_I0__2_n_114,temp_reg_I0__2_n_115,temp_reg_I0__2_n_116,temp_reg_I0__2_n_117,temp_reg_I0__2_n_118,temp_reg_I0__2_n_119,temp_reg_I0__2_n_120,temp_reg_I0__2_n_121,temp_reg_I0__2_n_122,temp_reg_I0__2_n_123,temp_reg_I0__2_n_124,temp_reg_I0__2_n_125,temp_reg_I0__2_n_126,temp_reg_I0__2_n_127,temp_reg_I0__2_n_128,temp_reg_I0__2_n_129,temp_reg_I0__2_n_130,temp_reg_I0__2_n_131,temp_reg_I0__2_n_132,temp_reg_I0__2_n_133,temp_reg_I0__2_n_134,temp_reg_I0__2_n_135,temp_reg_I0__2_n_136,temp_reg_I0__2_n_137,temp_reg_I0__2_n_138,temp_reg_I0__2_n_139,temp_reg_I0__2_n_140,temp_reg_I0__2_n_141,temp_reg_I0__2_n_142,temp_reg_I0__2_n_143,temp_reg_I0__2_n_144,temp_reg_I0__2_n_145,temp_reg_I0__2_n_146,temp_reg_I0__2_n_147,temp_reg_I0__2_n_148,temp_reg_I0__2_n_149,temp_reg_I0__2_n_150,temp_reg_I0__2_n_151,temp_reg_I0__2_n_152,temp_reg_I0__2_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_temp_reg_I0__2_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_temp_reg_I0__2_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    temp_reg_I0__3
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp_reg_I0__3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\I_shift_reg_reg[7]_1 [11],\I_shift_reg_reg[7]_1 [11],\I_shift_reg_reg[7]_1 [11],\I_shift_reg_reg[7]_1 [11],\I_shift_reg_reg[7]_1 [11],\I_shift_reg_reg[7]_1 [11],\I_shift_reg_reg[7]_1 }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_temp_reg_I0__3_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp_reg_I0__3_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp_reg_I0__3_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(temp_reg_Q0__9_i_1_n_0),
        .CEB2(temp_reg_Q0__9_i_1_n_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_temp_reg_I0__3_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp_reg_I0__3_OVERFLOW_UNCONNECTED),
        .P({NLW_temp_reg_I0__3_P_UNCONNECTED[47:32],temp_reg_I0__3_n_74,temp_reg_I0__3_n_75,temp_reg_I0__3_n_76,temp_reg_I0__3_n_77,temp_reg_I0__3_n_78,temp_reg_I0__3_n_79,temp_reg_I0__3_n_80,temp_reg_I0__3_n_81,temp_reg_I0__3_n_82,temp_reg_I0__3_n_83,temp_reg_I0__3_n_84,temp_reg_I0__3_n_85,temp_reg_I0__3_n_86,temp_reg_I0__3_n_87,temp_reg_I0__3_n_88,temp_reg_I0__3_n_89,temp_reg_I0__3_n_90,temp_reg_I0__3_n_91,temp_reg_I0__3_n_92,temp_reg_I0__3_n_93,temp_reg_I0__3_n_94,temp_reg_I0__3_n_95,temp_reg_I0__3_n_96,temp_reg_I0__3_n_97,temp_reg_I0__3_n_98,temp_reg_I0__3_n_99,temp_reg_I0__3_n_100,temp_reg_I0__3_n_101,temp_reg_I0__3_n_102,temp_reg_I0__3_n_103,temp_reg_I0__3_n_104,temp_reg_I0__3_n_105}),
        .PATTERNBDETECT(NLW_temp_reg_I0__3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp_reg_I0__3_PATTERNDETECT_UNCONNECTED),
        .PCIN({temp_reg_I0__2_n_106,temp_reg_I0__2_n_107,temp_reg_I0__2_n_108,temp_reg_I0__2_n_109,temp_reg_I0__2_n_110,temp_reg_I0__2_n_111,temp_reg_I0__2_n_112,temp_reg_I0__2_n_113,temp_reg_I0__2_n_114,temp_reg_I0__2_n_115,temp_reg_I0__2_n_116,temp_reg_I0__2_n_117,temp_reg_I0__2_n_118,temp_reg_I0__2_n_119,temp_reg_I0__2_n_120,temp_reg_I0__2_n_121,temp_reg_I0__2_n_122,temp_reg_I0__2_n_123,temp_reg_I0__2_n_124,temp_reg_I0__2_n_125,temp_reg_I0__2_n_126,temp_reg_I0__2_n_127,temp_reg_I0__2_n_128,temp_reg_I0__2_n_129,temp_reg_I0__2_n_130,temp_reg_I0__2_n_131,temp_reg_I0__2_n_132,temp_reg_I0__2_n_133,temp_reg_I0__2_n_134,temp_reg_I0__2_n_135,temp_reg_I0__2_n_136,temp_reg_I0__2_n_137,temp_reg_I0__2_n_138,temp_reg_I0__2_n_139,temp_reg_I0__2_n_140,temp_reg_I0__2_n_141,temp_reg_I0__2_n_142,temp_reg_I0__2_n_143,temp_reg_I0__2_n_144,temp_reg_I0__2_n_145,temp_reg_I0__2_n_146,temp_reg_I0__2_n_147,temp_reg_I0__2_n_148,temp_reg_I0__2_n_149,temp_reg_I0__2_n_150,temp_reg_I0__2_n_151,temp_reg_I0__2_n_152,temp_reg_I0__2_n_153}),
        .PCOUT(NLW_temp_reg_I0__3_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_temp_reg_I0__3_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_temp_reg_I0__3_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    temp_reg_I0__4
       (.A({\I_shift_reg_reg[4]_16 [11],\I_shift_reg_reg[4]_16 [11],\I_shift_reg_reg[4]_16 [11],\I_shift_reg_reg[4]_16 [11],\I_shift_reg_reg[4]_16 [11],\I_shift_reg_reg[4]_16 [11],\I_shift_reg_reg[4]_16 [11],\I_shift_reg_reg[4]_16 [11],\I_shift_reg_reg[4]_16 [11],\I_shift_reg_reg[4]_16 [11],\I_shift_reg_reg[4]_16 [11],\I_shift_reg_reg[4]_16 [11],\I_shift_reg_reg[4]_16 [11],\I_shift_reg_reg[4]_16 [11],\I_shift_reg_reg[4]_16 [11],\I_shift_reg_reg[4]_16 [11],\I_shift_reg_reg[4]_16 [11],\I_shift_reg_reg[4]_16 [11],\I_shift_reg_reg[4]_16 }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp_reg_I0__4_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_temp_reg_I0__4_BCOUT_UNCONNECTED[17:0]),
        .C({temp_reg_I0__4_i_1_n_13,temp_reg_I0__4_i_1_n_13,temp_reg_I0__4_i_1_n_13,temp_reg_I0__4_i_1_n_13,temp_reg_I0__4_i_1_n_13,temp_reg_I0__4_i_1_n_13,temp_reg_I0__4_i_1_n_13,temp_reg_I0__4_i_1_n_13,temp_reg_I0__4_i_1_n_13,temp_reg_I0__4_i_1_n_13,temp_reg_I0__4_i_1_n_13,temp_reg_I0__4_i_1_n_13,temp_reg_I0__4_i_1_n_13,temp_reg_I0__4_i_1_n_13,temp_reg_I0__4_i_1_n_13,temp_reg_I0__4_i_1_n_13,temp_reg_I0__4_i_1_n_13,temp_reg_I0__4_i_1_n_14,temp_reg_I0__4_i_1_n_15,temp_reg_I0__4_i_2_n_8,temp_reg_I0__4_i_2_n_9,temp_reg_I0__4_i_2_n_10,temp_reg_I0__4_i_2_n_11,temp_reg_I0__4_i_2_n_12,temp_reg_I0__4_i_2_n_13,temp_reg_I0__4_i_2_n_14,temp_reg_I0__4_i_2_n_15,temp_reg_I0__4_i_3_n_8,temp_reg_I0__4_i_3_n_9,temp_reg_I0__4_i_3_n_10,temp_reg_I0__4_i_3_n_11,temp_reg_I0__4_i_3_n_12,temp_reg_I0__4_i_3_n_13,temp_reg_I0__4_i_3_n_14,temp_reg_I0__4_i_3_n_15,temp_reg_I0__3_n_93,temp_reg_I0__3_n_94,temp_reg_I0__3_n_95,temp_reg_I0__3_n_96,temp_reg_I0__3_n_97,temp_reg_I0__3_n_98,temp_reg_I0__3_n_99,temp_reg_I0__3_n_100,temp_reg_I0__3_n_101,temp_reg_I0__3_n_102,temp_reg_I0__3_n_103,temp_reg_I0__3_n_104,temp_reg_I0__3_n_105}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp_reg_I0__4_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp_reg_I0__4_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(temp_reg_Q0__9_i_1_n_0),
        .CEA2(temp_reg_Q0__9_i_1_n_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_temp_reg_I0__4_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp_reg_I0__4_OVERFLOW_UNCONNECTED),
        .P(NLW_temp_reg_I0__4_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_temp_reg_I0__4_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp_reg_I0__4_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({temp_reg_I0__4_n_106,temp_reg_I0__4_n_107,temp_reg_I0__4_n_108,temp_reg_I0__4_n_109,temp_reg_I0__4_n_110,temp_reg_I0__4_n_111,temp_reg_I0__4_n_112,temp_reg_I0__4_n_113,temp_reg_I0__4_n_114,temp_reg_I0__4_n_115,temp_reg_I0__4_n_116,temp_reg_I0__4_n_117,temp_reg_I0__4_n_118,temp_reg_I0__4_n_119,temp_reg_I0__4_n_120,temp_reg_I0__4_n_121,temp_reg_I0__4_n_122,temp_reg_I0__4_n_123,temp_reg_I0__4_n_124,temp_reg_I0__4_n_125,temp_reg_I0__4_n_126,temp_reg_I0__4_n_127,temp_reg_I0__4_n_128,temp_reg_I0__4_n_129,temp_reg_I0__4_n_130,temp_reg_I0__4_n_131,temp_reg_I0__4_n_132,temp_reg_I0__4_n_133,temp_reg_I0__4_n_134,temp_reg_I0__4_n_135,temp_reg_I0__4_n_136,temp_reg_I0__4_n_137,temp_reg_I0__4_n_138,temp_reg_I0__4_n_139,temp_reg_I0__4_n_140,temp_reg_I0__4_n_141,temp_reg_I0__4_n_142,temp_reg_I0__4_n_143,temp_reg_I0__4_n_144,temp_reg_I0__4_n_145,temp_reg_I0__4_n_146,temp_reg_I0__4_n_147,temp_reg_I0__4_n_148,temp_reg_I0__4_n_149,temp_reg_I0__4_n_150,temp_reg_I0__4_n_151,temp_reg_I0__4_n_152,temp_reg_I0__4_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_temp_reg_I0__4_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_temp_reg_I0__4_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 temp_reg_I0__4_i_1
       (.CI(temp_reg_I0__4_i_2_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_temp_reg_I0__4_i_1_CO_UNCONNECTED[7:2],temp_reg_I0__4_i_1_n_6,temp_reg_I0__4_i_1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,temp_reg_I0__4_i_4_n_15,temp_reg_I0__4_i_5_n_8}),
        .O({NLW_temp_reg_I0__4_i_1_O_UNCONNECTED[7:3],temp_reg_I0__4_i_1_n_13,temp_reg_I0__4_i_1_n_14,temp_reg_I0__4_i_1_n_15}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,temp_reg_I0__4_i_6_n_0,temp_reg_I0__4_i_7_n_0,temp_reg_I0__4_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__4_i_10
       (.I0(temp_reg_I0__4_i_5_n_9),
        .I1(temp_reg_I0__4_i_5_n_8),
        .O(temp_reg_I0__4_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__4_i_11
       (.I0(temp_reg_I0__4_i_5_n_10),
        .I1(temp_reg_I0__4_i_5_n_9),
        .O(temp_reg_I0__4_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__4_i_12
       (.I0(temp_reg_I0__4_i_5_n_11),
        .I1(temp_reg_I0__4_i_5_n_10),
        .O(temp_reg_I0__4_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__4_i_13
       (.I0(temp_reg_I0__4_i_5_n_11),
        .I1(\I_shift_reg_reg[7]_1 [11]),
        .O(temp_reg_I0__4_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__4_i_14
       (.I0(\I_shift_reg_reg[7]_1 [10]),
        .I1(temp_reg_I0__4_i_5_n_12),
        .O(temp_reg_I0__4_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__4_i_15
       (.I0(\I_shift_reg_reg[7]_1 [9]),
        .I1(temp_reg_I0__4_i_5_n_13),
        .O(temp_reg_I0__4_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__4_i_16
       (.I0(\I_shift_reg_reg[7]_1 [8]),
        .I1(temp_reg_I0__4_i_5_n_14),
        .O(temp_reg_I0__4_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__4_i_17
       (.I0(\I_shift_reg_reg[7]_1 [7]),
        .I1(temp_reg_I0__4_i_5_n_15),
        .O(temp_reg_I0__4_i_17_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__4_i_18
       (.I0(\I_shift_reg_reg[7]_1 [6]),
        .I1(temp_reg_I0__4_i_25_n_8),
        .O(temp_reg_I0__4_i_18_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__4_i_19
       (.I0(\I_shift_reg_reg[7]_1 [5]),
        .I1(temp_reg_I0__4_i_25_n_9),
        .O(temp_reg_I0__4_i_19_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 temp_reg_I0__4_i_2
       (.CI(temp_reg_I0__4_i_3_n_0),
        .CI_TOP(1'b0),
        .CO({temp_reg_I0__4_i_2_n_0,temp_reg_I0__4_i_2_n_1,temp_reg_I0__4_i_2_n_2,temp_reg_I0__4_i_2_n_3,temp_reg_I0__4_i_2_n_4,temp_reg_I0__4_i_2_n_5,temp_reg_I0__4_i_2_n_6,temp_reg_I0__4_i_2_n_7}),
        .DI({temp_reg_I0__4_i_5_n_9,temp_reg_I0__4_i_5_n_10,temp_reg_I0__4_i_5_n_11,temp_reg_I0__4_i_9_n_0,\I_shift_reg_reg[7]_1 [10:7]}),
        .O({temp_reg_I0__4_i_2_n_8,temp_reg_I0__4_i_2_n_9,temp_reg_I0__4_i_2_n_10,temp_reg_I0__4_i_2_n_11,temp_reg_I0__4_i_2_n_12,temp_reg_I0__4_i_2_n_13,temp_reg_I0__4_i_2_n_14,temp_reg_I0__4_i_2_n_15}),
        .S({temp_reg_I0__4_i_10_n_0,temp_reg_I0__4_i_11_n_0,temp_reg_I0__4_i_12_n_0,temp_reg_I0__4_i_13_n_0,temp_reg_I0__4_i_14_n_0,temp_reg_I0__4_i_15_n_0,temp_reg_I0__4_i_16_n_0,temp_reg_I0__4_i_17_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__4_i_20
       (.I0(\I_shift_reg_reg[7]_1 [4]),
        .I1(temp_reg_I0__4_i_25_n_10),
        .O(temp_reg_I0__4_i_20_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__4_i_21
       (.I0(\I_shift_reg_reg[7]_1 [3]),
        .I1(temp_reg_I0__4_i_25_n_11),
        .O(temp_reg_I0__4_i_21_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__4_i_22
       (.I0(\I_shift_reg_reg[7]_1 [2]),
        .I1(temp_reg_I0__4_i_25_n_12),
        .O(temp_reg_I0__4_i_22_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__4_i_23
       (.I0(\I_shift_reg_reg[7]_1 [1]),
        .I1(temp_reg_I0__4_i_25_n_13),
        .O(temp_reg_I0__4_i_23_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__4_i_24
       (.I0(\I_shift_reg_reg[7]_1 [0]),
        .I1(temp_reg_I0__4_i_25_n_14),
        .O(temp_reg_I0__4_i_24_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 temp_reg_I0__4_i_25
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({temp_reg_I0__4_i_25_n_0,temp_reg_I0__4_i_25_n_1,temp_reg_I0__4_i_25_n_2,temp_reg_I0__4_i_25_n_3,temp_reg_I0__4_i_25_n_4,temp_reg_I0__4_i_25_n_5,temp_reg_I0__4_i_25_n_6,temp_reg_I0__4_i_25_n_7}),
        .DI({\I_shift_reg_reg[8]_17 [6:0],1'b0}),
        .O({temp_reg_I0__4_i_25_n_8,temp_reg_I0__4_i_25_n_9,temp_reg_I0__4_i_25_n_10,temp_reg_I0__4_i_25_n_11,temp_reg_I0__4_i_25_n_12,temp_reg_I0__4_i_25_n_13,temp_reg_I0__4_i_25_n_14,temp_reg_I0__4_i_25_n_15}),
        .S({temp_reg_I0__4_i_38_n_0,temp_reg_I0__4_i_39_n_0,temp_reg_I0__4_i_40_n_0,temp_reg_I0__4_i_41_n_0,temp_reg_I0__4_i_42_n_0,temp_reg_I0__4_i_43_n_0,temp_reg_I0__4_i_44_n_0,temp_reg_I0__3_n_92}));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__4_i_26
       (.I0(temp_reg_I0__3_n_75),
        .I1(temp_reg_I0__3_n_74),
        .O(temp_reg_I0__4_i_26_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__4_i_27
       (.I0(temp_reg_I0__3_n_76),
        .I1(temp_reg_I0__3_n_75),
        .O(temp_reg_I0__4_i_27_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__4_i_28
       (.I0(temp_reg_I0__3_n_77),
        .I1(temp_reg_I0__3_n_76),
        .O(temp_reg_I0__4_i_28_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    temp_reg_I0__4_i_29
       (.I0(temp_reg_I0__3_n_80),
        .O(temp_reg_I0__4_i_29_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 temp_reg_I0__4_i_3
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({temp_reg_I0__4_i_3_n_0,temp_reg_I0__4_i_3_n_1,temp_reg_I0__4_i_3_n_2,temp_reg_I0__4_i_3_n_3,temp_reg_I0__4_i_3_n_4,temp_reg_I0__4_i_3_n_5,temp_reg_I0__4_i_3_n_6,temp_reg_I0__4_i_3_n_7}),
        .DI({\I_shift_reg_reg[7]_1 [6:0],1'b0}),
        .O({temp_reg_I0__4_i_3_n_8,temp_reg_I0__4_i_3_n_9,temp_reg_I0__4_i_3_n_10,temp_reg_I0__4_i_3_n_11,temp_reg_I0__4_i_3_n_12,temp_reg_I0__4_i_3_n_13,temp_reg_I0__4_i_3_n_14,temp_reg_I0__4_i_3_n_15}),
        .S({temp_reg_I0__4_i_18_n_0,temp_reg_I0__4_i_19_n_0,temp_reg_I0__4_i_20_n_0,temp_reg_I0__4_i_21_n_0,temp_reg_I0__4_i_22_n_0,temp_reg_I0__4_i_23_n_0,temp_reg_I0__4_i_24_n_0,temp_reg_I0__4_i_25_n_15}));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__4_i_30
       (.I0(temp_reg_I0__3_n_78),
        .I1(temp_reg_I0__3_n_77),
        .O(temp_reg_I0__4_i_30_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__4_i_31
       (.I0(temp_reg_I0__3_n_79),
        .I1(temp_reg_I0__3_n_78),
        .O(temp_reg_I0__4_i_31_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__4_i_32
       (.I0(temp_reg_I0__3_n_80),
        .I1(temp_reg_I0__3_n_79),
        .O(temp_reg_I0__4_i_32_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__4_i_33
       (.I0(temp_reg_I0__3_n_80),
        .I1(\I_shift_reg_reg[8]_17 [11]),
        .O(temp_reg_I0__4_i_33_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__4_i_34
       (.I0(\I_shift_reg_reg[8]_17 [10]),
        .I1(temp_reg_I0__3_n_81),
        .O(temp_reg_I0__4_i_34_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__4_i_35
       (.I0(\I_shift_reg_reg[8]_17 [9]),
        .I1(temp_reg_I0__3_n_82),
        .O(temp_reg_I0__4_i_35_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__4_i_36
       (.I0(\I_shift_reg_reg[8]_17 [8]),
        .I1(temp_reg_I0__3_n_83),
        .O(temp_reg_I0__4_i_36_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__4_i_37
       (.I0(\I_shift_reg_reg[8]_17 [7]),
        .I1(temp_reg_I0__3_n_84),
        .O(temp_reg_I0__4_i_37_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__4_i_38
       (.I0(\I_shift_reg_reg[8]_17 [6]),
        .I1(temp_reg_I0__3_n_85),
        .O(temp_reg_I0__4_i_38_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__4_i_39
       (.I0(\I_shift_reg_reg[8]_17 [5]),
        .I1(temp_reg_I0__3_n_86),
        .O(temp_reg_I0__4_i_39_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 temp_reg_I0__4_i_4
       (.CI(temp_reg_I0__4_i_5_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_temp_reg_I0__4_i_4_CO_UNCONNECTED[7:2],temp_reg_I0__4_i_4_n_6,temp_reg_I0__4_i_4_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,temp_reg_I0__3_n_76,temp_reg_I0__3_n_77}),
        .O({NLW_temp_reg_I0__4_i_4_O_UNCONNECTED[7:3],temp_reg_I0__4_i_4_n_13,temp_reg_I0__4_i_4_n_14,temp_reg_I0__4_i_4_n_15}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,temp_reg_I0__4_i_26_n_0,temp_reg_I0__4_i_27_n_0,temp_reg_I0__4_i_28_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__4_i_40
       (.I0(\I_shift_reg_reg[8]_17 [4]),
        .I1(temp_reg_I0__3_n_87),
        .O(temp_reg_I0__4_i_40_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__4_i_41
       (.I0(\I_shift_reg_reg[8]_17 [3]),
        .I1(temp_reg_I0__3_n_88),
        .O(temp_reg_I0__4_i_41_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__4_i_42
       (.I0(\I_shift_reg_reg[8]_17 [2]),
        .I1(temp_reg_I0__3_n_89),
        .O(temp_reg_I0__4_i_42_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__4_i_43
       (.I0(\I_shift_reg_reg[8]_17 [1]),
        .I1(temp_reg_I0__3_n_90),
        .O(temp_reg_I0__4_i_43_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__4_i_44
       (.I0(\I_shift_reg_reg[8]_17 [0]),
        .I1(temp_reg_I0__3_n_91),
        .O(temp_reg_I0__4_i_44_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 temp_reg_I0__4_i_5
       (.CI(temp_reg_I0__4_i_25_n_0),
        .CI_TOP(1'b0),
        .CO({temp_reg_I0__4_i_5_n_0,temp_reg_I0__4_i_5_n_1,temp_reg_I0__4_i_5_n_2,temp_reg_I0__4_i_5_n_3,temp_reg_I0__4_i_5_n_4,temp_reg_I0__4_i_5_n_5,temp_reg_I0__4_i_5_n_6,temp_reg_I0__4_i_5_n_7}),
        .DI({temp_reg_I0__3_n_78,temp_reg_I0__3_n_79,temp_reg_I0__3_n_80,temp_reg_I0__4_i_29_n_0,\I_shift_reg_reg[8]_17 [10:7]}),
        .O({temp_reg_I0__4_i_5_n_8,temp_reg_I0__4_i_5_n_9,temp_reg_I0__4_i_5_n_10,temp_reg_I0__4_i_5_n_11,temp_reg_I0__4_i_5_n_12,temp_reg_I0__4_i_5_n_13,temp_reg_I0__4_i_5_n_14,temp_reg_I0__4_i_5_n_15}),
        .S({temp_reg_I0__4_i_30_n_0,temp_reg_I0__4_i_31_n_0,temp_reg_I0__4_i_32_n_0,temp_reg_I0__4_i_33_n_0,temp_reg_I0__4_i_34_n_0,temp_reg_I0__4_i_35_n_0,temp_reg_I0__4_i_36_n_0,temp_reg_I0__4_i_37_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__4_i_6
       (.I0(temp_reg_I0__4_i_4_n_14),
        .I1(temp_reg_I0__4_i_4_n_13),
        .O(temp_reg_I0__4_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__4_i_7
       (.I0(temp_reg_I0__4_i_4_n_15),
        .I1(temp_reg_I0__4_i_4_n_14),
        .O(temp_reg_I0__4_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__4_i_8
       (.I0(temp_reg_I0__4_i_5_n_8),
        .I1(temp_reg_I0__4_i_4_n_15),
        .O(temp_reg_I0__4_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    temp_reg_I0__4_i_9
       (.I0(temp_reg_I0__4_i_5_n_11),
        .O(temp_reg_I0__4_i_9_n_0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    temp_reg_I0__5
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp_reg_I0__5_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\I_shift_reg_reg[3]_15 [11],\I_shift_reg_reg[3]_15 [11],\I_shift_reg_reg[3]_15 [11],\I_shift_reg_reg[3]_15 [11],\I_shift_reg_reg[3]_15 [11],\I_shift_reg_reg[3]_15 [11],\I_shift_reg_reg[3]_15 }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_temp_reg_I0__5_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp_reg_I0__5_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp_reg_I0__5_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(temp_reg_Q0__9_i_1_n_0),
        .CEB2(temp_reg_Q0__9_i_1_n_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_temp_reg_I0__5_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp_reg_I0__5_OVERFLOW_UNCONNECTED),
        .P(NLW_temp_reg_I0__5_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_temp_reg_I0__5_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp_reg_I0__5_PATTERNDETECT_UNCONNECTED),
        .PCIN({temp_reg_I0__4_n_106,temp_reg_I0__4_n_107,temp_reg_I0__4_n_108,temp_reg_I0__4_n_109,temp_reg_I0__4_n_110,temp_reg_I0__4_n_111,temp_reg_I0__4_n_112,temp_reg_I0__4_n_113,temp_reg_I0__4_n_114,temp_reg_I0__4_n_115,temp_reg_I0__4_n_116,temp_reg_I0__4_n_117,temp_reg_I0__4_n_118,temp_reg_I0__4_n_119,temp_reg_I0__4_n_120,temp_reg_I0__4_n_121,temp_reg_I0__4_n_122,temp_reg_I0__4_n_123,temp_reg_I0__4_n_124,temp_reg_I0__4_n_125,temp_reg_I0__4_n_126,temp_reg_I0__4_n_127,temp_reg_I0__4_n_128,temp_reg_I0__4_n_129,temp_reg_I0__4_n_130,temp_reg_I0__4_n_131,temp_reg_I0__4_n_132,temp_reg_I0__4_n_133,temp_reg_I0__4_n_134,temp_reg_I0__4_n_135,temp_reg_I0__4_n_136,temp_reg_I0__4_n_137,temp_reg_I0__4_n_138,temp_reg_I0__4_n_139,temp_reg_I0__4_n_140,temp_reg_I0__4_n_141,temp_reg_I0__4_n_142,temp_reg_I0__4_n_143,temp_reg_I0__4_n_144,temp_reg_I0__4_n_145,temp_reg_I0__4_n_146,temp_reg_I0__4_n_147,temp_reg_I0__4_n_148,temp_reg_I0__4_n_149,temp_reg_I0__4_n_150,temp_reg_I0__4_n_151,temp_reg_I0__4_n_152,temp_reg_I0__4_n_153}),
        .PCOUT({temp_reg_I0__5_n_106,temp_reg_I0__5_n_107,temp_reg_I0__5_n_108,temp_reg_I0__5_n_109,temp_reg_I0__5_n_110,temp_reg_I0__5_n_111,temp_reg_I0__5_n_112,temp_reg_I0__5_n_113,temp_reg_I0__5_n_114,temp_reg_I0__5_n_115,temp_reg_I0__5_n_116,temp_reg_I0__5_n_117,temp_reg_I0__5_n_118,temp_reg_I0__5_n_119,temp_reg_I0__5_n_120,temp_reg_I0__5_n_121,temp_reg_I0__5_n_122,temp_reg_I0__5_n_123,temp_reg_I0__5_n_124,temp_reg_I0__5_n_125,temp_reg_I0__5_n_126,temp_reg_I0__5_n_127,temp_reg_I0__5_n_128,temp_reg_I0__5_n_129,temp_reg_I0__5_n_130,temp_reg_I0__5_n_131,temp_reg_I0__5_n_132,temp_reg_I0__5_n_133,temp_reg_I0__5_n_134,temp_reg_I0__5_n_135,temp_reg_I0__5_n_136,temp_reg_I0__5_n_137,temp_reg_I0__5_n_138,temp_reg_I0__5_n_139,temp_reg_I0__5_n_140,temp_reg_I0__5_n_141,temp_reg_I0__5_n_142,temp_reg_I0__5_n_143,temp_reg_I0__5_n_144,temp_reg_I0__5_n_145,temp_reg_I0__5_n_146,temp_reg_I0__5_n_147,temp_reg_I0__5_n_148,temp_reg_I0__5_n_149,temp_reg_I0__5_n_150,temp_reg_I0__5_n_151,temp_reg_I0__5_n_152,temp_reg_I0__5_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_temp_reg_I0__5_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_temp_reg_I0__5_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    temp_reg_I0__6
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp_reg_I0__6_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\I_shift_reg_reg[2]_14 [11],\I_shift_reg_reg[2]_14 [11],\I_shift_reg_reg[2]_14 [11],\I_shift_reg_reg[2]_14 [11],\I_shift_reg_reg[2]_14 [11],\I_shift_reg_reg[2]_14 [11],\I_shift_reg_reg[2]_14 }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_temp_reg_I0__6_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp_reg_I0__6_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp_reg_I0__6_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(temp_reg_Q0__9_i_1_n_0),
        .CEB2(temp_reg_Q0__9_i_1_n_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_temp_reg_I0__6_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp_reg_I0__6_OVERFLOW_UNCONNECTED),
        .P({NLW_temp_reg_I0__6_P_UNCONNECTED[47:32],temp_reg_I0__6_n_74,temp_reg_I0__6_n_75,temp_reg_I0__6_n_76,temp_reg_I0__6_n_77,temp_reg_I0__6_n_78,temp_reg_I0__6_n_79,temp_reg_I0__6_n_80,temp_reg_I0__6_n_81,temp_reg_I0__6_n_82,temp_reg_I0__6_n_83,temp_reg_I0__6_n_84,temp_reg_I0__6_n_85,temp_reg_I0__6_n_86,temp_reg_I0__6_n_87,temp_reg_I0__6_n_88,temp_reg_I0__6_n_89,temp_reg_I0__6_n_90,temp_reg_I0__6_n_91,temp_reg_I0__6_n_92,temp_reg_I0__6_n_93,temp_reg_I0__6_n_94,temp_reg_I0__6_n_95,temp_reg_I0__6_n_96,temp_reg_I0__6_n_97,temp_reg_I0__6_n_98,temp_reg_I0__6_n_99,temp_reg_I0__6_n_100,temp_reg_I0__6_n_101,temp_reg_I0__6_n_102,temp_reg_I0__6_n_103,temp_reg_I0__6_n_104,temp_reg_I0__6_n_105}),
        .PATTERNBDETECT(NLW_temp_reg_I0__6_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp_reg_I0__6_PATTERNDETECT_UNCONNECTED),
        .PCIN({temp_reg_I0__5_n_106,temp_reg_I0__5_n_107,temp_reg_I0__5_n_108,temp_reg_I0__5_n_109,temp_reg_I0__5_n_110,temp_reg_I0__5_n_111,temp_reg_I0__5_n_112,temp_reg_I0__5_n_113,temp_reg_I0__5_n_114,temp_reg_I0__5_n_115,temp_reg_I0__5_n_116,temp_reg_I0__5_n_117,temp_reg_I0__5_n_118,temp_reg_I0__5_n_119,temp_reg_I0__5_n_120,temp_reg_I0__5_n_121,temp_reg_I0__5_n_122,temp_reg_I0__5_n_123,temp_reg_I0__5_n_124,temp_reg_I0__5_n_125,temp_reg_I0__5_n_126,temp_reg_I0__5_n_127,temp_reg_I0__5_n_128,temp_reg_I0__5_n_129,temp_reg_I0__5_n_130,temp_reg_I0__5_n_131,temp_reg_I0__5_n_132,temp_reg_I0__5_n_133,temp_reg_I0__5_n_134,temp_reg_I0__5_n_135,temp_reg_I0__5_n_136,temp_reg_I0__5_n_137,temp_reg_I0__5_n_138,temp_reg_I0__5_n_139,temp_reg_I0__5_n_140,temp_reg_I0__5_n_141,temp_reg_I0__5_n_142,temp_reg_I0__5_n_143,temp_reg_I0__5_n_144,temp_reg_I0__5_n_145,temp_reg_I0__5_n_146,temp_reg_I0__5_n_147,temp_reg_I0__5_n_148,temp_reg_I0__5_n_149,temp_reg_I0__5_n_150,temp_reg_I0__5_n_151,temp_reg_I0__5_n_152,temp_reg_I0__5_n_153}),
        .PCOUT(NLW_temp_reg_I0__6_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_temp_reg_I0__6_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_temp_reg_I0__6_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    temp_reg_I0__7
       (.A({\I_shift_reg_reg[0]_12 [11],\I_shift_reg_reg[0]_12 [11],\I_shift_reg_reg[0]_12 [11],\I_shift_reg_reg[0]_12 [11],\I_shift_reg_reg[0]_12 [11],\I_shift_reg_reg[0]_12 [11],\I_shift_reg_reg[0]_12 [11],\I_shift_reg_reg[0]_12 [11],\I_shift_reg_reg[0]_12 [11],\I_shift_reg_reg[0]_12 [11],\I_shift_reg_reg[0]_12 [11],\I_shift_reg_reg[0]_12 [11],\I_shift_reg_reg[0]_12 [11],\I_shift_reg_reg[0]_12 [11],\I_shift_reg_reg[0]_12 [11],\I_shift_reg_reg[0]_12 [11],\I_shift_reg_reg[0]_12 [11],\I_shift_reg_reg[0]_12 [11],\I_shift_reg_reg[0]_12 }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp_reg_I0__7_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_temp_reg_I0__7_BCOUT_UNCONNECTED[17:0]),
        .C({temp_reg_I0__10[31],temp_reg_I0__10[31],temp_reg_I0__10[31],temp_reg_I0__10[31],temp_reg_I0__10[31],temp_reg_I0__10[31],temp_reg_I0__10[31],temp_reg_I0__10[31],temp_reg_I0__10[31],temp_reg_I0__10[31],temp_reg_I0__10[31],temp_reg_I0__10[31],temp_reg_I0__10[31],temp_reg_I0__10[31],temp_reg_I0__10[31],temp_reg_I0__10[31],temp_reg_I0__10,temp_reg_I0__6_n_94,temp_reg_I0__6_n_95,temp_reg_I0__6_n_96,temp_reg_I0__6_n_97,temp_reg_I0__6_n_98,temp_reg_I0__6_n_99,temp_reg_I0__6_n_100,temp_reg_I0__6_n_101,temp_reg_I0__6_n_102,temp_reg_I0__6_n_103,temp_reg_I0__6_n_104,temp_reg_I0__6_n_105}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp_reg_I0__7_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp_reg_I0__7_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(temp_reg_Q0__9_i_1_n_0),
        .CEA2(temp_reg_Q0__9_i_1_n_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_temp_reg_I0__7_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp_reg_I0__7_OVERFLOW_UNCONNECTED),
        .P(NLW_temp_reg_I0__7_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_temp_reg_I0__7_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp_reg_I0__7_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({temp_reg_I0__7_n_106,temp_reg_I0__7_n_107,temp_reg_I0__7_n_108,temp_reg_I0__7_n_109,temp_reg_I0__7_n_110,temp_reg_I0__7_n_111,temp_reg_I0__7_n_112,temp_reg_I0__7_n_113,temp_reg_I0__7_n_114,temp_reg_I0__7_n_115,temp_reg_I0__7_n_116,temp_reg_I0__7_n_117,temp_reg_I0__7_n_118,temp_reg_I0__7_n_119,temp_reg_I0__7_n_120,temp_reg_I0__7_n_121,temp_reg_I0__7_n_122,temp_reg_I0__7_n_123,temp_reg_I0__7_n_124,temp_reg_I0__7_n_125,temp_reg_I0__7_n_126,temp_reg_I0__7_n_127,temp_reg_I0__7_n_128,temp_reg_I0__7_n_129,temp_reg_I0__7_n_130,temp_reg_I0__7_n_131,temp_reg_I0__7_n_132,temp_reg_I0__7_n_133,temp_reg_I0__7_n_134,temp_reg_I0__7_n_135,temp_reg_I0__7_n_136,temp_reg_I0__7_n_137,temp_reg_I0__7_n_138,temp_reg_I0__7_n_139,temp_reg_I0__7_n_140,temp_reg_I0__7_n_141,temp_reg_I0__7_n_142,temp_reg_I0__7_n_143,temp_reg_I0__7_n_144,temp_reg_I0__7_n_145,temp_reg_I0__7_n_146,temp_reg_I0__7_n_147,temp_reg_I0__7_n_148,temp_reg_I0__7_n_149,temp_reg_I0__7_n_150,temp_reg_I0__7_n_151,temp_reg_I0__7_n_152,temp_reg_I0__7_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_temp_reg_I0__7_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_temp_reg_I0__7_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 temp_reg_I0__7_i_1
       (.CI(temp_reg_I0__7_i_2_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_temp_reg_I0__7_i_1_CO_UNCONNECTED[7:3],temp_reg_I0__7_i_1_n_5,temp_reg_I0__7_i_1_n_6,temp_reg_I0__7_i_1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,temp_reg_I0__6_n_76,temp_reg_I0__6_n_77,temp_reg_I0__6_n_78}),
        .O({NLW_temp_reg_I0__7_i_1_O_UNCONNECTED[7:4],temp_reg_I0__10[31:28]}),
        .S({1'b0,1'b0,1'b0,1'b0,temp_reg_I0__7_i_4_n_0,temp_reg_I0__7_i_5_n_0,temp_reg_I0__7_i_6_n_0,temp_reg_I0__7_i_7_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__7_i_10
       (.I0(temp_reg_I0__6_n_80),
        .I1(temp_reg_I0__6_n_79),
        .O(temp_reg_I0__7_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__7_i_11
       (.I0(temp_reg_I0__6_n_81),
        .I1(temp_reg_I0__6_n_80),
        .O(temp_reg_I0__7_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__7_i_12
       (.I0(temp_reg_I0__6_n_81),
        .I1(\I_shift_reg_reg[3]_15 [11]),
        .O(temp_reg_I0__7_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__7_i_13
       (.I0(\I_shift_reg_reg[3]_15 [10]),
        .I1(temp_reg_I0__6_n_82),
        .O(temp_reg_I0__7_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__7_i_14
       (.I0(\I_shift_reg_reg[3]_15 [9]),
        .I1(temp_reg_I0__6_n_83),
        .O(temp_reg_I0__7_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__7_i_15
       (.I0(\I_shift_reg_reg[3]_15 [8]),
        .I1(temp_reg_I0__6_n_84),
        .O(temp_reg_I0__7_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__7_i_16
       (.I0(\I_shift_reg_reg[3]_15 [7]),
        .I1(temp_reg_I0__6_n_85),
        .O(temp_reg_I0__7_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__7_i_17
       (.I0(\I_shift_reg_reg[3]_15 [6]),
        .I1(temp_reg_I0__6_n_86),
        .O(temp_reg_I0__7_i_17_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__7_i_18
       (.I0(\I_shift_reg_reg[3]_15 [5]),
        .I1(temp_reg_I0__6_n_87),
        .O(temp_reg_I0__7_i_18_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__7_i_19
       (.I0(\I_shift_reg_reg[3]_15 [4]),
        .I1(temp_reg_I0__6_n_88),
        .O(temp_reg_I0__7_i_19_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 temp_reg_I0__7_i_2
       (.CI(temp_reg_I0__7_i_3_n_0),
        .CI_TOP(1'b0),
        .CO({temp_reg_I0__7_i_2_n_0,temp_reg_I0__7_i_2_n_1,temp_reg_I0__7_i_2_n_2,temp_reg_I0__7_i_2_n_3,temp_reg_I0__7_i_2_n_4,temp_reg_I0__7_i_2_n_5,temp_reg_I0__7_i_2_n_6,temp_reg_I0__7_i_2_n_7}),
        .DI({temp_reg_I0__6_n_79,temp_reg_I0__6_n_80,temp_reg_I0__6_n_81,temp_reg_I0__7_i_8_n_0,\I_shift_reg_reg[3]_15 [10:7]}),
        .O(temp_reg_I0__10[27:20]),
        .S({temp_reg_I0__7_i_9_n_0,temp_reg_I0__7_i_10_n_0,temp_reg_I0__7_i_11_n_0,temp_reg_I0__7_i_12_n_0,temp_reg_I0__7_i_13_n_0,temp_reg_I0__7_i_14_n_0,temp_reg_I0__7_i_15_n_0,temp_reg_I0__7_i_16_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__7_i_20
       (.I0(\I_shift_reg_reg[3]_15 [3]),
        .I1(temp_reg_I0__6_n_89),
        .O(temp_reg_I0__7_i_20_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__7_i_21
       (.I0(\I_shift_reg_reg[3]_15 [2]),
        .I1(temp_reg_I0__6_n_90),
        .O(temp_reg_I0__7_i_21_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__7_i_22
       (.I0(\I_shift_reg_reg[3]_15 [1]),
        .I1(temp_reg_I0__6_n_91),
        .O(temp_reg_I0__7_i_22_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_I0__7_i_23
       (.I0(\I_shift_reg_reg[3]_15 [0]),
        .I1(temp_reg_I0__6_n_92),
        .O(temp_reg_I0__7_i_23_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 temp_reg_I0__7_i_3
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({temp_reg_I0__7_i_3_n_0,temp_reg_I0__7_i_3_n_1,temp_reg_I0__7_i_3_n_2,temp_reg_I0__7_i_3_n_3,temp_reg_I0__7_i_3_n_4,temp_reg_I0__7_i_3_n_5,temp_reg_I0__7_i_3_n_6,temp_reg_I0__7_i_3_n_7}),
        .DI({\I_shift_reg_reg[3]_15 [6:0],1'b0}),
        .O(temp_reg_I0__10[19:12]),
        .S({temp_reg_I0__7_i_17_n_0,temp_reg_I0__7_i_18_n_0,temp_reg_I0__7_i_19_n_0,temp_reg_I0__7_i_20_n_0,temp_reg_I0__7_i_21_n_0,temp_reg_I0__7_i_22_n_0,temp_reg_I0__7_i_23_n_0,temp_reg_I0__6_n_93}));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__7_i_4
       (.I0(temp_reg_I0__6_n_75),
        .I1(temp_reg_I0__6_n_74),
        .O(temp_reg_I0__7_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__7_i_5
       (.I0(temp_reg_I0__6_n_76),
        .I1(temp_reg_I0__6_n_75),
        .O(temp_reg_I0__7_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__7_i_6
       (.I0(temp_reg_I0__6_n_77),
        .I1(temp_reg_I0__6_n_76),
        .O(temp_reg_I0__7_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__7_i_7
       (.I0(temp_reg_I0__6_n_78),
        .I1(temp_reg_I0__6_n_77),
        .O(temp_reg_I0__7_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    temp_reg_I0__7_i_8
       (.I0(temp_reg_I0__6_n_81),
        .O(temp_reg_I0__7_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_I0__7_i_9
       (.I0(temp_reg_I0__6_n_79),
        .I1(temp_reg_I0__6_n_78),
        .O(temp_reg_I0__7_i_9_n_0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    temp_reg_I0__8
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp_reg_I0__8_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({I_input[11],I_input[11],I_input[11],I_input[11],I_input[11],I_input[11],I_input}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_temp_reg_I0__8_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp_reg_I0__8_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp_reg_I0__8_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(temp_reg_Q0__9_i_1_n_0),
        .CEB2(temp_reg_Q0__9_i_1_n_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_temp_reg_I0__8_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp_reg_I0__8_OVERFLOW_UNCONNECTED),
        .P(NLW_temp_reg_I0__8_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_temp_reg_I0__8_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp_reg_I0__8_PATTERNDETECT_UNCONNECTED),
        .PCIN({temp_reg_I0__7_n_106,temp_reg_I0__7_n_107,temp_reg_I0__7_n_108,temp_reg_I0__7_n_109,temp_reg_I0__7_n_110,temp_reg_I0__7_n_111,temp_reg_I0__7_n_112,temp_reg_I0__7_n_113,temp_reg_I0__7_n_114,temp_reg_I0__7_n_115,temp_reg_I0__7_n_116,temp_reg_I0__7_n_117,temp_reg_I0__7_n_118,temp_reg_I0__7_n_119,temp_reg_I0__7_n_120,temp_reg_I0__7_n_121,temp_reg_I0__7_n_122,temp_reg_I0__7_n_123,temp_reg_I0__7_n_124,temp_reg_I0__7_n_125,temp_reg_I0__7_n_126,temp_reg_I0__7_n_127,temp_reg_I0__7_n_128,temp_reg_I0__7_n_129,temp_reg_I0__7_n_130,temp_reg_I0__7_n_131,temp_reg_I0__7_n_132,temp_reg_I0__7_n_133,temp_reg_I0__7_n_134,temp_reg_I0__7_n_135,temp_reg_I0__7_n_136,temp_reg_I0__7_n_137,temp_reg_I0__7_n_138,temp_reg_I0__7_n_139,temp_reg_I0__7_n_140,temp_reg_I0__7_n_141,temp_reg_I0__7_n_142,temp_reg_I0__7_n_143,temp_reg_I0__7_n_144,temp_reg_I0__7_n_145,temp_reg_I0__7_n_146,temp_reg_I0__7_n_147,temp_reg_I0__7_n_148,temp_reg_I0__7_n_149,temp_reg_I0__7_n_150,temp_reg_I0__7_n_151,temp_reg_I0__7_n_152,temp_reg_I0__7_n_153}),
        .PCOUT({temp_reg_I0__8_n_106,temp_reg_I0__8_n_107,temp_reg_I0__8_n_108,temp_reg_I0__8_n_109,temp_reg_I0__8_n_110,temp_reg_I0__8_n_111,temp_reg_I0__8_n_112,temp_reg_I0__8_n_113,temp_reg_I0__8_n_114,temp_reg_I0__8_n_115,temp_reg_I0__8_n_116,temp_reg_I0__8_n_117,temp_reg_I0__8_n_118,temp_reg_I0__8_n_119,temp_reg_I0__8_n_120,temp_reg_I0__8_n_121,temp_reg_I0__8_n_122,temp_reg_I0__8_n_123,temp_reg_I0__8_n_124,temp_reg_I0__8_n_125,temp_reg_I0__8_n_126,temp_reg_I0__8_n_127,temp_reg_I0__8_n_128,temp_reg_I0__8_n_129,temp_reg_I0__8_n_130,temp_reg_I0__8_n_131,temp_reg_I0__8_n_132,temp_reg_I0__8_n_133,temp_reg_I0__8_n_134,temp_reg_I0__8_n_135,temp_reg_I0__8_n_136,temp_reg_I0__8_n_137,temp_reg_I0__8_n_138,temp_reg_I0__8_n_139,temp_reg_I0__8_n_140,temp_reg_I0__8_n_141,temp_reg_I0__8_n_142,temp_reg_I0__8_n_143,temp_reg_I0__8_n_144,temp_reg_I0__8_n_145,temp_reg_I0__8_n_146,temp_reg_I0__8_n_147,temp_reg_I0__8_n_148,temp_reg_I0__8_n_149,temp_reg_I0__8_n_150,temp_reg_I0__8_n_151,temp_reg_I0__8_n_152,temp_reg_I0__8_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_temp_reg_I0__8_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_temp_reg_I0__8_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    temp_reg_I0__9
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp_reg_I0__9_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({I_input[11],I_input[11],I_input[11],I_input[11],I_input[11],I_input[11],I_input}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_temp_reg_I0__9_BCOUT_UNCONNECTED[17:0]),
        .C({temp_reg_I[31],temp_reg_I[31],temp_reg_I[31],temp_reg_I[31],temp_reg_I[31],temp_reg_I[31],temp_reg_I[31],temp_reg_I[31],temp_reg_I[31],temp_reg_I[31],temp_reg_I[31],temp_reg_I[31],temp_reg_I[31],temp_reg_I[31],temp_reg_I[31],temp_reg_I[31],temp_reg_I,I_output}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp_reg_I0__9_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp_reg_I0__9_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(temp_reg_Q0__9_i_1_n_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_temp_reg_I0__9_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp_reg_I0__9_OVERFLOW_UNCONNECTED),
        .P({temp_reg_I0__9_n_58,temp_reg_I0__9_n_59,temp_reg_I0__9_n_60,temp_reg_I0__9_n_61,temp_reg_I0__9_n_62,temp_reg_I0__9_n_63,temp_reg_I0__9_n_64,temp_reg_I0__9_n_65,temp_reg_I0__9_n_66,temp_reg_I0__9_n_67,temp_reg_I0__9_n_68,temp_reg_I0__9_n_69,temp_reg_I0__9_n_70,temp_reg_I0__9_n_71,temp_reg_I0__9_n_72,temp_reg_I0__9_n_73,temp_reg_I,I_output}),
        .PATTERNBDETECT(NLW_temp_reg_I0__9_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp_reg_I0__9_PATTERNDETECT_UNCONNECTED),
        .PCIN({temp_reg_I0__8_n_106,temp_reg_I0__8_n_107,temp_reg_I0__8_n_108,temp_reg_I0__8_n_109,temp_reg_I0__8_n_110,temp_reg_I0__8_n_111,temp_reg_I0__8_n_112,temp_reg_I0__8_n_113,temp_reg_I0__8_n_114,temp_reg_I0__8_n_115,temp_reg_I0__8_n_116,temp_reg_I0__8_n_117,temp_reg_I0__8_n_118,temp_reg_I0__8_n_119,temp_reg_I0__8_n_120,temp_reg_I0__8_n_121,temp_reg_I0__8_n_122,temp_reg_I0__8_n_123,temp_reg_I0__8_n_124,temp_reg_I0__8_n_125,temp_reg_I0__8_n_126,temp_reg_I0__8_n_127,temp_reg_I0__8_n_128,temp_reg_I0__8_n_129,temp_reg_I0__8_n_130,temp_reg_I0__8_n_131,temp_reg_I0__8_n_132,temp_reg_I0__8_n_133,temp_reg_I0__8_n_134,temp_reg_I0__8_n_135,temp_reg_I0__8_n_136,temp_reg_I0__8_n_137,temp_reg_I0__8_n_138,temp_reg_I0__8_n_139,temp_reg_I0__8_n_140,temp_reg_I0__8_n_141,temp_reg_I0__8_n_142,temp_reg_I0__8_n_143,temp_reg_I0__8_n_144,temp_reg_I0__8_n_145,temp_reg_I0__8_n_146,temp_reg_I0__8_n_147,temp_reg_I0__8_n_148,temp_reg_I0__8_n_149,temp_reg_I0__8_n_150,temp_reg_I0__8_n_151,temp_reg_I0__8_n_152,temp_reg_I0__8_n_153}),
        .PCOUT(NLW_temp_reg_I0__9_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_temp_reg_I0__9_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_temp_reg_I0__9_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    temp_reg_I2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp_reg_I2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\I_shift_reg_reg[12]_21 [11],\I_shift_reg_reg[12]_21 [11],\I_shift_reg_reg[12]_21 [11],\I_shift_reg_reg[12]_21 [11],\I_shift_reg_reg[12]_21 [11],\I_shift_reg_reg[12]_21 [11],\I_shift_reg_reg[12]_21 }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT({temp_reg_I2_n_6,temp_reg_I2_n_7,temp_reg_I2_n_8,temp_reg_I2_n_9,temp_reg_I2_n_10,temp_reg_I2_n_11,temp_reg_I2_n_12,temp_reg_I2_n_13,temp_reg_I2_n_14,temp_reg_I2_n_15,temp_reg_I2_n_16,temp_reg_I2_n_17,temp_reg_I2_n_18,temp_reg_I2_n_19,temp_reg_I2_n_20,temp_reg_I2_n_21,temp_reg_I2_n_22,temp_reg_I2_n_23}),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp_reg_I2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp_reg_I2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(temp_reg_Q0__9_i_1_n_0),
        .CEB2(temp_reg_Q0__9_i_1_n_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_temp_reg_I2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp_reg_I2_OVERFLOW_UNCONNECTED),
        .P(NLW_temp_reg_I2_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_temp_reg_I2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp_reg_I2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({temp_reg_I2_n_106,temp_reg_I2_n_107,temp_reg_I2_n_108,temp_reg_I2_n_109,temp_reg_I2_n_110,temp_reg_I2_n_111,temp_reg_I2_n_112,temp_reg_I2_n_113,temp_reg_I2_n_114,temp_reg_I2_n_115,temp_reg_I2_n_116,temp_reg_I2_n_117,temp_reg_I2_n_118,temp_reg_I2_n_119,temp_reg_I2_n_120,temp_reg_I2_n_121,temp_reg_I2_n_122,temp_reg_I2_n_123,temp_reg_I2_n_124,temp_reg_I2_n_125,temp_reg_I2_n_126,temp_reg_I2_n_127,temp_reg_I2_n_128,temp_reg_I2_n_129,temp_reg_I2_n_130,temp_reg_I2_n_131,temp_reg_I2_n_132,temp_reg_I2_n_133,temp_reg_I2_n_134,temp_reg_I2_n_135,temp_reg_I2_n_136,temp_reg_I2_n_137,temp_reg_I2_n_138,temp_reg_I2_n_139,temp_reg_I2_n_140,temp_reg_I2_n_141,temp_reg_I2_n_142,temp_reg_I2_n_143,temp_reg_I2_n_144,temp_reg_I2_n_145,temp_reg_I2_n_146,temp_reg_I2_n_147,temp_reg_I2_n_148,temp_reg_I2_n_149,temp_reg_I2_n_150,temp_reg_I2_n_151,temp_reg_I2_n_152,temp_reg_I2_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_temp_reg_I2_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_temp_reg_I2_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("CASCADE"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    temp_reg_Q0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp_reg_Q0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({temp_reg_Q2_n_6,temp_reg_Q2_n_7,temp_reg_Q2_n_8,temp_reg_Q2_n_9,temp_reg_Q2_n_10,temp_reg_Q2_n_11,temp_reg_Q2_n_12,temp_reg_Q2_n_13,temp_reg_Q2_n_14,temp_reg_Q2_n_15,temp_reg_Q2_n_16,temp_reg_Q2_n_17,temp_reg_Q2_n_18,temp_reg_Q2_n_19,temp_reg_Q2_n_20,temp_reg_Q2_n_21,temp_reg_Q2_n_22,temp_reg_Q2_n_23}),
        .BCOUT(NLW_temp_reg_Q0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp_reg_Q0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp_reg_Q0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(temp_reg_Q0__9_i_1_n_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_temp_reg_Q0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp_reg_Q0_OVERFLOW_UNCONNECTED),
        .P(NLW_temp_reg_Q0_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_temp_reg_Q0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp_reg_Q0_PATTERNDETECT_UNCONNECTED),
        .PCIN({temp_reg_Q2_n_106,temp_reg_Q2_n_107,temp_reg_Q2_n_108,temp_reg_Q2_n_109,temp_reg_Q2_n_110,temp_reg_Q2_n_111,temp_reg_Q2_n_112,temp_reg_Q2_n_113,temp_reg_Q2_n_114,temp_reg_Q2_n_115,temp_reg_Q2_n_116,temp_reg_Q2_n_117,temp_reg_Q2_n_118,temp_reg_Q2_n_119,temp_reg_Q2_n_120,temp_reg_Q2_n_121,temp_reg_Q2_n_122,temp_reg_Q2_n_123,temp_reg_Q2_n_124,temp_reg_Q2_n_125,temp_reg_Q2_n_126,temp_reg_Q2_n_127,temp_reg_Q2_n_128,temp_reg_Q2_n_129,temp_reg_Q2_n_130,temp_reg_Q2_n_131,temp_reg_Q2_n_132,temp_reg_Q2_n_133,temp_reg_Q2_n_134,temp_reg_Q2_n_135,temp_reg_Q2_n_136,temp_reg_Q2_n_137,temp_reg_Q2_n_138,temp_reg_Q2_n_139,temp_reg_Q2_n_140,temp_reg_Q2_n_141,temp_reg_Q2_n_142,temp_reg_Q2_n_143,temp_reg_Q2_n_144,temp_reg_Q2_n_145,temp_reg_Q2_n_146,temp_reg_Q2_n_147,temp_reg_Q2_n_148,temp_reg_Q2_n_149,temp_reg_Q2_n_150,temp_reg_Q2_n_151,temp_reg_Q2_n_152,temp_reg_Q2_n_153}),
        .PCOUT({temp_reg_Q0_n_106,temp_reg_Q0_n_107,temp_reg_Q0_n_108,temp_reg_Q0_n_109,temp_reg_Q0_n_110,temp_reg_Q0_n_111,temp_reg_Q0_n_112,temp_reg_Q0_n_113,temp_reg_Q0_n_114,temp_reg_Q0_n_115,temp_reg_Q0_n_116,temp_reg_Q0_n_117,temp_reg_Q0_n_118,temp_reg_Q0_n_119,temp_reg_Q0_n_120,temp_reg_Q0_n_121,temp_reg_Q0_n_122,temp_reg_Q0_n_123,temp_reg_Q0_n_124,temp_reg_Q0_n_125,temp_reg_Q0_n_126,temp_reg_Q0_n_127,temp_reg_Q0_n_128,temp_reg_Q0_n_129,temp_reg_Q0_n_130,temp_reg_Q0_n_131,temp_reg_Q0_n_132,temp_reg_Q0_n_133,temp_reg_Q0_n_134,temp_reg_Q0_n_135,temp_reg_Q0_n_136,temp_reg_Q0_n_137,temp_reg_Q0_n_138,temp_reg_Q0_n_139,temp_reg_Q0_n_140,temp_reg_Q0_n_141,temp_reg_Q0_n_142,temp_reg_Q0_n_143,temp_reg_Q0_n_144,temp_reg_Q0_n_145,temp_reg_Q0_n_146,temp_reg_Q0_n_147,temp_reg_Q0_n_148,temp_reg_Q0_n_149,temp_reg_Q0_n_150,temp_reg_Q0_n_151,temp_reg_Q0_n_152,temp_reg_Q0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_temp_reg_Q0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_temp_reg_Q0_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    temp_reg_Q0__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp_reg_Q0__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\Q_shift_reg_reg[11]_10 [11],\Q_shift_reg_reg[11]_10 [11],\Q_shift_reg_reg[11]_10 [11],\Q_shift_reg_reg[11]_10 [11],\Q_shift_reg_reg[11]_10 [11],\Q_shift_reg_reg[11]_10 [11],\Q_shift_reg_reg[11]_10 }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_temp_reg_Q0__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp_reg_Q0__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp_reg_Q0__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(temp_reg_Q0__9_i_1_n_0),
        .CEB2(temp_reg_Q0__9_i_1_n_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_temp_reg_Q0__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp_reg_Q0__0_OVERFLOW_UNCONNECTED),
        .P({NLW_temp_reg_Q0__0_P_UNCONNECTED[47:32],temp_reg_Q0__0_n_74,temp_reg_Q0__0_n_75,temp_reg_Q0__0_n_76,temp_reg_Q0__0_n_77,temp_reg_Q0__0_n_78,temp_reg_Q0__0_n_79,temp_reg_Q0__0_n_80,temp_reg_Q0__0_n_81,temp_reg_Q0__0_n_82,temp_reg_Q0__0_n_83,temp_reg_Q0__0_n_84,temp_reg_Q0__0_n_85,temp_reg_Q0__0_n_86,temp_reg_Q0__0_n_87,temp_reg_Q0__0_n_88,temp_reg_Q0__0_n_89,temp_reg_Q0__0_n_90,temp_reg_Q0__0_n_91,temp_reg_Q0__0_n_92,temp_reg_Q0__0_n_93,temp_reg_Q0__0_n_94,temp_reg_Q0__0_n_95,temp_reg_Q0__0_n_96,temp_reg_Q0__0_n_97,temp_reg_Q0__0_n_98,temp_reg_Q0__0_n_99,temp_reg_Q0__0_n_100,temp_reg_Q0__0_n_101,temp_reg_Q0__0_n_102,temp_reg_Q0__0_n_103,temp_reg_Q0__0_n_104,temp_reg_Q0__0_n_105}),
        .PATTERNBDETECT(NLW_temp_reg_Q0__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp_reg_Q0__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({temp_reg_Q0_n_106,temp_reg_Q0_n_107,temp_reg_Q0_n_108,temp_reg_Q0_n_109,temp_reg_Q0_n_110,temp_reg_Q0_n_111,temp_reg_Q0_n_112,temp_reg_Q0_n_113,temp_reg_Q0_n_114,temp_reg_Q0_n_115,temp_reg_Q0_n_116,temp_reg_Q0_n_117,temp_reg_Q0_n_118,temp_reg_Q0_n_119,temp_reg_Q0_n_120,temp_reg_Q0_n_121,temp_reg_Q0_n_122,temp_reg_Q0_n_123,temp_reg_Q0_n_124,temp_reg_Q0_n_125,temp_reg_Q0_n_126,temp_reg_Q0_n_127,temp_reg_Q0_n_128,temp_reg_Q0_n_129,temp_reg_Q0_n_130,temp_reg_Q0_n_131,temp_reg_Q0_n_132,temp_reg_Q0_n_133,temp_reg_Q0_n_134,temp_reg_Q0_n_135,temp_reg_Q0_n_136,temp_reg_Q0_n_137,temp_reg_Q0_n_138,temp_reg_Q0_n_139,temp_reg_Q0_n_140,temp_reg_Q0_n_141,temp_reg_Q0_n_142,temp_reg_Q0_n_143,temp_reg_Q0_n_144,temp_reg_Q0_n_145,temp_reg_Q0_n_146,temp_reg_Q0_n_147,temp_reg_Q0_n_148,temp_reg_Q0_n_149,temp_reg_Q0_n_150,temp_reg_Q0_n_151,temp_reg_Q0_n_152,temp_reg_Q0_n_153}),
        .PCOUT(NLW_temp_reg_Q0__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_temp_reg_Q0__0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_temp_reg_Q0__0_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    temp_reg_Q0__1
       (.A({\Q_shift_reg_reg[9]_8 [11],\Q_shift_reg_reg[9]_8 [11],\Q_shift_reg_reg[9]_8 [11],\Q_shift_reg_reg[9]_8 [11],\Q_shift_reg_reg[9]_8 [11],\Q_shift_reg_reg[9]_8 [11],\Q_shift_reg_reg[9]_8 [11],\Q_shift_reg_reg[9]_8 [11],\Q_shift_reg_reg[9]_8 [11],\Q_shift_reg_reg[9]_8 [11],\Q_shift_reg_reg[9]_8 [11],\Q_shift_reg_reg[9]_8 [11],\Q_shift_reg_reg[9]_8 [11],\Q_shift_reg_reg[9]_8 [11],\Q_shift_reg_reg[9]_8 [11],\Q_shift_reg_reg[9]_8 [11],\Q_shift_reg_reg[9]_8 [11],\Q_shift_reg_reg[9]_8 [11],\Q_shift_reg_reg[9]_8 }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp_reg_Q0__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_temp_reg_Q0__1_BCOUT_UNCONNECTED[17:0]),
        .C({temp_reg_Q0__1_i_1_n_12,temp_reg_Q0__1_i_1_n_12,temp_reg_Q0__1_i_1_n_12,temp_reg_Q0__1_i_1_n_12,temp_reg_Q0__1_i_1_n_12,temp_reg_Q0__1_i_1_n_12,temp_reg_Q0__1_i_1_n_12,temp_reg_Q0__1_i_1_n_12,temp_reg_Q0__1_i_1_n_12,temp_reg_Q0__1_i_1_n_12,temp_reg_Q0__1_i_1_n_12,temp_reg_Q0__1_i_1_n_12,temp_reg_Q0__1_i_1_n_12,temp_reg_Q0__1_i_1_n_12,temp_reg_Q0__1_i_1_n_12,temp_reg_Q0__1_i_1_n_12,temp_reg_Q0__1_i_1_n_12,temp_reg_Q0__1_i_1_n_13,temp_reg_Q0__1_i_1_n_14,temp_reg_Q0__1_i_1_n_15,temp_reg_Q0__1_i_2_n_8,temp_reg_Q0__1_i_2_n_9,temp_reg_Q0__1_i_2_n_10,temp_reg_Q0__1_i_2_n_11,temp_reg_Q0__1_i_2_n_12,temp_reg_Q0__1_i_2_n_13,temp_reg_Q0__1_i_2_n_14,temp_reg_Q0__1_i_2_n_15,temp_reg_Q0__1_i_3_n_8,temp_reg_Q0__1_i_3_n_9,temp_reg_Q0__1_i_3_n_10,temp_reg_Q0__1_i_3_n_11,temp_reg_Q0__1_i_3_n_12,temp_reg_Q0__1_i_3_n_13,temp_reg_Q0__1_i_3_n_14,temp_reg_Q0__1_i_3_n_15,temp_reg_Q0__0_n_94,temp_reg_Q0__0_n_95,temp_reg_Q0__0_n_96,temp_reg_Q0__0_n_97,temp_reg_Q0__0_n_98,temp_reg_Q0__0_n_99,temp_reg_Q0__0_n_100,temp_reg_Q0__0_n_101,temp_reg_Q0__0_n_102,temp_reg_Q0__0_n_103,temp_reg_Q0__0_n_104,temp_reg_Q0__0_n_105}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp_reg_Q0__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp_reg_Q0__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(temp_reg_Q0__9_i_1_n_0),
        .CEA2(temp_reg_Q0__9_i_1_n_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_temp_reg_Q0__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp_reg_Q0__1_OVERFLOW_UNCONNECTED),
        .P(NLW_temp_reg_Q0__1_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_temp_reg_Q0__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp_reg_Q0__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({temp_reg_Q0__1_n_106,temp_reg_Q0__1_n_107,temp_reg_Q0__1_n_108,temp_reg_Q0__1_n_109,temp_reg_Q0__1_n_110,temp_reg_Q0__1_n_111,temp_reg_Q0__1_n_112,temp_reg_Q0__1_n_113,temp_reg_Q0__1_n_114,temp_reg_Q0__1_n_115,temp_reg_Q0__1_n_116,temp_reg_Q0__1_n_117,temp_reg_Q0__1_n_118,temp_reg_Q0__1_n_119,temp_reg_Q0__1_n_120,temp_reg_Q0__1_n_121,temp_reg_Q0__1_n_122,temp_reg_Q0__1_n_123,temp_reg_Q0__1_n_124,temp_reg_Q0__1_n_125,temp_reg_Q0__1_n_126,temp_reg_Q0__1_n_127,temp_reg_Q0__1_n_128,temp_reg_Q0__1_n_129,temp_reg_Q0__1_n_130,temp_reg_Q0__1_n_131,temp_reg_Q0__1_n_132,temp_reg_Q0__1_n_133,temp_reg_Q0__1_n_134,temp_reg_Q0__1_n_135,temp_reg_Q0__1_n_136,temp_reg_Q0__1_n_137,temp_reg_Q0__1_n_138,temp_reg_Q0__1_n_139,temp_reg_Q0__1_n_140,temp_reg_Q0__1_n_141,temp_reg_Q0__1_n_142,temp_reg_Q0__1_n_143,temp_reg_Q0__1_n_144,temp_reg_Q0__1_n_145,temp_reg_Q0__1_n_146,temp_reg_Q0__1_n_147,temp_reg_Q0__1_n_148,temp_reg_Q0__1_n_149,temp_reg_Q0__1_n_150,temp_reg_Q0__1_n_151,temp_reg_Q0__1_n_152,temp_reg_Q0__1_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_temp_reg_Q0__1_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_temp_reg_Q0__1_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 temp_reg_Q0__1_i_1
       (.CI(temp_reg_Q0__1_i_2_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_temp_reg_Q0__1_i_1_CO_UNCONNECTED[7:3],temp_reg_Q0__1_i_1_n_5,temp_reg_Q0__1_i_1_n_6,temp_reg_Q0__1_i_1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,temp_reg_Q0__0_n_76,temp_reg_Q0__0_n_77,temp_reg_Q0__0_n_78}),
        .O({NLW_temp_reg_Q0__1_i_1_O_UNCONNECTED[7:4],temp_reg_Q0__1_i_1_n_12,temp_reg_Q0__1_i_1_n_13,temp_reg_Q0__1_i_1_n_14,temp_reg_Q0__1_i_1_n_15}),
        .S({1'b0,1'b0,1'b0,1'b0,temp_reg_Q0__1_i_4_n_0,temp_reg_Q0__1_i_5_n_0,temp_reg_Q0__1_i_6_n_0,temp_reg_Q0__1_i_7_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__1_i_10
       (.I0(temp_reg_Q0__0_n_80),
        .I1(temp_reg_Q0__0_n_79),
        .O(temp_reg_Q0__1_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__1_i_11
       (.I0(temp_reg_Q0__0_n_81),
        .I1(temp_reg_Q0__0_n_80),
        .O(temp_reg_Q0__1_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__1_i_12
       (.I0(temp_reg_Q0__0_n_81),
        .I1(\Q_shift_reg_reg[12]_11 [11]),
        .O(temp_reg_Q0__1_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__1_i_13
       (.I0(\Q_shift_reg_reg[12]_11 [10]),
        .I1(temp_reg_Q0__0_n_82),
        .O(temp_reg_Q0__1_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__1_i_14
       (.I0(\Q_shift_reg_reg[12]_11 [9]),
        .I1(temp_reg_Q0__0_n_83),
        .O(temp_reg_Q0__1_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__1_i_15
       (.I0(\Q_shift_reg_reg[12]_11 [8]),
        .I1(temp_reg_Q0__0_n_84),
        .O(temp_reg_Q0__1_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__1_i_16
       (.I0(\Q_shift_reg_reg[12]_11 [7]),
        .I1(temp_reg_Q0__0_n_85),
        .O(temp_reg_Q0__1_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__1_i_17
       (.I0(\Q_shift_reg_reg[12]_11 [6]),
        .I1(temp_reg_Q0__0_n_86),
        .O(temp_reg_Q0__1_i_17_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__1_i_18
       (.I0(\Q_shift_reg_reg[12]_11 [5]),
        .I1(temp_reg_Q0__0_n_87),
        .O(temp_reg_Q0__1_i_18_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__1_i_19
       (.I0(\Q_shift_reg_reg[12]_11 [4]),
        .I1(temp_reg_Q0__0_n_88),
        .O(temp_reg_Q0__1_i_19_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 temp_reg_Q0__1_i_2
       (.CI(temp_reg_Q0__1_i_3_n_0),
        .CI_TOP(1'b0),
        .CO({temp_reg_Q0__1_i_2_n_0,temp_reg_Q0__1_i_2_n_1,temp_reg_Q0__1_i_2_n_2,temp_reg_Q0__1_i_2_n_3,temp_reg_Q0__1_i_2_n_4,temp_reg_Q0__1_i_2_n_5,temp_reg_Q0__1_i_2_n_6,temp_reg_Q0__1_i_2_n_7}),
        .DI({temp_reg_Q0__0_n_79,temp_reg_Q0__0_n_80,temp_reg_Q0__0_n_81,temp_reg_Q0__1_i_8_n_0,\Q_shift_reg_reg[12]_11 [10:7]}),
        .O({temp_reg_Q0__1_i_2_n_8,temp_reg_Q0__1_i_2_n_9,temp_reg_Q0__1_i_2_n_10,temp_reg_Q0__1_i_2_n_11,temp_reg_Q0__1_i_2_n_12,temp_reg_Q0__1_i_2_n_13,temp_reg_Q0__1_i_2_n_14,temp_reg_Q0__1_i_2_n_15}),
        .S({temp_reg_Q0__1_i_9_n_0,temp_reg_Q0__1_i_10_n_0,temp_reg_Q0__1_i_11_n_0,temp_reg_Q0__1_i_12_n_0,temp_reg_Q0__1_i_13_n_0,temp_reg_Q0__1_i_14_n_0,temp_reg_Q0__1_i_15_n_0,temp_reg_Q0__1_i_16_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__1_i_20
       (.I0(\Q_shift_reg_reg[12]_11 [3]),
        .I1(temp_reg_Q0__0_n_89),
        .O(temp_reg_Q0__1_i_20_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__1_i_21
       (.I0(\Q_shift_reg_reg[12]_11 [2]),
        .I1(temp_reg_Q0__0_n_90),
        .O(temp_reg_Q0__1_i_21_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__1_i_22
       (.I0(\Q_shift_reg_reg[12]_11 [1]),
        .I1(temp_reg_Q0__0_n_91),
        .O(temp_reg_Q0__1_i_22_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__1_i_23
       (.I0(\Q_shift_reg_reg[12]_11 [0]),
        .I1(temp_reg_Q0__0_n_92),
        .O(temp_reg_Q0__1_i_23_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 temp_reg_Q0__1_i_3
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({temp_reg_Q0__1_i_3_n_0,temp_reg_Q0__1_i_3_n_1,temp_reg_Q0__1_i_3_n_2,temp_reg_Q0__1_i_3_n_3,temp_reg_Q0__1_i_3_n_4,temp_reg_Q0__1_i_3_n_5,temp_reg_Q0__1_i_3_n_6,temp_reg_Q0__1_i_3_n_7}),
        .DI({\Q_shift_reg_reg[12]_11 [6:0],1'b0}),
        .O({temp_reg_Q0__1_i_3_n_8,temp_reg_Q0__1_i_3_n_9,temp_reg_Q0__1_i_3_n_10,temp_reg_Q0__1_i_3_n_11,temp_reg_Q0__1_i_3_n_12,temp_reg_Q0__1_i_3_n_13,temp_reg_Q0__1_i_3_n_14,temp_reg_Q0__1_i_3_n_15}),
        .S({temp_reg_Q0__1_i_17_n_0,temp_reg_Q0__1_i_18_n_0,temp_reg_Q0__1_i_19_n_0,temp_reg_Q0__1_i_20_n_0,temp_reg_Q0__1_i_21_n_0,temp_reg_Q0__1_i_22_n_0,temp_reg_Q0__1_i_23_n_0,temp_reg_Q0__0_n_93}));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__1_i_4
       (.I0(temp_reg_Q0__0_n_75),
        .I1(temp_reg_Q0__0_n_74),
        .O(temp_reg_Q0__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__1_i_5
       (.I0(temp_reg_Q0__0_n_76),
        .I1(temp_reg_Q0__0_n_75),
        .O(temp_reg_Q0__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__1_i_6
       (.I0(temp_reg_Q0__0_n_77),
        .I1(temp_reg_Q0__0_n_76),
        .O(temp_reg_Q0__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__1_i_7
       (.I0(temp_reg_Q0__0_n_78),
        .I1(temp_reg_Q0__0_n_77),
        .O(temp_reg_Q0__1_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    temp_reg_Q0__1_i_8
       (.I0(temp_reg_Q0__0_n_81),
        .O(temp_reg_Q0__1_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__1_i_9
       (.I0(temp_reg_Q0__0_n_79),
        .I1(temp_reg_Q0__0_n_78),
        .O(temp_reg_Q0__1_i_9_n_0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    temp_reg_Q0__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp_reg_Q0__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\Q_shift_reg_reg[8]_7 [11],\Q_shift_reg_reg[8]_7 [11],\Q_shift_reg_reg[8]_7 [11],\Q_shift_reg_reg[8]_7 [11],\Q_shift_reg_reg[8]_7 [11],\Q_shift_reg_reg[8]_7 [11],\Q_shift_reg_reg[8]_7 }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_temp_reg_Q0__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp_reg_Q0__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp_reg_Q0__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(temp_reg_Q0__9_i_1_n_0),
        .CEB2(temp_reg_Q0__9_i_1_n_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_temp_reg_Q0__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp_reg_Q0__2_OVERFLOW_UNCONNECTED),
        .P(NLW_temp_reg_Q0__2_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_temp_reg_Q0__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp_reg_Q0__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({temp_reg_Q0__1_n_106,temp_reg_Q0__1_n_107,temp_reg_Q0__1_n_108,temp_reg_Q0__1_n_109,temp_reg_Q0__1_n_110,temp_reg_Q0__1_n_111,temp_reg_Q0__1_n_112,temp_reg_Q0__1_n_113,temp_reg_Q0__1_n_114,temp_reg_Q0__1_n_115,temp_reg_Q0__1_n_116,temp_reg_Q0__1_n_117,temp_reg_Q0__1_n_118,temp_reg_Q0__1_n_119,temp_reg_Q0__1_n_120,temp_reg_Q0__1_n_121,temp_reg_Q0__1_n_122,temp_reg_Q0__1_n_123,temp_reg_Q0__1_n_124,temp_reg_Q0__1_n_125,temp_reg_Q0__1_n_126,temp_reg_Q0__1_n_127,temp_reg_Q0__1_n_128,temp_reg_Q0__1_n_129,temp_reg_Q0__1_n_130,temp_reg_Q0__1_n_131,temp_reg_Q0__1_n_132,temp_reg_Q0__1_n_133,temp_reg_Q0__1_n_134,temp_reg_Q0__1_n_135,temp_reg_Q0__1_n_136,temp_reg_Q0__1_n_137,temp_reg_Q0__1_n_138,temp_reg_Q0__1_n_139,temp_reg_Q0__1_n_140,temp_reg_Q0__1_n_141,temp_reg_Q0__1_n_142,temp_reg_Q0__1_n_143,temp_reg_Q0__1_n_144,temp_reg_Q0__1_n_145,temp_reg_Q0__1_n_146,temp_reg_Q0__1_n_147,temp_reg_Q0__1_n_148,temp_reg_Q0__1_n_149,temp_reg_Q0__1_n_150,temp_reg_Q0__1_n_151,temp_reg_Q0__1_n_152,temp_reg_Q0__1_n_153}),
        .PCOUT({temp_reg_Q0__2_n_106,temp_reg_Q0__2_n_107,temp_reg_Q0__2_n_108,temp_reg_Q0__2_n_109,temp_reg_Q0__2_n_110,temp_reg_Q0__2_n_111,temp_reg_Q0__2_n_112,temp_reg_Q0__2_n_113,temp_reg_Q0__2_n_114,temp_reg_Q0__2_n_115,temp_reg_Q0__2_n_116,temp_reg_Q0__2_n_117,temp_reg_Q0__2_n_118,temp_reg_Q0__2_n_119,temp_reg_Q0__2_n_120,temp_reg_Q0__2_n_121,temp_reg_Q0__2_n_122,temp_reg_Q0__2_n_123,temp_reg_Q0__2_n_124,temp_reg_Q0__2_n_125,temp_reg_Q0__2_n_126,temp_reg_Q0__2_n_127,temp_reg_Q0__2_n_128,temp_reg_Q0__2_n_129,temp_reg_Q0__2_n_130,temp_reg_Q0__2_n_131,temp_reg_Q0__2_n_132,temp_reg_Q0__2_n_133,temp_reg_Q0__2_n_134,temp_reg_Q0__2_n_135,temp_reg_Q0__2_n_136,temp_reg_Q0__2_n_137,temp_reg_Q0__2_n_138,temp_reg_Q0__2_n_139,temp_reg_Q0__2_n_140,temp_reg_Q0__2_n_141,temp_reg_Q0__2_n_142,temp_reg_Q0__2_n_143,temp_reg_Q0__2_n_144,temp_reg_Q0__2_n_145,temp_reg_Q0__2_n_146,temp_reg_Q0__2_n_147,temp_reg_Q0__2_n_148,temp_reg_Q0__2_n_149,temp_reg_Q0__2_n_150,temp_reg_Q0__2_n_151,temp_reg_Q0__2_n_152,temp_reg_Q0__2_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_temp_reg_Q0__2_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_temp_reg_Q0__2_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    temp_reg_Q0__3
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp_reg_Q0__3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\Q_shift_reg_reg[7]_0 [11],\Q_shift_reg_reg[7]_0 [11],\Q_shift_reg_reg[7]_0 [11],\Q_shift_reg_reg[7]_0 [11],\Q_shift_reg_reg[7]_0 [11],\Q_shift_reg_reg[7]_0 [11],\Q_shift_reg_reg[7]_0 }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_temp_reg_Q0__3_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp_reg_Q0__3_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp_reg_Q0__3_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(temp_reg_Q0__9_i_1_n_0),
        .CEB2(temp_reg_Q0__9_i_1_n_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_temp_reg_Q0__3_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp_reg_Q0__3_OVERFLOW_UNCONNECTED),
        .P({NLW_temp_reg_Q0__3_P_UNCONNECTED[47:32],temp_reg_Q0__3_n_74,temp_reg_Q0__3_n_75,temp_reg_Q0__3_n_76,temp_reg_Q0__3_n_77,temp_reg_Q0__3_n_78,temp_reg_Q0__3_n_79,temp_reg_Q0__3_n_80,temp_reg_Q0__3_n_81,temp_reg_Q0__3_n_82,temp_reg_Q0__3_n_83,temp_reg_Q0__3_n_84,temp_reg_Q0__3_n_85,temp_reg_Q0__3_n_86,temp_reg_Q0__3_n_87,temp_reg_Q0__3_n_88,temp_reg_Q0__3_n_89,temp_reg_Q0__3_n_90,temp_reg_Q0__3_n_91,temp_reg_Q0__3_n_92,temp_reg_Q0__3_n_93,temp_reg_Q0__3_n_94,temp_reg_Q0__3_n_95,temp_reg_Q0__3_n_96,temp_reg_Q0__3_n_97,temp_reg_Q0__3_n_98,temp_reg_Q0__3_n_99,temp_reg_Q0__3_n_100,temp_reg_Q0__3_n_101,temp_reg_Q0__3_n_102,temp_reg_Q0__3_n_103,temp_reg_Q0__3_n_104,temp_reg_Q0__3_n_105}),
        .PATTERNBDETECT(NLW_temp_reg_Q0__3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp_reg_Q0__3_PATTERNDETECT_UNCONNECTED),
        .PCIN({temp_reg_Q0__2_n_106,temp_reg_Q0__2_n_107,temp_reg_Q0__2_n_108,temp_reg_Q0__2_n_109,temp_reg_Q0__2_n_110,temp_reg_Q0__2_n_111,temp_reg_Q0__2_n_112,temp_reg_Q0__2_n_113,temp_reg_Q0__2_n_114,temp_reg_Q0__2_n_115,temp_reg_Q0__2_n_116,temp_reg_Q0__2_n_117,temp_reg_Q0__2_n_118,temp_reg_Q0__2_n_119,temp_reg_Q0__2_n_120,temp_reg_Q0__2_n_121,temp_reg_Q0__2_n_122,temp_reg_Q0__2_n_123,temp_reg_Q0__2_n_124,temp_reg_Q0__2_n_125,temp_reg_Q0__2_n_126,temp_reg_Q0__2_n_127,temp_reg_Q0__2_n_128,temp_reg_Q0__2_n_129,temp_reg_Q0__2_n_130,temp_reg_Q0__2_n_131,temp_reg_Q0__2_n_132,temp_reg_Q0__2_n_133,temp_reg_Q0__2_n_134,temp_reg_Q0__2_n_135,temp_reg_Q0__2_n_136,temp_reg_Q0__2_n_137,temp_reg_Q0__2_n_138,temp_reg_Q0__2_n_139,temp_reg_Q0__2_n_140,temp_reg_Q0__2_n_141,temp_reg_Q0__2_n_142,temp_reg_Q0__2_n_143,temp_reg_Q0__2_n_144,temp_reg_Q0__2_n_145,temp_reg_Q0__2_n_146,temp_reg_Q0__2_n_147,temp_reg_Q0__2_n_148,temp_reg_Q0__2_n_149,temp_reg_Q0__2_n_150,temp_reg_Q0__2_n_151,temp_reg_Q0__2_n_152,temp_reg_Q0__2_n_153}),
        .PCOUT(NLW_temp_reg_Q0__3_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_temp_reg_Q0__3_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_temp_reg_Q0__3_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    temp_reg_Q0__4
       (.A({\Q_shift_reg_reg[4]_6 [11],\Q_shift_reg_reg[4]_6 [11],\Q_shift_reg_reg[4]_6 [11],\Q_shift_reg_reg[4]_6 [11],\Q_shift_reg_reg[4]_6 [11],\Q_shift_reg_reg[4]_6 [11],\Q_shift_reg_reg[4]_6 [11],\Q_shift_reg_reg[4]_6 [11],\Q_shift_reg_reg[4]_6 [11],\Q_shift_reg_reg[4]_6 [11],\Q_shift_reg_reg[4]_6 [11],\Q_shift_reg_reg[4]_6 [11],\Q_shift_reg_reg[4]_6 [11],\Q_shift_reg_reg[4]_6 [11],\Q_shift_reg_reg[4]_6 [11],\Q_shift_reg_reg[4]_6 [11],\Q_shift_reg_reg[4]_6 [11],\Q_shift_reg_reg[4]_6 [11],\Q_shift_reg_reg[4]_6 }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp_reg_Q0__4_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_temp_reg_Q0__4_BCOUT_UNCONNECTED[17:0]),
        .C({C[31],C[31],C[31],C[31],C[31],C[31],C[31],C[31],C[31],C[31],C[31],C[31],C[31],C[31],C[31],C[31],C,temp_reg_Q0__3_n_93,temp_reg_Q0__3_n_94,temp_reg_Q0__3_n_95,temp_reg_Q0__3_n_96,temp_reg_Q0__3_n_97,temp_reg_Q0__3_n_98,temp_reg_Q0__3_n_99,temp_reg_Q0__3_n_100,temp_reg_Q0__3_n_101,temp_reg_Q0__3_n_102,temp_reg_Q0__3_n_103,temp_reg_Q0__3_n_104,temp_reg_Q0__3_n_105}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp_reg_Q0__4_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp_reg_Q0__4_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(temp_reg_Q0__9_i_1_n_0),
        .CEA2(temp_reg_Q0__9_i_1_n_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_temp_reg_Q0__4_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp_reg_Q0__4_OVERFLOW_UNCONNECTED),
        .P(NLW_temp_reg_Q0__4_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_temp_reg_Q0__4_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp_reg_Q0__4_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({temp_reg_Q0__4_n_106,temp_reg_Q0__4_n_107,temp_reg_Q0__4_n_108,temp_reg_Q0__4_n_109,temp_reg_Q0__4_n_110,temp_reg_Q0__4_n_111,temp_reg_Q0__4_n_112,temp_reg_Q0__4_n_113,temp_reg_Q0__4_n_114,temp_reg_Q0__4_n_115,temp_reg_Q0__4_n_116,temp_reg_Q0__4_n_117,temp_reg_Q0__4_n_118,temp_reg_Q0__4_n_119,temp_reg_Q0__4_n_120,temp_reg_Q0__4_n_121,temp_reg_Q0__4_n_122,temp_reg_Q0__4_n_123,temp_reg_Q0__4_n_124,temp_reg_Q0__4_n_125,temp_reg_Q0__4_n_126,temp_reg_Q0__4_n_127,temp_reg_Q0__4_n_128,temp_reg_Q0__4_n_129,temp_reg_Q0__4_n_130,temp_reg_Q0__4_n_131,temp_reg_Q0__4_n_132,temp_reg_Q0__4_n_133,temp_reg_Q0__4_n_134,temp_reg_Q0__4_n_135,temp_reg_Q0__4_n_136,temp_reg_Q0__4_n_137,temp_reg_Q0__4_n_138,temp_reg_Q0__4_n_139,temp_reg_Q0__4_n_140,temp_reg_Q0__4_n_141,temp_reg_Q0__4_n_142,temp_reg_Q0__4_n_143,temp_reg_Q0__4_n_144,temp_reg_Q0__4_n_145,temp_reg_Q0__4_n_146,temp_reg_Q0__4_n_147,temp_reg_Q0__4_n_148,temp_reg_Q0__4_n_149,temp_reg_Q0__4_n_150,temp_reg_Q0__4_n_151,temp_reg_Q0__4_n_152,temp_reg_Q0__4_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_temp_reg_Q0__4_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_temp_reg_Q0__4_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 temp_reg_Q0__4_i_1
       (.CI(temp_reg_Q0__4_i_2_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_temp_reg_Q0__4_i_1_CO_UNCONNECTED[7:2],temp_reg_Q0__4_i_1_n_6,temp_reg_Q0__4_i_1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,temp_reg_Q0__4_i_4_n_15,temp_reg_Q0__4_i_5_n_8}),
        .O({NLW_temp_reg_Q0__4_i_1_O_UNCONNECTED[7:3],C[31:29]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,temp_reg_Q0__4_i_6_n_0,temp_reg_Q0__4_i_7_n_0,temp_reg_Q0__4_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__4_i_10
       (.I0(temp_reg_Q0__4_i_5_n_9),
        .I1(temp_reg_Q0__4_i_5_n_8),
        .O(temp_reg_Q0__4_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__4_i_11
       (.I0(temp_reg_Q0__4_i_5_n_10),
        .I1(temp_reg_Q0__4_i_5_n_9),
        .O(temp_reg_Q0__4_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__4_i_12
       (.I0(temp_reg_Q0__4_i_5_n_11),
        .I1(temp_reg_Q0__4_i_5_n_10),
        .O(temp_reg_Q0__4_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__4_i_13
       (.I0(temp_reg_Q0__4_i_5_n_11),
        .I1(\Q_shift_reg_reg[7]_0 [11]),
        .O(temp_reg_Q0__4_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__4_i_14
       (.I0(\Q_shift_reg_reg[7]_0 [10]),
        .I1(temp_reg_Q0__4_i_5_n_12),
        .O(temp_reg_Q0__4_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__4_i_15
       (.I0(\Q_shift_reg_reg[7]_0 [9]),
        .I1(temp_reg_Q0__4_i_5_n_13),
        .O(temp_reg_Q0__4_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__4_i_16
       (.I0(\Q_shift_reg_reg[7]_0 [8]),
        .I1(temp_reg_Q0__4_i_5_n_14),
        .O(temp_reg_Q0__4_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__4_i_17
       (.I0(\Q_shift_reg_reg[7]_0 [7]),
        .I1(temp_reg_Q0__4_i_5_n_15),
        .O(temp_reg_Q0__4_i_17_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__4_i_18
       (.I0(\Q_shift_reg_reg[7]_0 [6]),
        .I1(temp_reg_Q0__4_i_25_n_8),
        .O(temp_reg_Q0__4_i_18_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__4_i_19
       (.I0(\Q_shift_reg_reg[7]_0 [5]),
        .I1(temp_reg_Q0__4_i_25_n_9),
        .O(temp_reg_Q0__4_i_19_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 temp_reg_Q0__4_i_2
       (.CI(temp_reg_Q0__4_i_3_n_0),
        .CI_TOP(1'b0),
        .CO({temp_reg_Q0__4_i_2_n_0,temp_reg_Q0__4_i_2_n_1,temp_reg_Q0__4_i_2_n_2,temp_reg_Q0__4_i_2_n_3,temp_reg_Q0__4_i_2_n_4,temp_reg_Q0__4_i_2_n_5,temp_reg_Q0__4_i_2_n_6,temp_reg_Q0__4_i_2_n_7}),
        .DI({temp_reg_Q0__4_i_5_n_9,temp_reg_Q0__4_i_5_n_10,temp_reg_Q0__4_i_5_n_11,temp_reg_Q0__4_i_9_n_0,\Q_shift_reg_reg[7]_0 [10:7]}),
        .O(C[28:21]),
        .S({temp_reg_Q0__4_i_10_n_0,temp_reg_Q0__4_i_11_n_0,temp_reg_Q0__4_i_12_n_0,temp_reg_Q0__4_i_13_n_0,temp_reg_Q0__4_i_14_n_0,temp_reg_Q0__4_i_15_n_0,temp_reg_Q0__4_i_16_n_0,temp_reg_Q0__4_i_17_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__4_i_20
       (.I0(\Q_shift_reg_reg[7]_0 [4]),
        .I1(temp_reg_Q0__4_i_25_n_10),
        .O(temp_reg_Q0__4_i_20_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__4_i_21
       (.I0(\Q_shift_reg_reg[7]_0 [3]),
        .I1(temp_reg_Q0__4_i_25_n_11),
        .O(temp_reg_Q0__4_i_21_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__4_i_22
       (.I0(\Q_shift_reg_reg[7]_0 [2]),
        .I1(temp_reg_Q0__4_i_25_n_12),
        .O(temp_reg_Q0__4_i_22_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__4_i_23
       (.I0(\Q_shift_reg_reg[7]_0 [1]),
        .I1(temp_reg_Q0__4_i_25_n_13),
        .O(temp_reg_Q0__4_i_23_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__4_i_24
       (.I0(\Q_shift_reg_reg[7]_0 [0]),
        .I1(temp_reg_Q0__4_i_25_n_14),
        .O(temp_reg_Q0__4_i_24_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 temp_reg_Q0__4_i_25
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({temp_reg_Q0__4_i_25_n_0,temp_reg_Q0__4_i_25_n_1,temp_reg_Q0__4_i_25_n_2,temp_reg_Q0__4_i_25_n_3,temp_reg_Q0__4_i_25_n_4,temp_reg_Q0__4_i_25_n_5,temp_reg_Q0__4_i_25_n_6,temp_reg_Q0__4_i_25_n_7}),
        .DI({\Q_shift_reg_reg[8]_7 [6:0],1'b0}),
        .O({temp_reg_Q0__4_i_25_n_8,temp_reg_Q0__4_i_25_n_9,temp_reg_Q0__4_i_25_n_10,temp_reg_Q0__4_i_25_n_11,temp_reg_Q0__4_i_25_n_12,temp_reg_Q0__4_i_25_n_13,temp_reg_Q0__4_i_25_n_14,temp_reg_Q0__4_i_25_n_15}),
        .S({temp_reg_Q0__4_i_38_n_0,temp_reg_Q0__4_i_39_n_0,temp_reg_Q0__4_i_40_n_0,temp_reg_Q0__4_i_41_n_0,temp_reg_Q0__4_i_42_n_0,temp_reg_Q0__4_i_43_n_0,temp_reg_Q0__4_i_44_n_0,temp_reg_Q0__3_n_92}));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__4_i_26
       (.I0(temp_reg_Q0__3_n_75),
        .I1(temp_reg_Q0__3_n_74),
        .O(temp_reg_Q0__4_i_26_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__4_i_27
       (.I0(temp_reg_Q0__3_n_76),
        .I1(temp_reg_Q0__3_n_75),
        .O(temp_reg_Q0__4_i_27_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__4_i_28
       (.I0(temp_reg_Q0__3_n_77),
        .I1(temp_reg_Q0__3_n_76),
        .O(temp_reg_Q0__4_i_28_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    temp_reg_Q0__4_i_29
       (.I0(temp_reg_Q0__3_n_80),
        .O(temp_reg_Q0__4_i_29_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 temp_reg_Q0__4_i_3
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({temp_reg_Q0__4_i_3_n_0,temp_reg_Q0__4_i_3_n_1,temp_reg_Q0__4_i_3_n_2,temp_reg_Q0__4_i_3_n_3,temp_reg_Q0__4_i_3_n_4,temp_reg_Q0__4_i_3_n_5,temp_reg_Q0__4_i_3_n_6,temp_reg_Q0__4_i_3_n_7}),
        .DI({\Q_shift_reg_reg[7]_0 [6:0],1'b0}),
        .O(C[20:13]),
        .S({temp_reg_Q0__4_i_18_n_0,temp_reg_Q0__4_i_19_n_0,temp_reg_Q0__4_i_20_n_0,temp_reg_Q0__4_i_21_n_0,temp_reg_Q0__4_i_22_n_0,temp_reg_Q0__4_i_23_n_0,temp_reg_Q0__4_i_24_n_0,temp_reg_Q0__4_i_25_n_15}));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__4_i_30
       (.I0(temp_reg_Q0__3_n_78),
        .I1(temp_reg_Q0__3_n_77),
        .O(temp_reg_Q0__4_i_30_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__4_i_31
       (.I0(temp_reg_Q0__3_n_79),
        .I1(temp_reg_Q0__3_n_78),
        .O(temp_reg_Q0__4_i_31_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__4_i_32
       (.I0(temp_reg_Q0__3_n_80),
        .I1(temp_reg_Q0__3_n_79),
        .O(temp_reg_Q0__4_i_32_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__4_i_33
       (.I0(temp_reg_Q0__3_n_80),
        .I1(\Q_shift_reg_reg[8]_7 [11]),
        .O(temp_reg_Q0__4_i_33_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__4_i_34
       (.I0(\Q_shift_reg_reg[8]_7 [10]),
        .I1(temp_reg_Q0__3_n_81),
        .O(temp_reg_Q0__4_i_34_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__4_i_35
       (.I0(\Q_shift_reg_reg[8]_7 [9]),
        .I1(temp_reg_Q0__3_n_82),
        .O(temp_reg_Q0__4_i_35_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__4_i_36
       (.I0(\Q_shift_reg_reg[8]_7 [8]),
        .I1(temp_reg_Q0__3_n_83),
        .O(temp_reg_Q0__4_i_36_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__4_i_37
       (.I0(\Q_shift_reg_reg[8]_7 [7]),
        .I1(temp_reg_Q0__3_n_84),
        .O(temp_reg_Q0__4_i_37_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__4_i_38
       (.I0(\Q_shift_reg_reg[8]_7 [6]),
        .I1(temp_reg_Q0__3_n_85),
        .O(temp_reg_Q0__4_i_38_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__4_i_39
       (.I0(\Q_shift_reg_reg[8]_7 [5]),
        .I1(temp_reg_Q0__3_n_86),
        .O(temp_reg_Q0__4_i_39_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 temp_reg_Q0__4_i_4
       (.CI(temp_reg_Q0__4_i_5_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_temp_reg_Q0__4_i_4_CO_UNCONNECTED[7:2],temp_reg_Q0__4_i_4_n_6,temp_reg_Q0__4_i_4_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,temp_reg_Q0__3_n_76,temp_reg_Q0__3_n_77}),
        .O({NLW_temp_reg_Q0__4_i_4_O_UNCONNECTED[7:3],temp_reg_Q0__4_i_4_n_13,temp_reg_Q0__4_i_4_n_14,temp_reg_Q0__4_i_4_n_15}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,temp_reg_Q0__4_i_26_n_0,temp_reg_Q0__4_i_27_n_0,temp_reg_Q0__4_i_28_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__4_i_40
       (.I0(\Q_shift_reg_reg[8]_7 [4]),
        .I1(temp_reg_Q0__3_n_87),
        .O(temp_reg_Q0__4_i_40_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__4_i_41
       (.I0(\Q_shift_reg_reg[8]_7 [3]),
        .I1(temp_reg_Q0__3_n_88),
        .O(temp_reg_Q0__4_i_41_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__4_i_42
       (.I0(\Q_shift_reg_reg[8]_7 [2]),
        .I1(temp_reg_Q0__3_n_89),
        .O(temp_reg_Q0__4_i_42_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__4_i_43
       (.I0(\Q_shift_reg_reg[8]_7 [1]),
        .I1(temp_reg_Q0__3_n_90),
        .O(temp_reg_Q0__4_i_43_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__4_i_44
       (.I0(\Q_shift_reg_reg[8]_7 [0]),
        .I1(temp_reg_Q0__3_n_91),
        .O(temp_reg_Q0__4_i_44_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 temp_reg_Q0__4_i_5
       (.CI(temp_reg_Q0__4_i_25_n_0),
        .CI_TOP(1'b0),
        .CO({temp_reg_Q0__4_i_5_n_0,temp_reg_Q0__4_i_5_n_1,temp_reg_Q0__4_i_5_n_2,temp_reg_Q0__4_i_5_n_3,temp_reg_Q0__4_i_5_n_4,temp_reg_Q0__4_i_5_n_5,temp_reg_Q0__4_i_5_n_6,temp_reg_Q0__4_i_5_n_7}),
        .DI({temp_reg_Q0__3_n_78,temp_reg_Q0__3_n_79,temp_reg_Q0__3_n_80,temp_reg_Q0__4_i_29_n_0,\Q_shift_reg_reg[8]_7 [10:7]}),
        .O({temp_reg_Q0__4_i_5_n_8,temp_reg_Q0__4_i_5_n_9,temp_reg_Q0__4_i_5_n_10,temp_reg_Q0__4_i_5_n_11,temp_reg_Q0__4_i_5_n_12,temp_reg_Q0__4_i_5_n_13,temp_reg_Q0__4_i_5_n_14,temp_reg_Q0__4_i_5_n_15}),
        .S({temp_reg_Q0__4_i_30_n_0,temp_reg_Q0__4_i_31_n_0,temp_reg_Q0__4_i_32_n_0,temp_reg_Q0__4_i_33_n_0,temp_reg_Q0__4_i_34_n_0,temp_reg_Q0__4_i_35_n_0,temp_reg_Q0__4_i_36_n_0,temp_reg_Q0__4_i_37_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__4_i_6
       (.I0(temp_reg_Q0__4_i_4_n_14),
        .I1(temp_reg_Q0__4_i_4_n_13),
        .O(temp_reg_Q0__4_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__4_i_7
       (.I0(temp_reg_Q0__4_i_4_n_15),
        .I1(temp_reg_Q0__4_i_4_n_14),
        .O(temp_reg_Q0__4_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__4_i_8
       (.I0(temp_reg_Q0__4_i_5_n_8),
        .I1(temp_reg_Q0__4_i_4_n_15),
        .O(temp_reg_Q0__4_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    temp_reg_Q0__4_i_9
       (.I0(temp_reg_Q0__4_i_5_n_11),
        .O(temp_reg_Q0__4_i_9_n_0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    temp_reg_Q0__5
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp_reg_Q0__5_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\Q_shift_reg_reg[3]_5 [11],\Q_shift_reg_reg[3]_5 [11],\Q_shift_reg_reg[3]_5 [11],\Q_shift_reg_reg[3]_5 [11],\Q_shift_reg_reg[3]_5 [11],\Q_shift_reg_reg[3]_5 [11],\Q_shift_reg_reg[3]_5 }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_temp_reg_Q0__5_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp_reg_Q0__5_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp_reg_Q0__5_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(temp_reg_Q0__9_i_1_n_0),
        .CEB2(temp_reg_Q0__9_i_1_n_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_temp_reg_Q0__5_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp_reg_Q0__5_OVERFLOW_UNCONNECTED),
        .P(NLW_temp_reg_Q0__5_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_temp_reg_Q0__5_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp_reg_Q0__5_PATTERNDETECT_UNCONNECTED),
        .PCIN({temp_reg_Q0__4_n_106,temp_reg_Q0__4_n_107,temp_reg_Q0__4_n_108,temp_reg_Q0__4_n_109,temp_reg_Q0__4_n_110,temp_reg_Q0__4_n_111,temp_reg_Q0__4_n_112,temp_reg_Q0__4_n_113,temp_reg_Q0__4_n_114,temp_reg_Q0__4_n_115,temp_reg_Q0__4_n_116,temp_reg_Q0__4_n_117,temp_reg_Q0__4_n_118,temp_reg_Q0__4_n_119,temp_reg_Q0__4_n_120,temp_reg_Q0__4_n_121,temp_reg_Q0__4_n_122,temp_reg_Q0__4_n_123,temp_reg_Q0__4_n_124,temp_reg_Q0__4_n_125,temp_reg_Q0__4_n_126,temp_reg_Q0__4_n_127,temp_reg_Q0__4_n_128,temp_reg_Q0__4_n_129,temp_reg_Q0__4_n_130,temp_reg_Q0__4_n_131,temp_reg_Q0__4_n_132,temp_reg_Q0__4_n_133,temp_reg_Q0__4_n_134,temp_reg_Q0__4_n_135,temp_reg_Q0__4_n_136,temp_reg_Q0__4_n_137,temp_reg_Q0__4_n_138,temp_reg_Q0__4_n_139,temp_reg_Q0__4_n_140,temp_reg_Q0__4_n_141,temp_reg_Q0__4_n_142,temp_reg_Q0__4_n_143,temp_reg_Q0__4_n_144,temp_reg_Q0__4_n_145,temp_reg_Q0__4_n_146,temp_reg_Q0__4_n_147,temp_reg_Q0__4_n_148,temp_reg_Q0__4_n_149,temp_reg_Q0__4_n_150,temp_reg_Q0__4_n_151,temp_reg_Q0__4_n_152,temp_reg_Q0__4_n_153}),
        .PCOUT({temp_reg_Q0__5_n_106,temp_reg_Q0__5_n_107,temp_reg_Q0__5_n_108,temp_reg_Q0__5_n_109,temp_reg_Q0__5_n_110,temp_reg_Q0__5_n_111,temp_reg_Q0__5_n_112,temp_reg_Q0__5_n_113,temp_reg_Q0__5_n_114,temp_reg_Q0__5_n_115,temp_reg_Q0__5_n_116,temp_reg_Q0__5_n_117,temp_reg_Q0__5_n_118,temp_reg_Q0__5_n_119,temp_reg_Q0__5_n_120,temp_reg_Q0__5_n_121,temp_reg_Q0__5_n_122,temp_reg_Q0__5_n_123,temp_reg_Q0__5_n_124,temp_reg_Q0__5_n_125,temp_reg_Q0__5_n_126,temp_reg_Q0__5_n_127,temp_reg_Q0__5_n_128,temp_reg_Q0__5_n_129,temp_reg_Q0__5_n_130,temp_reg_Q0__5_n_131,temp_reg_Q0__5_n_132,temp_reg_Q0__5_n_133,temp_reg_Q0__5_n_134,temp_reg_Q0__5_n_135,temp_reg_Q0__5_n_136,temp_reg_Q0__5_n_137,temp_reg_Q0__5_n_138,temp_reg_Q0__5_n_139,temp_reg_Q0__5_n_140,temp_reg_Q0__5_n_141,temp_reg_Q0__5_n_142,temp_reg_Q0__5_n_143,temp_reg_Q0__5_n_144,temp_reg_Q0__5_n_145,temp_reg_Q0__5_n_146,temp_reg_Q0__5_n_147,temp_reg_Q0__5_n_148,temp_reg_Q0__5_n_149,temp_reg_Q0__5_n_150,temp_reg_Q0__5_n_151,temp_reg_Q0__5_n_152,temp_reg_Q0__5_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_temp_reg_Q0__5_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_temp_reg_Q0__5_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    temp_reg_Q0__6
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp_reg_Q0__6_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\Q_shift_reg_reg[2]_4 [11],\Q_shift_reg_reg[2]_4 [11],\Q_shift_reg_reg[2]_4 [11],\Q_shift_reg_reg[2]_4 [11],\Q_shift_reg_reg[2]_4 [11],\Q_shift_reg_reg[2]_4 [11],\Q_shift_reg_reg[2]_4 }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_temp_reg_Q0__6_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp_reg_Q0__6_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp_reg_Q0__6_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(temp_reg_Q0__9_i_1_n_0),
        .CEB2(temp_reg_Q0__9_i_1_n_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_temp_reg_Q0__6_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp_reg_Q0__6_OVERFLOW_UNCONNECTED),
        .P({NLW_temp_reg_Q0__6_P_UNCONNECTED[47:32],temp_reg_Q0__6_n_74,temp_reg_Q0__6_n_75,temp_reg_Q0__6_n_76,temp_reg_Q0__6_n_77,temp_reg_Q0__6_n_78,temp_reg_Q0__6_n_79,temp_reg_Q0__6_n_80,temp_reg_Q0__6_n_81,temp_reg_Q0__6_n_82,temp_reg_Q0__6_n_83,temp_reg_Q0__6_n_84,temp_reg_Q0__6_n_85,temp_reg_Q0__6_n_86,temp_reg_Q0__6_n_87,temp_reg_Q0__6_n_88,temp_reg_Q0__6_n_89,temp_reg_Q0__6_n_90,temp_reg_Q0__6_n_91,temp_reg_Q0__6_n_92,temp_reg_Q0__6_n_93,temp_reg_Q0__6_n_94,temp_reg_Q0__6_n_95,temp_reg_Q0__6_n_96,temp_reg_Q0__6_n_97,temp_reg_Q0__6_n_98,temp_reg_Q0__6_n_99,temp_reg_Q0__6_n_100,temp_reg_Q0__6_n_101,temp_reg_Q0__6_n_102,temp_reg_Q0__6_n_103,temp_reg_Q0__6_n_104,temp_reg_Q0__6_n_105}),
        .PATTERNBDETECT(NLW_temp_reg_Q0__6_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp_reg_Q0__6_PATTERNDETECT_UNCONNECTED),
        .PCIN({temp_reg_Q0__5_n_106,temp_reg_Q0__5_n_107,temp_reg_Q0__5_n_108,temp_reg_Q0__5_n_109,temp_reg_Q0__5_n_110,temp_reg_Q0__5_n_111,temp_reg_Q0__5_n_112,temp_reg_Q0__5_n_113,temp_reg_Q0__5_n_114,temp_reg_Q0__5_n_115,temp_reg_Q0__5_n_116,temp_reg_Q0__5_n_117,temp_reg_Q0__5_n_118,temp_reg_Q0__5_n_119,temp_reg_Q0__5_n_120,temp_reg_Q0__5_n_121,temp_reg_Q0__5_n_122,temp_reg_Q0__5_n_123,temp_reg_Q0__5_n_124,temp_reg_Q0__5_n_125,temp_reg_Q0__5_n_126,temp_reg_Q0__5_n_127,temp_reg_Q0__5_n_128,temp_reg_Q0__5_n_129,temp_reg_Q0__5_n_130,temp_reg_Q0__5_n_131,temp_reg_Q0__5_n_132,temp_reg_Q0__5_n_133,temp_reg_Q0__5_n_134,temp_reg_Q0__5_n_135,temp_reg_Q0__5_n_136,temp_reg_Q0__5_n_137,temp_reg_Q0__5_n_138,temp_reg_Q0__5_n_139,temp_reg_Q0__5_n_140,temp_reg_Q0__5_n_141,temp_reg_Q0__5_n_142,temp_reg_Q0__5_n_143,temp_reg_Q0__5_n_144,temp_reg_Q0__5_n_145,temp_reg_Q0__5_n_146,temp_reg_Q0__5_n_147,temp_reg_Q0__5_n_148,temp_reg_Q0__5_n_149,temp_reg_Q0__5_n_150,temp_reg_Q0__5_n_151,temp_reg_Q0__5_n_152,temp_reg_Q0__5_n_153}),
        .PCOUT(NLW_temp_reg_Q0__6_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_temp_reg_Q0__6_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_temp_reg_Q0__6_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    temp_reg_Q0__7
       (.A({\Q_shift_reg_reg[0]_2 [11],\Q_shift_reg_reg[0]_2 [11],\Q_shift_reg_reg[0]_2 [11],\Q_shift_reg_reg[0]_2 [11],\Q_shift_reg_reg[0]_2 [11],\Q_shift_reg_reg[0]_2 [11],\Q_shift_reg_reg[0]_2 [11],\Q_shift_reg_reg[0]_2 [11],\Q_shift_reg_reg[0]_2 [11],\Q_shift_reg_reg[0]_2 [11],\Q_shift_reg_reg[0]_2 [11],\Q_shift_reg_reg[0]_2 [11],\Q_shift_reg_reg[0]_2 [11],\Q_shift_reg_reg[0]_2 [11],\Q_shift_reg_reg[0]_2 [11],\Q_shift_reg_reg[0]_2 [11],\Q_shift_reg_reg[0]_2 [11],\Q_shift_reg_reg[0]_2 [11],\Q_shift_reg_reg[0]_2 }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp_reg_Q0__7_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_temp_reg_Q0__7_BCOUT_UNCONNECTED[17:0]),
        .C({temp_reg_Q0__10[31],temp_reg_Q0__10[31],temp_reg_Q0__10[31],temp_reg_Q0__10[31],temp_reg_Q0__10[31],temp_reg_Q0__10[31],temp_reg_Q0__10[31],temp_reg_Q0__10[31],temp_reg_Q0__10[31],temp_reg_Q0__10[31],temp_reg_Q0__10[31],temp_reg_Q0__10[31],temp_reg_Q0__10[31],temp_reg_Q0__10[31],temp_reg_Q0__10[31],temp_reg_Q0__10[31],temp_reg_Q0__10,temp_reg_Q0__6_n_94,temp_reg_Q0__6_n_95,temp_reg_Q0__6_n_96,temp_reg_Q0__6_n_97,temp_reg_Q0__6_n_98,temp_reg_Q0__6_n_99,temp_reg_Q0__6_n_100,temp_reg_Q0__6_n_101,temp_reg_Q0__6_n_102,temp_reg_Q0__6_n_103,temp_reg_Q0__6_n_104,temp_reg_Q0__6_n_105}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp_reg_Q0__7_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp_reg_Q0__7_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(temp_reg_Q0__9_i_1_n_0),
        .CEA2(temp_reg_Q0__9_i_1_n_0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_temp_reg_Q0__7_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp_reg_Q0__7_OVERFLOW_UNCONNECTED),
        .P(NLW_temp_reg_Q0__7_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_temp_reg_Q0__7_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp_reg_Q0__7_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({temp_reg_Q0__7_n_106,temp_reg_Q0__7_n_107,temp_reg_Q0__7_n_108,temp_reg_Q0__7_n_109,temp_reg_Q0__7_n_110,temp_reg_Q0__7_n_111,temp_reg_Q0__7_n_112,temp_reg_Q0__7_n_113,temp_reg_Q0__7_n_114,temp_reg_Q0__7_n_115,temp_reg_Q0__7_n_116,temp_reg_Q0__7_n_117,temp_reg_Q0__7_n_118,temp_reg_Q0__7_n_119,temp_reg_Q0__7_n_120,temp_reg_Q0__7_n_121,temp_reg_Q0__7_n_122,temp_reg_Q0__7_n_123,temp_reg_Q0__7_n_124,temp_reg_Q0__7_n_125,temp_reg_Q0__7_n_126,temp_reg_Q0__7_n_127,temp_reg_Q0__7_n_128,temp_reg_Q0__7_n_129,temp_reg_Q0__7_n_130,temp_reg_Q0__7_n_131,temp_reg_Q0__7_n_132,temp_reg_Q0__7_n_133,temp_reg_Q0__7_n_134,temp_reg_Q0__7_n_135,temp_reg_Q0__7_n_136,temp_reg_Q0__7_n_137,temp_reg_Q0__7_n_138,temp_reg_Q0__7_n_139,temp_reg_Q0__7_n_140,temp_reg_Q0__7_n_141,temp_reg_Q0__7_n_142,temp_reg_Q0__7_n_143,temp_reg_Q0__7_n_144,temp_reg_Q0__7_n_145,temp_reg_Q0__7_n_146,temp_reg_Q0__7_n_147,temp_reg_Q0__7_n_148,temp_reg_Q0__7_n_149,temp_reg_Q0__7_n_150,temp_reg_Q0__7_n_151,temp_reg_Q0__7_n_152,temp_reg_Q0__7_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_temp_reg_Q0__7_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_temp_reg_Q0__7_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 temp_reg_Q0__7_i_1
       (.CI(temp_reg_Q0__7_i_2_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_temp_reg_Q0__7_i_1_CO_UNCONNECTED[7:3],temp_reg_Q0__7_i_1_n_5,temp_reg_Q0__7_i_1_n_6,temp_reg_Q0__7_i_1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,temp_reg_Q0__6_n_76,temp_reg_Q0__6_n_77,temp_reg_Q0__6_n_78}),
        .O({NLW_temp_reg_Q0__7_i_1_O_UNCONNECTED[7:4],temp_reg_Q0__10[31:28]}),
        .S({1'b0,1'b0,1'b0,1'b0,temp_reg_Q0__7_i_4_n_0,temp_reg_Q0__7_i_5_n_0,temp_reg_Q0__7_i_6_n_0,temp_reg_Q0__7_i_7_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__7_i_10
       (.I0(temp_reg_Q0__6_n_80),
        .I1(temp_reg_Q0__6_n_79),
        .O(temp_reg_Q0__7_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__7_i_11
       (.I0(temp_reg_Q0__6_n_81),
        .I1(temp_reg_Q0__6_n_80),
        .O(temp_reg_Q0__7_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__7_i_12
       (.I0(temp_reg_Q0__6_n_81),
        .I1(\Q_shift_reg_reg[3]_5 [11]),
        .O(temp_reg_Q0__7_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__7_i_13
       (.I0(\Q_shift_reg_reg[3]_5 [10]),
        .I1(temp_reg_Q0__6_n_82),
        .O(temp_reg_Q0__7_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__7_i_14
       (.I0(\Q_shift_reg_reg[3]_5 [9]),
        .I1(temp_reg_Q0__6_n_83),
        .O(temp_reg_Q0__7_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__7_i_15
       (.I0(\Q_shift_reg_reg[3]_5 [8]),
        .I1(temp_reg_Q0__6_n_84),
        .O(temp_reg_Q0__7_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__7_i_16
       (.I0(\Q_shift_reg_reg[3]_5 [7]),
        .I1(temp_reg_Q0__6_n_85),
        .O(temp_reg_Q0__7_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__7_i_17
       (.I0(\Q_shift_reg_reg[3]_5 [6]),
        .I1(temp_reg_Q0__6_n_86),
        .O(temp_reg_Q0__7_i_17_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__7_i_18
       (.I0(\Q_shift_reg_reg[3]_5 [5]),
        .I1(temp_reg_Q0__6_n_87),
        .O(temp_reg_Q0__7_i_18_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__7_i_19
       (.I0(\Q_shift_reg_reg[3]_5 [4]),
        .I1(temp_reg_Q0__6_n_88),
        .O(temp_reg_Q0__7_i_19_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 temp_reg_Q0__7_i_2
       (.CI(temp_reg_Q0__7_i_3_n_0),
        .CI_TOP(1'b0),
        .CO({temp_reg_Q0__7_i_2_n_0,temp_reg_Q0__7_i_2_n_1,temp_reg_Q0__7_i_2_n_2,temp_reg_Q0__7_i_2_n_3,temp_reg_Q0__7_i_2_n_4,temp_reg_Q0__7_i_2_n_5,temp_reg_Q0__7_i_2_n_6,temp_reg_Q0__7_i_2_n_7}),
        .DI({temp_reg_Q0__6_n_79,temp_reg_Q0__6_n_80,temp_reg_Q0__6_n_81,temp_reg_Q0__7_i_8_n_0,\Q_shift_reg_reg[3]_5 [10:7]}),
        .O(temp_reg_Q0__10[27:20]),
        .S({temp_reg_Q0__7_i_9_n_0,temp_reg_Q0__7_i_10_n_0,temp_reg_Q0__7_i_11_n_0,temp_reg_Q0__7_i_12_n_0,temp_reg_Q0__7_i_13_n_0,temp_reg_Q0__7_i_14_n_0,temp_reg_Q0__7_i_15_n_0,temp_reg_Q0__7_i_16_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__7_i_20
       (.I0(\Q_shift_reg_reg[3]_5 [3]),
        .I1(temp_reg_Q0__6_n_89),
        .O(temp_reg_Q0__7_i_20_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__7_i_21
       (.I0(\Q_shift_reg_reg[3]_5 [2]),
        .I1(temp_reg_Q0__6_n_90),
        .O(temp_reg_Q0__7_i_21_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__7_i_22
       (.I0(\Q_shift_reg_reg[3]_5 [1]),
        .I1(temp_reg_Q0__6_n_91),
        .O(temp_reg_Q0__7_i_22_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_reg_Q0__7_i_23
       (.I0(\Q_shift_reg_reg[3]_5 [0]),
        .I1(temp_reg_Q0__6_n_92),
        .O(temp_reg_Q0__7_i_23_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 temp_reg_Q0__7_i_3
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({temp_reg_Q0__7_i_3_n_0,temp_reg_Q0__7_i_3_n_1,temp_reg_Q0__7_i_3_n_2,temp_reg_Q0__7_i_3_n_3,temp_reg_Q0__7_i_3_n_4,temp_reg_Q0__7_i_3_n_5,temp_reg_Q0__7_i_3_n_6,temp_reg_Q0__7_i_3_n_7}),
        .DI({\Q_shift_reg_reg[3]_5 [6:0],1'b0}),
        .O(temp_reg_Q0__10[19:12]),
        .S({temp_reg_Q0__7_i_17_n_0,temp_reg_Q0__7_i_18_n_0,temp_reg_Q0__7_i_19_n_0,temp_reg_Q0__7_i_20_n_0,temp_reg_Q0__7_i_21_n_0,temp_reg_Q0__7_i_22_n_0,temp_reg_Q0__7_i_23_n_0,temp_reg_Q0__6_n_93}));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__7_i_4
       (.I0(temp_reg_Q0__6_n_75),
        .I1(temp_reg_Q0__6_n_74),
        .O(temp_reg_Q0__7_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__7_i_5
       (.I0(temp_reg_Q0__6_n_76),
        .I1(temp_reg_Q0__6_n_75),
        .O(temp_reg_Q0__7_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__7_i_6
       (.I0(temp_reg_Q0__6_n_77),
        .I1(temp_reg_Q0__6_n_76),
        .O(temp_reg_Q0__7_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__7_i_7
       (.I0(temp_reg_Q0__6_n_78),
        .I1(temp_reg_Q0__6_n_77),
        .O(temp_reg_Q0__7_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    temp_reg_Q0__7_i_8
       (.I0(temp_reg_Q0__6_n_81),
        .O(temp_reg_Q0__7_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp_reg_Q0__7_i_9
       (.I0(temp_reg_Q0__6_n_79),
        .I1(temp_reg_Q0__6_n_78),
        .O(temp_reg_Q0__7_i_9_n_0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    temp_reg_Q0__8
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp_reg_Q0__8_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({Q_input[11],Q_input[11],Q_input[11],Q_input[11],Q_input[11],Q_input[11],Q_input}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_temp_reg_Q0__8_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp_reg_Q0__8_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp_reg_Q0__8_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(temp_reg_Q0__9_i_1_n_0),
        .CEB2(temp_reg_Q0__9_i_1_n_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_temp_reg_Q0__8_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp_reg_Q0__8_OVERFLOW_UNCONNECTED),
        .P(NLW_temp_reg_Q0__8_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_temp_reg_Q0__8_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp_reg_Q0__8_PATTERNDETECT_UNCONNECTED),
        .PCIN({temp_reg_Q0__7_n_106,temp_reg_Q0__7_n_107,temp_reg_Q0__7_n_108,temp_reg_Q0__7_n_109,temp_reg_Q0__7_n_110,temp_reg_Q0__7_n_111,temp_reg_Q0__7_n_112,temp_reg_Q0__7_n_113,temp_reg_Q0__7_n_114,temp_reg_Q0__7_n_115,temp_reg_Q0__7_n_116,temp_reg_Q0__7_n_117,temp_reg_Q0__7_n_118,temp_reg_Q0__7_n_119,temp_reg_Q0__7_n_120,temp_reg_Q0__7_n_121,temp_reg_Q0__7_n_122,temp_reg_Q0__7_n_123,temp_reg_Q0__7_n_124,temp_reg_Q0__7_n_125,temp_reg_Q0__7_n_126,temp_reg_Q0__7_n_127,temp_reg_Q0__7_n_128,temp_reg_Q0__7_n_129,temp_reg_Q0__7_n_130,temp_reg_Q0__7_n_131,temp_reg_Q0__7_n_132,temp_reg_Q0__7_n_133,temp_reg_Q0__7_n_134,temp_reg_Q0__7_n_135,temp_reg_Q0__7_n_136,temp_reg_Q0__7_n_137,temp_reg_Q0__7_n_138,temp_reg_Q0__7_n_139,temp_reg_Q0__7_n_140,temp_reg_Q0__7_n_141,temp_reg_Q0__7_n_142,temp_reg_Q0__7_n_143,temp_reg_Q0__7_n_144,temp_reg_Q0__7_n_145,temp_reg_Q0__7_n_146,temp_reg_Q0__7_n_147,temp_reg_Q0__7_n_148,temp_reg_Q0__7_n_149,temp_reg_Q0__7_n_150,temp_reg_Q0__7_n_151,temp_reg_Q0__7_n_152,temp_reg_Q0__7_n_153}),
        .PCOUT({temp_reg_Q0__8_n_106,temp_reg_Q0__8_n_107,temp_reg_Q0__8_n_108,temp_reg_Q0__8_n_109,temp_reg_Q0__8_n_110,temp_reg_Q0__8_n_111,temp_reg_Q0__8_n_112,temp_reg_Q0__8_n_113,temp_reg_Q0__8_n_114,temp_reg_Q0__8_n_115,temp_reg_Q0__8_n_116,temp_reg_Q0__8_n_117,temp_reg_Q0__8_n_118,temp_reg_Q0__8_n_119,temp_reg_Q0__8_n_120,temp_reg_Q0__8_n_121,temp_reg_Q0__8_n_122,temp_reg_Q0__8_n_123,temp_reg_Q0__8_n_124,temp_reg_Q0__8_n_125,temp_reg_Q0__8_n_126,temp_reg_Q0__8_n_127,temp_reg_Q0__8_n_128,temp_reg_Q0__8_n_129,temp_reg_Q0__8_n_130,temp_reg_Q0__8_n_131,temp_reg_Q0__8_n_132,temp_reg_Q0__8_n_133,temp_reg_Q0__8_n_134,temp_reg_Q0__8_n_135,temp_reg_Q0__8_n_136,temp_reg_Q0__8_n_137,temp_reg_Q0__8_n_138,temp_reg_Q0__8_n_139,temp_reg_Q0__8_n_140,temp_reg_Q0__8_n_141,temp_reg_Q0__8_n_142,temp_reg_Q0__8_n_143,temp_reg_Q0__8_n_144,temp_reg_Q0__8_n_145,temp_reg_Q0__8_n_146,temp_reg_Q0__8_n_147,temp_reg_Q0__8_n_148,temp_reg_Q0__8_n_149,temp_reg_Q0__8_n_150,temp_reg_Q0__8_n_151,temp_reg_Q0__8_n_152,temp_reg_Q0__8_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_temp_reg_Q0__8_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_temp_reg_Q0__8_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    temp_reg_Q0__9
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp_reg_Q0__9_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({Q_input[11],Q_input[11],Q_input[11],Q_input[11],Q_input[11],Q_input[11],Q_input}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_temp_reg_Q0__9_BCOUT_UNCONNECTED[17:0]),
        .C({temp_reg_Q[31],temp_reg_Q[31],temp_reg_Q[31],temp_reg_Q[31],temp_reg_Q[31],temp_reg_Q[31],temp_reg_Q[31],temp_reg_Q[31],temp_reg_Q[31],temp_reg_Q[31],temp_reg_Q[31],temp_reg_Q[31],temp_reg_Q[31],temp_reg_Q[31],temp_reg_Q[31],temp_reg_Q[31],temp_reg_Q,Q_output}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp_reg_Q0__9_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp_reg_Q0__9_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(temp_reg_Q0__9_i_1_n_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(temp_reg_Q0__9_i_1_n_0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_temp_reg_Q0__9_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp_reg_Q0__9_OVERFLOW_UNCONNECTED),
        .P({temp_reg_Q0__9_n_58,temp_reg_Q0__9_n_59,temp_reg_Q0__9_n_60,temp_reg_Q0__9_n_61,temp_reg_Q0__9_n_62,temp_reg_Q0__9_n_63,temp_reg_Q0__9_n_64,temp_reg_Q0__9_n_65,temp_reg_Q0__9_n_66,temp_reg_Q0__9_n_67,temp_reg_Q0__9_n_68,temp_reg_Q0__9_n_69,temp_reg_Q0__9_n_70,temp_reg_Q0__9_n_71,temp_reg_Q0__9_n_72,temp_reg_Q0__9_n_73,temp_reg_Q,Q_output}),
        .PATTERNBDETECT(NLW_temp_reg_Q0__9_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp_reg_Q0__9_PATTERNDETECT_UNCONNECTED),
        .PCIN({temp_reg_Q0__8_n_106,temp_reg_Q0__8_n_107,temp_reg_Q0__8_n_108,temp_reg_Q0__8_n_109,temp_reg_Q0__8_n_110,temp_reg_Q0__8_n_111,temp_reg_Q0__8_n_112,temp_reg_Q0__8_n_113,temp_reg_Q0__8_n_114,temp_reg_Q0__8_n_115,temp_reg_Q0__8_n_116,temp_reg_Q0__8_n_117,temp_reg_Q0__8_n_118,temp_reg_Q0__8_n_119,temp_reg_Q0__8_n_120,temp_reg_Q0__8_n_121,temp_reg_Q0__8_n_122,temp_reg_Q0__8_n_123,temp_reg_Q0__8_n_124,temp_reg_Q0__8_n_125,temp_reg_Q0__8_n_126,temp_reg_Q0__8_n_127,temp_reg_Q0__8_n_128,temp_reg_Q0__8_n_129,temp_reg_Q0__8_n_130,temp_reg_Q0__8_n_131,temp_reg_Q0__8_n_132,temp_reg_Q0__8_n_133,temp_reg_Q0__8_n_134,temp_reg_Q0__8_n_135,temp_reg_Q0__8_n_136,temp_reg_Q0__8_n_137,temp_reg_Q0__8_n_138,temp_reg_Q0__8_n_139,temp_reg_Q0__8_n_140,temp_reg_Q0__8_n_141,temp_reg_Q0__8_n_142,temp_reg_Q0__8_n_143,temp_reg_Q0__8_n_144,temp_reg_Q0__8_n_145,temp_reg_Q0__8_n_146,temp_reg_Q0__8_n_147,temp_reg_Q0__8_n_148,temp_reg_Q0__8_n_149,temp_reg_Q0__8_n_150,temp_reg_Q0__8_n_151,temp_reg_Q0__8_n_152,temp_reg_Q0__8_n_153}),
        .PCOUT(NLW_temp_reg_Q0__9_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_temp_reg_Q0__9_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_temp_reg_Q0__9_XOROUT_UNCONNECTED[7:0]));
  LUT3 #(
    .INIT(8'h08)) 
    temp_reg_Q0__9_i_1
       (.I0(data_in_valid),
        .I1(data_in_ready),
        .I2(reset),
        .O(temp_reg_Q0__9_i_1_n_0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    temp_reg_Q2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp_reg_Q2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\Q_shift_reg_reg[12]_11 [11],\Q_shift_reg_reg[12]_11 [11],\Q_shift_reg_reg[12]_11 [11],\Q_shift_reg_reg[12]_11 [11],\Q_shift_reg_reg[12]_11 [11],\Q_shift_reg_reg[12]_11 [11],\Q_shift_reg_reg[12]_11 }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT({temp_reg_Q2_n_6,temp_reg_Q2_n_7,temp_reg_Q2_n_8,temp_reg_Q2_n_9,temp_reg_Q2_n_10,temp_reg_Q2_n_11,temp_reg_Q2_n_12,temp_reg_Q2_n_13,temp_reg_Q2_n_14,temp_reg_Q2_n_15,temp_reg_Q2_n_16,temp_reg_Q2_n_17,temp_reg_Q2_n_18,temp_reg_Q2_n_19,temp_reg_Q2_n_20,temp_reg_Q2_n_21,temp_reg_Q2_n_22,temp_reg_Q2_n_23}),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp_reg_Q2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp_reg_Q2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(temp_reg_Q0__9_i_1_n_0),
        .CEB2(temp_reg_Q0__9_i_1_n_0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_temp_reg_Q2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp_reg_Q2_OVERFLOW_UNCONNECTED),
        .P(NLW_temp_reg_Q2_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_temp_reg_Q2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp_reg_Q2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({temp_reg_Q2_n_106,temp_reg_Q2_n_107,temp_reg_Q2_n_108,temp_reg_Q2_n_109,temp_reg_Q2_n_110,temp_reg_Q2_n_111,temp_reg_Q2_n_112,temp_reg_Q2_n_113,temp_reg_Q2_n_114,temp_reg_Q2_n_115,temp_reg_Q2_n_116,temp_reg_Q2_n_117,temp_reg_Q2_n_118,temp_reg_Q2_n_119,temp_reg_Q2_n_120,temp_reg_Q2_n_121,temp_reg_Q2_n_122,temp_reg_Q2_n_123,temp_reg_Q2_n_124,temp_reg_Q2_n_125,temp_reg_Q2_n_126,temp_reg_Q2_n_127,temp_reg_Q2_n_128,temp_reg_Q2_n_129,temp_reg_Q2_n_130,temp_reg_Q2_n_131,temp_reg_Q2_n_132,temp_reg_Q2_n_133,temp_reg_Q2_n_134,temp_reg_Q2_n_135,temp_reg_Q2_n_136,temp_reg_Q2_n_137,temp_reg_Q2_n_138,temp_reg_Q2_n_139,temp_reg_Q2_n_140,temp_reg_Q2_n_141,temp_reg_Q2_n_142,temp_reg_Q2_n_143,temp_reg_Q2_n_144,temp_reg_Q2_n_145,temp_reg_Q2_n_146,temp_reg_Q2_n_147,temp_reg_Q2_n_148,temp_reg_Q2_n_149,temp_reg_Q2_n_150,temp_reg_Q2_n_151,temp_reg_Q2_n_152,temp_reg_Q2_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_temp_reg_Q2_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_temp_reg_Q2_XOROUT_UNCONNECTED[7:0]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
