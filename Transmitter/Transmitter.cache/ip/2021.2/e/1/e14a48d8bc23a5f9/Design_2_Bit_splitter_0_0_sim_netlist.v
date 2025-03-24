// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Mar 17 17:14:18 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_Bit_splitter_0_0_sim_netlist.v
// Design      : Design_2_Bit_splitter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Bit_splitter
   (data_out,
    data_out_valid,
    data_out_ready,
    mod_type,
    clk,
    reset,
    data_in_ready,
    data_in_valid,
    data_in);
  output [5:0]data_out;
  output data_out_valid;
  output data_out_ready;
  input [2:0]mod_type;
  input clk;
  input reset;
  input data_in_ready;
  input data_in_valid;
  input [31:0]data_in;

  wire clk;
  wire [1:0]data1;
  wire [31:0]data_in;
  wire data_in_ready;
  wire data_in_valid;
  wire [5:0]data_out;
  wire data_out1__7_carry_i_1_n_0;
  wire data_out1__7_carry_i_2_n_0;
  wire data_out1__7_carry_i_3_n_0;
  wire data_out1__7_carry_n_12;
  wire data_out1__7_carry_n_13;
  wire data_out1__7_carry_n_14;
  wire data_out1__7_carry_n_15;
  wire data_out1__7_carry_n_5;
  wire data_out1__7_carry_n_6;
  wire data_out1__7_carry_n_7;
  wire data_out1_carry_i_1_n_0;
  wire data_out1_carry_i_2_n_0;
  wire data_out1_carry_i_3_n_0;
  wire data_out1_carry_n_12;
  wire data_out1_carry_n_13;
  wire data_out1_carry_n_14;
  wire data_out1_carry_n_15;
  wire data_out1_carry_n_5;
  wire data_out1_carry_n_6;
  wire data_out1_carry_n_7;
  wire \data_out[0]_i_10_n_0 ;
  wire \data_out[0]_i_11_n_0 ;
  wire \data_out[0]_i_12_n_0 ;
  wire \data_out[0]_i_13_n_0 ;
  wire \data_out[0]_i_14_n_0 ;
  wire \data_out[0]_i_15_n_0 ;
  wire \data_out[0]_i_16_n_0 ;
  wire \data_out[0]_i_17_n_0 ;
  wire \data_out[0]_i_18_n_0 ;
  wire \data_out[0]_i_19_n_0 ;
  wire \data_out[0]_i_20_n_0 ;
  wire \data_out[0]_i_21_n_0 ;
  wire \data_out[0]_i_22_n_0 ;
  wire \data_out[0]_i_23_n_0 ;
  wire \data_out[0]_i_24_n_0 ;
  wire \data_out[0]_i_25_n_0 ;
  wire \data_out[0]_i_26_n_0 ;
  wire \data_out[0]_i_2_n_0 ;
  wire \data_out[0]_i_3_n_0 ;
  wire \data_out[0]_i_4_n_0 ;
  wire \data_out[0]_i_5_n_0 ;
  wire \data_out[0]_i_6_n_0 ;
  wire \data_out[0]_i_7_n_0 ;
  wire \data_out[0]_i_8_n_0 ;
  wire \data_out[1]_i_10_n_0 ;
  wire \data_out[1]_i_11_n_0 ;
  wire \data_out[1]_i_12_n_0 ;
  wire \data_out[1]_i_13_n_0 ;
  wire \data_out[1]_i_14_n_0 ;
  wire \data_out[1]_i_15_n_0 ;
  wire \data_out[1]_i_16_n_0 ;
  wire \data_out[1]_i_2_n_0 ;
  wire \data_out[1]_i_3_n_0 ;
  wire \data_out[1]_i_5_n_0 ;
  wire \data_out[1]_i_6_n_0 ;
  wire \data_out[1]_i_7_n_0 ;
  wire \data_out[1]_i_8_n_0 ;
  wire \data_out[1]_i_9_n_0 ;
  wire \data_out[2]_i_10_n_0 ;
  wire \data_out[2]_i_11_n_0 ;
  wire \data_out[2]_i_2_n_0 ;
  wire \data_out[2]_i_3_n_0 ;
  wire \data_out[2]_i_4_n_0 ;
  wire \data_out[2]_i_5_n_0 ;
  wire \data_out[2]_i_6_n_0 ;
  wire \data_out[2]_i_7_n_0 ;
  wire \data_out[2]_i_8_n_0 ;
  wire \data_out[2]_i_9_n_0 ;
  wire \data_out[3]_i_10_n_0 ;
  wire \data_out[3]_i_11_n_0 ;
  wire \data_out[3]_i_2_n_0 ;
  wire \data_out[3]_i_3_n_0 ;
  wire \data_out[3]_i_4_n_0 ;
  wire \data_out[3]_i_5_n_0 ;
  wire \data_out[3]_i_6_n_0 ;
  wire \data_out[3]_i_7_n_0 ;
  wire \data_out[3]_i_8_n_0 ;
  wire \data_out[3]_i_9_n_0 ;
  wire \data_out[4]_i_10_n_0 ;
  wire \data_out[4]_i_11_n_0 ;
  wire \data_out[4]_i_12_n_0 ;
  wire \data_out[4]_i_13_n_0 ;
  wire \data_out[4]_i_14_n_0 ;
  wire \data_out[4]_i_15_n_0 ;
  wire \data_out[4]_i_16_n_0 ;
  wire \data_out[4]_i_17_n_0 ;
  wire \data_out[4]_i_18_n_0 ;
  wire \data_out[4]_i_19_n_0 ;
  wire \data_out[4]_i_20_n_0 ;
  wire \data_out[4]_i_21_n_0 ;
  wire \data_out[4]_i_22_n_0 ;
  wire \data_out[4]_i_23_n_0 ;
  wire \data_out[4]_i_2_n_0 ;
  wire \data_out[4]_i_3_n_0 ;
  wire \data_out[4]_i_4_n_0 ;
  wire \data_out[4]_i_6_n_0 ;
  wire \data_out[4]_i_7_n_0 ;
  wire \data_out[4]_i_8_n_0 ;
  wire \data_out[4]_i_9_n_0 ;
  wire \data_out[5]_i_10_n_0 ;
  wire \data_out[5]_i_12_n_0 ;
  wire \data_out[5]_i_13_n_0 ;
  wire \data_out[5]_i_14_n_0 ;
  wire \data_out[5]_i_15_n_0 ;
  wire \data_out[5]_i_17_n_0 ;
  wire \data_out[5]_i_18_n_0 ;
  wire \data_out[5]_i_19_n_0 ;
  wire \data_out[5]_i_1_n_0 ;
  wire \data_out[5]_i_20_n_0 ;
  wire \data_out[5]_i_21_n_0 ;
  wire \data_out[5]_i_22_n_0 ;
  wire \data_out[5]_i_23_n_0 ;
  wire \data_out[5]_i_24_n_0 ;
  wire \data_out[5]_i_26_n_0 ;
  wire \data_out[5]_i_27_n_0 ;
  wire \data_out[5]_i_28_n_0 ;
  wire \data_out[5]_i_29_n_0 ;
  wire \data_out[5]_i_30_n_0 ;
  wire \data_out[5]_i_31_n_0 ;
  wire \data_out[5]_i_32_n_0 ;
  wire \data_out[5]_i_33_n_0 ;
  wire \data_out[5]_i_34_n_0 ;
  wire \data_out[5]_i_35_n_0 ;
  wire \data_out[5]_i_36_n_0 ;
  wire \data_out[5]_i_37_n_0 ;
  wire \data_out[5]_i_38_n_0 ;
  wire \data_out[5]_i_39_n_0 ;
  wire \data_out[5]_i_3_n_0 ;
  wire \data_out[5]_i_40_n_0 ;
  wire \data_out[5]_i_41_n_0 ;
  wire \data_out[5]_i_42_n_0 ;
  wire \data_out[5]_i_43_n_0 ;
  wire \data_out[5]_i_44_n_0 ;
  wire \data_out[5]_i_45_n_0 ;
  wire \data_out[5]_i_46_n_0 ;
  wire \data_out[5]_i_47_n_0 ;
  wire \data_out[5]_i_48_n_0 ;
  wire \data_out[5]_i_49_n_0 ;
  wire \data_out[5]_i_4_n_0 ;
  wire \data_out[5]_i_50_n_0 ;
  wire \data_out[5]_i_51_n_0 ;
  wire \data_out[5]_i_52_n_0 ;
  wire \data_out[5]_i_53_n_0 ;
  wire \data_out[5]_i_5_n_0 ;
  wire \data_out[5]_i_6_n_0 ;
  wire \data_out[5]_i_8_n_0 ;
  wire \data_out[5]_i_9_n_0 ;
  wire [5:0]data_out_0;
  wire data_out_ready;
  wire data_out_ready019_out;
  wire data_out_ready1__15_carry__0_i_1_n_0;
  wire data_out_ready1__15_carry__0_i_2_n_0;
  wire data_out_ready1__15_carry__0_i_3_n_0;
  wire data_out_ready1__15_carry__0_i_4_n_0;
  wire data_out_ready1__15_carry__0_i_5_n_0;
  wire data_out_ready1__15_carry__0_i_6_n_0;
  wire data_out_ready1__15_carry__0_i_7_n_0;
  wire data_out_ready1__15_carry__0_i_8_n_0;
  wire data_out_ready1__15_carry__0_n_0;
  wire data_out_ready1__15_carry__0_n_1;
  wire data_out_ready1__15_carry__0_n_2;
  wire data_out_ready1__15_carry__0_n_3;
  wire data_out_ready1__15_carry__0_n_4;
  wire data_out_ready1__15_carry__0_n_5;
  wire data_out_ready1__15_carry__0_n_6;
  wire data_out_ready1__15_carry__0_n_7;
  wire data_out_ready1__15_carry_i_10_n_0;
  wire data_out_ready1__15_carry_i_1_n_0;
  wire data_out_ready1__15_carry_i_2_n_0;
  wire data_out_ready1__15_carry_i_3_n_0;
  wire data_out_ready1__15_carry_i_4_n_0;
  wire data_out_ready1__15_carry_i_5_n_0;
  wire data_out_ready1__15_carry_i_6_n_0;
  wire data_out_ready1__15_carry_i_7_n_0;
  wire data_out_ready1__15_carry_i_8_n_0;
  wire data_out_ready1__15_carry_i_9_n_0;
  wire data_out_ready1__15_carry_n_0;
  wire data_out_ready1__15_carry_n_1;
  wire data_out_ready1__15_carry_n_2;
  wire data_out_ready1__15_carry_n_3;
  wire data_out_ready1__15_carry_n_4;
  wire data_out_ready1__15_carry_n_5;
  wire data_out_ready1__15_carry_n_6;
  wire data_out_ready1__15_carry_n_7;
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
  wire data_out_ready1_carry_i_10_n_0;
  wire data_out_ready1_carry_i_11_n_0;
  wire data_out_ready1_carry_i_1_n_0;
  wire data_out_ready1_carry_i_2_n_0;
  wire data_out_ready1_carry_i_3_n_0;
  wire data_out_ready1_carry_i_4_n_0;
  wire data_out_ready1_carry_i_5_n_0;
  wire data_out_ready1_carry_i_6_n_0;
  wire data_out_ready1_carry_i_7_n_0;
  wire data_out_ready1_carry_i_8_n_0;
  wire data_out_ready1_carry_i_9_n_0;
  wire data_out_ready1_carry_n_0;
  wire data_out_ready1_carry_n_1;
  wire data_out_ready1_carry_n_2;
  wire data_out_ready1_carry_n_3;
  wire data_out_ready1_carry_n_4;
  wire data_out_ready1_carry_n_5;
  wire data_out_ready1_carry_n_6;
  wire data_out_ready1_carry_n_7;
  wire data_out_ready_i_10_n_0;
  wire data_out_ready_i_11_n_0;
  wire data_out_ready_i_12_n_0;
  wire data_out_ready_i_13_n_0;
  wire data_out_ready_i_14_n_0;
  wire data_out_ready_i_16_n_0;
  wire data_out_ready_i_17_n_0;
  wire data_out_ready_i_18_n_0;
  wire data_out_ready_i_19_n_0;
  wire data_out_ready_i_20_n_0;
  wire data_out_ready_i_21_n_0;
  wire data_out_ready_i_23_n_0;
  wire data_out_ready_i_24_n_0;
  wire data_out_ready_i_25_n_0;
  wire data_out_ready_i_26_n_0;
  wire data_out_ready_i_27_n_0;
  wire data_out_ready_i_28_n_0;
  wire data_out_ready_i_29_n_0;
  wire data_out_ready_i_2_n_0;
  wire data_out_ready_i_30_n_0;
  wire data_out_ready_i_31_n_0;
  wire data_out_ready_i_32_n_0;
  wire data_out_ready_i_33_n_0;
  wire data_out_ready_i_34_n_0;
  wire data_out_ready_i_35_n_0;
  wire data_out_ready_i_36_n_0;
  wire data_out_ready_i_37_n_0;
  wire data_out_ready_i_38_n_0;
  wire data_out_ready_i_39_n_0;
  wire data_out_ready_i_3_n_0;
  wire data_out_ready_i_40_n_0;
  wire data_out_ready_i_41_n_0;
  wire data_out_ready_i_42_n_0;
  wire data_out_ready_i_43_n_0;
  wire data_out_ready_i_4_n_0;
  wire data_out_ready_i_5_n_0;
  wire data_out_ready_i_6_n_0;
  wire data_out_ready_i_7_n_0;
  wire data_out_ready_i_8_n_0;
  wire data_out_ready_i_9_n_0;
  wire data_out_ready_reg_i_15_n_0;
  wire data_out_ready_reg_i_15_n_1;
  wire data_out_ready_reg_i_15_n_2;
  wire data_out_ready_reg_i_15_n_3;
  wire data_out_ready_reg_i_15_n_4;
  wire data_out_ready_reg_i_15_n_5;
  wire data_out_ready_reg_i_15_n_6;
  wire data_out_ready_reg_i_15_n_7;
  wire data_out_ready_reg_i_22_n_0;
  wire data_out_ready_reg_i_22_n_1;
  wire data_out_ready_reg_i_22_n_2;
  wire data_out_ready_reg_i_22_n_3;
  wire data_out_ready_reg_i_22_n_4;
  wire data_out_ready_reg_i_22_n_5;
  wire data_out_ready_reg_i_22_n_6;
  wire data_out_ready_reg_i_22_n_7;
  wire \data_out_reg[5]_i_11_n_0 ;
  wire \data_out_reg[5]_i_11_n_1 ;
  wire \data_out_reg[5]_i_11_n_2 ;
  wire \data_out_reg[5]_i_11_n_3 ;
  wire \data_out_reg[5]_i_11_n_4 ;
  wire \data_out_reg[5]_i_11_n_5 ;
  wire \data_out_reg[5]_i_11_n_6 ;
  wire \data_out_reg[5]_i_11_n_7 ;
  wire \data_out_reg[5]_i_16_n_0 ;
  wire \data_out_reg[5]_i_16_n_1 ;
  wire \data_out_reg[5]_i_16_n_2 ;
  wire \data_out_reg[5]_i_16_n_3 ;
  wire \data_out_reg[5]_i_16_n_4 ;
  wire \data_out_reg[5]_i_16_n_5 ;
  wire \data_out_reg[5]_i_16_n_6 ;
  wire \data_out_reg[5]_i_16_n_7 ;
  wire \data_out_reg[5]_i_25_n_0 ;
  wire \data_out_reg[5]_i_25_n_1 ;
  wire \data_out_reg[5]_i_25_n_2 ;
  wire \data_out_reg[5]_i_25_n_3 ;
  wire \data_out_reg[5]_i_25_n_4 ;
  wire \data_out_reg[5]_i_25_n_5 ;
  wire \data_out_reg[5]_i_25_n_6 ;
  wire \data_out_reg[5]_i_25_n_7 ;
  wire \data_out_reg[5]_i_7_n_1 ;
  wire \data_out_reg[5]_i_7_n_2 ;
  wire \data_out_reg[5]_i_7_n_3 ;
  wire \data_out_reg[5]_i_7_n_4 ;
  wire \data_out_reg[5]_i_7_n_5 ;
  wire \data_out_reg[5]_i_7_n_6 ;
  wire \data_out_reg[5]_i_7_n_7 ;
  wire data_out_valid;
  wire data_out_valid_i_1_n_0;
  wire done;
  wire done_i_1_n_0;
  wire done_i_3_n_0;
  wire done_i_4_n_0;
  wire done_i_5_n_0;
  wire done_i_6_n_0;
  wire done_i_7_n_0;
  wire done_reg_n_0;
  wire i0;
  wire \i[0]_i_3_n_0 ;
  wire [31:0]i_reg;
  wire \i_reg[0]_i_2_n_0 ;
  wire \i_reg[0]_i_2_n_1 ;
  wire \i_reg[0]_i_2_n_10 ;
  wire \i_reg[0]_i_2_n_11 ;
  wire \i_reg[0]_i_2_n_12 ;
  wire \i_reg[0]_i_2_n_13 ;
  wire \i_reg[0]_i_2_n_14 ;
  wire \i_reg[0]_i_2_n_15 ;
  wire \i_reg[0]_i_2_n_2 ;
  wire \i_reg[0]_i_2_n_3 ;
  wire \i_reg[0]_i_2_n_4 ;
  wire \i_reg[0]_i_2_n_5 ;
  wire \i_reg[0]_i_2_n_6 ;
  wire \i_reg[0]_i_2_n_7 ;
  wire \i_reg[0]_i_2_n_8 ;
  wire \i_reg[0]_i_2_n_9 ;
  wire \i_reg[16]_i_1_n_0 ;
  wire \i_reg[16]_i_1_n_1 ;
  wire \i_reg[16]_i_1_n_10 ;
  wire \i_reg[16]_i_1_n_11 ;
  wire \i_reg[16]_i_1_n_12 ;
  wire \i_reg[16]_i_1_n_13 ;
  wire \i_reg[16]_i_1_n_14 ;
  wire \i_reg[16]_i_1_n_15 ;
  wire \i_reg[16]_i_1_n_2 ;
  wire \i_reg[16]_i_1_n_3 ;
  wire \i_reg[16]_i_1_n_4 ;
  wire \i_reg[16]_i_1_n_5 ;
  wire \i_reg[16]_i_1_n_6 ;
  wire \i_reg[16]_i_1_n_7 ;
  wire \i_reg[16]_i_1_n_8 ;
  wire \i_reg[16]_i_1_n_9 ;
  wire \i_reg[24]_i_1_n_1 ;
  wire \i_reg[24]_i_1_n_10 ;
  wire \i_reg[24]_i_1_n_11 ;
  wire \i_reg[24]_i_1_n_12 ;
  wire \i_reg[24]_i_1_n_13 ;
  wire \i_reg[24]_i_1_n_14 ;
  wire \i_reg[24]_i_1_n_15 ;
  wire \i_reg[24]_i_1_n_2 ;
  wire \i_reg[24]_i_1_n_3 ;
  wire \i_reg[24]_i_1_n_4 ;
  wire \i_reg[24]_i_1_n_5 ;
  wire \i_reg[24]_i_1_n_6 ;
  wire \i_reg[24]_i_1_n_7 ;
  wire \i_reg[24]_i_1_n_8 ;
  wire \i_reg[24]_i_1_n_9 ;
  wire \i_reg[8]_i_1_n_0 ;
  wire \i_reg[8]_i_1_n_1 ;
  wire \i_reg[8]_i_1_n_10 ;
  wire \i_reg[8]_i_1_n_11 ;
  wire \i_reg[8]_i_1_n_12 ;
  wire \i_reg[8]_i_1_n_13 ;
  wire \i_reg[8]_i_1_n_14 ;
  wire \i_reg[8]_i_1_n_15 ;
  wire \i_reg[8]_i_1_n_2 ;
  wire \i_reg[8]_i_1_n_3 ;
  wire \i_reg[8]_i_1_n_4 ;
  wire \i_reg[8]_i_1_n_5 ;
  wire \i_reg[8]_i_1_n_6 ;
  wire \i_reg[8]_i_1_n_7 ;
  wire \i_reg[8]_i_1_n_8 ;
  wire \i_reg[8]_i_1_n_9 ;
  wire [2:0]mod_type;
  wire [4:4]p_2_in;
  wire reset;
  wire [7:3]NLW_data_out1__7_carry_CO_UNCONNECTED;
  wire [7:4]NLW_data_out1__7_carry_O_UNCONNECTED;
  wire [7:3]NLW_data_out1_carry_CO_UNCONNECTED;
  wire [7:4]NLW_data_out1_carry_O_UNCONNECTED;
  wire [7:0]NLW_data_out_ready1__15_carry_O_UNCONNECTED;
  wire [7:0]NLW_data_out_ready1__15_carry__0_O_UNCONNECTED;
  wire [7:0]NLW_data_out_ready1_carry_O_UNCONNECTED;
  wire [7:0]NLW_data_out_ready1_carry__0_O_UNCONNECTED;
  wire [7:0]NLW_data_out_ready_reg_i_15_O_UNCONNECTED;
  wire [7:0]NLW_data_out_ready_reg_i_22_O_UNCONNECTED;
  wire [7:0]\NLW_data_out_reg[5]_i_11_O_UNCONNECTED ;
  wire [7:0]\NLW_data_out_reg[5]_i_16_O_UNCONNECTED ;
  wire [7:0]\NLW_data_out_reg[5]_i_25_O_UNCONNECTED ;
  wire [7:7]\NLW_data_out_reg[5]_i_7_CO_UNCONNECTED ;
  wire [7:0]\NLW_data_out_reg[5]_i_7_O_UNCONNECTED ;
  wire [7:7]\NLW_i_reg[24]_i_1_CO_UNCONNECTED ;

  CARRY8 data_out1__7_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_data_out1__7_carry_CO_UNCONNECTED[7:3],data_out1__7_carry_n_5,data_out1__7_carry_n_6,data_out1__7_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,i_reg[0],1'b0,1'b1}),
        .O({NLW_data_out1__7_carry_O_UNCONNECTED[7:4],data_out1__7_carry_n_12,data_out1__7_carry_n_13,data_out1__7_carry_n_14,data_out1__7_carry_n_15}),
        .S({1'b0,1'b0,1'b0,1'b0,data_out1__7_carry_i_1_n_0,data_out1__7_carry_i_2_n_0,data_out1__7_carry_i_3_n_0,i_reg[0]}));
  LUT2 #(
    .INIT(4'h9)) 
    data_out1__7_carry_i_1
       (.I0(i_reg[1]),
        .I1(i_reg[3]),
        .O(data_out1__7_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    data_out1__7_carry_i_2
       (.I0(i_reg[0]),
        .I1(i_reg[2]),
        .O(data_out1__7_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out1__7_carry_i_3
       (.I0(i_reg[1]),
        .O(data_out1__7_carry_i_3_n_0));
  CARRY8 data_out1_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_data_out1_carry_CO_UNCONNECTED[7:3],data_out1_carry_n_5,data_out1_carry_n_6,data_out1_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,i_reg[3:2],1'b0}),
        .O({NLW_data_out1_carry_O_UNCONNECTED[7:4],data_out1_carry_n_12,data_out1_carry_n_13,data_out1_carry_n_14,data_out1_carry_n_15}),
        .S({1'b0,1'b0,1'b0,1'b0,data_out1_carry_i_1_n_0,data_out1_carry_i_2_n_0,data_out1_carry_i_3_n_0,i_reg[1]}));
  LUT2 #(
    .INIT(4'h6)) 
    data_out1_carry_i_1
       (.I0(i_reg[4]),
        .I1(i_reg[2]),
        .O(data_out1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out1_carry_i_2
       (.I0(i_reg[3]),
        .I1(i_reg[1]),
        .O(data_out1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out1_carry_i_3
       (.I0(i_reg[2]),
        .I1(i_reg[0]),
        .O(data_out1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \data_out[0]_i_10 
       (.I0(\data_out[0]_i_18_n_0 ),
        .I1(\data_out[0]_i_19_n_0 ),
        .I2(i_reg[3]),
        .I3(i_reg[2]),
        .I4(\data_out[0]_i_20_n_0 ),
        .I5(\data_out[0]_i_21_n_0 ),
        .O(\data_out[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \data_out[0]_i_11 
       (.I0(\data_out[0]_i_22_n_0 ),
        .I1(\data_out[0]_i_23_n_0 ),
        .I2(i_reg[3]),
        .I3(i_reg[2]),
        .I4(\data_out[0]_i_24_n_0 ),
        .I5(\data_out[0]_i_25_n_0 ),
        .O(\data_out[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \data_out[0]_i_12 
       (.I0(\data_out[0]_i_26_n_0 ),
        .I1(\data_out[4]_i_16_n_0 ),
        .I2(data_out1_carry_n_15),
        .I3(\data_out[4]_i_18_n_0 ),
        .I4(data_out1_carry_n_14),
        .I5(\data_out[2]_i_11_n_0 ),
        .O(\data_out[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \data_out[0]_i_13 
       (.I0(data_in[0]),
        .I1(data_in[16]),
        .I2(data_out1__7_carry_n_13),
        .I3(data_in[24]),
        .I4(data_out1__7_carry_n_12),
        .I5(data_in[8]),
        .O(\data_out[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[0]_i_14 
       (.I0(data_in[20]),
        .I1(data_in[28]),
        .I2(i_reg[3]),
        .I3(i_reg[2]),
        .I4(data_in[4]),
        .I5(data_in[12]),
        .O(\data_out[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[0]_i_15 
       (.I0(data_in[22]),
        .I1(data_in[30]),
        .I2(i_reg[3]),
        .I3(i_reg[2]),
        .I4(data_in[6]),
        .I5(data_in[14]),
        .O(\data_out[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[0]_i_16 
       (.I0(data_in[16]),
        .I1(data_in[24]),
        .I2(i_reg[3]),
        .I3(i_reg[2]),
        .I4(data_in[0]),
        .I5(data_in[8]),
        .O(\data_out[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[0]_i_17 
       (.I0(data_in[18]),
        .I1(data_in[26]),
        .I2(i_reg[3]),
        .I3(i_reg[2]),
        .I4(data_in[2]),
        .I5(data_in[10]),
        .O(\data_out[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \data_out[0]_i_18 
       (.I0(data_in[21]),
        .I1(data_in[23]),
        .I2(i_reg[1]),
        .I3(i_reg[0]),
        .I4(data_in[20]),
        .I5(data_in[22]),
        .O(\data_out[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \data_out[0]_i_19 
       (.I0(data_in[29]),
        .I1(data_in[31]),
        .I2(i_reg[1]),
        .I3(i_reg[0]),
        .I4(data_in[28]),
        .I5(data_in[30]),
        .O(\data_out[0]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFAAAEEAA)) 
    \data_out[0]_i_2 
       (.I0(\data_out[0]_i_4_n_0 ),
        .I1(\data_out[0]_i_5_n_0 ),
        .I2(\data_out[0]_i_6_n_0 ),
        .I3(mod_type[1]),
        .I4(i_reg[0]),
        .O(\data_out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \data_out[0]_i_20 
       (.I0(data_in[17]),
        .I1(data_in[19]),
        .I2(i_reg[1]),
        .I3(i_reg[0]),
        .I4(data_in[16]),
        .I5(data_in[18]),
        .O(\data_out[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \data_out[0]_i_21 
       (.I0(data_in[25]),
        .I1(data_in[27]),
        .I2(i_reg[1]),
        .I3(i_reg[0]),
        .I4(data_in[24]),
        .I5(data_in[26]),
        .O(\data_out[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \data_out[0]_i_22 
       (.I0(data_in[5]),
        .I1(data_in[7]),
        .I2(i_reg[1]),
        .I3(i_reg[0]),
        .I4(data_in[4]),
        .I5(data_in[6]),
        .O(\data_out[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \data_out[0]_i_23 
       (.I0(data_in[13]),
        .I1(data_in[15]),
        .I2(i_reg[1]),
        .I3(i_reg[0]),
        .I4(data_in[12]),
        .I5(data_in[14]),
        .O(\data_out[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \data_out[0]_i_24 
       (.I0(data_in[1]),
        .I1(data_in[3]),
        .I2(i_reg[1]),
        .I3(i_reg[0]),
        .I4(data_in[0]),
        .I5(data_in[2]),
        .O(\data_out[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \data_out[0]_i_25 
       (.I0(data_in[9]),
        .I1(data_in[11]),
        .I2(i_reg[1]),
        .I3(i_reg[0]),
        .I4(data_in[8]),
        .I5(data_in[10]),
        .O(\data_out[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \data_out[0]_i_26 
       (.I0(data_in[0]),
        .I1(data_in[16]),
        .I2(data_out1_carry_n_13),
        .I3(data_in[24]),
        .I4(data_out1_carry_n_12),
        .I5(data_in[8]),
        .O(\data_out[0]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \data_out[0]_i_3 
       (.I0(\data_out[0]_i_7_n_0 ),
        .I1(data_in[30]),
        .I2(\data_out[0]_i_8_n_0 ),
        .I3(\data_out_reg[5]_i_7_n_1 ),
        .I4(mod_type[1]),
        .O(\data_out[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8B8BB88)) 
    \data_out[0]_i_4 
       (.I0(data1[0]),
        .I1(mod_type[0]),
        .I2(\data_out[0]_i_10_n_0 ),
        .I3(\data_out[0]_i_11_n_0 ),
        .I4(i_reg[4]),
        .I5(mod_type[1]),
        .O(\data_out[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[0]_i_5 
       (.I0(data_in[16]),
        .I1(data_in[24]),
        .I2(i_reg[2]),
        .I3(i_reg[1]),
        .I4(data_in[0]),
        .I5(data_in[8]),
        .O(\data_out[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[0]_i_6 
       (.I0(data_in[20]),
        .I1(data_in[28]),
        .I2(i_reg[2]),
        .I3(i_reg[1]),
        .I4(data_in[4]),
        .I5(data_in[12]),
        .O(\data_out[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7B3C480)) 
    \data_out[0]_i_7 
       (.I0(i_reg[0]),
        .I1(data_out_ready1__15_carry__0_n_0),
        .I2(\data_out[1]_i_14_n_0 ),
        .I3(\data_out[0]_i_12_n_0 ),
        .I4(data_in[30]),
        .I5(mod_type[1]),
        .O(\data_out[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFCC3300)) 
    \data_out[0]_i_8 
       (.I0(\data_out[4]_i_9_n_0 ),
        .I1(data_out1__7_carry_n_14),
        .I2(\data_out[2]_i_9_n_0 ),
        .I3(\data_out[0]_i_13_n_0 ),
        .I4(\data_out[4]_i_10_n_0 ),
        .I5(data_out1__7_carry_n_15),
        .O(\data_out[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[0]_i_9 
       (.I0(\data_out[0]_i_14_n_0 ),
        .I1(\data_out[0]_i_15_n_0 ),
        .I2(i_reg[1]),
        .I3(i_reg[0]),
        .I4(\data_out[0]_i_16_n_0 ),
        .I5(\data_out[0]_i_17_n_0 ),
        .O(data1[0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[1]_i_10 
       (.I0(data_in[21]),
        .I1(data_in[29]),
        .I2(i_reg[3]),
        .I3(i_reg[2]),
        .I4(data_in[5]),
        .I5(data_in[13]),
        .O(\data_out[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[1]_i_11 
       (.I0(data_in[23]),
        .I1(data_in[31]),
        .I2(i_reg[3]),
        .I3(i_reg[2]),
        .I4(data_in[7]),
        .I5(data_in[15]),
        .O(\data_out[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[1]_i_12 
       (.I0(data_in[17]),
        .I1(data_in[25]),
        .I2(i_reg[3]),
        .I3(i_reg[2]),
        .I4(data_in[1]),
        .I5(data_in[9]),
        .O(\data_out[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[1]_i_13 
       (.I0(data_in[19]),
        .I1(data_in[27]),
        .I2(i_reg[3]),
        .I3(i_reg[2]),
        .I4(data_in[3]),
        .I5(data_in[11]),
        .O(\data_out[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \data_out[1]_i_14 
       (.I0(\data_out[1]_i_16_n_0 ),
        .I1(\data_out[4]_i_20_n_0 ),
        .I2(data_out1_carry_n_15),
        .I3(\data_out[4]_i_22_n_0 ),
        .I4(data_out1_carry_n_14),
        .I5(\data_out[3]_i_11_n_0 ),
        .O(\data_out[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \data_out[1]_i_15 
       (.I0(data_in[1]),
        .I1(data_in[17]),
        .I2(data_out1__7_carry_n_13),
        .I3(data_in[25]),
        .I4(data_out1__7_carry_n_12),
        .I5(data_in[9]),
        .O(\data_out[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \data_out[1]_i_16 
       (.I0(data_in[1]),
        .I1(data_in[17]),
        .I2(data_out1_carry_n_13),
        .I3(data_in[25]),
        .I4(data_out1_carry_n_12),
        .I5(data_in[9]),
        .O(\data_out[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFF008888F0F08888)) 
    \data_out[1]_i_2 
       (.I0(mod_type[0]),
        .I1(data1[1]),
        .I2(\data_out[1]_i_5_n_0 ),
        .I3(\data_out[1]_i_6_n_0 ),
        .I4(mod_type[1]),
        .I5(i_reg[0]),
        .O(\data_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0EEEEEEEE)) 
    \data_out[1]_i_3 
       (.I0(\data_out[1]_i_7_n_0 ),
        .I1(\data_out[1]_i_8_n_0 ),
        .I2(data_in[31]),
        .I3(\data_out[1]_i_9_n_0 ),
        .I4(\data_out_reg[5]_i_7_n_1 ),
        .I5(mod_type[1]),
        .O(\data_out[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[1]_i_4 
       (.I0(\data_out[1]_i_10_n_0 ),
        .I1(\data_out[1]_i_11_n_0 ),
        .I2(i_reg[1]),
        .I3(i_reg[0]),
        .I4(\data_out[1]_i_12_n_0 ),
        .I5(\data_out[1]_i_13_n_0 ),
        .O(data1[1]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[1]_i_5 
       (.I0(data_in[17]),
        .I1(data_in[25]),
        .I2(i_reg[2]),
        .I3(i_reg[1]),
        .I4(data_in[1]),
        .I5(data_in[9]),
        .O(\data_out[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[1]_i_6 
       (.I0(data_in[21]),
        .I1(data_in[29]),
        .I2(i_reg[2]),
        .I3(i_reg[1]),
        .I4(data_in[5]),
        .I5(data_in[13]),
        .O(\data_out[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data_out[1]_i_7 
       (.I0(i_reg[0]),
        .I1(data_out_ready1__15_carry__0_n_0),
        .I2(\data_out[1]_i_14_n_0 ),
        .O(\data_out[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFFB8000000)) 
    \data_out[1]_i_8 
       (.I0(\data_out[4]_i_12_n_0 ),
        .I1(data_out1_carry_n_15),
        .I2(\data_out[2]_i_10_n_0 ),
        .I3(i_reg[0]),
        .I4(data_out_ready1__15_carry__0_n_0),
        .I5(data_in[31]),
        .O(\data_out[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFCC3300)) 
    \data_out[1]_i_9 
       (.I0(\data_out[5]_i_12_n_0 ),
        .I1(data_out1__7_carry_n_14),
        .I2(\data_out[3]_i_9_n_0 ),
        .I3(\data_out[1]_i_15_n_0 ),
        .I4(\data_out[5]_i_14_n_0 ),
        .I5(data_out1__7_carry_n_15),
        .O(\data_out[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEA)) 
    \data_out[2]_i_1 
       (.I0(\data_out[2]_i_2_n_0 ),
        .I1(mod_type[2]),
        .I2(\data_out[2]_i_3_n_0 ),
        .I3(\data_out[2]_i_4_n_0 ),
        .I4(\data_out[2]_i_5_n_0 ),
        .I5(\data_out[2]_i_6_n_0 ),
        .O(data_out_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[2]_i_10 
       (.I0(\data_out[4]_i_18_n_0 ),
        .I1(data_out1_carry_n_14),
        .I2(\data_out[2]_i_11_n_0 ),
        .O(\data_out[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \data_out[2]_i_11 
       (.I0(data_in[2]),
        .I1(data_in[18]),
        .I2(data_out1_carry_n_13),
        .I3(data_in[26]),
        .I4(data_out1_carry_n_12),
        .I5(data_in[10]),
        .O(\data_out[2]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \data_out[2]_i_2 
       (.I0(\data_out[2]_i_7_n_0 ),
        .I1(\data_out[2]_i_8_n_0 ),
        .I2(mod_type[2]),
        .I3(mod_type[1]),
        .I4(i_reg[0]),
        .O(\data_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8000000000000)) 
    \data_out[2]_i_3 
       (.I0(\data_out[4]_i_9_n_0 ),
        .I1(data_out1__7_carry_n_14),
        .I2(\data_out[2]_i_9_n_0 ),
        .I3(data_out1__7_carry_n_15),
        .I4(\data_out_reg[5]_i_7_n_1 ),
        .I5(mod_type[1]),
        .O(\data_out[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0808080000000800)) 
    \data_out[2]_i_4 
       (.I0(i_reg[0]),
        .I1(data_out_ready1__15_carry__0_n_0),
        .I2(mod_type[1]),
        .I3(\data_out[3]_i_10_n_0 ),
        .I4(data_out1_carry_n_15),
        .I5(\data_out[4]_i_14_n_0 ),
        .O(\data_out[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0404040000000400)) 
    \data_out[2]_i_5 
       (.I0(i_reg[0]),
        .I1(data_out_ready1__15_carry__0_n_0),
        .I2(mod_type[1]),
        .I3(\data_out[2]_i_10_n_0 ),
        .I4(data_out1_carry_n_15),
        .I5(\data_out[4]_i_12_n_0 ),
        .O(\data_out[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \data_out[2]_i_6 
       (.I0(data_out1__7_carry_n_15),
        .I1(\data_out_reg[5]_i_7_n_1 ),
        .I2(mod_type[1]),
        .I3(\data_out[4]_i_3_n_0 ),
        .O(\data_out[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[2]_i_7 
       (.I0(data_in[22]),
        .I1(data_in[30]),
        .I2(i_reg[2]),
        .I3(i_reg[1]),
        .I4(data_in[6]),
        .I5(data_in[14]),
        .O(\data_out[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[2]_i_8 
       (.I0(data_in[18]),
        .I1(data_in[26]),
        .I2(i_reg[2]),
        .I3(i_reg[1]),
        .I4(data_in[2]),
        .I5(data_in[10]),
        .O(\data_out[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \data_out[2]_i_9 
       (.I0(data_in[2]),
        .I1(data_in[18]),
        .I2(data_out1__7_carry_n_13),
        .I3(data_in[26]),
        .I4(data_out1__7_carry_n_12),
        .I5(data_in[10]),
        .O(\data_out[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEA)) 
    \data_out[3]_i_1 
       (.I0(\data_out[3]_i_2_n_0 ),
        .I1(mod_type[2]),
        .I2(\data_out[3]_i_3_n_0 ),
        .I3(\data_out[3]_i_4_n_0 ),
        .I4(\data_out[3]_i_5_n_0 ),
        .I5(\data_out[3]_i_6_n_0 ),
        .O(data_out_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[3]_i_10 
       (.I0(\data_out[4]_i_22_n_0 ),
        .I1(data_out1_carry_n_14),
        .I2(\data_out[3]_i_11_n_0 ),
        .O(\data_out[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \data_out[3]_i_11 
       (.I0(data_in[3]),
        .I1(data_in[19]),
        .I2(data_out1_carry_n_13),
        .I3(data_in[27]),
        .I4(data_out1_carry_n_12),
        .I5(data_in[11]),
        .O(\data_out[3]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \data_out[3]_i_2 
       (.I0(\data_out[3]_i_7_n_0 ),
        .I1(\data_out[3]_i_8_n_0 ),
        .I2(mod_type[2]),
        .I3(mod_type[1]),
        .I4(i_reg[0]),
        .O(\data_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8000000000000)) 
    \data_out[3]_i_3 
       (.I0(\data_out[5]_i_12_n_0 ),
        .I1(data_out1__7_carry_n_14),
        .I2(\data_out[3]_i_9_n_0 ),
        .I3(data_out1__7_carry_n_15),
        .I4(\data_out_reg[5]_i_7_n_1 ),
        .I5(mod_type[1]),
        .O(\data_out[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0808080000000800)) 
    \data_out[3]_i_4 
       (.I0(i_reg[0]),
        .I1(data_out_ready1__15_carry__0_n_0),
        .I2(mod_type[1]),
        .I3(\data_out[4]_i_12_n_0 ),
        .I4(data_out1_carry_n_15),
        .I5(\data_out[4]_i_13_n_0 ),
        .O(\data_out[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0404040000000400)) 
    \data_out[3]_i_5 
       (.I0(i_reg[0]),
        .I1(data_out_ready1__15_carry__0_n_0),
        .I2(mod_type[1]),
        .I3(\data_out[3]_i_10_n_0 ),
        .I4(data_out1_carry_n_15),
        .I5(\data_out[4]_i_14_n_0 ),
        .O(\data_out[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \data_out[3]_i_6 
       (.I0(data_out1__7_carry_n_15),
        .I1(\data_out_reg[5]_i_7_n_1 ),
        .I2(mod_type[1]),
        .I3(\data_out[5]_i_6_n_0 ),
        .O(\data_out[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[3]_i_7 
       (.I0(data_in[23]),
        .I1(data_in[31]),
        .I2(i_reg[2]),
        .I3(i_reg[1]),
        .I4(data_in[7]),
        .I5(data_in[15]),
        .O(\data_out[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[3]_i_8 
       (.I0(data_in[19]),
        .I1(data_in[27]),
        .I2(i_reg[2]),
        .I3(i_reg[1]),
        .I4(data_in[3]),
        .I5(data_in[11]),
        .O(\data_out[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \data_out[3]_i_9 
       (.I0(data_in[3]),
        .I1(data_in[19]),
        .I2(data_out1__7_carry_n_13),
        .I3(data_in[27]),
        .I4(data_out1__7_carry_n_12),
        .I5(data_in[11]),
        .O(\data_out[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \data_out[4]_i_1 
       (.I0(mod_type[2]),
        .I1(\data_out[4]_i_2_n_0 ),
        .I2(\data_out[4]_i_3_n_0 ),
        .I3(\data_out[4]_i_4_n_0 ),
        .I4(p_2_in),
        .I5(\data_out[4]_i_6_n_0 ),
        .O(data_out_0[4]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[4]_i_10 
       (.I0(data_in[20]),
        .I1(data_in[28]),
        .I2(data_out1__7_carry_n_12),
        .I3(data_out1__7_carry_n_13),
        .I4(data_in[4]),
        .I5(data_in[12]),
        .O(\data_out[4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[4]_i_11 
       (.I0(data_in[24]),
        .I1(data_out1__7_carry_n_12),
        .I2(data_in[8]),
        .O(\data_out[4]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \data_out[4]_i_12 
       (.I0(\data_out[4]_i_16_n_0 ),
        .I1(\data_out[4]_i_17_n_0 ),
        .I2(data_in[16]),
        .I3(data_out1_carry_n_14),
        .I4(data_out1_carry_n_13),
        .O(\data_out[4]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \data_out[4]_i_13 
       (.I0(\data_out[4]_i_18_n_0 ),
        .I1(\data_out[4]_i_19_n_0 ),
        .I2(data_in[18]),
        .I3(data_out1_carry_n_14),
        .I4(data_out1_carry_n_13),
        .O(\data_out[4]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \data_out[4]_i_14 
       (.I0(\data_out[4]_i_20_n_0 ),
        .I1(\data_out[4]_i_21_n_0 ),
        .I2(data_in[17]),
        .I3(data_out1_carry_n_14),
        .I4(data_out1_carry_n_13),
        .O(\data_out[4]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \data_out[4]_i_15 
       (.I0(\data_out[4]_i_22_n_0 ),
        .I1(\data_out[4]_i_23_n_0 ),
        .I2(data_in[19]),
        .I3(data_out1_carry_n_14),
        .I4(data_out1_carry_n_13),
        .O(\data_out[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[4]_i_16 
       (.I0(data_in[20]),
        .I1(data_in[28]),
        .I2(data_out1_carry_n_12),
        .I3(data_out1_carry_n_13),
        .I4(data_in[4]),
        .I5(data_in[12]),
        .O(\data_out[4]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[4]_i_17 
       (.I0(data_in[24]),
        .I1(data_out1_carry_n_12),
        .I2(data_in[8]),
        .O(\data_out[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[4]_i_18 
       (.I0(data_in[22]),
        .I1(data_in[30]),
        .I2(data_out1_carry_n_12),
        .I3(data_out1_carry_n_13),
        .I4(data_in[6]),
        .I5(data_in[14]),
        .O(\data_out[4]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[4]_i_19 
       (.I0(data_in[26]),
        .I1(data_out1_carry_n_12),
        .I2(data_in[10]),
        .O(\data_out[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAA2A8A0AA0208000)) 
    \data_out[4]_i_2 
       (.I0(\data_out[4]_i_7_n_0 ),
        .I1(data_out1__7_carry_n_13),
        .I2(data_out1__7_carry_n_14),
        .I3(data_in[18]),
        .I4(\data_out[4]_i_8_n_0 ),
        .I5(\data_out[4]_i_9_n_0 ),
        .O(\data_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[4]_i_20 
       (.I0(data_in[21]),
        .I1(data_in[29]),
        .I2(data_out1_carry_n_12),
        .I3(data_out1_carry_n_13),
        .I4(data_in[5]),
        .I5(data_in[13]),
        .O(\data_out[4]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[4]_i_21 
       (.I0(data_in[25]),
        .I1(data_out1_carry_n_12),
        .I2(data_in[9]),
        .O(\data_out[4]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[4]_i_22 
       (.I0(data_in[23]),
        .I1(data_in[31]),
        .I2(data_out1_carry_n_12),
        .I3(data_out1_carry_n_13),
        .I4(data_in[7]),
        .I5(data_in[15]),
        .O(\data_out[4]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[4]_i_23 
       (.I0(data_in[27]),
        .I1(data_out1_carry_n_12),
        .I2(data_in[11]),
        .O(\data_out[4]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \data_out[4]_i_3 
       (.I0(\data_out[4]_i_10_n_0 ),
        .I1(\data_out[4]_i_11_n_0 ),
        .I2(data_in[16]),
        .I3(data_out1__7_carry_n_14),
        .I4(data_out1__7_carry_n_13),
        .O(\data_out[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_out[4]_i_4 
       (.I0(mod_type[1]),
        .I1(\data_out_reg[5]_i_7_n_1 ),
        .I2(data_out1__7_carry_n_15),
        .O(\data_out[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00CCCCF0F0AAAA)) 
    \data_out[4]_i_5 
       (.I0(\data_out[4]_i_12_n_0 ),
        .I1(\data_out[4]_i_13_n_0 ),
        .I2(\data_out[4]_i_14_n_0 ),
        .I3(\data_out[4]_i_15_n_0 ),
        .I4(i_reg[0]),
        .I5(data_out1_carry_n_15),
        .O(p_2_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_out[4]_i_6 
       (.I0(data_out_ready1__15_carry__0_n_0),
        .I1(mod_type[1]),
        .O(\data_out[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_out[4]_i_7 
       (.I0(mod_type[1]),
        .I1(\data_out_reg[5]_i_7_n_1 ),
        .I2(data_out1__7_carry_n_15),
        .O(\data_out[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[4]_i_8 
       (.I0(data_in[26]),
        .I1(data_out1__7_carry_n_12),
        .I2(data_in[10]),
        .O(\data_out[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[4]_i_9 
       (.I0(data_in[22]),
        .I1(data_in[30]),
        .I2(data_out1__7_carry_n_12),
        .I3(data_out1__7_carry_n_13),
        .I4(data_in[6]),
        .I5(data_in[14]),
        .O(\data_out[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00E40000)) 
    \data_out[5]_i_1 
       (.I0(mod_type[2]),
        .I1(\data_out[5]_i_3_n_0 ),
        .I2(\data_out[5]_i_4_n_0 ),
        .I3(done_reg_n_0),
        .I4(data_in_ready),
        .O(\data_out[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \data_out[5]_i_10 
       (.I0(i_reg[30]),
        .I1(i_reg[31]),
        .I2(data_out_ready_i_12_n_0),
        .I3(data_out_ready_i_13_n_0),
        .I4(\data_out[5]_i_24_n_0 ),
        .I5(data_out_ready_i_18_n_0),
        .O(\data_out[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[5]_i_12 
       (.I0(data_in[23]),
        .I1(data_in[31]),
        .I2(data_out1__7_carry_n_12),
        .I3(data_out1__7_carry_n_13),
        .I4(data_in[7]),
        .I5(data_in[15]),
        .O(\data_out[5]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[5]_i_13 
       (.I0(data_in[27]),
        .I1(data_out1__7_carry_n_12),
        .I2(data_in[11]),
        .O(\data_out[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data_out[5]_i_14 
       (.I0(data_in[21]),
        .I1(data_in[29]),
        .I2(data_out1__7_carry_n_12),
        .I3(data_out1__7_carry_n_13),
        .I4(data_in[5]),
        .I5(data_in[13]),
        .O(\data_out[5]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[5]_i_15 
       (.I0(data_in[25]),
        .I1(data_out1__7_carry_n_12),
        .I2(data_in[9]),
        .O(\data_out[5]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_17 
       (.I0(i_reg[31]),
        .I1(i_reg[30]),
        .O(\data_out[5]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_18 
       (.I0(i_reg[28]),
        .I1(i_reg[29]),
        .O(\data_out[5]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_19 
       (.I0(i_reg[27]),
        .I1(i_reg[26]),
        .O(\data_out[5]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAC00000000000000)) 
    \data_out[5]_i_2 
       (.I0(\data_out[5]_i_5_n_0 ),
        .I1(\data_out[5]_i_6_n_0 ),
        .I2(data_out1__7_carry_n_15),
        .I3(\data_out_reg[5]_i_7_n_1 ),
        .I4(mod_type[1]),
        .I5(mod_type[2]),
        .O(data_out_0[5]));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_20 
       (.I0(i_reg[25]),
        .I1(i_reg[24]),
        .O(\data_out[5]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_21 
       (.I0(i_reg[22]),
        .I1(i_reg[23]),
        .O(\data_out[5]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_22 
       (.I0(i_reg[21]),
        .I1(i_reg[20]),
        .O(\data_out[5]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_23 
       (.I0(i_reg[19]),
        .I1(i_reg[18]),
        .O(\data_out[5]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \data_out[5]_i_24 
       (.I0(i_reg[28]),
        .I1(i_reg[29]),
        .I2(i_reg[27]),
        .O(\data_out[5]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_26 
       (.I0(i_reg[31]),
        .I1(i_reg[30]),
        .O(\data_out[5]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_27 
       (.I0(i_reg[28]),
        .I1(i_reg[29]),
        .O(\data_out[5]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_28 
       (.I0(i_reg[27]),
        .I1(i_reg[26]),
        .O(\data_out[5]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_29 
       (.I0(i_reg[25]),
        .I1(i_reg[24]),
        .O(\data_out[5]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF00F8F8F8F8)) 
    \data_out[5]_i_3 
       (.I0(mod_type[0]),
        .I1(\data_out[5]_i_8_n_0 ),
        .I2(\data_out[5]_i_9_n_0 ),
        .I3(\data_out[5]_i_10_n_0 ),
        .I4(\data_out_reg[5]_i_11_n_0 ),
        .I5(mod_type[1]),
        .O(\data_out[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_30 
       (.I0(i_reg[22]),
        .I1(i_reg[23]),
        .O(\data_out[5]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_31 
       (.I0(i_reg[21]),
        .I1(i_reg[20]),
        .O(\data_out[5]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_32 
       (.I0(i_reg[19]),
        .I1(i_reg[18]),
        .O(\data_out[5]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_33 
       (.I0(i_reg[16]),
        .I1(i_reg[17]),
        .O(\data_out[5]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_34 
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .O(\data_out[5]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_35 
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .O(\data_out[5]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_36 
       (.I0(i_reg[16]),
        .I1(i_reg[17]),
        .O(\data_out[5]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_37 
       (.I0(i_reg[15]),
        .I1(i_reg[14]),
        .O(\data_out[5]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_38 
       (.I0(i_reg[13]),
        .I1(i_reg[12]),
        .O(\data_out[5]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_39 
       (.I0(i_reg[10]),
        .I1(i_reg[11]),
        .O(\data_out[5]_i_39_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \data_out[5]_i_4 
       (.I0(data_out_ready_i_5_n_0),
        .I1(data_out_ready_i_6_n_0),
        .I2(data_out_ready1__15_carry__0_n_0),
        .I3(mod_type[1]),
        .I4(\data_out_reg[5]_i_7_n_1 ),
        .O(\data_out[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_40 
       (.I0(i_reg[9]),
        .I1(i_reg[8]),
        .O(\data_out[5]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_41 
       (.I0(i_reg[7]),
        .I1(i_reg[6]),
        .O(\data_out[5]_i_41_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_42 
       (.I0(i_reg[4]),
        .I1(i_reg[5]),
        .O(\data_out[5]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_out[5]_i_43 
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .O(\data_out[5]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_44 
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .O(\data_out[5]_i_44_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \data_out[5]_i_45 
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .O(\data_out[5]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_46 
       (.I0(i_reg[15]),
        .I1(i_reg[14]),
        .O(\data_out[5]_i_46_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_47 
       (.I0(i_reg[13]),
        .I1(i_reg[12]),
        .O(\data_out[5]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_48 
       (.I0(i_reg[10]),
        .I1(i_reg[11]),
        .O(\data_out[5]_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_49 
       (.I0(i_reg[9]),
        .I1(i_reg[8]),
        .O(\data_out[5]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \data_out[5]_i_5 
       (.I0(\data_out[5]_i_12_n_0 ),
        .I1(\data_out[5]_i_13_n_0 ),
        .I2(data_in[19]),
        .I3(data_out1__7_carry_n_14),
        .I4(data_out1__7_carry_n_13),
        .O(\data_out[5]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_50 
       (.I0(i_reg[7]),
        .I1(i_reg[6]),
        .O(\data_out[5]_i_50_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_51 
       (.I0(i_reg[4]),
        .I1(i_reg[5]),
        .O(\data_out[5]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_out[5]_i_52 
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .O(\data_out[5]_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[5]_i_53 
       (.I0(i_reg[1]),
        .I1(i_reg[0]),
        .O(\data_out[5]_i_53_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \data_out[5]_i_6 
       (.I0(\data_out[5]_i_14_n_0 ),
        .I1(\data_out[5]_i_15_n_0 ),
        .I2(data_in[17]),
        .I3(data_out1__7_carry_n_14),
        .I4(data_out1__7_carry_n_13),
        .O(\data_out[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \data_out[5]_i_8 
       (.I0(i_reg[30]),
        .I1(i_reg[31]),
        .I2(data_out_ready_i_12_n_0),
        .I3(data_out_ready_i_13_n_0),
        .I4(\data_out[5]_i_24_n_0 ),
        .I5(data_out_ready_i_18_n_0),
        .O(\data_out[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFE0E)) 
    \data_out[5]_i_9 
       (.I0(data_out_ready_i_14_n_0),
        .I1(data_out_ready1_carry__0_n_0),
        .I2(mod_type[0]),
        .I3(data_out_ready_reg_i_15_n_0),
        .O(\data_out[5]_i_9_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 data_out_ready1__15_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({data_out_ready1__15_carry_n_0,data_out_ready1__15_carry_n_1,data_out_ready1__15_carry_n_2,data_out_ready1__15_carry_n_3,data_out_ready1__15_carry_n_4,data_out_ready1__15_carry_n_5,data_out_ready1__15_carry_n_6,data_out_ready1__15_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,data_out_ready1__15_carry_i_1_n_0,data_out_ready1__15_carry_i_2_n_0}),
        .O(NLW_data_out_ready1__15_carry_O_UNCONNECTED[7:0]),
        .S({data_out_ready1__15_carry_i_3_n_0,data_out_ready1__15_carry_i_4_n_0,data_out_ready1__15_carry_i_5_n_0,data_out_ready1__15_carry_i_6_n_0,data_out_ready1__15_carry_i_7_n_0,data_out_ready1__15_carry_i_8_n_0,data_out_ready1__15_carry_i_9_n_0,data_out_ready1__15_carry_i_10_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 data_out_ready1__15_carry__0
       (.CI(data_out_ready1__15_carry_n_0),
        .CI_TOP(1'b0),
        .CO({data_out_ready1__15_carry__0_n_0,data_out_ready1__15_carry__0_n_1,data_out_ready1__15_carry__0_n_2,data_out_ready1__15_carry__0_n_3,data_out_ready1__15_carry__0_n_4,data_out_ready1__15_carry__0_n_5,data_out_ready1__15_carry__0_n_6,data_out_ready1__15_carry__0_n_7}),
        .DI({i_reg[31],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_data_out_ready1__15_carry__0_O_UNCONNECTED[7:0]),
        .S({data_out_ready1__15_carry__0_i_1_n_0,data_out_ready1__15_carry__0_i_2_n_0,data_out_ready1__15_carry__0_i_3_n_0,data_out_ready1__15_carry__0_i_4_n_0,data_out_ready1__15_carry__0_i_5_n_0,data_out_ready1__15_carry__0_i_6_n_0,data_out_ready1__15_carry__0_i_7_n_0,data_out_ready1__15_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1__15_carry__0_i_1
       (.I0(i_reg[31]),
        .I1(i_reg[30]),
        .O(data_out_ready1__15_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1__15_carry__0_i_2
       (.I0(i_reg[28]),
        .I1(i_reg[29]),
        .O(data_out_ready1__15_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1__15_carry__0_i_3
       (.I0(i_reg[27]),
        .I1(i_reg[26]),
        .O(data_out_ready1__15_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1__15_carry__0_i_4
       (.I0(i_reg[25]),
        .I1(i_reg[24]),
        .O(data_out_ready1__15_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1__15_carry__0_i_5
       (.I0(i_reg[22]),
        .I1(i_reg[23]),
        .O(data_out_ready1__15_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1__15_carry__0_i_6
       (.I0(i_reg[21]),
        .I1(i_reg[20]),
        .O(data_out_ready1__15_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1__15_carry__0_i_7
       (.I0(i_reg[19]),
        .I1(i_reg[18]),
        .O(data_out_ready1__15_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1__15_carry__0_i_8
       (.I0(i_reg[16]),
        .I1(i_reg[17]),
        .O(data_out_ready1__15_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1__15_carry_i_1
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .O(data_out_ready1__15_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    data_out_ready1__15_carry_i_10
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .O(data_out_ready1__15_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1__15_carry_i_2
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .O(data_out_ready1__15_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1__15_carry_i_3
       (.I0(i_reg[15]),
        .I1(i_reg[14]),
        .O(data_out_ready1__15_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1__15_carry_i_4
       (.I0(i_reg[13]),
        .I1(i_reg[12]),
        .O(data_out_ready1__15_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1__15_carry_i_5
       (.I0(i_reg[10]),
        .I1(i_reg[11]),
        .O(data_out_ready1__15_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1__15_carry_i_6
       (.I0(i_reg[9]),
        .I1(i_reg[8]),
        .O(data_out_ready1__15_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1__15_carry_i_7
       (.I0(i_reg[7]),
        .I1(i_reg[6]),
        .O(data_out_ready1__15_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1__15_carry_i_8
       (.I0(i_reg[4]),
        .I1(i_reg[5]),
        .O(data_out_ready1__15_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    data_out_ready1__15_carry_i_9
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .O(data_out_ready1__15_carry_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 data_out_ready1_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({data_out_ready1_carry_n_0,data_out_ready1_carry_n_1,data_out_ready1_carry_n_2,data_out_ready1_carry_n_3,data_out_ready1_carry_n_4,data_out_ready1_carry_n_5,data_out_ready1_carry_n_6,data_out_ready1_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,data_out_ready1_carry_i_1_n_0,data_out_ready1_carry_i_2_n_0,data_out_ready1_carry_i_3_n_0}),
        .O(NLW_data_out_ready1_carry_O_UNCONNECTED[7:0]),
        .S({data_out_ready1_carry_i_4_n_0,data_out_ready1_carry_i_5_n_0,data_out_ready1_carry_i_6_n_0,data_out_ready1_carry_i_7_n_0,data_out_ready1_carry_i_8_n_0,data_out_ready1_carry_i_9_n_0,data_out_ready1_carry_i_10_n_0,data_out_ready1_carry_i_11_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 data_out_ready1_carry__0
       (.CI(data_out_ready1_carry_n_0),
        .CI_TOP(1'b0),
        .CO({data_out_ready1_carry__0_n_0,data_out_ready1_carry__0_n_1,data_out_ready1_carry__0_n_2,data_out_ready1_carry__0_n_3,data_out_ready1_carry__0_n_4,data_out_ready1_carry__0_n_5,data_out_ready1_carry__0_n_6,data_out_ready1_carry__0_n_7}),
        .DI({i_reg[31],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_data_out_ready1_carry__0_O_UNCONNECTED[7:0]),
        .S({data_out_ready1_carry__0_i_1_n_0,data_out_ready1_carry__0_i_2_n_0,data_out_ready1_carry__0_i_3_n_0,data_out_ready1_carry__0_i_4_n_0,data_out_ready1_carry__0_i_5_n_0,data_out_ready1_carry__0_i_6_n_0,data_out_ready1_carry__0_i_7_n_0,data_out_ready1_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1_carry__0_i_1
       (.I0(i_reg[31]),
        .I1(i_reg[30]),
        .O(data_out_ready1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1_carry__0_i_2
       (.I0(i_reg[28]),
        .I1(i_reg[29]),
        .O(data_out_ready1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1_carry__0_i_3
       (.I0(i_reg[27]),
        .I1(i_reg[26]),
        .O(data_out_ready1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1_carry__0_i_4
       (.I0(i_reg[25]),
        .I1(i_reg[24]),
        .O(data_out_ready1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1_carry__0_i_5
       (.I0(i_reg[22]),
        .I1(i_reg[23]),
        .O(data_out_ready1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1_carry__0_i_6
       (.I0(i_reg[21]),
        .I1(i_reg[20]),
        .O(data_out_ready1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1_carry__0_i_7
       (.I0(i_reg[19]),
        .I1(i_reg[18]),
        .O(data_out_ready1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1_carry__0_i_8
       (.I0(i_reg[16]),
        .I1(i_reg[17]),
        .O(data_out_ready1_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1_carry_i_1
       (.I0(i_reg[4]),
        .I1(i_reg[5]),
        .O(data_out_ready1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    data_out_ready1_carry_i_10
       (.I0(i_reg[3]),
        .I1(i_reg[2]),
        .O(data_out_ready1_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    data_out_ready1_carry_i_11
       (.I0(i_reg[1]),
        .I1(i_reg[0]),
        .O(data_out_ready1_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    data_out_ready1_carry_i_2
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .O(data_out_ready1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    data_out_ready1_carry_i_3
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .O(data_out_ready1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1_carry_i_4
       (.I0(i_reg[15]),
        .I1(i_reg[14]),
        .O(data_out_ready1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1_carry_i_5
       (.I0(i_reg[13]),
        .I1(i_reg[12]),
        .O(data_out_ready1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1_carry_i_6
       (.I0(i_reg[10]),
        .I1(i_reg[11]),
        .O(data_out_ready1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1_carry_i_7
       (.I0(i_reg[9]),
        .I1(i_reg[8]),
        .O(data_out_ready1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready1_carry_i_8
       (.I0(i_reg[7]),
        .I1(i_reg[6]),
        .O(data_out_ready1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    data_out_ready1_carry_i_9
       (.I0(i_reg[4]),
        .I1(i_reg[5]),
        .O(data_out_ready1_carry_i_9_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    data_out_ready_i_1
       (.I0(reset),
        .I1(data_in_valid),
        .I2(done_reg_n_0),
        .I3(data_in_ready),
        .O(data_out_ready019_out));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    data_out_ready_i_10
       (.I0(\data_out_reg[5]_i_11_n_0 ),
        .I1(mod_type[1]),
        .I2(data_out_ready_i_18_n_0),
        .I3(data_out_ready_i_19_n_0),
        .I4(data_out_ready_i_12_n_0),
        .I5(data_out_ready_i_17_n_0),
        .O(data_out_ready_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    data_out_ready_i_11
       (.I0(i_reg[27]),
        .I1(i_reg[29]),
        .I2(i_reg[28]),
        .I3(i_reg[30]),
        .I4(i_reg[31]),
        .O(data_out_ready_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    data_out_ready_i_12
       (.I0(data_out_ready_i_20_n_0),
        .I1(i_reg[5]),
        .I2(i_reg[4]),
        .O(data_out_ready_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    data_out_ready_i_13
       (.I0(i_reg[4]),
        .I1(i_reg[3]),
        .I2(i_reg[5]),
        .O(data_out_ready_i_13_n_0));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    data_out_ready_i_14
       (.I0(data_out_ready_i_17_n_0),
        .I1(i_reg[28]),
        .I2(i_reg[29]),
        .I3(data_out_ready_i_20_n_0),
        .I4(data_out_ready_i_21_n_0),
        .I5(data_out_ready_i_18_n_0),
        .O(data_out_ready_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    data_out_ready_i_16
       (.I0(data_out_ready_i_13_n_0),
        .I1(i_reg[28]),
        .I2(i_reg[29]),
        .I3(i_reg[27]),
        .I4(data_out_ready_i_18_n_0),
        .O(data_out_ready_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_17
       (.I0(i_reg[31]),
        .I1(i_reg[30]),
        .O(data_out_ready_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    data_out_ready_i_18
       (.I0(i_reg[2]),
        .I1(i_reg[0]),
        .I2(i_reg[1]),
        .O(data_out_ready_i_18_n_0));
  LUT6 #(
    .INIT(64'h0001000100000001)) 
    data_out_ready_i_19
       (.I0(i_reg[27]),
        .I1(i_reg[29]),
        .I2(i_reg[28]),
        .I3(i_reg[5]),
        .I4(i_reg[3]),
        .I5(i_reg[4]),
        .O(data_out_ready_i_19_n_0));
  LUT5 #(
    .INIT(32'hFFAB00A8)) 
    data_out_ready_i_2
       (.I0(data_in_ready),
        .I1(data_out_ready_i_3_n_0),
        .I2(data_out_ready_i_4_n_0),
        .I3(reset),
        .I4(data_out_ready),
        .O(data_out_ready_i_2_n_0));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    data_out_ready_i_20
       (.I0(i_reg[25]),
        .I1(i_reg[26]),
        .I2(i_reg[24]),
        .I3(data_out_ready_i_31_n_0),
        .I4(data_out_ready_i_32_n_0),
        .I5(data_out_ready_i_33_n_0),
        .O(data_out_ready_i_20_n_0));
  LUT6 #(
    .INIT(64'h0000080000000808)) 
    data_out_ready_i_21
       (.I0(i_reg[3]),
        .I1(i_reg[4]),
        .I2(i_reg[5]),
        .I3(i_reg[28]),
        .I4(i_reg[29]),
        .I5(i_reg[27]),
        .O(data_out_ready_i_21_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_23
       (.I0(i_reg[31]),
        .I1(i_reg[30]),
        .O(data_out_ready_i_23_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_24
       (.I0(i_reg[28]),
        .I1(i_reg[29]),
        .O(data_out_ready_i_24_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_25
       (.I0(i_reg[27]),
        .I1(i_reg[26]),
        .O(data_out_ready_i_25_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_26
       (.I0(i_reg[25]),
        .I1(i_reg[24]),
        .O(data_out_ready_i_26_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_27
       (.I0(i_reg[22]),
        .I1(i_reg[23]),
        .O(data_out_ready_i_27_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_28
       (.I0(i_reg[21]),
        .I1(i_reg[20]),
        .O(data_out_ready_i_28_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_29
       (.I0(i_reg[19]),
        .I1(i_reg[18]),
        .O(data_out_ready_i_29_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF0200FFFF)) 
    data_out_ready_i_3
       (.I0(data_out_ready_i_5_n_0),
        .I1(data_out_ready1__15_carry__0_n_0),
        .I2(mod_type[1]),
        .I3(mod_type[2]),
        .I4(data_in_ready),
        .I5(done_reg_n_0),
        .O(data_out_ready_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_30
       (.I0(i_reg[16]),
        .I1(i_reg[17]),
        .O(data_out_ready_i_30_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    data_out_ready_i_31
       (.I0(i_reg[6]),
        .I1(i_reg[8]),
        .I2(i_reg[7]),
        .I3(i_reg[9]),
        .I4(i_reg[11]),
        .I5(i_reg[10]),
        .O(data_out_ready_i_31_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    data_out_ready_i_32
       (.I0(i_reg[12]),
        .I1(i_reg[14]),
        .I2(i_reg[13]),
        .I3(i_reg[15]),
        .I4(i_reg[17]),
        .I5(i_reg[16]),
        .O(data_out_ready_i_32_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    data_out_ready_i_33
       (.I0(i_reg[18]),
        .I1(i_reg[20]),
        .I2(i_reg[19]),
        .I3(i_reg[21]),
        .I4(i_reg[23]),
        .I5(i_reg[22]),
        .O(data_out_ready_i_33_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    data_out_ready_i_34
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .O(data_out_ready_i_34_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    data_out_ready_i_35
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .O(data_out_ready_i_35_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_36
       (.I0(i_reg[15]),
        .I1(i_reg[14]),
        .O(data_out_ready_i_36_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_37
       (.I0(i_reg[13]),
        .I1(i_reg[12]),
        .O(data_out_ready_i_37_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_38
       (.I0(i_reg[10]),
        .I1(i_reg[11]),
        .O(data_out_ready_i_38_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_39
       (.I0(i_reg[9]),
        .I1(i_reg[8]),
        .O(data_out_ready_i_39_n_0));
  LUT6 #(
    .INIT(64'h8F8F8F8F8F8F8F80)) 
    data_out_ready_i_4
       (.I0(data_out_ready_i_6_n_0),
        .I1(data_out_ready_i_7_n_0),
        .I2(mod_type[2]),
        .I3(data_out_ready_i_8_n_0),
        .I4(data_out_ready_i_9_n_0),
        .I5(data_out_ready_i_10_n_0),
        .O(data_out_ready_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_40
       (.I0(i_reg[7]),
        .I1(i_reg[6]),
        .O(data_out_ready_i_40_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_41
       (.I0(i_reg[4]),
        .I1(i_reg[5]),
        .O(data_out_ready_i_41_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    data_out_ready_i_42
       (.I0(i_reg[3]),
        .I1(i_reg[2]),
        .O(data_out_ready_i_42_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    data_out_ready_i_43
       (.I0(i_reg[1]),
        .I1(i_reg[0]),
        .O(data_out_ready_i_43_n_0));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    data_out_ready_i_5
       (.I0(data_out_ready_i_11_n_0),
        .I1(data_out_ready_i_12_n_0),
        .I2(data_out_ready_i_13_n_0),
        .I3(i_reg[2]),
        .I4(i_reg[0]),
        .I5(i_reg[1]),
        .O(data_out_ready_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    data_out_ready_i_6
       (.I0(data_out_ready_i_11_n_0),
        .I1(data_out_ready_i_12_n_0),
        .I2(i_reg[2]),
        .I3(i_reg[0]),
        .I4(i_reg[1]),
        .I5(data_out_ready_i_13_n_0),
        .O(data_out_ready_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    data_out_ready_i_7
       (.I0(mod_type[1]),
        .I1(\data_out_reg[5]_i_7_n_1 ),
        .O(data_out_ready_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    data_out_ready_i_8
       (.I0(mod_type[1]),
        .I1(mod_type[0]),
        .I2(data_out_ready1_carry__0_n_0),
        .I3(data_out_ready_i_14_n_0),
        .O(data_out_ready_i_8_n_0));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    data_out_ready_i_9
       (.I0(mod_type[1]),
        .I1(mod_type[0]),
        .I2(data_out_ready_reg_i_15_n_0),
        .I3(data_out_ready_i_16_n_0),
        .I4(data_out_ready_i_12_n_0),
        .I5(data_out_ready_i_17_n_0),
        .O(data_out_ready_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_out_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(data_out_ready_i_2_n_0),
        .Q(data_out_ready),
        .R(data_out_ready019_out));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 data_out_ready_reg_i_15
       (.CI(data_out_ready_reg_i_22_n_0),
        .CI_TOP(1'b0),
        .CO({data_out_ready_reg_i_15_n_0,data_out_ready_reg_i_15_n_1,data_out_ready_reg_i_15_n_2,data_out_ready_reg_i_15_n_3,data_out_ready_reg_i_15_n_4,data_out_ready_reg_i_15_n_5,data_out_ready_reg_i_15_n_6,data_out_ready_reg_i_15_n_7}),
        .DI({i_reg[31],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_data_out_ready_reg_i_15_O_UNCONNECTED[7:0]),
        .S({data_out_ready_i_23_n_0,data_out_ready_i_24_n_0,data_out_ready_i_25_n_0,data_out_ready_i_26_n_0,data_out_ready_i_27_n_0,data_out_ready_i_28_n_0,data_out_ready_i_29_n_0,data_out_ready_i_30_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 data_out_ready_reg_i_22
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({data_out_ready_reg_i_22_n_0,data_out_ready_reg_i_22_n_1,data_out_ready_reg_i_22_n_2,data_out_ready_reg_i_22_n_3,data_out_ready_reg_i_22_n_4,data_out_ready_reg_i_22_n_5,data_out_ready_reg_i_22_n_6,data_out_ready_reg_i_22_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,data_out_ready_i_34_n_0,data_out_ready_i_35_n_0}),
        .O(NLW_data_out_ready_reg_i_22_O_UNCONNECTED[7:0]),
        .S({data_out_ready_i_36_n_0,data_out_ready_i_37_n_0,data_out_ready_i_38_n_0,data_out_ready_i_39_n_0,data_out_ready_i_40_n_0,data_out_ready_i_41_n_0,data_out_ready_i_42_n_0,data_out_ready_i_43_n_0}));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(clk),
        .CE(\data_out[5]_i_1_n_0 ),
        .CLR(reset),
        .D(data_out_0[0]),
        .Q(data_out[0]));
  MUXF7 \data_out_reg[0]_i_1 
       (.I0(\data_out[0]_i_2_n_0 ),
        .I1(\data_out[0]_i_3_n_0 ),
        .O(data_out_0[0]),
        .S(mod_type[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(clk),
        .CE(\data_out[5]_i_1_n_0 ),
        .CLR(reset),
        .D(data_out_0[1]),
        .Q(data_out[1]));
  MUXF7 \data_out_reg[1]_i_1 
       (.I0(\data_out[1]_i_2_n_0 ),
        .I1(\data_out[1]_i_3_n_0 ),
        .O(data_out_0[1]),
        .S(mod_type[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(clk),
        .CE(\data_out[5]_i_1_n_0 ),
        .CLR(reset),
        .D(data_out_0[2]),
        .Q(data_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(clk),
        .CE(\data_out[5]_i_1_n_0 ),
        .CLR(reset),
        .D(data_out_0[3]),
        .Q(data_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(clk),
        .CE(\data_out[5]_i_1_n_0 ),
        .CLR(reset),
        .D(data_out_0[4]),
        .Q(data_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(clk),
        .CE(\data_out[5]_i_1_n_0 ),
        .CLR(reset),
        .D(data_out_0[5]),
        .Q(data_out[5]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \data_out_reg[5]_i_11 
       (.CI(\data_out_reg[5]_i_25_n_0 ),
        .CI_TOP(1'b0),
        .CO({\data_out_reg[5]_i_11_n_0 ,\data_out_reg[5]_i_11_n_1 ,\data_out_reg[5]_i_11_n_2 ,\data_out_reg[5]_i_11_n_3 ,\data_out_reg[5]_i_11_n_4 ,\data_out_reg[5]_i_11_n_5 ,\data_out_reg[5]_i_11_n_6 ,\data_out_reg[5]_i_11_n_7 }),
        .DI({i_reg[31],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_data_out_reg[5]_i_11_O_UNCONNECTED [7:0]),
        .S({\data_out[5]_i_26_n_0 ,\data_out[5]_i_27_n_0 ,\data_out[5]_i_28_n_0 ,\data_out[5]_i_29_n_0 ,\data_out[5]_i_30_n_0 ,\data_out[5]_i_31_n_0 ,\data_out[5]_i_32_n_0 ,\data_out[5]_i_33_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \data_out_reg[5]_i_16 
       (.CI(\data_out[5]_i_34_n_0 ),
        .CI_TOP(1'b0),
        .CO({\data_out_reg[5]_i_16_n_0 ,\data_out_reg[5]_i_16_n_1 ,\data_out_reg[5]_i_16_n_2 ,\data_out_reg[5]_i_16_n_3 ,\data_out_reg[5]_i_16_n_4 ,\data_out_reg[5]_i_16_n_5 ,\data_out_reg[5]_i_16_n_6 ,\data_out_reg[5]_i_16_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\data_out[5]_i_35_n_0 }),
        .O(\NLW_data_out_reg[5]_i_16_O_UNCONNECTED [7:0]),
        .S({\data_out[5]_i_36_n_0 ,\data_out[5]_i_37_n_0 ,\data_out[5]_i_38_n_0 ,\data_out[5]_i_39_n_0 ,\data_out[5]_i_40_n_0 ,\data_out[5]_i_41_n_0 ,\data_out[5]_i_42_n_0 ,\data_out[5]_i_43_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \data_out_reg[5]_i_25 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\data_out_reg[5]_i_25_n_0 ,\data_out_reg[5]_i_25_n_1 ,\data_out_reg[5]_i_25_n_2 ,\data_out_reg[5]_i_25_n_3 ,\data_out_reg[5]_i_25_n_4 ,\data_out_reg[5]_i_25_n_5 ,\data_out_reg[5]_i_25_n_6 ,\data_out_reg[5]_i_25_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\data_out[5]_i_44_n_0 ,\data_out[5]_i_45_n_0 }),
        .O(\NLW_data_out_reg[5]_i_25_O_UNCONNECTED [7:0]),
        .S({\data_out[5]_i_46_n_0 ,\data_out[5]_i_47_n_0 ,\data_out[5]_i_48_n_0 ,\data_out[5]_i_49_n_0 ,\data_out[5]_i_50_n_0 ,\data_out[5]_i_51_n_0 ,\data_out[5]_i_52_n_0 ,\data_out[5]_i_53_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \data_out_reg[5]_i_7 
       (.CI(\data_out_reg[5]_i_16_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_data_out_reg[5]_i_7_CO_UNCONNECTED [7],\data_out_reg[5]_i_7_n_1 ,\data_out_reg[5]_i_7_n_2 ,\data_out_reg[5]_i_7_n_3 ,\data_out_reg[5]_i_7_n_4 ,\data_out_reg[5]_i_7_n_5 ,\data_out_reg[5]_i_7_n_6 ,\data_out_reg[5]_i_7_n_7 }),
        .DI({1'b0,i_reg[31],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_data_out_reg[5]_i_7_O_UNCONNECTED [7:0]),
        .S({1'b0,\data_out[5]_i_17_n_0 ,\data_out[5]_i_18_n_0 ,\data_out[5]_i_19_n_0 ,\data_out[5]_i_20_n_0 ,\data_out[5]_i_21_n_0 ,\data_out[5]_i_22_n_0 ,\data_out[5]_i_23_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7030)) 
    data_out_valid_i_1
       (.I0(data_in_valid),
        .I1(done_reg_n_0),
        .I2(data_in_ready),
        .I3(data_out_valid),
        .O(data_out_valid_i_1_n_0));
  FDCE data_out_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(data_out_valid_i_1_n_0),
        .Q(data_out_valid));
  LUT6 #(
    .INIT(64'hBBBBBFFF88888000)) 
    done_i_1
       (.I0(done),
        .I1(done_i_3_n_0),
        .I2(done_i_4_n_0),
        .I3(\data_out[5]_i_3_n_0 ),
        .I4(done_i_5_n_0),
        .I5(done_reg_n_0),
        .O(done_i_1_n_0));
  LUT6 #(
    .INIT(64'h00330F55FF330F55)) 
    done_i_2
       (.I0(done_i_6_n_0),
        .I1(\data_out_reg[5]_i_11_n_0 ),
        .I2(data_out_ready1__15_carry__0_n_0),
        .I3(mod_type[2]),
        .I4(mod_type[1]),
        .I5(\data_out_reg[5]_i_7_n_1 ),
        .O(done));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h07)) 
    done_i_3
       (.I0(done_reg_n_0),
        .I1(data_in_ready),
        .I2(reset),
        .O(done_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h04)) 
    done_i_4
       (.I0(done_reg_n_0),
        .I1(data_in_ready),
        .I2(mod_type[2]),
        .O(done_i_4_n_0));
  LUT6 #(
    .INIT(64'hAAAA8A8AAAA08A80)) 
    done_i_5
       (.I0(done_i_7_n_0),
        .I1(\data_out_reg[5]_i_7_n_1 ),
        .I2(mod_type[1]),
        .I3(data_out_ready1__15_carry__0_n_0),
        .I4(data_out_ready_i_6_n_0),
        .I5(data_out_ready_i_5_n_0),
        .O(done_i_5_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    done_i_6
       (.I0(data_out_ready_reg_i_15_n_0),
        .I1(mod_type[0]),
        .I2(data_out_ready1_carry__0_n_0),
        .O(done_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    done_i_7
       (.I0(done_reg_n_0),
        .I1(data_in_ready),
        .I2(mod_type[2]),
        .O(done_i_7_n_0));
  FDRE #(
    .INIT(1'b1)) 
    done_reg
       (.C(clk),
        .CE(1'b1),
        .D(done_i_1_n_0),
        .Q(done_reg_n_0),
        .R(data_out_ready019_out));
  LUT3 #(
    .INIT(8'h02)) 
    \i[0]_i_1 
       (.I0(data_in_ready),
        .I1(done_reg_n_0),
        .I2(reset),
        .O(i0));
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_3 
       (.I0(i_reg[0]),
        .O(\i[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[0]_i_2_n_15 ),
        .Q(i_reg[0]),
        .R(data_out_ready019_out));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \i_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\i_reg[0]_i_2_n_0 ,\i_reg[0]_i_2_n_1 ,\i_reg[0]_i_2_n_2 ,\i_reg[0]_i_2_n_3 ,\i_reg[0]_i_2_n_4 ,\i_reg[0]_i_2_n_5 ,\i_reg[0]_i_2_n_6 ,\i_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\i_reg[0]_i_2_n_8 ,\i_reg[0]_i_2_n_9 ,\i_reg[0]_i_2_n_10 ,\i_reg[0]_i_2_n_11 ,\i_reg[0]_i_2_n_12 ,\i_reg[0]_i_2_n_13 ,\i_reg[0]_i_2_n_14 ,\i_reg[0]_i_2_n_15 }),
        .S({i_reg[7:1],\i[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[10] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[8]_i_1_n_13 ),
        .Q(i_reg[10]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[11] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[8]_i_1_n_12 ),
        .Q(i_reg[11]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[12] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[8]_i_1_n_11 ),
        .Q(i_reg[12]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[13] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[8]_i_1_n_10 ),
        .Q(i_reg[13]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[14] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[8]_i_1_n_9 ),
        .Q(i_reg[14]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[15] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[8]_i_1_n_8 ),
        .Q(i_reg[15]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[16] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[16]_i_1_n_15 ),
        .Q(i_reg[16]),
        .R(data_out_ready019_out));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \i_reg[16]_i_1 
       (.CI(\i_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\i_reg[16]_i_1_n_0 ,\i_reg[16]_i_1_n_1 ,\i_reg[16]_i_1_n_2 ,\i_reg[16]_i_1_n_3 ,\i_reg[16]_i_1_n_4 ,\i_reg[16]_i_1_n_5 ,\i_reg[16]_i_1_n_6 ,\i_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[16]_i_1_n_8 ,\i_reg[16]_i_1_n_9 ,\i_reg[16]_i_1_n_10 ,\i_reg[16]_i_1_n_11 ,\i_reg[16]_i_1_n_12 ,\i_reg[16]_i_1_n_13 ,\i_reg[16]_i_1_n_14 ,\i_reg[16]_i_1_n_15 }),
        .S(i_reg[23:16]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[17] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[16]_i_1_n_14 ),
        .Q(i_reg[17]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[18] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[16]_i_1_n_13 ),
        .Q(i_reg[18]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[19] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[16]_i_1_n_12 ),
        .Q(i_reg[19]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[0]_i_2_n_14 ),
        .Q(i_reg[1]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[20] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[16]_i_1_n_11 ),
        .Q(i_reg[20]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[21] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[16]_i_1_n_10 ),
        .Q(i_reg[21]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[22] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[16]_i_1_n_9 ),
        .Q(i_reg[22]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[23] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[16]_i_1_n_8 ),
        .Q(i_reg[23]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[24] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[24]_i_1_n_15 ),
        .Q(i_reg[24]),
        .R(data_out_ready019_out));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \i_reg[24]_i_1 
       (.CI(\i_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_i_reg[24]_i_1_CO_UNCONNECTED [7],\i_reg[24]_i_1_n_1 ,\i_reg[24]_i_1_n_2 ,\i_reg[24]_i_1_n_3 ,\i_reg[24]_i_1_n_4 ,\i_reg[24]_i_1_n_5 ,\i_reg[24]_i_1_n_6 ,\i_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[24]_i_1_n_8 ,\i_reg[24]_i_1_n_9 ,\i_reg[24]_i_1_n_10 ,\i_reg[24]_i_1_n_11 ,\i_reg[24]_i_1_n_12 ,\i_reg[24]_i_1_n_13 ,\i_reg[24]_i_1_n_14 ,\i_reg[24]_i_1_n_15 }),
        .S(i_reg[31:24]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[25] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[24]_i_1_n_14 ),
        .Q(i_reg[25]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[26] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[24]_i_1_n_13 ),
        .Q(i_reg[26]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[27] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[24]_i_1_n_12 ),
        .Q(i_reg[27]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[28] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[24]_i_1_n_11 ),
        .Q(i_reg[28]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[29] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[24]_i_1_n_10 ),
        .Q(i_reg[29]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[0]_i_2_n_13 ),
        .Q(i_reg[2]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[30] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[24]_i_1_n_9 ),
        .Q(i_reg[30]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[31] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[24]_i_1_n_8 ),
        .Q(i_reg[31]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[0]_i_2_n_12 ),
        .Q(i_reg[3]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[0]_i_2_n_11 ),
        .Q(i_reg[4]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[0]_i_2_n_10 ),
        .Q(i_reg[5]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[6] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[0]_i_2_n_9 ),
        .Q(i_reg[6]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[7] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[0]_i_2_n_8 ),
        .Q(i_reg[7]),
        .R(data_out_ready019_out));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[8] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[8]_i_1_n_15 ),
        .Q(i_reg[8]),
        .R(data_out_ready019_out));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \i_reg[8]_i_1 
       (.CI(\i_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\i_reg[8]_i_1_n_0 ,\i_reg[8]_i_1_n_1 ,\i_reg[8]_i_1_n_2 ,\i_reg[8]_i_1_n_3 ,\i_reg[8]_i_1_n_4 ,\i_reg[8]_i_1_n_5 ,\i_reg[8]_i_1_n_6 ,\i_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[8]_i_1_n_8 ,\i_reg[8]_i_1_n_9 ,\i_reg[8]_i_1_n_10 ,\i_reg[8]_i_1_n_11 ,\i_reg[8]_i_1_n_12 ,\i_reg[8]_i_1_n_13 ,\i_reg[8]_i_1_n_14 ,\i_reg[8]_i_1_n_15 }),
        .S(i_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[9] 
       (.C(clk),
        .CE(i0),
        .D(\i_reg[8]_i_1_n_14 ),
        .Q(i_reg[9]),
        .R(data_out_ready019_out));
endmodule

(* CHECK_LICENSE_TYPE = "Design_2_Bit_splitter_0_0,Bit_splitter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "Bit_splitter,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset,
    mod_type,
    data_in_valid,
    data_in_ready,
    data_in,
    data_out_valid,
    data_out_ready,
    data_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, ASSOCIATED_BUSIF M_AXIS:S_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Design_2_clk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [2:0]mod_type;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN Design_2_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input data_in_valid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN Design_2_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input data_in_ready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [31:0]data_in;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output data_out_valid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output data_out_ready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [5:0]data_out;

  wire clk;
  wire [31:0]data_in;
  wire data_in_ready;
  wire data_in_valid;
  wire [5:0]data_out;
  wire data_out_ready;
  wire data_out_valid;
  wire [2:0]mod_type;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Bit_splitter U0
       (.clk(clk),
        .data_in(data_in),
        .data_in_ready(data_in_ready),
        .data_in_valid(data_in_valid),
        .data_out(data_out),
        .data_out_ready(data_out_ready),
        .data_out_valid(data_out_valid),
        .mod_type(mod_type),
        .reset(reset));
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
