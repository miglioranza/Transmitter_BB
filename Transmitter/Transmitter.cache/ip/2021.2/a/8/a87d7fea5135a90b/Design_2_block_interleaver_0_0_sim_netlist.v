// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Mar 17 12:02:29 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_block_interleaver_0_0_sim_netlist.v
// Design      : Design_2_block_interleaver_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Design_2_block_interleaver_0_0,block_interleaver,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "block_interleaver,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    data_in,
    data_in_ready,
    write_en,
    code_rate,
    data_out,
    data_out_ready,
    read_valid);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Design_2_clk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [31:0]data_in;
  input data_in_ready;
  input write_en;
  input [1:0]code_rate;
  output [31:0]data_out;
  output data_out_ready;
  output read_valid;

  wire clk;
  wire [1:0]code_rate;
  wire [31:0]data_in;
  wire data_in_ready;
  wire [31:0]data_out;
  wire data_out_ready;
  wire read_valid;
  wire rst;
  wire write_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_block_interleaver U0
       (.clk(clk),
        .code_rate(code_rate),
        .data_in(data_in),
        .data_in_ready(data_in_ready),
        .data_out(data_out),
        .data_out_ready(data_out_ready),
        .read_valid(read_valid),
        .rst(rst),
        .write_en(write_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_block_interleaver
   (data_out,
    data_out_ready,
    read_valid,
    code_rate,
    clk,
    rst,
    data_in,
    write_en,
    data_in_ready);
  output [31:0]data_out;
  output data_out_ready;
  output read_valid;
  input [1:0]code_rate;
  input clk;
  input rst;
  input [31:0]data_in;
  input write_en;
  input data_in_ready;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire clk;
  wire [1:0]code_rate;
  wire col_cnt;
  wire \col_cnt[0]_i_1_n_0 ;
  wire \col_cnt[1]_i_1_n_0 ;
  wire \col_cnt[2]_i_1_n_0 ;
  wire \col_cnt[3]_i_2_n_0 ;
  wire \col_cnt_reg_n_0_[0] ;
  wire \col_cnt_reg_n_0_[1] ;
  wire \col_cnt_reg_n_0_[2] ;
  wire \col_cnt_reg_n_0_[3] ;
  wire [31:0]data_in;
  wire data_in_ready;
  wire [31:0]data_out;
  wire data_out_ready;
  wire data_out_ready0;
  wire data_out_ready0_carry__0_i_1_n_0;
  wire data_out_ready0_carry__0_i_2_n_0;
  wire data_out_ready0_carry__0_i_3_n_0;
  wire data_out_ready0_carry__0_n_6;
  wire data_out_ready0_carry__0_n_7;
  wire data_out_ready0_carry_i_1_n_0;
  wire data_out_ready0_carry_i_2_n_0;
  wire data_out_ready0_carry_i_3_n_0;
  wire data_out_ready0_carry_i_4_n_0;
  wire data_out_ready0_carry_i_5_n_0;
  wire data_out_ready0_carry_i_6_n_0;
  wire data_out_ready0_carry_i_7_n_0;
  wire data_out_ready0_carry_i_8_n_0;
  wire data_out_ready0_carry_n_0;
  wire data_out_ready0_carry_n_1;
  wire data_out_ready0_carry_n_2;
  wire data_out_ready0_carry_n_3;
  wire data_out_ready0_carry_n_4;
  wire data_out_ready0_carry_n_5;
  wire data_out_ready0_carry_n_6;
  wire data_out_ready0_carry_n_7;
  wire [30:0]data_out_ready1;
  wire data_out_ready1_carry__0_i_1_n_0;
  wire data_out_ready1_carry__0_i_2_n_0;
  wire data_out_ready1_carry__0_i_3_n_0;
  wire data_out_ready1_carry__0_i_4_n_0;
  wire data_out_ready1_carry__0_i_5_n_0;
  wire data_out_ready1_carry__0_i_6_n_0;
  wire data_out_ready1_carry__0_i_7_n_0;
  wire data_out_ready1_carry__0_i_8_n_0;
  wire data_out_ready1_carry__0_n_0;
  wire data_out_ready1_carry__0_n_1;
  wire data_out_ready1_carry__0_n_2;
  wire data_out_ready1_carry__0_n_3;
  wire data_out_ready1_carry__0_n_4;
  wire data_out_ready1_carry__0_n_5;
  wire data_out_ready1_carry__0_n_6;
  wire data_out_ready1_carry__0_n_7;
  wire data_out_ready1_carry__1_i_1_n_0;
  wire data_out_ready1_carry__1_i_2_n_0;
  wire data_out_ready1_carry__1_i_3_n_0;
  wire data_out_ready1_carry__1_i_4_n_0;
  wire data_out_ready1_carry__1_i_5_n_0;
  wire data_out_ready1_carry__1_i_6_n_0;
  wire data_out_ready1_carry__1_i_7_n_0;
  wire data_out_ready1_carry__1_i_8_n_0;
  wire data_out_ready1_carry__1_n_0;
  wire data_out_ready1_carry__1_n_1;
  wire data_out_ready1_carry__1_n_2;
  wire data_out_ready1_carry__1_n_3;
  wire data_out_ready1_carry__1_n_4;
  wire data_out_ready1_carry__1_n_5;
  wire data_out_ready1_carry__1_n_6;
  wire data_out_ready1_carry__1_n_7;
  wire data_out_ready1_carry__2_i_1_n_0;
  wire data_out_ready1_carry__2_i_2_n_0;
  wire data_out_ready1_carry__2_i_3_n_0;
  wire data_out_ready1_carry__2_i_4_n_0;
  wire data_out_ready1_carry__2_i_5_n_0;
  wire data_out_ready1_carry__2_i_6_n_0;
  wire data_out_ready1_carry__2_i_7_n_0;
  wire data_out_ready1_carry__2_n_2;
  wire data_out_ready1_carry__2_n_3;
  wire data_out_ready1_carry__2_n_4;
  wire data_out_ready1_carry__2_n_5;
  wire data_out_ready1_carry__2_n_6;
  wire data_out_ready1_carry__2_n_7;
  wire data_out_ready1_carry_i_1_n_0;
  wire data_out_ready1_carry_i_2_n_0;
  wire data_out_ready1_carry_i_3_n_0;
  wire data_out_ready1_carry_i_4_n_0;
  wire data_out_ready1_carry_i_5_n_0;
  wire data_out_ready1_carry_i_6_n_0;
  wire data_out_ready1_carry_i_7_n_0;
  wire data_out_ready1_carry_i_8_n_0;
  wire data_out_ready1_carry_n_0;
  wire data_out_ready1_carry_n_1;
  wire data_out_ready1_carry_n_2;
  wire data_out_ready1_carry_n_3;
  wire data_out_ready1_carry_n_4;
  wire data_out_ready1_carry_n_5;
  wire data_out_ready1_carry_n_6;
  wire data_out_ready1_carry_n_7;
  wire data_out_ready2__0_i_1_n_0;
  wire data_out_ready2__0_i_2_n_0;
  wire data_out_ready2__0_n_100;
  wire data_out_ready2__0_n_101;
  wire data_out_ready2__0_n_102;
  wire data_out_ready2__0_n_103;
  wire data_out_ready2__0_n_104;
  wire data_out_ready2__0_n_105;
  wire data_out_ready2__0_n_106;
  wire data_out_ready2__0_n_107;
  wire data_out_ready2__0_n_108;
  wire data_out_ready2__0_n_109;
  wire data_out_ready2__0_n_110;
  wire data_out_ready2__0_n_111;
  wire data_out_ready2__0_n_112;
  wire data_out_ready2__0_n_113;
  wire data_out_ready2__0_n_114;
  wire data_out_ready2__0_n_115;
  wire data_out_ready2__0_n_116;
  wire data_out_ready2__0_n_117;
  wire data_out_ready2__0_n_118;
  wire data_out_ready2__0_n_119;
  wire data_out_ready2__0_n_120;
  wire data_out_ready2__0_n_121;
  wire data_out_ready2__0_n_122;
  wire data_out_ready2__0_n_123;
  wire data_out_ready2__0_n_124;
  wire data_out_ready2__0_n_125;
  wire data_out_ready2__0_n_126;
  wire data_out_ready2__0_n_127;
  wire data_out_ready2__0_n_128;
  wire data_out_ready2__0_n_129;
  wire data_out_ready2__0_n_130;
  wire data_out_ready2__0_n_131;
  wire data_out_ready2__0_n_132;
  wire data_out_ready2__0_n_133;
  wire data_out_ready2__0_n_134;
  wire data_out_ready2__0_n_135;
  wire data_out_ready2__0_n_136;
  wire data_out_ready2__0_n_137;
  wire data_out_ready2__0_n_138;
  wire data_out_ready2__0_n_139;
  wire data_out_ready2__0_n_140;
  wire data_out_ready2__0_n_141;
  wire data_out_ready2__0_n_142;
  wire data_out_ready2__0_n_143;
  wire data_out_ready2__0_n_144;
  wire data_out_ready2__0_n_145;
  wire data_out_ready2__0_n_146;
  wire data_out_ready2__0_n_147;
  wire data_out_ready2__0_n_148;
  wire data_out_ready2__0_n_149;
  wire data_out_ready2__0_n_150;
  wire data_out_ready2__0_n_151;
  wire data_out_ready2__0_n_152;
  wire data_out_ready2__0_n_153;
  wire data_out_ready2__0_n_58;
  wire data_out_ready2__0_n_59;
  wire data_out_ready2__0_n_60;
  wire data_out_ready2__0_n_61;
  wire data_out_ready2__0_n_62;
  wire data_out_ready2__0_n_63;
  wire data_out_ready2__0_n_64;
  wire data_out_ready2__0_n_65;
  wire data_out_ready2__0_n_66;
  wire data_out_ready2__0_n_67;
  wire data_out_ready2__0_n_68;
  wire data_out_ready2__0_n_69;
  wire data_out_ready2__0_n_70;
  wire data_out_ready2__0_n_71;
  wire data_out_ready2__0_n_72;
  wire data_out_ready2__0_n_73;
  wire data_out_ready2__0_n_74;
  wire data_out_ready2__0_n_75;
  wire data_out_ready2__0_n_76;
  wire data_out_ready2__0_n_77;
  wire data_out_ready2__0_n_78;
  wire data_out_ready2__0_n_79;
  wire data_out_ready2__0_n_80;
  wire data_out_ready2__0_n_81;
  wire data_out_ready2__0_n_82;
  wire data_out_ready2__0_n_83;
  wire data_out_ready2__0_n_84;
  wire data_out_ready2__0_n_85;
  wire data_out_ready2__0_n_86;
  wire data_out_ready2__0_n_87;
  wire data_out_ready2__0_n_88;
  wire data_out_ready2__0_n_89;
  wire data_out_ready2__0_n_90;
  wire data_out_ready2__0_n_91;
  wire data_out_ready2__0_n_92;
  wire data_out_ready2__0_n_93;
  wire data_out_ready2__0_n_94;
  wire data_out_ready2__0_n_95;
  wire data_out_ready2__0_n_96;
  wire data_out_ready2__0_n_97;
  wire data_out_ready2__0_n_98;
  wire data_out_ready2__0_n_99;
  wire data_out_ready2__1_n_100;
  wire data_out_ready2__1_n_101;
  wire data_out_ready2__1_n_102;
  wire data_out_ready2__1_n_103;
  wire data_out_ready2__1_n_104;
  wire data_out_ready2__1_n_105;
  wire data_out_ready2__1_n_58;
  wire data_out_ready2__1_n_59;
  wire data_out_ready2__1_n_60;
  wire data_out_ready2__1_n_61;
  wire data_out_ready2__1_n_62;
  wire data_out_ready2__1_n_63;
  wire data_out_ready2__1_n_64;
  wire data_out_ready2__1_n_65;
  wire data_out_ready2__1_n_66;
  wire data_out_ready2__1_n_67;
  wire data_out_ready2__1_n_68;
  wire data_out_ready2__1_n_69;
  wire data_out_ready2__1_n_70;
  wire data_out_ready2__1_n_71;
  wire data_out_ready2__1_n_72;
  wire data_out_ready2__1_n_73;
  wire data_out_ready2__1_n_74;
  wire data_out_ready2__1_n_75;
  wire data_out_ready2__1_n_76;
  wire data_out_ready2__1_n_77;
  wire data_out_ready2__1_n_78;
  wire data_out_ready2__1_n_79;
  wire data_out_ready2__1_n_80;
  wire data_out_ready2__1_n_81;
  wire data_out_ready2__1_n_82;
  wire data_out_ready2__1_n_83;
  wire data_out_ready2__1_n_84;
  wire data_out_ready2__1_n_85;
  wire data_out_ready2__1_n_86;
  wire data_out_ready2__1_n_87;
  wire data_out_ready2__1_n_88;
  wire data_out_ready2__1_n_89;
  wire data_out_ready2__1_n_90;
  wire data_out_ready2__1_n_91;
  wire data_out_ready2__1_n_92;
  wire data_out_ready2__1_n_93;
  wire data_out_ready2__1_n_94;
  wire data_out_ready2__1_n_95;
  wire data_out_ready2__1_n_96;
  wire data_out_ready2__1_n_97;
  wire data_out_ready2__1_n_98;
  wire data_out_ready2__1_n_99;
  wire data_out_ready2__3;
  wire data_out_ready2_carry__0_i_1_n_0;
  wire data_out_ready2_carry__0_i_2_n_0;
  wire data_out_ready2_carry__0_i_3_n_0;
  wire data_out_ready2_carry__0_i_4_n_0;
  wire data_out_ready2_carry__0_i_5_n_0;
  wire data_out_ready2_carry__0_i_6_n_0;
  wire data_out_ready2_carry__0_i_7_n_0;
  wire data_out_ready2_carry__0_n_10;
  wire data_out_ready2_carry__0_n_11;
  wire data_out_ready2_carry__0_n_12;
  wire data_out_ready2_carry__0_n_13;
  wire data_out_ready2_carry__0_n_14;
  wire data_out_ready2_carry__0_n_15;
  wire data_out_ready2_carry__0_n_2;
  wire data_out_ready2_carry__0_n_3;
  wire data_out_ready2_carry__0_n_4;
  wire data_out_ready2_carry__0_n_5;
  wire data_out_ready2_carry__0_n_6;
  wire data_out_ready2_carry__0_n_7;
  wire data_out_ready2_carry__0_n_9;
  wire data_out_ready2_carry_i_1_n_0;
  wire data_out_ready2_carry_i_2_n_0;
  wire data_out_ready2_carry_i_3_n_0;
  wire data_out_ready2_carry_i_4_n_0;
  wire data_out_ready2_carry_i_5_n_0;
  wire data_out_ready2_carry_i_6_n_0;
  wire data_out_ready2_carry_i_7_n_0;
  wire data_out_ready2_carry_n_0;
  wire data_out_ready2_carry_n_1;
  wire data_out_ready2_carry_n_10;
  wire data_out_ready2_carry_n_11;
  wire data_out_ready2_carry_n_12;
  wire data_out_ready2_carry_n_13;
  wire data_out_ready2_carry_n_14;
  wire data_out_ready2_carry_n_15;
  wire data_out_ready2_carry_n_2;
  wire data_out_ready2_carry_n_3;
  wire data_out_ready2_carry_n_4;
  wire data_out_ready2_carry_n_5;
  wire data_out_ready2_carry_n_6;
  wire data_out_ready2_carry_n_7;
  wire data_out_ready2_carry_n_8;
  wire data_out_ready2_carry_n_9;
  wire \data_out_ready2_inferred__0/i__carry__0_n_6 ;
  wire \data_out_ready2_inferred__0/i__carry__0_n_7 ;
  wire \data_out_ready2_inferred__0/i__carry_n_0 ;
  wire \data_out_ready2_inferred__0/i__carry_n_1 ;
  wire \data_out_ready2_inferred__0/i__carry_n_2 ;
  wire \data_out_ready2_inferred__0/i__carry_n_3 ;
  wire \data_out_ready2_inferred__0/i__carry_n_4 ;
  wire \data_out_ready2_inferred__0/i__carry_n_5 ;
  wire \data_out_ready2_inferred__0/i__carry_n_6 ;
  wire \data_out_ready2_inferred__0/i__carry_n_7 ;
  wire data_out_ready2_n_100;
  wire data_out_ready2_n_101;
  wire data_out_ready2_n_102;
  wire data_out_ready2_n_103;
  wire data_out_ready2_n_104;
  wire data_out_ready2_n_105;
  wire data_out_ready2_n_106;
  wire data_out_ready2_n_107;
  wire data_out_ready2_n_108;
  wire data_out_ready2_n_109;
  wire data_out_ready2_n_110;
  wire data_out_ready2_n_111;
  wire data_out_ready2_n_112;
  wire data_out_ready2_n_113;
  wire data_out_ready2_n_114;
  wire data_out_ready2_n_115;
  wire data_out_ready2_n_116;
  wire data_out_ready2_n_117;
  wire data_out_ready2_n_118;
  wire data_out_ready2_n_119;
  wire data_out_ready2_n_120;
  wire data_out_ready2_n_121;
  wire data_out_ready2_n_122;
  wire data_out_ready2_n_123;
  wire data_out_ready2_n_124;
  wire data_out_ready2_n_125;
  wire data_out_ready2_n_126;
  wire data_out_ready2_n_127;
  wire data_out_ready2_n_128;
  wire data_out_ready2_n_129;
  wire data_out_ready2_n_130;
  wire data_out_ready2_n_131;
  wire data_out_ready2_n_132;
  wire data_out_ready2_n_133;
  wire data_out_ready2_n_134;
  wire data_out_ready2_n_135;
  wire data_out_ready2_n_136;
  wire data_out_ready2_n_137;
  wire data_out_ready2_n_138;
  wire data_out_ready2_n_139;
  wire data_out_ready2_n_140;
  wire data_out_ready2_n_141;
  wire data_out_ready2_n_142;
  wire data_out_ready2_n_143;
  wire data_out_ready2_n_144;
  wire data_out_ready2_n_145;
  wire data_out_ready2_n_146;
  wire data_out_ready2_n_147;
  wire data_out_ready2_n_148;
  wire data_out_ready2_n_149;
  wire data_out_ready2_n_150;
  wire data_out_ready2_n_151;
  wire data_out_ready2_n_152;
  wire data_out_ready2_n_153;
  wire data_out_ready2_n_58;
  wire data_out_ready2_n_59;
  wire data_out_ready2_n_60;
  wire data_out_ready2_n_61;
  wire data_out_ready2_n_62;
  wire data_out_ready2_n_63;
  wire data_out_ready2_n_64;
  wire data_out_ready2_n_65;
  wire data_out_ready2_n_66;
  wire data_out_ready2_n_67;
  wire data_out_ready2_n_68;
  wire data_out_ready2_n_69;
  wire data_out_ready2_n_70;
  wire data_out_ready2_n_71;
  wire data_out_ready2_n_72;
  wire data_out_ready2_n_73;
  wire data_out_ready2_n_74;
  wire data_out_ready2_n_75;
  wire data_out_ready2_n_76;
  wire data_out_ready2_n_77;
  wire data_out_ready2_n_78;
  wire data_out_ready2_n_79;
  wire data_out_ready2_n_80;
  wire data_out_ready2_n_81;
  wire data_out_ready2_n_82;
  wire data_out_ready2_n_83;
  wire data_out_ready2_n_84;
  wire data_out_ready2_n_85;
  wire data_out_ready2_n_86;
  wire data_out_ready2_n_87;
  wire data_out_ready2_n_88;
  wire data_out_ready2_n_89;
  wire data_out_ready2_n_90;
  wire data_out_ready2_n_91;
  wire data_out_ready2_n_92;
  wire data_out_ready2_n_93;
  wire data_out_ready2_n_94;
  wire data_out_ready2_n_95;
  wire data_out_ready2_n_96;
  wire data_out_ready2_n_97;
  wire data_out_ready2_n_98;
  wire data_out_ready2_n_99;
  wire data_out_ready_i_1_n_0;
  wire data_out_ready_i_2_n_0;
  wire data_out_ready_i_3_n_0;
  wire data_out_ready_i_4_n_0;
  wire data_out_ready_i_5_n_0;
  wire i__carry_i_1_n_13;
  wire i__carry_i_1_n_14;
  wire i__carry_i_1_n_15;
  wire i__carry_i_1_n_4;
  wire i__carry_i_1_n_6;
  wire i__carry_i_1_n_7;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire i__carry_i_9_n_0;
  wire memory;
  wire p_0_in;
  wire [31:0]p_1_out;
  wire [2:2]p_1_out__0;
  wire \read_addr[0]_i_1_n_0 ;
  wire \read_addr[0]_i_2_n_0 ;
  wire \read_addr[1]_i_1_n_0 ;
  wire \read_addr[2]_i_1_n_0 ;
  wire \read_addr[3]_i_1_n_0 ;
  wire \read_addr[3]_i_2_n_0 ;
  wire \read_addr[3]_i_3_n_0 ;
  wire \read_addr[3]_i_4_n_0 ;
  wire \read_addr[3]_i_5_n_0 ;
  wire \read_addr[4]_i_1_n_0 ;
  wire \read_addr[5]_i_1_n_0 ;
  wire \read_addr[5]_i_2_n_0 ;
  wire \read_addr[5]_i_3_n_0 ;
  wire \read_addr[5]_i_4_n_0 ;
  wire [5:0]read_addr_reg;
  wire read_valid;
  wire read_valid_i_1_n_0;
  wire \row_cnt[0]_i_1_n_0 ;
  wire \row_cnt[1]_i_1_n_0 ;
  wire \row_cnt[2]_i_1_n_0 ;
  wire \row_cnt[3]_i_1_n_0 ;
  wire \row_cnt_reg_n_0_[0] ;
  wire \row_cnt_reg_n_0_[1] ;
  wire \row_cnt_reg_n_0_[2] ;
  wire \row_cnt_reg_n_0_[3] ;
  wire rst;
  wire [0:0]sel_code;
  wire [11:0]write_addr;
  wire \write_addr[0]_i_1_n_0 ;
  wire \write_addr[10]_i_1_n_0 ;
  wire \write_addr[11]_i_2_n_0 ;
  wire \write_addr[11]_i_3_n_0 ;
  wire \write_addr[1]_i_1_n_0 ;
  wire \write_addr[2]_i_1_n_0 ;
  wire \write_addr[3]_i_1_n_0 ;
  wire \write_addr[4]_i_1_n_0 ;
  wire \write_addr[5]_i_1_n_0 ;
  wire \write_addr[5]_i_2_n_0 ;
  wire \write_addr[6]_i_1_n_0 ;
  wire \write_addr[7]_i_1_n_0 ;
  wire \write_addr[7]_i_2_n_0 ;
  wire \write_addr[8]_i_1_n_0 ;
  wire \write_addr[9]_i_1_n_0 ;
  wire write_addr__0;
  wire write_en;
  wire [7:0]NLW_data_out_ready0_carry_O_UNCONNECTED;
  wire [7:3]NLW_data_out_ready0_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_data_out_ready0_carry__0_O_UNCONNECTED;
  wire [7:6]NLW_data_out_ready1_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_data_out_ready1_carry__2_O_UNCONNECTED;
  wire NLW_data_out_ready2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_data_out_ready2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_data_out_ready2_OVERFLOW_UNCONNECTED;
  wire NLW_data_out_ready2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_data_out_ready2_PATTERNDETECT_UNCONNECTED;
  wire NLW_data_out_ready2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_data_out_ready2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_data_out_ready2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_data_out_ready2_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_data_out_ready2_XOROUT_UNCONNECTED;
  wire NLW_data_out_ready2__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_data_out_ready2__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_data_out_ready2__0_OVERFLOW_UNCONNECTED;
  wire NLW_data_out_ready2__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_data_out_ready2__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_data_out_ready2__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_data_out_ready2__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_data_out_ready2__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_data_out_ready2__0_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_data_out_ready2__0_XOROUT_UNCONNECTED;
  wire NLW_data_out_ready2__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_data_out_ready2__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_data_out_ready2__1_OVERFLOW_UNCONNECTED;
  wire NLW_data_out_ready2__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_data_out_ready2__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_data_out_ready2__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_data_out_ready2__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_data_out_ready2__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_data_out_ready2__1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_data_out_ready2__1_PCOUT_UNCONNECTED;
  wire [7:0]NLW_data_out_ready2__1_XOROUT_UNCONNECTED;
  wire [7:6]NLW_data_out_ready2_carry__0_CO_UNCONNECTED;
  wire [7:7]NLW_data_out_ready2_carry__0_O_UNCONNECTED;
  wire [7:0]\NLW_data_out_ready2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [7:3]\NLW_data_out_ready2_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [7:0]\NLW_data_out_ready2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [7:2]NLW_i__carry_i_1_CO_UNCONNECTED;
  wire [7:3]NLW_i__carry_i_1_O_UNCONNECTED;
  wire NLW_memory_reg_0_63_0_6_DOH_UNCONNECTED;
  wire NLW_memory_reg_0_63_14_20_DOH_UNCONNECTED;
  wire NLW_memory_reg_0_63_21_27_DOH_UNCONNECTED;
  wire NLW_memory_reg_0_63_28_31_DOE_UNCONNECTED;
  wire NLW_memory_reg_0_63_28_31_DOF_UNCONNECTED;
  wire NLW_memory_reg_0_63_28_31_DOG_UNCONNECTED;
  wire NLW_memory_reg_0_63_28_31_DOH_UNCONNECTED;
  wire NLW_memory_reg_0_63_7_13_DOH_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(write_en),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(write_en),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAEAEAEA)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(data_in_ready),
        .I3(data_out_ready0),
        .I4(memory),
        .I5(write_en),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(data_in_ready),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(data_out_ready2__3),
        .I4(\col_cnt_reg_n_0_[2] ),
        .I5(data_out_ready_i_5_n_0),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "read:100,idle:001,write:010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(rst),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "read:100,idle:001,write:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .CLR(rst),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(memory));
  (* FSM_ENCODED_STATES = "read:100,idle:001,write:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .CLR(rst),
        .D(memory),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \col_cnt[0]_i_1 
       (.I0(\read_addr[0]_i_2_n_0 ),
        .I1(\col_cnt_reg_n_0_[0] ),
        .O(\col_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \col_cnt[1]_i_1 
       (.I0(\read_addr[3]_i_2_n_0 ),
        .I1(\col_cnt_reg_n_0_[1] ),
        .I2(\col_cnt_reg_n_0_[0] ),
        .O(\col_cnt[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2888)) 
    \col_cnt[2]_i_1 
       (.I0(\read_addr[3]_i_2_n_0 ),
        .I1(\col_cnt_reg_n_0_[2] ),
        .I2(\col_cnt_reg_n_0_[0] ),
        .I3(\col_cnt_reg_n_0_[1] ),
        .O(\col_cnt[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \col_cnt[3]_i_1 
       (.I0(data_in_ready),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(data_out_ready2__3),
        .O(col_cnt));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \col_cnt[3]_i_2 
       (.I0(\read_addr[3]_i_2_n_0 ),
        .I1(\col_cnt_reg_n_0_[3] ),
        .I2(\col_cnt_reg_n_0_[2] ),
        .I3(\col_cnt_reg_n_0_[1] ),
        .I4(\col_cnt_reg_n_0_[0] ),
        .O(\col_cnt[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \col_cnt_reg[0] 
       (.C(clk),
        .CE(col_cnt),
        .CLR(rst),
        .D(\col_cnt[0]_i_1_n_0 ),
        .Q(\col_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \col_cnt_reg[1] 
       (.C(clk),
        .CE(col_cnt),
        .CLR(rst),
        .D(\col_cnt[1]_i_1_n_0 ),
        .Q(\col_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \col_cnt_reg[2] 
       (.C(clk),
        .CE(col_cnt),
        .CLR(rst),
        .D(\col_cnt[2]_i_1_n_0 ),
        .Q(\col_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \col_cnt_reg[3] 
       (.C(clk),
        .CE(col_cnt),
        .CLR(rst),
        .D(\col_cnt[3]_i_2_n_0 ),
        .Q(\col_cnt_reg_n_0_[3] ));
  CARRY8 data_out_ready0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({data_out_ready0_carry_n_0,data_out_ready0_carry_n_1,data_out_ready0_carry_n_2,data_out_ready0_carry_n_3,data_out_ready0_carry_n_4,data_out_ready0_carry_n_5,data_out_ready0_carry_n_6,data_out_ready0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_data_out_ready0_carry_O_UNCONNECTED[7:0]),
        .S({data_out_ready0_carry_i_1_n_0,data_out_ready0_carry_i_2_n_0,data_out_ready0_carry_i_3_n_0,data_out_ready0_carry_i_4_n_0,data_out_ready0_carry_i_5_n_0,data_out_ready0_carry_i_6_n_0,data_out_ready0_carry_i_7_n_0,data_out_ready0_carry_i_8_n_0}));
  CARRY8 data_out_ready0_carry__0
       (.CI(data_out_ready0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_data_out_ready0_carry__0_CO_UNCONNECTED[7:3],data_out_ready0,data_out_ready0_carry__0_n_6,data_out_ready0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_data_out_ready0_carry__0_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,data_out_ready0_carry__0_i_1_n_0,data_out_ready0_carry__0_i_2_n_0,data_out_ready0_carry__0_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready0_carry__0_i_1
       (.I0(data_out_ready1[30]),
        .O(data_out_ready0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    data_out_ready0_carry__0_i_2
       (.I0(data_out_ready1[29]),
        .I1(data_out_ready1[28]),
        .I2(data_out_ready1[27]),
        .O(data_out_ready0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    data_out_ready0_carry__0_i_3
       (.I0(data_out_ready1[26]),
        .I1(data_out_ready1[25]),
        .I2(data_out_ready1[24]),
        .O(data_out_ready0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    data_out_ready0_carry_i_1
       (.I0(data_out_ready1[23]),
        .I1(data_out_ready1[22]),
        .I2(data_out_ready1[21]),
        .O(data_out_ready0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    data_out_ready0_carry_i_2
       (.I0(data_out_ready1[20]),
        .I1(data_out_ready1[19]),
        .I2(data_out_ready1[18]),
        .O(data_out_ready0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    data_out_ready0_carry_i_3
       (.I0(data_out_ready1[17]),
        .I1(data_out_ready1[16]),
        .I2(data_out_ready1[15]),
        .O(data_out_ready0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    data_out_ready0_carry_i_4
       (.I0(data_out_ready1[14]),
        .I1(data_out_ready1[13]),
        .I2(data_out_ready1[12]),
        .O(data_out_ready0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    data_out_ready0_carry_i_5
       (.I0(data_out_ready1[11]),
        .I1(write_addr[11]),
        .I2(data_out_ready1[10]),
        .I3(write_addr[10]),
        .I4(write_addr[9]),
        .I5(data_out_ready1[9]),
        .O(data_out_ready0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    data_out_ready0_carry_i_6
       (.I0(data_out_ready1[8]),
        .I1(write_addr[8]),
        .I2(data_out_ready1[7]),
        .I3(write_addr[7]),
        .I4(write_addr[6]),
        .I5(data_out_ready1[6]),
        .O(data_out_ready0_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    data_out_ready0_carry_i_7
       (.I0(data_out_ready1[5]),
        .I1(write_addr[5]),
        .I2(data_out_ready1[4]),
        .I3(write_addr[4]),
        .I4(write_addr[3]),
        .I5(data_out_ready1[3]),
        .O(data_out_ready0_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    data_out_ready0_carry_i_8
       (.I0(data_out_ready1[2]),
        .I1(write_addr[2]),
        .I2(data_out_ready1[1]),
        .I3(write_addr[1]),
        .I4(write_addr[0]),
        .I5(data_out_ready1[0]),
        .O(data_out_ready0_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 data_out_ready1_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({data_out_ready1_carry_n_0,data_out_ready1_carry_n_1,data_out_ready1_carry_n_2,data_out_ready1_carry_n_3,data_out_ready1_carry_n_4,data_out_ready1_carry_n_5,data_out_ready1_carry_n_6,data_out_ready1_carry_n_7}),
        .DI({data_out_ready2__0_n_98,data_out_ready2__0_n_99,data_out_ready2__0_n_100,data_out_ready2__0_n_101,data_out_ready2__0_n_102,data_out_ready2__0_n_103,data_out_ready2__0_n_104,data_out_ready2__0_n_105}),
        .O(data_out_ready1[7:0]),
        .S({data_out_ready1_carry_i_1_n_0,data_out_ready1_carry_i_2_n_0,data_out_ready1_carry_i_3_n_0,data_out_ready1_carry_i_4_n_0,data_out_ready1_carry_i_5_n_0,data_out_ready1_carry_i_6_n_0,data_out_ready1_carry_i_7_n_0,data_out_ready1_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 data_out_ready1_carry__0
       (.CI(data_out_ready1_carry_n_0),
        .CI_TOP(1'b0),
        .CO({data_out_ready1_carry__0_n_0,data_out_ready1_carry__0_n_1,data_out_ready1_carry__0_n_2,data_out_ready1_carry__0_n_3,data_out_ready1_carry__0_n_4,data_out_ready1_carry__0_n_5,data_out_ready1_carry__0_n_6,data_out_ready1_carry__0_n_7}),
        .DI({data_out_ready2__0_n_90,data_out_ready2__0_n_91,data_out_ready2__0_n_92,data_out_ready2__0_n_93,data_out_ready2__0_n_94,data_out_ready2__0_n_95,data_out_ready2__0_n_96,data_out_ready2__0_n_97}),
        .O(data_out_ready1[15:8]),
        .S({data_out_ready1_carry__0_i_1_n_0,data_out_ready1_carry__0_i_2_n_0,data_out_ready1_carry__0_i_3_n_0,data_out_ready1_carry__0_i_4_n_0,data_out_ready1_carry__0_i_5_n_0,data_out_ready1_carry__0_i_6_n_0,data_out_ready1_carry__0_i_7_n_0,data_out_ready1_carry__0_i_8_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry__0_i_1
       (.I0(data_out_ready2__0_n_90),
        .O(data_out_ready1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry__0_i_2
       (.I0(data_out_ready2__0_n_91),
        .O(data_out_ready1_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry__0_i_3
       (.I0(data_out_ready2__0_n_92),
        .O(data_out_ready1_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry__0_i_4
       (.I0(data_out_ready2__0_n_93),
        .O(data_out_ready1_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry__0_i_5
       (.I0(data_out_ready2__0_n_94),
        .O(data_out_ready1_carry__0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry__0_i_6
       (.I0(data_out_ready2__0_n_95),
        .O(data_out_ready1_carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry__0_i_7
       (.I0(data_out_ready2__0_n_96),
        .O(data_out_ready1_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry__0_i_8
       (.I0(data_out_ready2__0_n_97),
        .O(data_out_ready1_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 data_out_ready1_carry__1
       (.CI(data_out_ready1_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({data_out_ready1_carry__1_n_0,data_out_ready1_carry__1_n_1,data_out_ready1_carry__1_n_2,data_out_ready1_carry__1_n_3,data_out_ready1_carry__1_n_4,data_out_ready1_carry__1_n_5,data_out_ready1_carry__1_n_6,data_out_ready1_carry__1_n_7}),
        .DI({data_out_ready2_carry_n_8,data_out_ready2_carry_n_9,data_out_ready2_carry_n_10,data_out_ready2_carry_n_11,data_out_ready2_carry_n_12,data_out_ready2_carry_n_13,data_out_ready2_carry_n_14,data_out_ready2_carry_n_15}),
        .O(data_out_ready1[23:16]),
        .S({data_out_ready1_carry__1_i_1_n_0,data_out_ready1_carry__1_i_2_n_0,data_out_ready1_carry__1_i_3_n_0,data_out_ready1_carry__1_i_4_n_0,data_out_ready1_carry__1_i_5_n_0,data_out_ready1_carry__1_i_6_n_0,data_out_ready1_carry__1_i_7_n_0,data_out_ready1_carry__1_i_8_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry__1_i_1
       (.I0(data_out_ready2_carry_n_8),
        .O(data_out_ready1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry__1_i_2
       (.I0(data_out_ready2_carry_n_9),
        .O(data_out_ready1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry__1_i_3
       (.I0(data_out_ready2_carry_n_10),
        .O(data_out_ready1_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry__1_i_4
       (.I0(data_out_ready2_carry_n_11),
        .O(data_out_ready1_carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry__1_i_5
       (.I0(data_out_ready2_carry_n_12),
        .O(data_out_ready1_carry__1_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry__1_i_6
       (.I0(data_out_ready2_carry_n_13),
        .O(data_out_ready1_carry__1_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry__1_i_7
       (.I0(data_out_ready2_carry_n_14),
        .O(data_out_ready1_carry__1_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry__1_i_8
       (.I0(data_out_ready2_carry_n_15),
        .O(data_out_ready1_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 data_out_ready1_carry__2
       (.CI(data_out_ready1_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_data_out_ready1_carry__2_CO_UNCONNECTED[7:6],data_out_ready1_carry__2_n_2,data_out_ready1_carry__2_n_3,data_out_ready1_carry__2_n_4,data_out_ready1_carry__2_n_5,data_out_ready1_carry__2_n_6,data_out_ready1_carry__2_n_7}),
        .DI({1'b0,1'b0,data_out_ready2_carry__0_n_10,data_out_ready2_carry__0_n_11,data_out_ready2_carry__0_n_12,data_out_ready2_carry__0_n_13,data_out_ready2_carry__0_n_14,data_out_ready2_carry__0_n_15}),
        .O({NLW_data_out_ready1_carry__2_O_UNCONNECTED[7],data_out_ready1[30:24]}),
        .S({1'b0,data_out_ready1_carry__2_i_1_n_0,data_out_ready1_carry__2_i_2_n_0,data_out_ready1_carry__2_i_3_n_0,data_out_ready1_carry__2_i_4_n_0,data_out_ready1_carry__2_i_5_n_0,data_out_ready1_carry__2_i_6_n_0,data_out_ready1_carry__2_i_7_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry__2_i_1
       (.I0(data_out_ready2_carry__0_n_9),
        .O(data_out_ready1_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry__2_i_2
       (.I0(data_out_ready2_carry__0_n_10),
        .O(data_out_ready1_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry__2_i_3
       (.I0(data_out_ready2_carry__0_n_11),
        .O(data_out_ready1_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry__2_i_4
       (.I0(data_out_ready2_carry__0_n_12),
        .O(data_out_ready1_carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry__2_i_5
       (.I0(data_out_ready2_carry__0_n_13),
        .O(data_out_ready1_carry__2_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry__2_i_6
       (.I0(data_out_ready2_carry__0_n_14),
        .O(data_out_ready1_carry__2_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry__2_i_7
       (.I0(data_out_ready2_carry__0_n_15),
        .O(data_out_ready1_carry__2_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry_i_1
       (.I0(data_out_ready2__0_n_98),
        .O(data_out_ready1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry_i_2
       (.I0(data_out_ready2__0_n_99),
        .O(data_out_ready1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry_i_3
       (.I0(data_out_ready2__0_n_100),
        .O(data_out_ready1_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry_i_4
       (.I0(data_out_ready2__0_n_101),
        .O(data_out_ready1_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry_i_5
       (.I0(data_out_ready2__0_n_102),
        .O(data_out_ready1_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready1_carry_i_6
       (.I0(data_out_ready2__0_n_103),
        .O(data_out_ready1_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'hA9)) 
    data_out_ready1_carry_i_7
       (.I0(data_out_ready2__0_n_104),
        .I1(code_rate[1]),
        .I2(code_rate[0]),
        .O(data_out_ready1_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'hA6)) 
    data_out_ready1_carry_i_8
       (.I0(data_out_ready2__0_n_105),
        .I1(code_rate[0]),
        .I2(code_rate[1]),
        .O(data_out_ready1_carry_i_8_n_0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
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
    data_out_ready2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_data_out_ready2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_data_out_ready2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_data_out_ready2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_data_out_ready2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
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
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_data_out_ready2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_data_out_ready2_OVERFLOW_UNCONNECTED),
        .P({data_out_ready2_n_58,data_out_ready2_n_59,data_out_ready2_n_60,data_out_ready2_n_61,data_out_ready2_n_62,data_out_ready2_n_63,data_out_ready2_n_64,data_out_ready2_n_65,data_out_ready2_n_66,data_out_ready2_n_67,data_out_ready2_n_68,data_out_ready2_n_69,data_out_ready2_n_70,data_out_ready2_n_71,data_out_ready2_n_72,data_out_ready2_n_73,data_out_ready2_n_74,data_out_ready2_n_75,data_out_ready2_n_76,data_out_ready2_n_77,data_out_ready2_n_78,data_out_ready2_n_79,data_out_ready2_n_80,data_out_ready2_n_81,data_out_ready2_n_82,data_out_ready2_n_83,data_out_ready2_n_84,data_out_ready2_n_85,data_out_ready2_n_86,data_out_ready2_n_87,data_out_ready2_n_88,data_out_ready2_n_89,data_out_ready2_n_90,data_out_ready2_n_91,data_out_ready2_n_92,data_out_ready2_n_93,data_out_ready2_n_94,data_out_ready2_n_95,data_out_ready2_n_96,data_out_ready2_n_97,data_out_ready2_n_98,data_out_ready2_n_99,data_out_ready2_n_100,data_out_ready2_n_101,data_out_ready2_n_102,data_out_ready2_n_103,data_out_ready2_n_104,data_out_ready2_n_105}),
        .PATTERNBDETECT(NLW_data_out_ready2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_data_out_ready2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({data_out_ready2_n_106,data_out_ready2_n_107,data_out_ready2_n_108,data_out_ready2_n_109,data_out_ready2_n_110,data_out_ready2_n_111,data_out_ready2_n_112,data_out_ready2_n_113,data_out_ready2_n_114,data_out_ready2_n_115,data_out_ready2_n_116,data_out_ready2_n_117,data_out_ready2_n_118,data_out_ready2_n_119,data_out_ready2_n_120,data_out_ready2_n_121,data_out_ready2_n_122,data_out_ready2_n_123,data_out_ready2_n_124,data_out_ready2_n_125,data_out_ready2_n_126,data_out_ready2_n_127,data_out_ready2_n_128,data_out_ready2_n_129,data_out_ready2_n_130,data_out_ready2_n_131,data_out_ready2_n_132,data_out_ready2_n_133,data_out_ready2_n_134,data_out_ready2_n_135,data_out_ready2_n_136,data_out_ready2_n_137,data_out_ready2_n_138,data_out_ready2_n_139,data_out_ready2_n_140,data_out_ready2_n_141,data_out_ready2_n_142,data_out_ready2_n_143,data_out_ready2_n_144,data_out_ready2_n_145,data_out_ready2_n_146,data_out_ready2_n_147,data_out_ready2_n_148,data_out_ready2_n_149,data_out_ready2_n_150,data_out_ready2_n_151,data_out_ready2_n_152,data_out_ready2_n_153}),
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
        .UNDERFLOW(NLW_data_out_ready2_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_data_out_ready2_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
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
    data_out_ready2__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,code_rate[1],data_out_ready2__0_i_1_n_0,data_out_ready2__0_i_2_n_0,sel_code}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_data_out_ready2__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_data_out_ready2__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_data_out_ready2__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_data_out_ready2__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
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
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_data_out_ready2__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_data_out_ready2__0_OVERFLOW_UNCONNECTED),
        .P({data_out_ready2__0_n_58,data_out_ready2__0_n_59,data_out_ready2__0_n_60,data_out_ready2__0_n_61,data_out_ready2__0_n_62,data_out_ready2__0_n_63,data_out_ready2__0_n_64,data_out_ready2__0_n_65,data_out_ready2__0_n_66,data_out_ready2__0_n_67,data_out_ready2__0_n_68,data_out_ready2__0_n_69,data_out_ready2__0_n_70,data_out_ready2__0_n_71,data_out_ready2__0_n_72,data_out_ready2__0_n_73,data_out_ready2__0_n_74,data_out_ready2__0_n_75,data_out_ready2__0_n_76,data_out_ready2__0_n_77,data_out_ready2__0_n_78,data_out_ready2__0_n_79,data_out_ready2__0_n_80,data_out_ready2__0_n_81,data_out_ready2__0_n_82,data_out_ready2__0_n_83,data_out_ready2__0_n_84,data_out_ready2__0_n_85,data_out_ready2__0_n_86,data_out_ready2__0_n_87,data_out_ready2__0_n_88,data_out_ready2__0_n_89,data_out_ready2__0_n_90,data_out_ready2__0_n_91,data_out_ready2__0_n_92,data_out_ready2__0_n_93,data_out_ready2__0_n_94,data_out_ready2__0_n_95,data_out_ready2__0_n_96,data_out_ready2__0_n_97,data_out_ready2__0_n_98,data_out_ready2__0_n_99,data_out_ready2__0_n_100,data_out_ready2__0_n_101,data_out_ready2__0_n_102,data_out_ready2__0_n_103,data_out_ready2__0_n_104,data_out_ready2__0_n_105}),
        .PATTERNBDETECT(NLW_data_out_ready2__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_data_out_ready2__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({data_out_ready2__0_n_106,data_out_ready2__0_n_107,data_out_ready2__0_n_108,data_out_ready2__0_n_109,data_out_ready2__0_n_110,data_out_ready2__0_n_111,data_out_ready2__0_n_112,data_out_ready2__0_n_113,data_out_ready2__0_n_114,data_out_ready2__0_n_115,data_out_ready2__0_n_116,data_out_ready2__0_n_117,data_out_ready2__0_n_118,data_out_ready2__0_n_119,data_out_ready2__0_n_120,data_out_ready2__0_n_121,data_out_ready2__0_n_122,data_out_ready2__0_n_123,data_out_ready2__0_n_124,data_out_ready2__0_n_125,data_out_ready2__0_n_126,data_out_ready2__0_n_127,data_out_ready2__0_n_128,data_out_ready2__0_n_129,data_out_ready2__0_n_130,data_out_ready2__0_n_131,data_out_ready2__0_n_132,data_out_ready2__0_n_133,data_out_ready2__0_n_134,data_out_ready2__0_n_135,data_out_ready2__0_n_136,data_out_ready2__0_n_137,data_out_ready2__0_n_138,data_out_ready2__0_n_139,data_out_ready2__0_n_140,data_out_ready2__0_n_141,data_out_ready2__0_n_142,data_out_ready2__0_n_143,data_out_ready2__0_n_144,data_out_ready2__0_n_145,data_out_ready2__0_n_146,data_out_ready2__0_n_147,data_out_ready2__0_n_148,data_out_ready2__0_n_149,data_out_ready2__0_n_150,data_out_ready2__0_n_151,data_out_ready2__0_n_152,data_out_ready2__0_n_153}),
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
        .UNDERFLOW(NLW_data_out_ready2__0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_data_out_ready2__0_XOROUT_UNCONNECTED[7:0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    data_out_ready2__0_i_1
       (.I0(code_rate[0]),
        .I1(code_rate[1]),
        .O(data_out_ready2__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_ready2__0_i_2
       (.I0(code_rate[1]),
        .O(data_out_ready2__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    data_out_ready2__0_i_3
       (.I0(code_rate[1]),
        .I1(code_rate[0]),
        .O(sel_code));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
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
    data_out_ready2__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,code_rate[1],data_out_ready2__0_i_1_n_0,data_out_ready2__0_i_2_n_0,sel_code}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_data_out_ready2__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_data_out_ready2__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_data_out_ready2__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_data_out_ready2__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
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
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_data_out_ready2__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_data_out_ready2__1_OVERFLOW_UNCONNECTED),
        .P({data_out_ready2__1_n_58,data_out_ready2__1_n_59,data_out_ready2__1_n_60,data_out_ready2__1_n_61,data_out_ready2__1_n_62,data_out_ready2__1_n_63,data_out_ready2__1_n_64,data_out_ready2__1_n_65,data_out_ready2__1_n_66,data_out_ready2__1_n_67,data_out_ready2__1_n_68,data_out_ready2__1_n_69,data_out_ready2__1_n_70,data_out_ready2__1_n_71,data_out_ready2__1_n_72,data_out_ready2__1_n_73,data_out_ready2__1_n_74,data_out_ready2__1_n_75,data_out_ready2__1_n_76,data_out_ready2__1_n_77,data_out_ready2__1_n_78,data_out_ready2__1_n_79,data_out_ready2__1_n_80,data_out_ready2__1_n_81,data_out_ready2__1_n_82,data_out_ready2__1_n_83,data_out_ready2__1_n_84,data_out_ready2__1_n_85,data_out_ready2__1_n_86,data_out_ready2__1_n_87,data_out_ready2__1_n_88,data_out_ready2__1_n_89,data_out_ready2__1_n_90,data_out_ready2__1_n_91,data_out_ready2__1_n_92,data_out_ready2__1_n_93,data_out_ready2__1_n_94,data_out_ready2__1_n_95,data_out_ready2__1_n_96,data_out_ready2__1_n_97,data_out_ready2__1_n_98,data_out_ready2__1_n_99,data_out_ready2__1_n_100,data_out_ready2__1_n_101,data_out_ready2__1_n_102,data_out_ready2__1_n_103,data_out_ready2__1_n_104,data_out_ready2__1_n_105}),
        .PATTERNBDETECT(NLW_data_out_ready2__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_data_out_ready2__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({data_out_ready2__0_n_106,data_out_ready2__0_n_107,data_out_ready2__0_n_108,data_out_ready2__0_n_109,data_out_ready2__0_n_110,data_out_ready2__0_n_111,data_out_ready2__0_n_112,data_out_ready2__0_n_113,data_out_ready2__0_n_114,data_out_ready2__0_n_115,data_out_ready2__0_n_116,data_out_ready2__0_n_117,data_out_ready2__0_n_118,data_out_ready2__0_n_119,data_out_ready2__0_n_120,data_out_ready2__0_n_121,data_out_ready2__0_n_122,data_out_ready2__0_n_123,data_out_ready2__0_n_124,data_out_ready2__0_n_125,data_out_ready2__0_n_126,data_out_ready2__0_n_127,data_out_ready2__0_n_128,data_out_ready2__0_n_129,data_out_ready2__0_n_130,data_out_ready2__0_n_131,data_out_ready2__0_n_132,data_out_ready2__0_n_133,data_out_ready2__0_n_134,data_out_ready2__0_n_135,data_out_ready2__0_n_136,data_out_ready2__0_n_137,data_out_ready2__0_n_138,data_out_ready2__0_n_139,data_out_ready2__0_n_140,data_out_ready2__0_n_141,data_out_ready2__0_n_142,data_out_ready2__0_n_143,data_out_ready2__0_n_144,data_out_ready2__0_n_145,data_out_ready2__0_n_146,data_out_ready2__0_n_147,data_out_ready2__0_n_148,data_out_ready2__0_n_149,data_out_ready2__0_n_150,data_out_ready2__0_n_151,data_out_ready2__0_n_152,data_out_ready2__0_n_153}),
        .PCOUT(NLW_data_out_ready2__1_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_data_out_ready2__1_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_data_out_ready2__1_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 data_out_ready2_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({data_out_ready2_carry_n_0,data_out_ready2_carry_n_1,data_out_ready2_carry_n_2,data_out_ready2_carry_n_3,data_out_ready2_carry_n_4,data_out_ready2_carry_n_5,data_out_ready2_carry_n_6,data_out_ready2_carry_n_7}),
        .DI({data_out_ready2__1_n_99,data_out_ready2__1_n_100,data_out_ready2__1_n_101,data_out_ready2__1_n_102,data_out_ready2__1_n_103,data_out_ready2__1_n_104,data_out_ready2__1_n_105,1'b0}),
        .O({data_out_ready2_carry_n_8,data_out_ready2_carry_n_9,data_out_ready2_carry_n_10,data_out_ready2_carry_n_11,data_out_ready2_carry_n_12,data_out_ready2_carry_n_13,data_out_ready2_carry_n_14,data_out_ready2_carry_n_15}),
        .S({data_out_ready2_carry_i_1_n_0,data_out_ready2_carry_i_2_n_0,data_out_ready2_carry_i_3_n_0,data_out_ready2_carry_i_4_n_0,data_out_ready2_carry_i_5_n_0,data_out_ready2_carry_i_6_n_0,data_out_ready2_carry_i_7_n_0,data_out_ready2__0_n_89}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 data_out_ready2_carry__0
       (.CI(data_out_ready2_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_data_out_ready2_carry__0_CO_UNCONNECTED[7:6],data_out_ready2_carry__0_n_2,data_out_ready2_carry__0_n_3,data_out_ready2_carry__0_n_4,data_out_ready2_carry__0_n_5,data_out_ready2_carry__0_n_6,data_out_ready2_carry__0_n_7}),
        .DI({1'b0,1'b0,data_out_ready2__1_n_93,data_out_ready2__1_n_94,data_out_ready2__1_n_95,data_out_ready2__1_n_96,data_out_ready2__1_n_97,data_out_ready2__1_n_98}),
        .O({NLW_data_out_ready2_carry__0_O_UNCONNECTED[7],data_out_ready2_carry__0_n_9,data_out_ready2_carry__0_n_10,data_out_ready2_carry__0_n_11,data_out_ready2_carry__0_n_12,data_out_ready2_carry__0_n_13,data_out_ready2_carry__0_n_14,data_out_ready2_carry__0_n_15}),
        .S({1'b0,data_out_ready2_carry__0_i_1_n_0,data_out_ready2_carry__0_i_2_n_0,data_out_ready2_carry__0_i_3_n_0,data_out_ready2_carry__0_i_4_n_0,data_out_ready2_carry__0_i_5_n_0,data_out_ready2_carry__0_i_6_n_0,data_out_ready2_carry__0_i_7_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_ready2_carry__0_i_1
       (.I0(data_out_ready2__1_n_92),
        .I1(data_out_ready2_n_92),
        .O(data_out_ready2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_ready2_carry__0_i_2
       (.I0(data_out_ready2__1_n_93),
        .I1(data_out_ready2_n_93),
        .O(data_out_ready2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_ready2_carry__0_i_3
       (.I0(data_out_ready2__1_n_94),
        .I1(data_out_ready2_n_94),
        .O(data_out_ready2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_ready2_carry__0_i_4
       (.I0(data_out_ready2__1_n_95),
        .I1(data_out_ready2_n_95),
        .O(data_out_ready2_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_ready2_carry__0_i_5
       (.I0(data_out_ready2__1_n_96),
        .I1(data_out_ready2_n_96),
        .O(data_out_ready2_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_ready2_carry__0_i_6
       (.I0(data_out_ready2__1_n_97),
        .I1(data_out_ready2_n_97),
        .O(data_out_ready2_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_ready2_carry__0_i_7
       (.I0(data_out_ready2__1_n_98),
        .I1(data_out_ready2_n_98),
        .O(data_out_ready2_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_ready2_carry_i_1
       (.I0(data_out_ready2__1_n_99),
        .I1(data_out_ready2_n_99),
        .O(data_out_ready2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_ready2_carry_i_2
       (.I0(data_out_ready2__1_n_100),
        .I1(data_out_ready2_n_100),
        .O(data_out_ready2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_ready2_carry_i_3
       (.I0(data_out_ready2__1_n_101),
        .I1(data_out_ready2_n_101),
        .O(data_out_ready2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_ready2_carry_i_4
       (.I0(data_out_ready2__1_n_102),
        .I1(data_out_ready2_n_102),
        .O(data_out_ready2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_ready2_carry_i_5
       (.I0(data_out_ready2__1_n_103),
        .I1(data_out_ready2_n_103),
        .O(data_out_ready2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_ready2_carry_i_6
       (.I0(data_out_ready2__1_n_104),
        .I1(data_out_ready2_n_104),
        .O(data_out_ready2_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_ready2_carry_i_7
       (.I0(data_out_ready2__1_n_105),
        .I1(data_out_ready2_n_105),
        .O(data_out_ready2_carry_i_7_n_0));
  CARRY8 \data_out_ready2_inferred__0/i__carry 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\data_out_ready2_inferred__0/i__carry_n_0 ,\data_out_ready2_inferred__0/i__carry_n_1 ,\data_out_ready2_inferred__0/i__carry_n_2 ,\data_out_ready2_inferred__0/i__carry_n_3 ,\data_out_ready2_inferred__0/i__carry_n_4 ,\data_out_ready2_inferred__0/i__carry_n_5 ,\data_out_ready2_inferred__0/i__carry_n_6 ,\data_out_ready2_inferred__0/i__carry_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_data_out_ready2_inferred__0/i__carry_O_UNCONNECTED [7:0]),
        .S({i__carry_i_1_n_4,i__carry_i_1_n_4,i__carry_i_1_n_4,i__carry_i_1_n_4,i__carry_i_1_n_4,i__carry_i_1_n_4,i__carry_i_2_n_0,i__carry_i_3_n_0}));
  CARRY8 \data_out_ready2_inferred__0/i__carry__0 
       (.CI(\data_out_ready2_inferred__0/i__carry_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_data_out_ready2_inferred__0/i__carry__0_CO_UNCONNECTED [7:3],data_out_ready2__3,\data_out_ready2_inferred__0/i__carry__0_n_6 ,\data_out_ready2_inferred__0/i__carry__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_data_out_ready2_inferred__0/i__carry__0_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,i__carry_i_1_n_4,i__carry_i_1_n_4,i__carry_i_1_n_4}));
  LUT6 #(
    .INIT(64'hEAEAEAEFEAEAEAE0)) 
    data_out_ready_i_1
       (.I0(data_out_ready_i_2_n_0),
        .I1(data_in_ready),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(data_out_ready_i_3_n_0),
        .I4(data_out_ready_i_4_n_0),
        .I5(data_out_ready),
        .O(data_out_ready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_ready_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(write_en),
        .O(data_out_ready_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    data_out_ready_i_3
       (.I0(write_en),
        .I1(memory),
        .I2(data_out_ready0),
        .O(data_out_ready_i_3_n_0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    data_out_ready_i_4
       (.I0(\read_addr[5]_i_1_n_0 ),
        .I1(\col_cnt_reg_n_0_[3] ),
        .I2(\col_cnt_reg_n_0_[2] ),
        .I3(data_out_ready2__3),
        .I4(write_en),
        .I5(data_out_ready_i_5_n_0),
        .O(data_out_ready_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0518)) 
    data_out_ready_i_5
       (.I0(\col_cnt_reg_n_0_[0] ),
        .I1(code_rate[0]),
        .I2(\col_cnt_reg_n_0_[1] ),
        .I3(code_rate[1]),
        .O(data_out_ready_i_5_n_0));
  FDCE data_out_ready_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(data_out_ready_i_1_n_0),
        .Q(data_out_ready));
  FDCE \data_out_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[0]),
        .Q(data_out[0]));
  FDCE \data_out_reg[10] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[10]),
        .Q(data_out[10]));
  FDCE \data_out_reg[11] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[11]),
        .Q(data_out[11]));
  FDCE \data_out_reg[12] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[12]),
        .Q(data_out[12]));
  FDCE \data_out_reg[13] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[13]),
        .Q(data_out[13]));
  FDCE \data_out_reg[14] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[14]),
        .Q(data_out[14]));
  FDCE \data_out_reg[15] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[15]),
        .Q(data_out[15]));
  FDCE \data_out_reg[16] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[16]),
        .Q(data_out[16]));
  FDCE \data_out_reg[17] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[17]),
        .Q(data_out[17]));
  FDCE \data_out_reg[18] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[18]),
        .Q(data_out[18]));
  FDCE \data_out_reg[19] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[19]),
        .Q(data_out[19]));
  FDCE \data_out_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[1]),
        .Q(data_out[1]));
  FDCE \data_out_reg[20] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[20]),
        .Q(data_out[20]));
  FDCE \data_out_reg[21] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[21]),
        .Q(data_out[21]));
  FDCE \data_out_reg[22] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[22]),
        .Q(data_out[22]));
  FDCE \data_out_reg[23] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[23]),
        .Q(data_out[23]));
  FDCE \data_out_reg[24] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[24]),
        .Q(data_out[24]));
  FDCE \data_out_reg[25] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[25]),
        .Q(data_out[25]));
  FDCE \data_out_reg[26] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[26]),
        .Q(data_out[26]));
  FDCE \data_out_reg[27] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[27]),
        .Q(data_out[27]));
  FDCE \data_out_reg[28] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[28]),
        .Q(data_out[28]));
  FDCE \data_out_reg[29] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[29]),
        .Q(data_out[29]));
  FDCE \data_out_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[2]),
        .Q(data_out[2]));
  FDCE \data_out_reg[30] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[30]),
        .Q(data_out[30]));
  FDCE \data_out_reg[31] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[31]),
        .Q(data_out[31]));
  FDCE \data_out_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[3]),
        .Q(data_out[3]));
  FDCE \data_out_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[4]),
        .Q(data_out[4]));
  FDCE \data_out_reg[5] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[5]),
        .Q(data_out[5]));
  FDCE \data_out_reg[6] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[6]),
        .Q(data_out[6]));
  FDCE \data_out_reg[7] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[7]),
        .Q(data_out[7]));
  FDCE \data_out_reg[8] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[8]),
        .Q(data_out[8]));
  FDCE \data_out_reg[9] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(rst),
        .D(p_1_out[9]),
        .Q(data_out[9]));
  CARRY8 i__carry_i_1
       (.CI(sel_code),
        .CI_TOP(1'b0),
        .CO({NLW_i__carry_i_1_CO_UNCONNECTED[7:4],i__carry_i_1_n_4,NLW_i__carry_i_1_CO_UNCONNECTED[2],i__carry_i_1_n_6,i__carry_i_1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0}),
        .O({NLW_i__carry_i_1_O_UNCONNECTED[7:3],i__carry_i_1_n_13,i__carry_i_1_n_14,i__carry_i_1_n_15}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b1,i__carry_i_7_n_0,i__carry_i_8_n_0,i__carry_i_9_n_0}));
  LUT3 #(
    .INIT(8'h82)) 
    i__carry_i_2
       (.I0(i__carry_i_1_n_4),
        .I1(\row_cnt_reg_n_0_[3] ),
        .I2(i__carry_i_1_n_13),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000900990090000)) 
    i__carry_i_3
       (.I0(i__carry_i_1_n_14),
        .I1(\row_cnt_reg_n_0_[2] ),
        .I2(i__carry_i_1_n_15),
        .I3(\row_cnt_reg_n_0_[1] ),
        .I4(\row_cnt_reg_n_0_[0] ),
        .I5(sel_code),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_4
       (.I0(code_rate[1]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_5
       (.I0(code_rate[0]),
        .I1(code_rate[1]),
        .O(i__carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_6
       (.I0(code_rate[1]),
        .O(i__carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_7
       (.I0(code_rate[1]),
        .O(i__carry_i_7_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry_i_8
       (.I0(code_rate[1]),
        .I1(code_rate[0]),
        .O(i__carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_9
       (.I0(code_rate[1]),
        .O(i__carry_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2016" *) 
  (* RTL_RAM_NAME = "U0/memory" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "62" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "6" *) 
  RAM64M8 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    memory_reg_0_63_0_6
       (.ADDRA(read_addr_reg),
        .ADDRB(read_addr_reg),
        .ADDRC(read_addr_reg),
        .ADDRD(read_addr_reg),
        .ADDRE(read_addr_reg),
        .ADDRF(read_addr_reg),
        .ADDRG(read_addr_reg),
        .ADDRH(write_addr[5:0]),
        .DIA(data_in[0]),
        .DIB(data_in[1]),
        .DIC(data_in[2]),
        .DID(data_in[3]),
        .DIE(data_in[4]),
        .DIF(data_in[5]),
        .DIG(data_in[6]),
        .DIH(1'b0),
        .DOA(p_1_out[0]),
        .DOB(p_1_out[1]),
        .DOC(p_1_out[2]),
        .DOD(p_1_out[3]),
        .DOE(p_1_out[4]),
        .DOF(p_1_out[5]),
        .DOG(p_1_out[6]),
        .DOH(NLW_memory_reg_0_63_0_6_DOH_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  LUT3 #(
    .INIT(8'h20)) 
    memory_reg_0_63_0_6_i_1
       (.I0(write_en),
        .I1(rst),
        .I2(memory),
        .O(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2016" *) 
  (* RTL_RAM_NAME = "U0/memory" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "62" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "20" *) 
  RAM64M8 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    memory_reg_0_63_14_20
       (.ADDRA(read_addr_reg),
        .ADDRB(read_addr_reg),
        .ADDRC(read_addr_reg),
        .ADDRD(read_addr_reg),
        .ADDRE(read_addr_reg),
        .ADDRF(read_addr_reg),
        .ADDRG(read_addr_reg),
        .ADDRH(write_addr[5:0]),
        .DIA(data_in[14]),
        .DIB(data_in[15]),
        .DIC(data_in[16]),
        .DID(data_in[17]),
        .DIE(data_in[18]),
        .DIF(data_in[19]),
        .DIG(data_in[20]),
        .DIH(1'b0),
        .DOA(p_1_out[14]),
        .DOB(p_1_out[15]),
        .DOC(p_1_out[16]),
        .DOD(p_1_out[17]),
        .DOE(p_1_out[18]),
        .DOF(p_1_out[19]),
        .DOG(p_1_out[20]),
        .DOH(NLW_memory_reg_0_63_14_20_DOH_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2016" *) 
  (* RTL_RAM_NAME = "U0/memory" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "62" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "27" *) 
  RAM64M8 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    memory_reg_0_63_21_27
       (.ADDRA(read_addr_reg),
        .ADDRB(read_addr_reg),
        .ADDRC(read_addr_reg),
        .ADDRD(read_addr_reg),
        .ADDRE(read_addr_reg),
        .ADDRF(read_addr_reg),
        .ADDRG(read_addr_reg),
        .ADDRH(write_addr[5:0]),
        .DIA(data_in[21]),
        .DIB(data_in[22]),
        .DIC(data_in[23]),
        .DID(data_in[24]),
        .DIE(data_in[25]),
        .DIF(data_in[26]),
        .DIG(data_in[27]),
        .DIH(1'b0),
        .DOA(p_1_out[21]),
        .DOB(p_1_out[22]),
        .DOC(p_1_out[23]),
        .DOD(p_1_out[24]),
        .DOE(p_1_out[25]),
        .DOF(p_1_out[26]),
        .DOG(p_1_out[27]),
        .DOH(NLW_memory_reg_0_63_21_27_DOH_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2016" *) 
  (* RTL_RAM_NAME = "U0/memory" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "62" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "31" *) 
  RAM64M8 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    memory_reg_0_63_28_31
       (.ADDRA(read_addr_reg),
        .ADDRB(read_addr_reg),
        .ADDRC(read_addr_reg),
        .ADDRD(read_addr_reg),
        .ADDRE(read_addr_reg),
        .ADDRF(read_addr_reg),
        .ADDRG(read_addr_reg),
        .ADDRH(write_addr[5:0]),
        .DIA(data_in[28]),
        .DIB(data_in[29]),
        .DIC(data_in[30]),
        .DID(data_in[31]),
        .DIE(1'b0),
        .DIF(1'b0),
        .DIG(1'b0),
        .DIH(1'b0),
        .DOA(p_1_out[28]),
        .DOB(p_1_out[29]),
        .DOC(p_1_out[30]),
        .DOD(p_1_out[31]),
        .DOE(NLW_memory_reg_0_63_28_31_DOE_UNCONNECTED),
        .DOF(NLW_memory_reg_0_63_28_31_DOF_UNCONNECTED),
        .DOG(NLW_memory_reg_0_63_28_31_DOG_UNCONNECTED),
        .DOH(NLW_memory_reg_0_63_28_31_DOH_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2016" *) 
  (* RTL_RAM_NAME = "U0/memory" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "62" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "13" *) 
  RAM64M8 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    memory_reg_0_63_7_13
       (.ADDRA(read_addr_reg),
        .ADDRB(read_addr_reg),
        .ADDRC(read_addr_reg),
        .ADDRD(read_addr_reg),
        .ADDRE(read_addr_reg),
        .ADDRF(read_addr_reg),
        .ADDRG(read_addr_reg),
        .ADDRH(write_addr[5:0]),
        .DIA(data_in[7]),
        .DIB(data_in[8]),
        .DIC(data_in[9]),
        .DID(data_in[10]),
        .DIE(data_in[11]),
        .DIF(data_in[12]),
        .DIG(data_in[13]),
        .DIH(1'b0),
        .DOA(p_1_out[7]),
        .DOB(p_1_out[8]),
        .DOC(p_1_out[9]),
        .DOD(p_1_out[10]),
        .DOE(p_1_out[11]),
        .DOF(p_1_out[12]),
        .DOG(p_1_out[13]),
        .DOH(NLW_memory_reg_0_63_7_13_DOH_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h380B)) 
    \read_addr[0]_i_1 
       (.I0(\read_addr[0]_i_2_n_0 ),
        .I1(data_out_ready2__3),
        .I2(\col_cnt_reg_n_0_[0] ),
        .I3(\row_cnt_reg_n_0_[0] ),
        .O(\read_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFDDFDF)) 
    \read_addr[0]_i_2 
       (.I0(\col_cnt_reg_n_0_[2] ),
        .I1(\col_cnt_reg_n_0_[3] ),
        .I2(code_rate[1]),
        .I3(code_rate[0]),
        .I4(\col_cnt_reg_n_0_[1] ),
        .O(\read_addr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3B080B3880B3B083)) 
    \read_addr[1]_i_1 
       (.I0(\read_addr[3]_i_2_n_0 ),
        .I1(data_out_ready2__3),
        .I2(\col_cnt_reg_n_0_[0] ),
        .I3(\row_cnt_reg_n_0_[1] ),
        .I4(\row_cnt_reg_n_0_[0] ),
        .I5(\col_cnt_reg_n_0_[1] ),
        .O(\read_addr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888FFFF28880000)) 
    \read_addr[2]_i_1 
       (.I0(\read_addr[3]_i_2_n_0 ),
        .I1(\col_cnt_reg_n_0_[2] ),
        .I2(\col_cnt_reg_n_0_[0] ),
        .I3(\col_cnt_reg_n_0_[1] ),
        .I4(data_out_ready2__3),
        .I5(p_1_out__0),
        .O(\read_addr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0785A1E0F87A5E1)) 
    \read_addr[2]_i_2 
       (.I0(\col_cnt_reg_n_0_[1] ),
        .I1(\col_cnt_reg_n_0_[0] ),
        .I2(\row_cnt_reg_n_0_[2] ),
        .I3(\row_cnt_reg_n_0_[0] ),
        .I4(\row_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[2] ),
        .O(p_1_out__0));
  LUT6 #(
    .INIT(64'h808F8F808F80808F)) 
    \read_addr[3]_i_1 
       (.I0(\read_addr[3]_i_2_n_0 ),
        .I1(\read_addr[3]_i_3_n_0 ),
        .I2(data_out_ready2__3),
        .I3(\read_addr[3]_i_4_n_0 ),
        .I4(\read_addr[3]_i_5_n_0 ),
        .I5(\col_cnt_reg_n_0_[3] ),
        .O(\read_addr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEFEFBFEFFF)) 
    \read_addr[3]_i_2 
       (.I0(\col_cnt_reg_n_0_[3] ),
        .I1(\col_cnt_reg_n_0_[0] ),
        .I2(\col_cnt_reg_n_0_[2] ),
        .I3(code_rate[1]),
        .I4(code_rate[0]),
        .I5(\col_cnt_reg_n_0_[1] ),
        .O(\read_addr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_addr[3]_i_3 
       (.I0(\col_cnt_reg_n_0_[0] ),
        .I1(\col_cnt_reg_n_0_[1] ),
        .I2(\col_cnt_reg_n_0_[2] ),
        .I3(\col_cnt_reg_n_0_[3] ),
        .O(\read_addr[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2ABF22BB02AB00AA)) 
    \read_addr[3]_i_4 
       (.I0(\col_cnt_reg_n_0_[2] ),
        .I1(\row_cnt_reg_n_0_[1] ),
        .I2(\row_cnt_reg_n_0_[0] ),
        .I3(\row_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[0] ),
        .I5(\col_cnt_reg_n_0_[1] ),
        .O(\read_addr[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \read_addr[3]_i_5 
       (.I0(\row_cnt_reg_n_0_[0] ),
        .I1(\row_cnt_reg_n_0_[3] ),
        .O(\read_addr[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000008FA5705A)) 
    \read_addr[4]_i_1 
       (.I0(\row_cnt_reg_n_0_[3] ),
        .I1(\row_cnt_reg_n_0_[2] ),
        .I2(\row_cnt_reg_n_0_[1] ),
        .I3(\row_cnt_reg_n_0_[0] ),
        .I4(\read_addr[5]_i_3_n_0 ),
        .I5(data_out_ready2__3),
        .O(\read_addr[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \read_addr[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(data_in_ready),
        .O(\read_addr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000039CC4CC6)) 
    \read_addr[5]_i_2 
       (.I0(\row_cnt_reg_n_0_[3] ),
        .I1(\row_cnt_reg_n_0_[2] ),
        .I2(\row_cnt_reg_n_0_[0] ),
        .I3(\row_cnt_reg_n_0_[1] ),
        .I4(\read_addr[5]_i_3_n_0 ),
        .I5(data_out_ready2__3),
        .O(\read_addr[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD0FD40F4)) 
    \read_addr[5]_i_3 
       (.I0(\row_cnt_reg_n_0_[2] ),
        .I1(\read_addr[5]_i_4_n_0 ),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\read_addr[3]_i_5_n_0 ),
        .I4(\col_cnt_reg_n_0_[2] ),
        .O(\read_addr[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h3B02)) 
    \read_addr[5]_i_4 
       (.I0(\col_cnt_reg_n_0_[0] ),
        .I1(\row_cnt_reg_n_0_[1] ),
        .I2(\row_cnt_reg_n_0_[0] ),
        .I3(\col_cnt_reg_n_0_[1] ),
        .O(\read_addr[5]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \read_addr_reg[0] 
       (.C(clk),
        .CE(\read_addr[5]_i_1_n_0 ),
        .CLR(rst),
        .D(\read_addr[0]_i_1_n_0 ),
        .Q(read_addr_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \read_addr_reg[1] 
       (.C(clk),
        .CE(\read_addr[5]_i_1_n_0 ),
        .CLR(rst),
        .D(\read_addr[1]_i_1_n_0 ),
        .Q(read_addr_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \read_addr_reg[2] 
       (.C(clk),
        .CE(\read_addr[5]_i_1_n_0 ),
        .CLR(rst),
        .D(\read_addr[2]_i_1_n_0 ),
        .Q(read_addr_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \read_addr_reg[3] 
       (.C(clk),
        .CE(\read_addr[5]_i_1_n_0 ),
        .CLR(rst),
        .D(\read_addr[3]_i_1_n_0 ),
        .Q(read_addr_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \read_addr_reg[4] 
       (.C(clk),
        .CE(\read_addr[5]_i_1_n_0 ),
        .CLR(rst),
        .D(\read_addr[4]_i_1_n_0 ),
        .Q(read_addr_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \read_addr_reg[5] 
       (.C(clk),
        .CE(\read_addr[5]_i_1_n_0 ),
        .CLR(rst),
        .D(\read_addr[5]_i_2_n_0 ),
        .Q(read_addr_reg[5]));
  LUT6 #(
    .INIT(64'h88888FFF88888888)) 
    read_valid_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(data_in_ready),
        .I2(memory),
        .I3(write_en),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(read_valid),
        .O(read_valid_i_1_n_0));
  FDCE read_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(read_valid_i_1_n_0),
        .Q(read_valid));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \row_cnt[0]_i_1 
       (.I0(\row_cnt_reg_n_0_[0] ),
        .I1(data_out_ready2__3),
        .O(\row_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \row_cnt[1]_i_1 
       (.I0(\row_cnt_reg_n_0_[1] ),
        .I1(\row_cnt_reg_n_0_[0] ),
        .I2(data_out_ready2__3),
        .O(\row_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \row_cnt[2]_i_1 
       (.I0(\row_cnt_reg_n_0_[2] ),
        .I1(\row_cnt_reg_n_0_[0] ),
        .I2(\row_cnt_reg_n_0_[1] ),
        .I3(data_out_ready2__3),
        .O(\row_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \row_cnt[3]_i_1 
       (.I0(\row_cnt_reg_n_0_[3] ),
        .I1(\row_cnt_reg_n_0_[2] ),
        .I2(\row_cnt_reg_n_0_[1] ),
        .I3(\row_cnt_reg_n_0_[0] ),
        .I4(data_out_ready2__3),
        .O(\row_cnt[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \row_cnt_reg[0] 
       (.C(clk),
        .CE(\read_addr[5]_i_1_n_0 ),
        .CLR(rst),
        .D(\row_cnt[0]_i_1_n_0 ),
        .Q(\row_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \row_cnt_reg[1] 
       (.C(clk),
        .CE(\read_addr[5]_i_1_n_0 ),
        .CLR(rst),
        .D(\row_cnt[1]_i_1_n_0 ),
        .Q(\row_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \row_cnt_reg[2] 
       (.C(clk),
        .CE(\read_addr[5]_i_1_n_0 ),
        .CLR(rst),
        .D(\row_cnt[2]_i_1_n_0 ),
        .Q(\row_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \row_cnt_reg[3] 
       (.C(clk),
        .CE(\read_addr[5]_i_1_n_0 ),
        .CLR(rst),
        .D(\row_cnt[3]_i_1_n_0 ),
        .Q(\row_cnt_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \write_addr[0]_i_1 
       (.I0(write_addr[0]),
        .I1(data_out_ready0),
        .O(\write_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \write_addr[10]_i_1 
       (.I0(write_addr[10]),
        .I1(write_addr[9]),
        .I2(write_addr[8]),
        .I3(\write_addr[11]_i_3_n_0 ),
        .I4(data_out_ready0),
        .O(\write_addr[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \write_addr[11]_i_1 
       (.I0(memory),
        .I1(write_en),
        .O(write_addr__0));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \write_addr[11]_i_2 
       (.I0(write_addr[11]),
        .I1(write_addr[8]),
        .I2(write_addr[9]),
        .I3(write_addr[10]),
        .I4(\write_addr[11]_i_3_n_0 ),
        .I5(data_out_ready0),
        .O(\write_addr[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \write_addr[11]_i_3 
       (.I0(write_addr[6]),
        .I1(\write_addr[7]_i_2_n_0 ),
        .I2(write_addr[7]),
        .O(\write_addr[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \write_addr[1]_i_1 
       (.I0(write_addr[1]),
        .I1(write_addr[0]),
        .I2(data_out_ready0),
        .O(\write_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \write_addr[2]_i_1 
       (.I0(write_addr[2]),
        .I1(write_addr[0]),
        .I2(write_addr[1]),
        .I3(data_out_ready0),
        .O(\write_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \write_addr[3]_i_1 
       (.I0(write_addr[3]),
        .I1(write_addr[1]),
        .I2(write_addr[0]),
        .I3(write_addr[2]),
        .I4(data_out_ready0),
        .O(\write_addr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \write_addr[4]_i_1 
       (.I0(write_addr[4]),
        .I1(write_addr[2]),
        .I2(write_addr[0]),
        .I3(write_addr[1]),
        .I4(write_addr[3]),
        .I5(data_out_ready0),
        .O(\write_addr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \write_addr[5]_i_1 
       (.I0(write_addr[5]),
        .I1(\write_addr[5]_i_2_n_0 ),
        .I2(data_out_ready0),
        .O(\write_addr[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \write_addr[5]_i_2 
       (.I0(write_addr[3]),
        .I1(write_addr[1]),
        .I2(write_addr[0]),
        .I3(write_addr[2]),
        .I4(write_addr[4]),
        .O(\write_addr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \write_addr[6]_i_1 
       (.I0(write_addr[6]),
        .I1(\write_addr[7]_i_2_n_0 ),
        .I2(data_out_ready0),
        .O(\write_addr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \write_addr[7]_i_1 
       (.I0(write_addr[7]),
        .I1(\write_addr[7]_i_2_n_0 ),
        .I2(write_addr[6]),
        .I3(data_out_ready0),
        .O(\write_addr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \write_addr[7]_i_2 
       (.I0(write_addr[4]),
        .I1(write_addr[2]),
        .I2(write_addr[0]),
        .I3(write_addr[1]),
        .I4(write_addr[3]),
        .I5(write_addr[5]),
        .O(\write_addr[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \write_addr[8]_i_1 
       (.I0(write_addr[8]),
        .I1(\write_addr[11]_i_3_n_0 ),
        .I2(data_out_ready0),
        .O(\write_addr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \write_addr[9]_i_1 
       (.I0(write_addr[9]),
        .I1(\write_addr[11]_i_3_n_0 ),
        .I2(write_addr[8]),
        .I3(data_out_ready0),
        .O(\write_addr[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \write_addr_reg[0] 
       (.C(clk),
        .CE(write_addr__0),
        .CLR(rst),
        .D(\write_addr[0]_i_1_n_0 ),
        .Q(write_addr[0]));
  FDCE #(
    .INIT(1'b0)) 
    \write_addr_reg[10] 
       (.C(clk),
        .CE(write_addr__0),
        .CLR(rst),
        .D(\write_addr[10]_i_1_n_0 ),
        .Q(write_addr[10]));
  FDCE #(
    .INIT(1'b0)) 
    \write_addr_reg[11] 
       (.C(clk),
        .CE(write_addr__0),
        .CLR(rst),
        .D(\write_addr[11]_i_2_n_0 ),
        .Q(write_addr[11]));
  FDCE #(
    .INIT(1'b0)) 
    \write_addr_reg[1] 
       (.C(clk),
        .CE(write_addr__0),
        .CLR(rst),
        .D(\write_addr[1]_i_1_n_0 ),
        .Q(write_addr[1]));
  FDCE #(
    .INIT(1'b0)) 
    \write_addr_reg[2] 
       (.C(clk),
        .CE(write_addr__0),
        .CLR(rst),
        .D(\write_addr[2]_i_1_n_0 ),
        .Q(write_addr[2]));
  FDCE #(
    .INIT(1'b0)) 
    \write_addr_reg[3] 
       (.C(clk),
        .CE(write_addr__0),
        .CLR(rst),
        .D(\write_addr[3]_i_1_n_0 ),
        .Q(write_addr[3]));
  FDCE #(
    .INIT(1'b0)) 
    \write_addr_reg[4] 
       (.C(clk),
        .CE(write_addr__0),
        .CLR(rst),
        .D(\write_addr[4]_i_1_n_0 ),
        .Q(write_addr[4]));
  FDCE #(
    .INIT(1'b0)) 
    \write_addr_reg[5] 
       (.C(clk),
        .CE(write_addr__0),
        .CLR(rst),
        .D(\write_addr[5]_i_1_n_0 ),
        .Q(write_addr[5]));
  FDCE #(
    .INIT(1'b0)) 
    \write_addr_reg[6] 
       (.C(clk),
        .CE(write_addr__0),
        .CLR(rst),
        .D(\write_addr[6]_i_1_n_0 ),
        .Q(write_addr[6]));
  FDCE #(
    .INIT(1'b0)) 
    \write_addr_reg[7] 
       (.C(clk),
        .CE(write_addr__0),
        .CLR(rst),
        .D(\write_addr[7]_i_1_n_0 ),
        .Q(write_addr[7]));
  FDCE #(
    .INIT(1'b0)) 
    \write_addr_reg[8] 
       (.C(clk),
        .CE(write_addr__0),
        .CLR(rst),
        .D(\write_addr[8]_i_1_n_0 ),
        .Q(write_addr[8]));
  FDCE #(
    .INIT(1'b0)) 
    \write_addr_reg[9] 
       (.C(clk),
        .CE(write_addr__0),
        .CLR(rst),
        .D(\write_addr[9]_i_1_n_0 ),
        .Q(write_addr[9]));
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
