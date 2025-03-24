// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue Mar 11 10:59:02 2025
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
   (data_out_valid,
    data_out,
    data_out_ready,
    data_in_valid,
    data_in_ready,
    reset,
    mod_type,
    clk,
    data_in);
  output data_out_valid;
  output [5:0]data_out;
  output data_out_ready;
  input data_in_valid;
  input data_in_ready;
  input reset;
  input [2:0]mod_type;
  input clk;
  input [31:0]data_in;

  wire clk;
  wire data0;
  wire [3:2]data2;
  wire [31:0]data_in;
  wire data_in_ready;
  wire data_in_valid;
  wire [5:0]data_out;
  wire data_out125_in;
  wire data_out127_in;
  wire data_out129_in;
  wire data_out133_out;
  wire data_out1__15_carry_i_1_n_0;
  wire data_out1__15_carry_i_2_n_0;
  wire data_out1__15_carry_i_3_n_0;
  wire data_out1__15_carry_n_12;
  wire data_out1__15_carry_n_13;
  wire data_out1__15_carry_n_14;
  wire data_out1__15_carry_n_15;
  wire data_out1__15_carry_n_5;
  wire data_out1__15_carry_n_6;
  wire data_out1__15_carry_n_7;
  wire data_out1__24_carry_i_1_n_0;
  wire data_out1__24_carry_i_2_n_0;
  wire data_out1__24_carry_i_3_n_0;
  wire data_out1__24_carry_n_12;
  wire data_out1__24_carry_n_13;
  wire data_out1__24_carry_n_14;
  wire data_out1__24_carry_n_15;
  wire data_out1__24_carry_n_5;
  wire data_out1__24_carry_n_6;
  wire data_out1__24_carry_n_7;
  wire data_out1__28;
  wire data_out1_carry__0_i_1_n_0;
  wire data_out1_carry__0_i_2_n_0;
  wire data_out1_carry__0_i_3_n_0;
  wire data_out1_carry__0_i_4_n_0;
  wire data_out1_carry__0_i_5_n_0;
  wire data_out1_carry__0_i_6_n_0;
  wire data_out1_carry__0_i_7_n_0;
  wire data_out1_carry__0_i_8_n_0;
  wire data_out1_carry__0_n_0;
  wire data_out1_carry__0_n_1;
  wire data_out1_carry__0_n_2;
  wire data_out1_carry__0_n_3;
  wire data_out1_carry__0_n_4;
  wire data_out1_carry__0_n_5;
  wire data_out1_carry__0_n_6;
  wire data_out1_carry__0_n_7;
  wire data_out1_carry_i_10_n_0;
  wire data_out1_carry_i_1_n_0;
  wire data_out1_carry_i_2_n_0;
  wire data_out1_carry_i_3_n_0;
  wire data_out1_carry_i_4_n_0;
  wire data_out1_carry_i_5_n_0;
  wire data_out1_carry_i_6_n_0;
  wire data_out1_carry_i_7_n_0;
  wire data_out1_carry_i_8_n_0;
  wire data_out1_carry_i_9_n_0;
  wire data_out1_carry_n_0;
  wire data_out1_carry_n_1;
  wire data_out1_carry_n_2;
  wire data_out1_carry_n_3;
  wire data_out1_carry_n_4;
  wire data_out1_carry_n_5;
  wire data_out1_carry_n_6;
  wire data_out1_carry_n_7;
  wire \data_out[0]_i_10_n_0 ;
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
  wire \data_out[0]_i_27_n_0 ;
  wire \data_out[0]_i_28_n_0 ;
  wire \data_out[0]_i_29_n_0 ;
  wire \data_out[0]_i_2_n_0 ;
  wire \data_out[0]_i_30_n_0 ;
  wire \data_out[0]_i_5_n_0 ;
  wire \data_out[0]_i_6_n_0 ;
  wire \data_out[0]_i_9_n_0 ;
  wire \data_out[1]_i_11_n_0 ;
  wire \data_out[1]_i_12_n_0 ;
  wire \data_out[1]_i_13_n_0 ;
  wire \data_out[1]_i_14_n_0 ;
  wire \data_out[1]_i_15_n_0 ;
  wire \data_out[1]_i_16_n_0 ;
  wire \data_out[1]_i_2_n_0 ;
  wire \data_out[1]_i_3_n_0 ;
  wire \data_out[1]_i_4_n_0 ;
  wire \data_out[1]_i_5_n_0 ;
  wire \data_out[1]_i_6_n_0 ;
  wire \data_out[1]_i_7_n_0 ;
  wire \data_out[1]_i_8_n_0 ;
  wire \data_out[2]_i_10_n_0 ;
  wire \data_out[2]_i_2_n_0 ;
  wire \data_out[2]_i_3_n_0 ;
  wire \data_out[2]_i_5_n_0 ;
  wire \data_out[2]_i_6_n_0 ;
  wire \data_out[2]_i_7_n_0 ;
  wire \data_out[2]_i_8_n_0 ;
  wire \data_out[2]_i_9_n_0 ;
  wire \data_out[3]_i_10_n_0 ;
  wire \data_out[3]_i_11_n_0 ;
  wire \data_out[3]_i_2_n_0 ;
  wire \data_out[3]_i_3_n_0 ;
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
  wire \data_out[4]_i_2_n_0 ;
  wire \data_out[4]_i_3_n_0 ;
  wire \data_out[4]_i_4_n_0 ;
  wire \data_out[4]_i_5_n_0 ;
  wire \data_out[4]_i_6_n_0 ;
  wire \data_out[4]_i_7_n_0 ;
  wire \data_out[4]_i_8_n_0 ;
  wire \data_out[4]_i_9_n_0 ;
  wire \data_out[5]_i_11_n_0 ;
  wire \data_out[5]_i_12_n_0 ;
  wire \data_out[5]_i_13_n_0 ;
  wire \data_out[5]_i_14_n_0 ;
  wire \data_out[5]_i_15_n_0 ;
  wire \data_out[5]_i_16_n_0 ;
  wire \data_out[5]_i_17_n_0 ;
  wire \data_out[5]_i_18_n_0 ;
  wire \data_out[5]_i_19_n_0 ;
  wire \data_out[5]_i_1_n_0 ;
  wire \data_out[5]_i_20_n_0 ;
  wire \data_out[5]_i_21_n_0 ;
  wire \data_out[5]_i_22_n_0 ;
  wire \data_out[5]_i_23_n_0 ;
  wire \data_out[5]_i_24_n_0 ;
  wire \data_out[5]_i_25_n_0 ;
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
  wire \data_out[5]_i_40_n_0 ;
  wire \data_out[5]_i_41_n_0 ;
  wire \data_out[5]_i_42_n_0 ;
  wire \data_out[5]_i_43_n_0 ;
  wire \data_out[5]_i_44_n_0 ;
  wire \data_out[5]_i_45_n_0 ;
  wire \data_out[5]_i_46_n_0 ;
  wire \data_out[5]_i_47_n_0 ;
  wire \data_out[5]_i_49_n_0 ;
  wire \data_out[5]_i_50_n_0 ;
  wire \data_out[5]_i_51_n_0 ;
  wire \data_out[5]_i_52_n_0 ;
  wire \data_out[5]_i_53_n_0 ;
  wire \data_out[5]_i_54_n_0 ;
  wire \data_out[5]_i_55_n_0 ;
  wire \data_out[5]_i_56_n_0 ;
  wire \data_out[5]_i_57_n_0 ;
  wire \data_out[5]_i_58_n_0 ;
  wire \data_out[5]_i_59_n_0 ;
  wire \data_out[5]_i_5_n_0 ;
  wire \data_out[5]_i_60_n_0 ;
  wire \data_out[5]_i_61_n_0 ;
  wire \data_out[5]_i_62_n_0 ;
  wire \data_out[5]_i_63_n_0 ;
  wire \data_out[5]_i_64_n_0 ;
  wire \data_out[5]_i_65_n_0 ;
  wire \data_out[5]_i_66_n_0 ;
  wire \data_out[5]_i_67_n_0 ;
  wire \data_out[5]_i_68_n_0 ;
  wire \data_out[5]_i_6_n_0 ;
  wire \data_out[5]_i_7_n_0 ;
  wire \data_out[5]_i_8_n_0 ;
  wire \data_out[5]_i_9_n_0 ;
  wire [5:0]data_out_1;
  wire data_out_ready;
  wire data_out_ready20_out;
  wire data_out_ready23_out;
  wire data_out_ready_0;
  wire data_out_ready_i_15_n_0;
  wire data_out_ready_i_16_n_0;
  wire data_out_ready_i_17_n_0;
  wire data_out_ready_i_18_n_0;
  wire data_out_ready_i_19_n_0;
  wire data_out_ready_i_1_n_0;
  wire data_out_ready_i_21_n_0;
  wire data_out_ready_i_22_n_0;
  wire data_out_ready_i_23_n_0;
  wire data_out_ready_i_24_n_0;
  wire data_out_ready_i_25_n_0;
  wire data_out_ready_i_26_n_0;
  wire data_out_ready_i_27_n_0;
  wire data_out_ready_i_28_n_0;
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
  wire data_out_ready_i_40_n_0;
  wire data_out_ready_i_41_n_0;
  wire data_out_ready_i_42_n_0;
  wire data_out_ready_i_43_n_0;
  wire data_out_ready_i_44_n_0;
  wire data_out_ready_i_45_n_0;
  wire data_out_ready_i_46_n_0;
  wire data_out_ready_i_47_n_0;
  wire data_out_ready_i_48_n_0;
  wire data_out_ready_i_49_n_0;
  wire data_out_ready_i_4_n_0;
  wire data_out_ready_i_50_n_0;
  wire data_out_ready_i_51_n_0;
  wire data_out_ready_i_52_n_0;
  wire data_out_ready_i_53_n_0;
  wire data_out_ready_i_54_n_0;
  wire data_out_ready_i_55_n_0;
  wire data_out_ready_i_56_n_0;
  wire data_out_ready_i_57_n_0;
  wire data_out_ready_i_5_n_0;
  wire data_out_ready_i_6_n_0;
  wire data_out_ready_i_7_n_0;
  wire data_out_ready_i_8_n_0;
  wire data_out_ready_reg_i_12_n_0;
  wire data_out_ready_reg_i_12_n_1;
  wire data_out_ready_reg_i_12_n_2;
  wire data_out_ready_reg_i_12_n_3;
  wire data_out_ready_reg_i_12_n_4;
  wire data_out_ready_reg_i_12_n_5;
  wire data_out_ready_reg_i_12_n_6;
  wire data_out_ready_reg_i_12_n_7;
  wire data_out_ready_reg_i_14_n_0;
  wire data_out_ready_reg_i_14_n_1;
  wire data_out_ready_reg_i_14_n_2;
  wire data_out_ready_reg_i_14_n_3;
  wire data_out_ready_reg_i_14_n_4;
  wire data_out_ready_reg_i_14_n_5;
  wire data_out_ready_reg_i_14_n_6;
  wire data_out_ready_reg_i_14_n_7;
  wire data_out_ready_reg_i_20_n_0;
  wire data_out_ready_reg_i_20_n_1;
  wire data_out_ready_reg_i_20_n_2;
  wire data_out_ready_reg_i_20_n_3;
  wire data_out_ready_reg_i_20_n_4;
  wire data_out_ready_reg_i_20_n_5;
  wire data_out_ready_reg_i_20_n_6;
  wire data_out_ready_reg_i_20_n_7;
  wire data_out_ready_reg_i_29_n_0;
  wire data_out_ready_reg_i_29_n_1;
  wire data_out_ready_reg_i_29_n_2;
  wire data_out_ready_reg_i_29_n_3;
  wire data_out_ready_reg_i_29_n_4;
  wire data_out_ready_reg_i_29_n_5;
  wire data_out_ready_reg_i_29_n_6;
  wire data_out_ready_reg_i_29_n_7;
  wire data_out_ready_reg_i_2_n_0;
  wire \data_out_reg[0]_i_11_n_0 ;
  wire \data_out_reg[0]_i_12_n_0 ;
  wire \data_out_reg[0]_i_13_n_0 ;
  wire \data_out_reg[0]_i_14_n_0 ;
  wire \data_out_reg[0]_i_3_n_0 ;
  wire \data_out_reg[0]_i_7_n_0 ;
  wire \data_out_reg[0]_i_8_n_0 ;
  wire \data_out_reg[1]_i_10_n_0 ;
  wire \data_out_reg[1]_i_9_n_0 ;
  wire \data_out_reg[5]_i_10_n_0 ;
  wire \data_out_reg[5]_i_10_n_1 ;
  wire \data_out_reg[5]_i_10_n_2 ;
  wire \data_out_reg[5]_i_10_n_3 ;
  wire \data_out_reg[5]_i_10_n_4 ;
  wire \data_out_reg[5]_i_10_n_5 ;
  wire \data_out_reg[5]_i_10_n_6 ;
  wire \data_out_reg[5]_i_10_n_7 ;
  wire \data_out_reg[5]_i_26_n_1 ;
  wire \data_out_reg[5]_i_26_n_2 ;
  wire \data_out_reg[5]_i_26_n_3 ;
  wire \data_out_reg[5]_i_26_n_4 ;
  wire \data_out_reg[5]_i_26_n_5 ;
  wire \data_out_reg[5]_i_26_n_6 ;
  wire \data_out_reg[5]_i_26_n_7 ;
  wire \data_out_reg[5]_i_48_n_0 ;
  wire \data_out_reg[5]_i_48_n_1 ;
  wire \data_out_reg[5]_i_48_n_2 ;
  wire \data_out_reg[5]_i_48_n_3 ;
  wire \data_out_reg[5]_i_48_n_4 ;
  wire \data_out_reg[5]_i_48_n_5 ;
  wire \data_out_reg[5]_i_48_n_6 ;
  wire \data_out_reg[5]_i_48_n_7 ;
  wire \data_out_reg[5]_i_4_n_0 ;
  wire \data_out_reg[5]_i_4_n_1 ;
  wire \data_out_reg[5]_i_4_n_2 ;
  wire \data_out_reg[5]_i_4_n_3 ;
  wire \data_out_reg[5]_i_4_n_4 ;
  wire \data_out_reg[5]_i_4_n_5 ;
  wire \data_out_reg[5]_i_4_n_6 ;
  wire \data_out_reg[5]_i_4_n_7 ;
  wire data_out_valid;
  wire data_out_valid_i_1_n_0;
  wire done__8;
  wire done_i_10_n_0;
  wire done_i_13_n_0;
  wire done_i_14_n_0;
  wire done_i_15_n_0;
  wire done_i_1_n_0;
  wire done_i_4_n_0;
  wire done_i_5_n_0;
  wire done_i_6_n_0;
  wire done_i_7_n_0;
  wire done_i_8_n_0;
  wire done_i_9_n_0;
  wire done_reg_i_3_n_0;
  wire done_reg_n_0;
  wire \i[0]_i_1_n_0 ;
  wire \i[0]_i_2_n_0 ;
  wire \i[0]_i_4_n_0 ;
  wire [31:0]i_reg;
  wire \i_reg[0]_i_3_n_0 ;
  wire \i_reg[0]_i_3_n_1 ;
  wire \i_reg[0]_i_3_n_10 ;
  wire \i_reg[0]_i_3_n_11 ;
  wire \i_reg[0]_i_3_n_12 ;
  wire \i_reg[0]_i_3_n_13 ;
  wire \i_reg[0]_i_3_n_14 ;
  wire \i_reg[0]_i_3_n_15 ;
  wire \i_reg[0]_i_3_n_2 ;
  wire \i_reg[0]_i_3_n_3 ;
  wire \i_reg[0]_i_3_n_4 ;
  wire \i_reg[0]_i_3_n_5 ;
  wire \i_reg[0]_i_3_n_6 ;
  wire \i_reg[0]_i_3_n_7 ;
  wire \i_reg[0]_i_3_n_8 ;
  wire \i_reg[0]_i_3_n_9 ;
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
  wire reset;
  wire [7:3]NLW_data_out1__15_carry_CO_UNCONNECTED;
  wire [7:4]NLW_data_out1__15_carry_O_UNCONNECTED;
  wire [7:3]NLW_data_out1__24_carry_CO_UNCONNECTED;
  wire [7:4]NLW_data_out1__24_carry_O_UNCONNECTED;
  wire [7:0]NLW_data_out1_carry_O_UNCONNECTED;
  wire [7:0]NLW_data_out1_carry__0_O_UNCONNECTED;
  wire [7:0]NLW_data_out_ready_reg_i_12_O_UNCONNECTED;
  wire [7:0]NLW_data_out_ready_reg_i_14_O_UNCONNECTED;
  wire [7:0]NLW_data_out_ready_reg_i_20_O_UNCONNECTED;
  wire [7:0]NLW_data_out_ready_reg_i_29_O_UNCONNECTED;
  wire [7:0]\NLW_data_out_reg[5]_i_10_O_UNCONNECTED ;
  wire [7:7]\NLW_data_out_reg[5]_i_26_CO_UNCONNECTED ;
  wire [7:0]\NLW_data_out_reg[5]_i_26_O_UNCONNECTED ;
  wire [7:0]\NLW_data_out_reg[5]_i_4_O_UNCONNECTED ;
  wire [7:0]\NLW_data_out_reg[5]_i_48_O_UNCONNECTED ;
  wire [7:7]\NLW_i_reg[24]_i_1_CO_UNCONNECTED ;

  CARRY8 data_out1__15_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_data_out1__15_carry_CO_UNCONNECTED[7:3],data_out1__15_carry_n_5,data_out1__15_carry_n_6,data_out1__15_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,i_reg[3:2],1'b0}),
        .O({NLW_data_out1__15_carry_O_UNCONNECTED[7:4],data_out1__15_carry_n_12,data_out1__15_carry_n_13,data_out1__15_carry_n_14,data_out1__15_carry_n_15}),
        .S({1'b0,1'b0,1'b0,1'b0,data_out1__15_carry_i_1_n_0,data_out1__15_carry_i_2_n_0,data_out1__15_carry_i_3_n_0,i_reg[1]}));
  LUT2 #(
    .INIT(4'h6)) 
    data_out1__15_carry_i_1
       (.I0(i_reg[4]),
        .I1(i_reg[2]),
        .O(data_out1__15_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out1__15_carry_i_2
       (.I0(i_reg[3]),
        .I1(i_reg[1]),
        .O(data_out1__15_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out1__15_carry_i_3
       (.I0(i_reg[2]),
        .I1(i_reg[0]),
        .O(data_out1__15_carry_i_3_n_0));
  CARRY8 data_out1__24_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_data_out1__24_carry_CO_UNCONNECTED[7:3],data_out1__24_carry_n_5,data_out1__24_carry_n_6,data_out1__24_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,i_reg[0],1'b0,1'b1}),
        .O({NLW_data_out1__24_carry_O_UNCONNECTED[7:4],data_out1__24_carry_n_12,data_out1__24_carry_n_13,data_out1__24_carry_n_14,data_out1__24_carry_n_15}),
        .S({1'b0,1'b0,1'b0,1'b0,data_out1__24_carry_i_1_n_0,data_out1__24_carry_i_2_n_0,data_out1__24_carry_i_3_n_0,i_reg[0]}));
  LUT2 #(
    .INIT(4'h9)) 
    data_out1__24_carry_i_1
       (.I0(i_reg[1]),
        .I1(i_reg[3]),
        .O(data_out1__24_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    data_out1__24_carry_i_2
       (.I0(i_reg[0]),
        .I1(i_reg[2]),
        .O(data_out1__24_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out1__24_carry_i_3
       (.I0(i_reg[1]),
        .O(data_out1__24_carry_i_3_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 data_out1_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({data_out1_carry_n_0,data_out1_carry_n_1,data_out1_carry_n_2,data_out1_carry_n_3,data_out1_carry_n_4,data_out1_carry_n_5,data_out1_carry_n_6,data_out1_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,data_out1_carry_i_1_n_0,data_out1_carry_i_2_n_0}),
        .O(NLW_data_out1_carry_O_UNCONNECTED[7:0]),
        .S({data_out1_carry_i_3_n_0,data_out1_carry_i_4_n_0,data_out1_carry_i_5_n_0,data_out1_carry_i_6_n_0,data_out1_carry_i_7_n_0,data_out1_carry_i_8_n_0,data_out1_carry_i_9_n_0,data_out1_carry_i_10_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 data_out1_carry__0
       (.CI(data_out1_carry_n_0),
        .CI_TOP(1'b0),
        .CO({data_out1_carry__0_n_0,data_out1_carry__0_n_1,data_out1_carry__0_n_2,data_out1_carry__0_n_3,data_out1_carry__0_n_4,data_out1_carry__0_n_5,data_out1_carry__0_n_6,data_out1_carry__0_n_7}),
        .DI({i_reg[31],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_data_out1_carry__0_O_UNCONNECTED[7:0]),
        .S({data_out1_carry__0_i_1_n_0,data_out1_carry__0_i_2_n_0,data_out1_carry__0_i_3_n_0,data_out1_carry__0_i_4_n_0,data_out1_carry__0_i_5_n_0,data_out1_carry__0_i_6_n_0,data_out1_carry__0_i_7_n_0,data_out1_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    data_out1_carry__0_i_1
       (.I0(i_reg[31]),
        .I1(i_reg[30]),
        .O(data_out1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out1_carry__0_i_2
       (.I0(i_reg[28]),
        .I1(i_reg[29]),
        .O(data_out1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out1_carry__0_i_3
       (.I0(i_reg[26]),
        .I1(i_reg[27]),
        .O(data_out1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out1_carry__0_i_4
       (.I0(i_reg[24]),
        .I1(i_reg[25]),
        .O(data_out1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out1_carry__0_i_5
       (.I0(i_reg[22]),
        .I1(i_reg[23]),
        .O(data_out1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out1_carry__0_i_6
       (.I0(i_reg[20]),
        .I1(i_reg[21]),
        .O(data_out1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out1_carry__0_i_7
       (.I0(i_reg[18]),
        .I1(i_reg[19]),
        .O(data_out1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out1_carry__0_i_8
       (.I0(i_reg[16]),
        .I1(i_reg[17]),
        .O(data_out1_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out1_carry_i_1
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .O(data_out1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    data_out1_carry_i_10
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .O(data_out1_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out1_carry_i_2
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .O(data_out1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out1_carry_i_3
       (.I0(i_reg[14]),
        .I1(i_reg[15]),
        .O(data_out1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out1_carry_i_4
       (.I0(i_reg[12]),
        .I1(i_reg[13]),
        .O(data_out1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out1_carry_i_5
       (.I0(i_reg[10]),
        .I1(i_reg[11]),
        .O(data_out1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out1_carry_i_6
       (.I0(i_reg[8]),
        .I1(i_reg[9]),
        .O(data_out1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out1_carry_i_7
       (.I0(i_reg[6]),
        .I1(i_reg[7]),
        .O(data_out1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out1_carry_i_8
       (.I0(i_reg[4]),
        .I1(i_reg[5]),
        .O(data_out1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    data_out1_carry_i_9
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .O(data_out1_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'hC0A0C0A0C0AFC0A0)) 
    \data_out[0]_i_1 
       (.I0(\data_out[0]_i_2_n_0 ),
        .I1(\data_out_reg[0]_i_3_n_0 ),
        .I2(mod_type[0]),
        .I3(mod_type[2]),
        .I4(data0),
        .I5(mod_type[1]),
        .O(data_out_1[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[0]_i_10 
       (.I0(\data_out[2]_i_5_n_0 ),
        .I1(data_out1__24_carry_n_15),
        .I2(\data_out[0]_i_20_n_0 ),
        .I3(\data_out_reg[5]_i_26_n_1 ),
        .I4(data_in[30]),
        .O(\data_out[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_15 
       (.I0(data_in[26]),
        .I1(data_in[10]),
        .I2(i_reg[2]),
        .I3(data_in[18]),
        .I4(i_reg[3]),
        .I5(data_in[2]),
        .O(\data_out[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_16 
       (.I0(data_in[30]),
        .I1(data_in[14]),
        .I2(i_reg[2]),
        .I3(data_in[22]),
        .I4(i_reg[3]),
        .I5(data_in[6]),
        .O(\data_out[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_17 
       (.I0(data_in[24]),
        .I1(data_in[8]),
        .I2(i_reg[2]),
        .I3(data_in[16]),
        .I4(i_reg[3]),
        .I5(data_in[0]),
        .O(\data_out[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_18 
       (.I0(data_in[28]),
        .I1(data_in[12]),
        .I2(i_reg[2]),
        .I3(data_in[20]),
        .I4(i_reg[3]),
        .I5(data_in[4]),
        .O(\data_out[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_19 
       (.I0(\data_out[4]_i_11_n_0 ),
        .I1(\data_out[2]_i_10_n_0 ),
        .I2(data_out1__15_carry_n_15),
        .I3(\data_out[4]_i_13_n_0 ),
        .I4(data_out1__15_carry_n_14),
        .I5(\data_out[0]_i_29_n_0 ),
        .O(\data_out[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_2 
       (.I0(\data_out[0]_i_5_n_0 ),
        .I1(\data_out[0]_i_6_n_0 ),
        .I2(mod_type[1]),
        .I3(\data_out_reg[0]_i_7_n_0 ),
        .I4(i_reg[0]),
        .I5(\data_out_reg[0]_i_8_n_0 ),
        .O(\data_out[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[0]_i_20 
       (.I0(\data_out[4]_i_19_n_0 ),
        .I1(data_out1__24_carry_n_14),
        .I2(\data_out[0]_i_30_n_0 ),
        .O(\data_out[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_21 
       (.I0(data_in[27]),
        .I1(data_in[26]),
        .I2(i_reg[1]),
        .I3(data_in[25]),
        .I4(i_reg[0]),
        .I5(data_in[24]),
        .O(\data_out[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_22 
       (.I0(data_in[31]),
        .I1(data_in[30]),
        .I2(i_reg[1]),
        .I3(data_in[29]),
        .I4(i_reg[0]),
        .I5(data_in[28]),
        .O(\data_out[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_23 
       (.I0(data_in[19]),
        .I1(data_in[18]),
        .I2(i_reg[1]),
        .I3(data_in[17]),
        .I4(i_reg[0]),
        .I5(data_in[16]),
        .O(\data_out[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_24 
       (.I0(data_in[23]),
        .I1(data_in[22]),
        .I2(i_reg[1]),
        .I3(data_in[21]),
        .I4(i_reg[0]),
        .I5(data_in[20]),
        .O(\data_out[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_25 
       (.I0(data_in[11]),
        .I1(data_in[10]),
        .I2(i_reg[1]),
        .I3(data_in[9]),
        .I4(i_reg[0]),
        .I5(data_in[8]),
        .O(\data_out[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_26 
       (.I0(data_in[15]),
        .I1(data_in[14]),
        .I2(i_reg[1]),
        .I3(data_in[13]),
        .I4(i_reg[0]),
        .I5(data_in[12]),
        .O(\data_out[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_27 
       (.I0(data_in[3]),
        .I1(data_in[2]),
        .I2(i_reg[1]),
        .I3(data_in[1]),
        .I4(i_reg[0]),
        .I5(data_in[0]),
        .O(\data_out[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_28 
       (.I0(data_in[7]),
        .I1(data_in[6]),
        .I2(i_reg[1]),
        .I3(data_in[5]),
        .I4(i_reg[0]),
        .I5(data_in[4]),
        .O(\data_out[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_29 
       (.I0(data_in[24]),
        .I1(data_in[8]),
        .I2(data_out1__15_carry_n_13),
        .I3(data_in[16]),
        .I4(data_out1__15_carry_n_12),
        .I5(data_in[0]),
        .O(\data_out[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_30 
       (.I0(data_in[24]),
        .I1(data_in[8]),
        .I2(data_out1__24_carry_n_13),
        .I3(data_in[16]),
        .I4(data_out1__24_carry_n_12),
        .I5(data_in[0]),
        .O(\data_out[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_4 
       (.I0(\data_out_reg[0]_i_11_n_0 ),
        .I1(\data_out_reg[0]_i_12_n_0 ),
        .I2(i_reg[4]),
        .I3(\data_out_reg[0]_i_13_n_0 ),
        .I4(i_reg[3]),
        .I5(\data_out_reg[0]_i_14_n_0 ),
        .O(data0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_5 
       (.I0(data_in[28]),
        .I1(data_in[12]),
        .I2(i_reg[1]),
        .I3(data_in[20]),
        .I4(i_reg[2]),
        .I5(data_in[4]),
        .O(\data_out[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_6 
       (.I0(data_in[24]),
        .I1(data_in[8]),
        .I2(i_reg[1]),
        .I3(data_in[16]),
        .I4(i_reg[2]),
        .I5(data_in[0]),
        .O(\data_out[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[0]_i_9 
       (.I0(\data_out[1]_i_6_n_0 ),
        .I1(i_reg[0]),
        .I2(\data_out[0]_i_19_n_0 ),
        .I3(data_out1_carry__0_n_0),
        .I4(data_in[30]),
        .O(\data_out[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB80000000000)) 
    \data_out[1]_i_1 
       (.I0(\data_out[1]_i_2_n_0 ),
        .I1(mod_type[1]),
        .I2(\data_out[1]_i_3_n_0 ),
        .I3(mod_type[2]),
        .I4(\data_out[1]_i_4_n_0 ),
        .I5(mod_type[0]),
        .O(data_out_1[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_11 
       (.I0(data_in[25]),
        .I1(data_in[9]),
        .I2(data_out1__24_carry_n_13),
        .I3(data_in[17]),
        .I4(data_out1__24_carry_n_12),
        .I5(data_in[1]),
        .O(\data_out[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_12 
       (.I0(data_in[25]),
        .I1(data_in[9]),
        .I2(data_out1__15_carry_n_13),
        .I3(data_in[17]),
        .I4(data_out1__15_carry_n_12),
        .I5(data_in[1]),
        .O(\data_out[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_13 
       (.I0(data_in[27]),
        .I1(data_in[11]),
        .I2(i_reg[2]),
        .I3(data_in[19]),
        .I4(i_reg[3]),
        .I5(data_in[3]),
        .O(\data_out[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_14 
       (.I0(data_in[31]),
        .I1(data_in[15]),
        .I2(i_reg[2]),
        .I3(data_in[23]),
        .I4(i_reg[3]),
        .I5(data_in[7]),
        .O(\data_out[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_15 
       (.I0(data_in[25]),
        .I1(data_in[9]),
        .I2(i_reg[2]),
        .I3(data_in[17]),
        .I4(i_reg[3]),
        .I5(data_in[1]),
        .O(\data_out[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_16 
       (.I0(data_in[29]),
        .I1(data_in[13]),
        .I2(i_reg[2]),
        .I3(data_in[21]),
        .I4(i_reg[3]),
        .I5(data_in[5]),
        .O(\data_out[1]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[1]_i_2 
       (.I0(\data_out[3]_i_5_n_0 ),
        .I1(data_out1__24_carry_n_15),
        .I2(\data_out[1]_i_5_n_0 ),
        .I3(\data_out_reg[5]_i_26_n_1 ),
        .I4(data_in[31]),
        .O(\data_out[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[1]_i_3 
       (.I0(\data_out[2]_i_6_n_0 ),
        .I1(i_reg[0]),
        .I2(\data_out[1]_i_6_n_0 ),
        .I3(data_out1_carry__0_n_0),
        .I4(data_in[31]),
        .O(\data_out[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_4 
       (.I0(\data_out[1]_i_7_n_0 ),
        .I1(\data_out[1]_i_8_n_0 ),
        .I2(mod_type[1]),
        .I3(\data_out_reg[1]_i_9_n_0 ),
        .I4(i_reg[0]),
        .I5(\data_out_reg[1]_i_10_n_0 ),
        .O(\data_out[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[1]_i_5 
       (.I0(\data_out[5]_i_57_n_0 ),
        .I1(data_out1__24_carry_n_14),
        .I2(\data_out[1]_i_11_n_0 ),
        .O(\data_out[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_6 
       (.I0(\data_out[4]_i_17_n_0 ),
        .I1(\data_out[3]_i_11_n_0 ),
        .I2(data_out1__15_carry_n_15),
        .I3(\data_out[4]_i_15_n_0 ),
        .I4(data_out1__15_carry_n_14),
        .I5(\data_out[1]_i_12_n_0 ),
        .O(\data_out[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_7 
       (.I0(data_in[29]),
        .I1(data_in[13]),
        .I2(i_reg[1]),
        .I3(data_in[21]),
        .I4(i_reg[2]),
        .I5(data_in[5]),
        .O(\data_out[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_8 
       (.I0(data_in[25]),
        .I1(data_in[9]),
        .I2(i_reg[1]),
        .I3(data_in[17]),
        .I4(i_reg[2]),
        .I5(data_in[1]),
        .O(\data_out[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFC0A0C000000000)) 
    \data_out[2]_i_1 
       (.I0(\data_out[2]_i_2_n_0 ),
        .I1(\data_out[2]_i_3_n_0 ),
        .I2(mod_type[2]),
        .I3(mod_type[1]),
        .I4(data2[2]),
        .I5(mod_type[0]),
        .O(data_out_1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_10 
       (.I0(data_in[26]),
        .I1(data_in[10]),
        .I2(data_out1__15_carry_n_13),
        .I3(data_in[18]),
        .I4(data_out1__15_carry_n_12),
        .I5(data_in[2]),
        .O(\data_out[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \data_out[2]_i_2 
       (.I0(\data_out_reg[5]_i_26_n_1 ),
        .I1(\data_out[2]_i_5_n_0 ),
        .I2(data_out1__24_carry_n_15),
        .I3(\data_out[4]_i_7_n_0 ),
        .O(\data_out[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \data_out[2]_i_3 
       (.I0(data_out1_carry__0_n_0),
        .I1(\data_out[2]_i_6_n_0 ),
        .I2(i_reg[0]),
        .I3(\data_out[3]_i_6_n_0 ),
        .O(\data_out[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[2]_i_5 
       (.I0(\data_out[4]_i_8_n_0 ),
        .I1(data_out1__24_carry_n_14),
        .I2(\data_out[2]_i_9_n_0 ),
        .O(\data_out[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_6 
       (.I0(\data_out[4]_i_12_n_0 ),
        .I1(\data_out[4]_i_13_n_0 ),
        .I2(data_out1__15_carry_n_15),
        .I3(\data_out[4]_i_11_n_0 ),
        .I4(data_out1__15_carry_n_14),
        .I5(\data_out[2]_i_10_n_0 ),
        .O(\data_out[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_7 
       (.I0(data_in[26]),
        .I1(data_in[10]),
        .I2(i_reg[1]),
        .I3(data_in[18]),
        .I4(i_reg[2]),
        .I5(data_in[2]),
        .O(\data_out[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_8 
       (.I0(data_in[30]),
        .I1(data_in[14]),
        .I2(i_reg[1]),
        .I3(data_in[22]),
        .I4(i_reg[2]),
        .I5(data_in[6]),
        .O(\data_out[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_9 
       (.I0(data_in[26]),
        .I1(data_in[10]),
        .I2(data_out1__24_carry_n_13),
        .I3(data_in[18]),
        .I4(data_out1__24_carry_n_12),
        .I5(data_in[2]),
        .O(\data_out[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFC0A0C000000000)) 
    \data_out[3]_i_1 
       (.I0(\data_out[3]_i_2_n_0 ),
        .I1(\data_out[3]_i_3_n_0 ),
        .I2(mod_type[2]),
        .I3(mod_type[1]),
        .I4(data2[3]),
        .I5(mod_type[0]),
        .O(data_out_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \data_out[3]_i_10 
       (.I0(data_in[17]),
        .I1(data_out1__15_carry_n_13),
        .I2(data_in[25]),
        .I3(data_out1__15_carry_n_12),
        .I4(data_in[9]),
        .O(\data_out[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_11 
       (.I0(data_in[27]),
        .I1(data_in[11]),
        .I2(data_out1__15_carry_n_13),
        .I3(data_in[19]),
        .I4(data_out1__15_carry_n_12),
        .I5(data_in[3]),
        .O(\data_out[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \data_out[3]_i_2 
       (.I0(\data_out_reg[5]_i_26_n_1 ),
        .I1(\data_out[3]_i_5_n_0 ),
        .I2(data_out1__24_carry_n_15),
        .I3(\data_out[5]_i_27_n_0 ),
        .O(\data_out[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \data_out[3]_i_3 
       (.I0(data_out1_carry__0_n_0),
        .I1(\data_out[3]_i_6_n_0 ),
        .I2(i_reg[0]),
        .I3(\data_out[4]_i_4_n_0 ),
        .O(\data_out[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[3]_i_5 
       (.I0(\data_out[5]_i_28_n_0 ),
        .I1(data_out1__24_carry_n_14),
        .I2(\data_out[3]_i_9_n_0 ),
        .O(\data_out[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_6 
       (.I0(\data_out[3]_i_10_n_0 ),
        .I1(\data_out[4]_i_15_n_0 ),
        .I2(data_out1__15_carry_n_15),
        .I3(\data_out[4]_i_17_n_0 ),
        .I4(data_out1__15_carry_n_14),
        .I5(\data_out[3]_i_11_n_0 ),
        .O(\data_out[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_7 
       (.I0(data_in[27]),
        .I1(data_in[11]),
        .I2(i_reg[1]),
        .I3(data_in[19]),
        .I4(i_reg[2]),
        .I5(data_in[3]),
        .O(\data_out[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_8 
       (.I0(data_in[31]),
        .I1(data_in[15]),
        .I2(i_reg[1]),
        .I3(data_in[23]),
        .I4(i_reg[2]),
        .I5(data_in[7]),
        .O(\data_out[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_9 
       (.I0(data_in[27]),
        .I1(data_in[11]),
        .I2(data_out1__24_carry_n_13),
        .I3(data_in[19]),
        .I4(data_out1__24_carry_n_12),
        .I5(data_in[3]),
        .O(\data_out[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA8080000)) 
    \data_out[4]_i_1 
       (.I0(mod_type[2]),
        .I1(\data_out[4]_i_2_n_0 ),
        .I2(mod_type[1]),
        .I3(\data_out[4]_i_3_n_0 ),
        .I4(mod_type[0]),
        .O(data_out_1[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \data_out[4]_i_10 
       (.I0(data_in[18]),
        .I1(data_out1__15_carry_n_13),
        .I2(data_in[26]),
        .I3(data_out1__15_carry_n_12),
        .I4(data_in[10]),
        .O(\data_out[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_11 
       (.I0(data_in[30]),
        .I1(data_in[14]),
        .I2(data_out1__15_carry_n_13),
        .I3(data_in[22]),
        .I4(data_out1__15_carry_n_12),
        .I5(data_in[6]),
        .O(\data_out[4]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \data_out[4]_i_12 
       (.I0(data_in[16]),
        .I1(data_out1__15_carry_n_13),
        .I2(data_in[24]),
        .I3(data_out1__15_carry_n_12),
        .I4(data_in[8]),
        .O(\data_out[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_13 
       (.I0(data_in[28]),
        .I1(data_in[12]),
        .I2(data_out1__15_carry_n_13),
        .I3(data_in[20]),
        .I4(data_out1__15_carry_n_12),
        .I5(data_in[4]),
        .O(\data_out[4]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[4]_i_14 
       (.I0(data_in[25]),
        .I1(data_out1__15_carry_n_12),
        .I2(data_in[9]),
        .O(\data_out[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_15 
       (.I0(data_in[29]),
        .I1(data_in[13]),
        .I2(data_out1__15_carry_n_13),
        .I3(data_in[21]),
        .I4(data_out1__15_carry_n_12),
        .I5(data_in[5]),
        .O(\data_out[4]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[4]_i_16 
       (.I0(data_in[27]),
        .I1(data_out1__15_carry_n_12),
        .I2(data_in[11]),
        .O(\data_out[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_17 
       (.I0(data_in[31]),
        .I1(data_in[15]),
        .I2(data_out1__15_carry_n_13),
        .I3(data_in[23]),
        .I4(data_out1__15_carry_n_12),
        .I5(data_in[7]),
        .O(\data_out[4]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[4]_i_18 
       (.I0(data_in[24]),
        .I1(data_out1__24_carry_n_12),
        .I2(data_in[8]),
        .O(\data_out[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_19 
       (.I0(data_in[28]),
        .I1(data_in[12]),
        .I2(data_out1__24_carry_n_13),
        .I3(data_in[20]),
        .I4(data_out1__24_carry_n_12),
        .I5(data_in[4]),
        .O(\data_out[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_out[4]_i_2 
       (.I0(data_out1_carry__0_n_0),
        .I1(\data_out[4]_i_4_n_0 ),
        .I2(i_reg[0]),
        .I3(\data_out[4]_i_5_n_0 ),
        .I4(data_out1__15_carry_n_15),
        .I5(\data_out[4]_i_6_n_0 ),
        .O(\data_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_out[4]_i_3 
       (.I0(\data_out_reg[5]_i_26_n_1 ),
        .I1(\data_out[4]_i_7_n_0 ),
        .I2(data_out1__24_carry_n_15),
        .I3(\data_out[4]_i_8_n_0 ),
        .I4(data_out1__24_carry_n_14),
        .I5(\data_out[4]_i_9_n_0 ),
        .O(\data_out[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_4 
       (.I0(\data_out[4]_i_10_n_0 ),
        .I1(\data_out[4]_i_11_n_0 ),
        .I2(data_out1__15_carry_n_15),
        .I3(\data_out[4]_i_12_n_0 ),
        .I4(data_out1__15_carry_n_14),
        .I5(\data_out[4]_i_13_n_0 ),
        .O(\data_out[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[4]_i_5 
       (.I0(data_in[17]),
        .I1(data_out1__15_carry_n_13),
        .I2(\data_out[4]_i_14_n_0 ),
        .I3(data_out1__15_carry_n_14),
        .I4(\data_out[4]_i_15_n_0 ),
        .O(\data_out[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[4]_i_6 
       (.I0(data_in[19]),
        .I1(data_out1__15_carry_n_13),
        .I2(\data_out[4]_i_16_n_0 ),
        .I3(data_out1__15_carry_n_14),
        .I4(\data_out[4]_i_17_n_0 ),
        .O(\data_out[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[4]_i_7 
       (.I0(data_in[16]),
        .I1(data_out1__24_carry_n_13),
        .I2(\data_out[4]_i_18_n_0 ),
        .I3(data_out1__24_carry_n_14),
        .I4(\data_out[4]_i_19_n_0 ),
        .O(\data_out[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_8 
       (.I0(data_in[30]),
        .I1(data_in[14]),
        .I2(data_out1__24_carry_n_13),
        .I3(data_in[22]),
        .I4(data_out1__24_carry_n_12),
        .I5(data_in[6]),
        .O(\data_out[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \data_out[4]_i_9 
       (.I0(data_in[18]),
        .I1(data_out1__24_carry_n_13),
        .I2(data_in[26]),
        .I3(data_out1__24_carry_n_12),
        .I4(data_in[10]),
        .O(\data_out[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800AAAAA8)) 
    \data_out[5]_i_1 
       (.I0(data_out133_out),
        .I1(\data_out_reg[5]_i_4_n_0 ),
        .I2(\data_out[5]_i_5_n_0 ),
        .I3(\data_out[5]_i_6_n_0 ),
        .I4(\data_out[5]_i_7_n_0 ),
        .I5(\data_out[5]_i_8_n_0 ),
        .O(\data_out[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_11 
       (.I0(i_reg[31]),
        .I1(i_reg[30]),
        .O(\data_out[5]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_12 
       (.I0(i_reg[28]),
        .I1(i_reg[29]),
        .O(\data_out[5]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_13 
       (.I0(i_reg[26]),
        .I1(i_reg[27]),
        .O(\data_out[5]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_14 
       (.I0(i_reg[24]),
        .I1(i_reg[25]),
        .O(\data_out[5]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_15 
       (.I0(i_reg[22]),
        .I1(i_reg[23]),
        .O(\data_out[5]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_16 
       (.I0(i_reg[20]),
        .I1(i_reg[21]),
        .O(\data_out[5]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_17 
       (.I0(i_reg[18]),
        .I1(i_reg[19]),
        .O(\data_out[5]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_18 
       (.I0(i_reg[16]),
        .I1(i_reg[17]),
        .O(\data_out[5]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \data_out[5]_i_19 
       (.I0(i_reg[1]),
        .I1(i_reg[2]),
        .I2(i_reg[0]),
        .I3(i_reg[4]),
        .I4(i_reg[5]),
        .I5(i_reg[3]),
        .O(\data_out[5]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \data_out[5]_i_2 
       (.I0(mod_type[2]),
        .I1(\data_out[5]_i_9_n_0 ),
        .I2(mod_type[1]),
        .I3(mod_type[0]),
        .O(data_out_1[5]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \data_out[5]_i_20 
       (.I0(\data_out[5]_i_41_n_0 ),
        .I1(i_reg[9]),
        .I2(i_reg[8]),
        .I3(i_reg[7]),
        .I4(i_reg[6]),
        .I5(\data_out[5]_i_42_n_0 ),
        .O(\data_out[5]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data_out[5]_i_21 
       (.I0(i_reg[24]),
        .I1(i_reg[25]),
        .I2(i_reg[26]),
        .I3(i_reg[27]),
        .I4(i_reg[28]),
        .I5(i_reg[29]),
        .O(\data_out[5]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABAA)) 
    \data_out[5]_i_22 
       (.I0(\data_out_reg[5]_i_26_n_1 ),
        .I1(done_reg_n_0),
        .I2(\data_out[5]_i_21_n_0 ),
        .I3(\data_out[5]_i_20_n_0 ),
        .I4(\data_out[5]_i_43_n_0 ),
        .I5(\data_out[5]_i_44_n_0 ),
        .O(\data_out[5]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABAA)) 
    \data_out[5]_i_23 
       (.I0(data_out1_carry__0_n_0),
        .I1(done_reg_n_0),
        .I2(\data_out[5]_i_21_n_0 ),
        .I3(\data_out[5]_i_20_n_0 ),
        .I4(\data_out[5]_i_43_n_0 ),
        .I5(\data_out[5]_i_45_n_0 ),
        .O(\data_out[5]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABAA)) 
    \data_out[5]_i_24 
       (.I0(data_out_ready_reg_i_12_n_0),
        .I1(done_reg_n_0),
        .I2(\data_out[5]_i_21_n_0 ),
        .I3(\data_out[5]_i_20_n_0 ),
        .I4(\data_out[5]_i_43_n_0 ),
        .I5(\data_out[5]_i_46_n_0 ),
        .O(\data_out[5]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABAA)) 
    \data_out[5]_i_25 
       (.I0(data_out_ready_reg_i_14_n_0),
        .I1(done_reg_n_0),
        .I2(\data_out[5]_i_21_n_0 ),
        .I3(\data_out[5]_i_20_n_0 ),
        .I4(\data_out[5]_i_43_n_0 ),
        .I5(\data_out[5]_i_47_n_0 ),
        .O(\data_out[5]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[5]_i_27 
       (.I0(data_in[17]),
        .I1(data_out1__24_carry_n_13),
        .I2(\data_out[5]_i_56_n_0 ),
        .I3(data_out1__24_carry_n_14),
        .I4(\data_out[5]_i_57_n_0 ),
        .O(\data_out[5]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_28 
       (.I0(data_in[31]),
        .I1(data_in[15]),
        .I2(data_out1__24_carry_n_13),
        .I3(data_in[23]),
        .I4(data_out1__24_carry_n_12),
        .I5(data_in[7]),
        .O(\data_out[5]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \data_out[5]_i_29 
       (.I0(data_in[19]),
        .I1(data_out1__24_carry_n_13),
        .I2(data_in[27]),
        .I3(data_out1__24_carry_n_12),
        .I4(data_in[11]),
        .O(\data_out[5]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[5]_i_3 
       (.I0(data_in_ready),
        .I1(data_in_valid),
        .O(data_out133_out));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_30 
       (.I0(i_reg[4]),
        .I1(i_reg[5]),
        .O(\data_out[5]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \data_out[5]_i_31 
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .O(\data_out[5]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \data_out[5]_i_32 
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .O(\data_out[5]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_33 
       (.I0(i_reg[14]),
        .I1(i_reg[15]),
        .O(\data_out[5]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_34 
       (.I0(i_reg[12]),
        .I1(i_reg[13]),
        .O(\data_out[5]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_35 
       (.I0(i_reg[10]),
        .I1(i_reg[11]),
        .O(\data_out[5]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_36 
       (.I0(i_reg[8]),
        .I1(i_reg[9]),
        .O(\data_out[5]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_37 
       (.I0(i_reg[6]),
        .I1(i_reg[7]),
        .O(\data_out[5]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_out[5]_i_38 
       (.I0(i_reg[4]),
        .I1(i_reg[5]),
        .O(\data_out[5]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[5]_i_39 
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .O(\data_out[5]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[5]_i_40 
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .O(\data_out[5]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_41 
       (.I0(i_reg[10]),
        .I1(i_reg[11]),
        .O(\data_out[5]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \data_out[5]_i_42 
       (.I0(\data_out[5]_i_58_n_0 ),
        .I1(i_reg[15]),
        .I2(i_reg[14]),
        .I3(i_reg[13]),
        .I4(i_reg[12]),
        .I5(data_out_ready_i_16_n_0),
        .O(\data_out[5]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \data_out[5]_i_43 
       (.I0(i_reg[30]),
        .I1(i_reg[31]),
        .O(\data_out[5]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \data_out[5]_i_44 
       (.I0(i_reg[2]),
        .I1(i_reg[1]),
        .I2(i_reg[0]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(\data_out[5]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    \data_out[5]_i_45 
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(\data_out[5]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \data_out[5]_i_46 
       (.I0(i_reg[1]),
        .I1(i_reg[2]),
        .I2(i_reg[0]),
        .I3(i_reg[3]),
        .I4(i_reg[4]),
        .I5(i_reg[5]),
        .O(\data_out[5]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7FFFFFFFFF)) 
    \data_out[5]_i_47 
       (.I0(i_reg[1]),
        .I1(i_reg[2]),
        .I2(i_reg[0]),
        .I3(i_reg[4]),
        .I4(i_reg[5]),
        .I5(i_reg[3]),
        .O(\data_out[5]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_49 
       (.I0(i_reg[31]),
        .I1(i_reg[30]),
        .O(\data_out[5]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \data_out[5]_i_5 
       (.I0(\data_out[5]_i_19_n_0 ),
        .I1(i_reg[30]),
        .I2(i_reg[31]),
        .I3(\data_out[5]_i_20_n_0 ),
        .I4(\data_out[5]_i_21_n_0 ),
        .I5(done_reg_n_0),
        .O(\data_out[5]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_50 
       (.I0(i_reg[28]),
        .I1(i_reg[29]),
        .O(\data_out[5]_i_50_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_51 
       (.I0(i_reg[26]),
        .I1(i_reg[27]),
        .O(\data_out[5]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_52 
       (.I0(i_reg[24]),
        .I1(i_reg[25]),
        .O(\data_out[5]_i_52_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_53 
       (.I0(i_reg[22]),
        .I1(i_reg[23]),
        .O(\data_out[5]_i_53_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_54 
       (.I0(i_reg[20]),
        .I1(i_reg[21]),
        .O(\data_out[5]_i_54_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_55 
       (.I0(i_reg[18]),
        .I1(i_reg[19]),
        .O(\data_out[5]_i_55_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[5]_i_56 
       (.I0(data_in[25]),
        .I1(data_out1__24_carry_n_12),
        .I2(data_in[9]),
        .O(\data_out[5]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_57 
       (.I0(data_in[29]),
        .I1(data_in[13]),
        .I2(data_out1__24_carry_n_13),
        .I3(data_in[21]),
        .I4(data_out1__24_carry_n_12),
        .I5(data_in[5]),
        .O(\data_out[5]_i_57_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_58 
       (.I0(i_reg[16]),
        .I1(i_reg[17]),
        .O(\data_out[5]_i_58_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_59 
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .O(\data_out[5]_i_59_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \data_out[5]_i_6 
       (.I0(mod_type[0]),
        .I1(mod_type[2]),
        .I2(mod_type[1]),
        .O(\data_out[5]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_60 
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .O(\data_out[5]_i_60_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_61 
       (.I0(i_reg[16]),
        .I1(i_reg[17]),
        .O(\data_out[5]_i_61_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_62 
       (.I0(i_reg[14]),
        .I1(i_reg[15]),
        .O(\data_out[5]_i_62_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_63 
       (.I0(i_reg[12]),
        .I1(i_reg[13]),
        .O(\data_out[5]_i_63_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_64 
       (.I0(i_reg[10]),
        .I1(i_reg[11]),
        .O(\data_out[5]_i_64_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_65 
       (.I0(i_reg[8]),
        .I1(i_reg[9]),
        .O(\data_out[5]_i_65_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_66 
       (.I0(i_reg[6]),
        .I1(i_reg[7]),
        .O(\data_out[5]_i_66_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[5]_i_67 
       (.I0(i_reg[4]),
        .I1(i_reg[5]),
        .O(\data_out[5]_i_67_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_out[5]_i_68 
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .O(\data_out[5]_i_68_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \data_out[5]_i_7 
       (.I0(mod_type[0]),
        .I1(mod_type[2]),
        .O(\data_out[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_8 
       (.I0(\data_out[5]_i_22_n_0 ),
        .I1(\data_out[5]_i_23_n_0 ),
        .I2(mod_type[2]),
        .I3(\data_out[5]_i_24_n_0 ),
        .I4(mod_type[1]),
        .I5(\data_out[5]_i_25_n_0 ),
        .O(\data_out[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \data_out[5]_i_9 
       (.I0(\data_out_reg[5]_i_26_n_1 ),
        .I1(\data_out[5]_i_27_n_0 ),
        .I2(data_out1__24_carry_n_15),
        .I3(\data_out[5]_i_28_n_0 ),
        .I4(data_out1__24_carry_n_14),
        .I5(\data_out[5]_i_29_n_0 ),
        .O(\data_out[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAE2000000)) 
    data_out_ready_i_1
       (.I0(data_out_ready),
        .I1(data_out_ready_reg_i_2_n_0),
        .I2(data_out_ready_0),
        .I3(data_in_ready),
        .I4(data_in_valid),
        .I5(reset),
        .O(data_out_ready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    data_out_ready_i_10
       (.I0(\data_out[5]_i_21_n_0 ),
        .I1(data_out_ready_i_15_n_0),
        .I2(data_out_ready_i_16_n_0),
        .I3(data_out_ready_i_17_n_0),
        .I4(\data_out[5]_i_43_n_0 ),
        .I5(\data_out[5]_i_45_n_0 ),
        .O(data_out125_in));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    data_out_ready_i_11
       (.I0(\data_out[5]_i_21_n_0 ),
        .I1(data_out_ready_i_15_n_0),
        .I2(\data_out[5]_i_42_n_0 ),
        .I3(\data_out[5]_i_43_n_0 ),
        .I4(data_out_ready_i_18_n_0),
        .I5(data_out_ready_i_19_n_0),
        .O(data_out127_in));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    data_out_ready_i_13
       (.I0(\data_out[5]_i_21_n_0 ),
        .I1(data_out_ready_i_15_n_0),
        .I2(data_out_ready_i_16_n_0),
        .I3(data_out_ready_i_17_n_0),
        .I4(\data_out[5]_i_43_n_0 ),
        .I5(\data_out[5]_i_47_n_0 ),
        .O(data_out129_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    data_out_ready_i_15
       (.I0(i_reg[6]),
        .I1(i_reg[7]),
        .I2(i_reg[8]),
        .I3(i_reg[9]),
        .I4(i_reg[10]),
        .I5(i_reg[11]),
        .O(data_out_ready_i_15_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    data_out_ready_i_16
       (.I0(i_reg[18]),
        .I1(i_reg[19]),
        .I2(i_reg[20]),
        .I3(i_reg[21]),
        .I4(i_reg[22]),
        .I5(i_reg[23]),
        .O(data_out_ready_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    data_out_ready_i_17
       (.I0(i_reg[12]),
        .I1(i_reg[13]),
        .I2(i_reg[14]),
        .I3(i_reg[15]),
        .I4(i_reg[16]),
        .I5(i_reg[17]),
        .O(data_out_ready_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h01)) 
    data_out_ready_i_18
       (.I0(i_reg[5]),
        .I1(i_reg[4]),
        .I2(i_reg[3]),
        .O(data_out_ready_i_18_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    data_out_ready_i_19
       (.I0(i_reg[0]),
        .I1(i_reg[2]),
        .I2(i_reg[1]),
        .O(data_out_ready_i_19_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_21
       (.I0(i_reg[31]),
        .I1(i_reg[30]),
        .O(data_out_ready_i_21_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_22
       (.I0(i_reg[28]),
        .I1(i_reg[29]),
        .O(data_out_ready_i_22_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_23
       (.I0(i_reg[26]),
        .I1(i_reg[27]),
        .O(data_out_ready_i_23_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_24
       (.I0(i_reg[24]),
        .I1(i_reg[25]),
        .O(data_out_ready_i_24_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_25
       (.I0(i_reg[22]),
        .I1(i_reg[23]),
        .O(data_out_ready_i_25_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_26
       (.I0(i_reg[20]),
        .I1(i_reg[21]),
        .O(data_out_ready_i_26_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_27
       (.I0(i_reg[18]),
        .I1(i_reg[19]),
        .O(data_out_ready_i_27_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_28
       (.I0(i_reg[16]),
        .I1(i_reg[17]),
        .O(data_out_ready_i_28_n_0));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    data_out_ready_i_3
       (.I0(data_out_ready_i_6_n_0),
        .I1(mod_type[2]),
        .I2(data_out_ready_i_7_n_0),
        .I3(mod_type[0]),
        .I4(\data_out[5]_i_5_n_0 ),
        .I5(\data_out_reg[5]_i_4_n_0 ),
        .O(data_out_ready_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_30
       (.I0(i_reg[31]),
        .I1(i_reg[30]),
        .O(data_out_ready_i_30_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_31
       (.I0(i_reg[28]),
        .I1(i_reg[29]),
        .O(data_out_ready_i_31_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_32
       (.I0(i_reg[26]),
        .I1(i_reg[27]),
        .O(data_out_ready_i_32_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_33
       (.I0(i_reg[24]),
        .I1(i_reg[25]),
        .O(data_out_ready_i_33_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_34
       (.I0(i_reg[22]),
        .I1(i_reg[23]),
        .O(data_out_ready_i_34_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_35
       (.I0(i_reg[20]),
        .I1(i_reg[21]),
        .O(data_out_ready_i_35_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_36
       (.I0(i_reg[18]),
        .I1(i_reg[19]),
        .O(data_out_ready_i_36_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_37
       (.I0(i_reg[16]),
        .I1(i_reg[17]),
        .O(data_out_ready_i_37_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_38
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .O(data_out_ready_i_38_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    data_out_ready_i_39
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .O(data_out_ready_i_39_n_0));
  LUT5 #(
    .INIT(32'h0000EE0E)) 
    data_out_ready_i_4
       (.I0(\data_out[5]_i_5_n_0 ),
        .I1(\data_out_reg[5]_i_4_n_0 ),
        .I2(mod_type[1]),
        .I3(mod_type[2]),
        .I4(mod_type[0]),
        .O(data_out_ready_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_40
       (.I0(i_reg[14]),
        .I1(i_reg[15]),
        .O(data_out_ready_i_40_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_41
       (.I0(i_reg[12]),
        .I1(i_reg[13]),
        .O(data_out_ready_i_41_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_42
       (.I0(i_reg[10]),
        .I1(i_reg[11]),
        .O(data_out_ready_i_42_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_43
       (.I0(i_reg[8]),
        .I1(i_reg[9]),
        .O(data_out_ready_i_43_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_44
       (.I0(i_reg[6]),
        .I1(i_reg[7]),
        .O(data_out_ready_i_44_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_45
       (.I0(i_reg[4]),
        .I1(i_reg[5]),
        .O(data_out_ready_i_45_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    data_out_ready_i_46
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .O(data_out_ready_i_46_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    data_out_ready_i_47
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .O(data_out_ready_i_47_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    data_out_ready_i_48
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .O(data_out_ready_i_48_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    data_out_ready_i_49
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .O(data_out_ready_i_49_n_0));
  LUT6 #(
    .INIT(64'hACACA8080C0CA808)) 
    data_out_ready_i_5
       (.I0(mod_type[0]),
        .I1(data_out_ready_i_8_n_0),
        .I2(mod_type[2]),
        .I3(\data_out[5]_i_23_n_0 ),
        .I4(mod_type[1]),
        .I5(\data_out[5]_i_22_n_0 ),
        .O(data_out_ready_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_50
       (.I0(i_reg[14]),
        .I1(i_reg[15]),
        .O(data_out_ready_i_50_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_51
       (.I0(i_reg[12]),
        .I1(i_reg[13]),
        .O(data_out_ready_i_51_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_52
       (.I0(i_reg[10]),
        .I1(i_reg[11]),
        .O(data_out_ready_i_52_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_53
       (.I0(i_reg[8]),
        .I1(i_reg[9]),
        .O(data_out_ready_i_53_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_54
       (.I0(i_reg[6]),
        .I1(i_reg[7]),
        .O(data_out_ready_i_54_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_55
       (.I0(i_reg[4]),
        .I1(i_reg[5]),
        .O(data_out_ready_i_55_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    data_out_ready_i_56
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .O(data_out_ready_i_56_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    data_out_ready_i_57
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .O(data_out_ready_i_57_n_0));
  LUT6 #(
    .INIT(64'h00200020002F0020)) 
    data_out_ready_i_6
       (.I0(data_out1__28),
        .I1(\data_out_reg[5]_i_26_n_1 ),
        .I2(mod_type[1]),
        .I3(done_reg_n_0),
        .I4(data_out125_in),
        .I5(data_out1_carry__0_n_0),
        .O(data_out_ready_i_6_n_0));
  LUT6 #(
    .INIT(64'h00200020002F0020)) 
    data_out_ready_i_7
       (.I0(data_out127_in),
        .I1(data_out_ready_reg_i_12_n_0),
        .I2(mod_type[1]),
        .I3(done_reg_n_0),
        .I4(data_out129_in),
        .I5(data_out_ready_reg_i_14_n_0),
        .O(data_out_ready_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
    data_out_ready_i_8
       (.I0(data_out_ready_reg_i_12_n_0),
        .I1(data_out127_in),
        .I2(mod_type[1]),
        .I3(data_out_ready_reg_i_14_n_0),
        .I4(done_reg_n_0),
        .I5(data_out129_in),
        .O(data_out_ready_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    data_out_ready_i_9
       (.I0(\data_out[5]_i_21_n_0 ),
        .I1(data_out_ready_i_15_n_0),
        .I2(data_out_ready_i_16_n_0),
        .I3(data_out_ready_i_17_n_0),
        .I4(\data_out[5]_i_43_n_0 ),
        .I5(\data_out[5]_i_44_n_0 ),
        .O(data_out1__28));
  FDRE #(
    .INIT(1'b0)) 
    data_out_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(data_out_ready_i_1_n_0),
        .Q(data_out_ready),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 data_out_ready_reg_i_12
       (.CI(data_out_ready_reg_i_20_n_0),
        .CI_TOP(1'b0),
        .CO({data_out_ready_reg_i_12_n_0,data_out_ready_reg_i_12_n_1,data_out_ready_reg_i_12_n_2,data_out_ready_reg_i_12_n_3,data_out_ready_reg_i_12_n_4,data_out_ready_reg_i_12_n_5,data_out_ready_reg_i_12_n_6,data_out_ready_reg_i_12_n_7}),
        .DI({i_reg[31],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_data_out_ready_reg_i_12_O_UNCONNECTED[7:0]),
        .S({data_out_ready_i_21_n_0,data_out_ready_i_22_n_0,data_out_ready_i_23_n_0,data_out_ready_i_24_n_0,data_out_ready_i_25_n_0,data_out_ready_i_26_n_0,data_out_ready_i_27_n_0,data_out_ready_i_28_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 data_out_ready_reg_i_14
       (.CI(data_out_ready_reg_i_29_n_0),
        .CI_TOP(1'b0),
        .CO({data_out_ready_reg_i_14_n_0,data_out_ready_reg_i_14_n_1,data_out_ready_reg_i_14_n_2,data_out_ready_reg_i_14_n_3,data_out_ready_reg_i_14_n_4,data_out_ready_reg_i_14_n_5,data_out_ready_reg_i_14_n_6,data_out_ready_reg_i_14_n_7}),
        .DI({i_reg[31],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_data_out_ready_reg_i_14_O_UNCONNECTED[7:0]),
        .S({data_out_ready_i_30_n_0,data_out_ready_i_31_n_0,data_out_ready_i_32_n_0,data_out_ready_i_33_n_0,data_out_ready_i_34_n_0,data_out_ready_i_35_n_0,data_out_ready_i_36_n_0,data_out_ready_i_37_n_0}));
  MUXF7 data_out_ready_reg_i_2
       (.I0(data_out_ready_i_4_n_0),
        .I1(data_out_ready_i_5_n_0),
        .O(data_out_ready_reg_i_2_n_0),
        .S(\data_out[5]_i_7_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 data_out_ready_reg_i_20
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({data_out_ready_reg_i_20_n_0,data_out_ready_reg_i_20_n_1,data_out_ready_reg_i_20_n_2,data_out_ready_reg_i_20_n_3,data_out_ready_reg_i_20_n_4,data_out_ready_reg_i_20_n_5,data_out_ready_reg_i_20_n_6,data_out_ready_reg_i_20_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,data_out_ready_i_38_n_0,data_out_ready_i_39_n_0}),
        .O(NLW_data_out_ready_reg_i_20_O_UNCONNECTED[7:0]),
        .S({data_out_ready_i_40_n_0,data_out_ready_i_41_n_0,data_out_ready_i_42_n_0,data_out_ready_i_43_n_0,data_out_ready_i_44_n_0,data_out_ready_i_45_n_0,data_out_ready_i_46_n_0,data_out_ready_i_47_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 data_out_ready_reg_i_29
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({data_out_ready_reg_i_29_n_0,data_out_ready_reg_i_29_n_1,data_out_ready_reg_i_29_n_2,data_out_ready_reg_i_29_n_3,data_out_ready_reg_i_29_n_4,data_out_ready_reg_i_29_n_5,data_out_ready_reg_i_29_n_6,data_out_ready_reg_i_29_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,data_out_ready_i_48_n_0,data_out_ready_i_49_n_0}),
        .O(NLW_data_out_ready_reg_i_29_O_UNCONNECTED[7:0]),
        .S({data_out_ready_i_50_n_0,data_out_ready_i_51_n_0,data_out_ready_i_52_n_0,data_out_ready_i_53_n_0,data_out_ready_i_54_n_0,data_out_ready_i_55_n_0,data_out_ready_i_56_n_0,data_out_ready_i_57_n_0}));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(clk),
        .CE(\data_out[5]_i_1_n_0 ),
        .CLR(reset),
        .D(data_out_1[0]),
        .Q(data_out[0]));
  MUXF7 \data_out_reg[0]_i_11 
       (.I0(\data_out[0]_i_21_n_0 ),
        .I1(\data_out[0]_i_22_n_0 ),
        .O(\data_out_reg[0]_i_11_n_0 ),
        .S(i_reg[2]));
  MUXF7 \data_out_reg[0]_i_12 
       (.I0(\data_out[0]_i_23_n_0 ),
        .I1(\data_out[0]_i_24_n_0 ),
        .O(\data_out_reg[0]_i_12_n_0 ),
        .S(i_reg[2]));
  MUXF7 \data_out_reg[0]_i_13 
       (.I0(\data_out[0]_i_25_n_0 ),
        .I1(\data_out[0]_i_26_n_0 ),
        .O(\data_out_reg[0]_i_13_n_0 ),
        .S(i_reg[2]));
  MUXF7 \data_out_reg[0]_i_14 
       (.I0(\data_out[0]_i_27_n_0 ),
        .I1(\data_out[0]_i_28_n_0 ),
        .O(\data_out_reg[0]_i_14_n_0 ),
        .S(i_reg[2]));
  MUXF7 \data_out_reg[0]_i_3 
       (.I0(\data_out[0]_i_9_n_0 ),
        .I1(\data_out[0]_i_10_n_0 ),
        .O(\data_out_reg[0]_i_3_n_0 ),
        .S(mod_type[1]));
  MUXF7 \data_out_reg[0]_i_7 
       (.I0(\data_out[0]_i_15_n_0 ),
        .I1(\data_out[0]_i_16_n_0 ),
        .O(\data_out_reg[0]_i_7_n_0 ),
        .S(i_reg[1]));
  MUXF7 \data_out_reg[0]_i_8 
       (.I0(\data_out[0]_i_17_n_0 ),
        .I1(\data_out[0]_i_18_n_0 ),
        .O(\data_out_reg[0]_i_8_n_0 ),
        .S(i_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(clk),
        .CE(\data_out[5]_i_1_n_0 ),
        .CLR(reset),
        .D(data_out_1[1]),
        .Q(data_out[1]));
  MUXF7 \data_out_reg[1]_i_10 
       (.I0(\data_out[1]_i_15_n_0 ),
        .I1(\data_out[1]_i_16_n_0 ),
        .O(\data_out_reg[1]_i_10_n_0 ),
        .S(i_reg[1]));
  MUXF7 \data_out_reg[1]_i_9 
       (.I0(\data_out[1]_i_13_n_0 ),
        .I1(\data_out[1]_i_14_n_0 ),
        .O(\data_out_reg[1]_i_9_n_0 ),
        .S(i_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(clk),
        .CE(\data_out[5]_i_1_n_0 ),
        .CLR(reset),
        .D(data_out_1[2]),
        .Q(data_out[2]));
  MUXF7 \data_out_reg[2]_i_4 
       (.I0(\data_out[2]_i_7_n_0 ),
        .I1(\data_out[2]_i_8_n_0 ),
        .O(data2[2]),
        .S(i_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(clk),
        .CE(\data_out[5]_i_1_n_0 ),
        .CLR(reset),
        .D(data_out_1[3]),
        .Q(data_out[3]));
  MUXF7 \data_out_reg[3]_i_4 
       (.I0(\data_out[3]_i_7_n_0 ),
        .I1(\data_out[3]_i_8_n_0 ),
        .O(data2[3]),
        .S(i_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(clk),
        .CE(\data_out[5]_i_1_n_0 ),
        .CLR(reset),
        .D(data_out_1[4]),
        .Q(data_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(clk),
        .CE(\data_out[5]_i_1_n_0 ),
        .CLR(reset),
        .D(data_out_1[5]),
        .Q(data_out[5]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \data_out_reg[5]_i_10 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\data_out_reg[5]_i_10_n_0 ,\data_out_reg[5]_i_10_n_1 ,\data_out_reg[5]_i_10_n_2 ,\data_out_reg[5]_i_10_n_3 ,\data_out_reg[5]_i_10_n_4 ,\data_out_reg[5]_i_10_n_5 ,\data_out_reg[5]_i_10_n_6 ,\data_out_reg[5]_i_10_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,\data_out[5]_i_30_n_0 ,\data_out[5]_i_31_n_0 ,\data_out[5]_i_32_n_0 }),
        .O(\NLW_data_out_reg[5]_i_10_O_UNCONNECTED [7:0]),
        .S({\data_out[5]_i_33_n_0 ,\data_out[5]_i_34_n_0 ,\data_out[5]_i_35_n_0 ,\data_out[5]_i_36_n_0 ,\data_out[5]_i_37_n_0 ,\data_out[5]_i_38_n_0 ,\data_out[5]_i_39_n_0 ,\data_out[5]_i_40_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \data_out_reg[5]_i_26 
       (.CI(\data_out_reg[5]_i_48_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_data_out_reg[5]_i_26_CO_UNCONNECTED [7],\data_out_reg[5]_i_26_n_1 ,\data_out_reg[5]_i_26_n_2 ,\data_out_reg[5]_i_26_n_3 ,\data_out_reg[5]_i_26_n_4 ,\data_out_reg[5]_i_26_n_5 ,\data_out_reg[5]_i_26_n_6 ,\data_out_reg[5]_i_26_n_7 }),
        .DI({1'b0,i_reg[31],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_data_out_reg[5]_i_26_O_UNCONNECTED [7:0]),
        .S({1'b0,\data_out[5]_i_49_n_0 ,\data_out[5]_i_50_n_0 ,\data_out[5]_i_51_n_0 ,\data_out[5]_i_52_n_0 ,\data_out[5]_i_53_n_0 ,\data_out[5]_i_54_n_0 ,\data_out[5]_i_55_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \data_out_reg[5]_i_4 
       (.CI(\data_out_reg[5]_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\data_out_reg[5]_i_4_n_0 ,\data_out_reg[5]_i_4_n_1 ,\data_out_reg[5]_i_4_n_2 ,\data_out_reg[5]_i_4_n_3 ,\data_out_reg[5]_i_4_n_4 ,\data_out_reg[5]_i_4_n_5 ,\data_out_reg[5]_i_4_n_6 ,\data_out_reg[5]_i_4_n_7 }),
        .DI({i_reg[31],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_data_out_reg[5]_i_4_O_UNCONNECTED [7:0]),
        .S({\data_out[5]_i_11_n_0 ,\data_out[5]_i_12_n_0 ,\data_out[5]_i_13_n_0 ,\data_out[5]_i_14_n_0 ,\data_out[5]_i_15_n_0 ,\data_out[5]_i_16_n_0 ,\data_out[5]_i_17_n_0 ,\data_out[5]_i_18_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \data_out_reg[5]_i_48 
       (.CI(\data_out[5]_i_59_n_0 ),
        .CI_TOP(1'b0),
        .CO({\data_out_reg[5]_i_48_n_0 ,\data_out_reg[5]_i_48_n_1 ,\data_out_reg[5]_i_48_n_2 ,\data_out_reg[5]_i_48_n_3 ,\data_out_reg[5]_i_48_n_4 ,\data_out_reg[5]_i_48_n_5 ,\data_out_reg[5]_i_48_n_6 ,\data_out_reg[5]_i_48_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\data_out[5]_i_60_n_0 }),
        .O(\NLW_data_out_reg[5]_i_48_O_UNCONNECTED [7:0]),
        .S({\data_out[5]_i_61_n_0 ,\data_out[5]_i_62_n_0 ,\data_out[5]_i_63_n_0 ,\data_out[5]_i_64_n_0 ,\data_out[5]_i_65_n_0 ,\data_out[5]_i_66_n_0 ,\data_out[5]_i_67_n_0 ,\data_out[5]_i_68_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    data_out_valid_i_1
       (.I0(data_in_valid),
        .I1(data_in_ready),
        .I2(done_reg_n_0),
        .O(data_out_valid_i_1_n_0));
  FDCE data_out_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(data_out_valid_i_1_n_0),
        .Q(data_out_valid));
  LUT6 #(
    .INIT(64'hCCCCCCCC20CCCCCC)) 
    done_i_1
       (.I0(done__8),
        .I1(done_reg_n_0),
        .I2(done_reg_i_3_n_0),
        .I3(data_in_ready),
        .I4(data_in_valid),
        .I5(reset),
        .O(done_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000000000B800)) 
    done_i_10
       (.I0(done_i_13_n_0),
        .I1(mod_type[1]),
        .I2(done_i_14_n_0),
        .I3(\data_out[5]_i_20_n_0 ),
        .I4(\data_out[5]_i_21_n_0 ),
        .I5(done_reg_n_0),
        .O(done_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    done_i_11
       (.I0(done_reg_n_0),
        .I1(\data_out[5]_i_21_n_0 ),
        .I2(\data_out[5]_i_20_n_0 ),
        .I3(\data_out[5]_i_43_n_0 ),
        .I4(\data_out[5]_i_45_n_0 ),
        .I5(data_out1_carry__0_n_0),
        .O(data_out_ready20_out));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    done_i_12
       (.I0(done_reg_n_0),
        .I1(\data_out[5]_i_21_n_0 ),
        .I2(\data_out[5]_i_20_n_0 ),
        .I3(\data_out[5]_i_43_n_0 ),
        .I4(\data_out[5]_i_44_n_0 ),
        .I5(\data_out_reg[5]_i_26_n_1 ),
        .O(data_out_ready23_out));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    done_i_13
       (.I0(\data_out[5]_i_43_n_0 ),
        .I1(done_i_15_n_0),
        .I2(i_reg[3]),
        .I3(i_reg[0]),
        .I4(i_reg[1]),
        .I5(i_reg[2]),
        .O(done_i_13_n_0));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    done_i_14
       (.I0(\data_out[5]_i_43_n_0 ),
        .I1(done_i_15_n_0),
        .I2(i_reg[3]),
        .I3(i_reg[2]),
        .I4(i_reg[1]),
        .I5(i_reg[0]),
        .O(done_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    done_i_15
       (.I0(i_reg[4]),
        .I1(i_reg[5]),
        .O(done_i_15_n_0));
  LUT4 #(
    .INIT(16'hFFF2)) 
    done_i_4
       (.I0(mod_type[1]),
        .I1(mod_type[2]),
        .I2(mod_type[0]),
        .I3(\data_out[5]_i_5_n_0 ),
        .O(done_i_4_n_0));
  LUT6 #(
    .INIT(64'hF0F0CCAAFFFFCCFF)) 
    done_i_5
       (.I0(done_i_8_n_0),
        .I1(done_i_9_n_0),
        .I2(done_i_10_n_0),
        .I3(mod_type[1]),
        .I4(mod_type[2]),
        .I5(mod_type[0]),
        .O(done_i_5_n_0));
  LUT5 #(
    .INIT(32'hF2FFF2F2)) 
    done_i_6
       (.I0(mod_type[1]),
        .I1(mod_type[2]),
        .I2(mod_type[0]),
        .I3(\data_out_reg[5]_i_4_n_0 ),
        .I4(\data_out[5]_i_5_n_0 ),
        .O(done_i_6_n_0));
  LUT6 #(
    .INIT(64'hF0CCAAAAFFFFAAFF)) 
    done_i_7
       (.I0(data_out_ready_i_7_n_0),
        .I1(data_out_ready20_out),
        .I2(data_out_ready23_out),
        .I3(mod_type[1]),
        .I4(mod_type[2]),
        .I5(mod_type[0]),
        .O(done_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    done_i_8
       (.I0(\data_out[5]_i_47_n_0 ),
        .I1(i_reg[30]),
        .I2(i_reg[31]),
        .I3(\data_out[5]_i_20_n_0 ),
        .I4(\data_out[5]_i_21_n_0 ),
        .I5(done_reg_n_0),
        .O(done_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    done_i_9
       (.I0(data_out_ready_i_19_n_0),
        .I1(data_out_ready_i_18_n_0),
        .I2(\data_out[5]_i_43_n_0 ),
        .I3(\data_out[5]_i_20_n_0 ),
        .I4(\data_out[5]_i_21_n_0 ),
        .I5(done_reg_n_0),
        .O(done_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    done_reg
       (.C(clk),
        .CE(1'b1),
        .D(done_i_1_n_0),
        .Q(done_reg_n_0),
        .R(1'b0));
  MUXF7 done_reg_i_2
       (.I0(done_i_4_n_0),
        .I1(done_i_5_n_0),
        .O(done__8),
        .S(\data_out[5]_i_7_n_0 ));
  MUXF7 done_reg_i_3
       (.I0(done_i_6_n_0),
        .I1(done_i_7_n_0),
        .O(done_reg_i_3_n_0),
        .S(\data_out[5]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \i[0]_i_1 
       (.I0(done_reg_n_0),
        .I1(data_in_ready),
        .I2(data_in_valid),
        .I3(reset),
        .O(\i[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AB000000)) 
    \i[0]_i_2 
       (.I0(mod_type[0]),
        .I1(mod_type[2]),
        .I2(mod_type[1]),
        .I3(data_in_ready),
        .I4(data_in_valid),
        .I5(reset),
        .O(\i[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_4 
       (.I0(i_reg[0]),
        .O(\i[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[0]_i_3_n_15 ),
        .Q(i_reg[0]),
        .R(\i[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \i_reg[0]_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\i_reg[0]_i_3_n_0 ,\i_reg[0]_i_3_n_1 ,\i_reg[0]_i_3_n_2 ,\i_reg[0]_i_3_n_3 ,\i_reg[0]_i_3_n_4 ,\i_reg[0]_i_3_n_5 ,\i_reg[0]_i_3_n_6 ,\i_reg[0]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\i_reg[0]_i_3_n_8 ,\i_reg[0]_i_3_n_9 ,\i_reg[0]_i_3_n_10 ,\i_reg[0]_i_3_n_11 ,\i_reg[0]_i_3_n_12 ,\i_reg[0]_i_3_n_13 ,\i_reg[0]_i_3_n_14 ,\i_reg[0]_i_3_n_15 }),
        .S({i_reg[7:1],\i[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[10] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[8]_i_1_n_13 ),
        .Q(i_reg[10]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[11] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[8]_i_1_n_12 ),
        .Q(i_reg[11]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[12] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[8]_i_1_n_11 ),
        .Q(i_reg[12]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[13] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[8]_i_1_n_10 ),
        .Q(i_reg[13]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[14] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[8]_i_1_n_9 ),
        .Q(i_reg[14]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[15] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[8]_i_1_n_8 ),
        .Q(i_reg[15]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[16] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[16]_i_1_n_15 ),
        .Q(i_reg[16]),
        .R(\i[0]_i_1_n_0 ));
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
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[16]_i_1_n_14 ),
        .Q(i_reg[17]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[18] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[16]_i_1_n_13 ),
        .Q(i_reg[18]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[19] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[16]_i_1_n_12 ),
        .Q(i_reg[19]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[0]_i_3_n_14 ),
        .Q(i_reg[1]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[20] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[16]_i_1_n_11 ),
        .Q(i_reg[20]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[21] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[16]_i_1_n_10 ),
        .Q(i_reg[21]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[22] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[16]_i_1_n_9 ),
        .Q(i_reg[22]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[23] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[16]_i_1_n_8 ),
        .Q(i_reg[23]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[24] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[24]_i_1_n_15 ),
        .Q(i_reg[24]),
        .R(\i[0]_i_1_n_0 ));
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
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[24]_i_1_n_14 ),
        .Q(i_reg[25]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[26] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[24]_i_1_n_13 ),
        .Q(i_reg[26]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[27] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[24]_i_1_n_12 ),
        .Q(i_reg[27]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[28] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[24]_i_1_n_11 ),
        .Q(i_reg[28]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[29] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[24]_i_1_n_10 ),
        .Q(i_reg[29]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[0]_i_3_n_13 ),
        .Q(i_reg[2]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[30] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[24]_i_1_n_9 ),
        .Q(i_reg[30]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[31] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[24]_i_1_n_8 ),
        .Q(i_reg[31]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[0]_i_3_n_12 ),
        .Q(i_reg[3]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[0]_i_3_n_11 ),
        .Q(i_reg[4]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[0]_i_3_n_10 ),
        .Q(i_reg[5]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[6] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[0]_i_3_n_9 ),
        .Q(i_reg[6]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[7] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[0]_i_3_n_8 ),
        .Q(i_reg[7]),
        .R(\i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[8] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[8]_i_1_n_15 ),
        .Q(i_reg[8]),
        .R(\i[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \i_reg[8]_i_1 
       (.CI(\i_reg[0]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\i_reg[8]_i_1_n_0 ,\i_reg[8]_i_1_n_1 ,\i_reg[8]_i_1_n_2 ,\i_reg[8]_i_1_n_3 ,\i_reg[8]_i_1_n_4 ,\i_reg[8]_i_1_n_5 ,\i_reg[8]_i_1_n_6 ,\i_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[8]_i_1_n_8 ,\i_reg[8]_i_1_n_9 ,\i_reg[8]_i_1_n_10 ,\i_reg[8]_i_1_n_11 ,\i_reg[8]_i_1_n_12 ,\i_reg[8]_i_1_n_13 ,\i_reg[8]_i_1_n_14 ,\i_reg[8]_i_1_n_15 }),
        .S(i_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[9] 
       (.C(clk),
        .CE(\i[0]_i_2_n_0 ),
        .D(\i_reg[8]_i_1_n_14 ),
        .Q(i_reg[9]),
        .R(\i[0]_i_1_n_0 ));
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
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN Design_2_clk, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 672} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value dout} size {attribs {resolve_type generated dependency block_size format long minimum {} maximum {}} value 21} stride {attribs {resolve_type generated dependency block_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency width format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency fractwidth format long minimum {} maximum {}} value 0} signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value true}}}}}}} TDATA_WIDTH 32 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_fdo {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value fdo} enabled {attribs {resolve_type generated dependency fdo_enabled format bool minimum {} maximum {}} value 0} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency fdo_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} field_block_start {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value block_start} enabled {attribs {resolve_type generated dependency block_start_enabled format bool minimum {} maximum {}} value 0} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency block_start_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} field_rdy {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rdy} enabled {attribs {resolve_type generated dependency rdy_enabled format bool minimum {} maximum {}} value 0} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency rdy_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency rdy_bitoffset format long minimum {} maximum {}} value 0}}} field_block_end {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value block_end} enabled {attribs {resolve_type generated dependency block_end_enabled format bool minimum {} maximum {}} value 0} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency block_end_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency block_end_bitoffset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0" *) input data_in_valid;
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
