// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Sep 29 15:18:38 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_Control_unit_top_0_0_sim_netlist.v
// Design      : Design_2_Control_unit_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_unit_top
   (clk,
    reset,
    control_unit_din_data,
    control_unit_din_valid,
    control_unit_end_of_frame,
    control_unit_dout_ready,
    control_unit_enable,
    mod_cod_schemes,
    num_streams,
    ref_distance,
    scrambler_init,
    num_words,
    start_tx,
    phy_src_address,
    phy_dest_address,
    scrambler_din_data,
    scrambler_seed,
    scrambler_din_valid,
    scrambler_din_last,
    scrambler_control_enable,
    scrambler_last_frame,
    encoder_code_rate,
    interleaver_dout_valid,
    interleaver_dout_data,
    interleaver_last_frame,
    interleaver_din_ready,
    mapper_dout_last,
    mapper_selected_mod,
    mapper_din_data,
    mapper_din_valid,
    mapper_din_last,
    dpd_din_valid,
    dpd_din_data_I,
    dpd_din_data_Q,
    multi_din_ready);
  input clk;
  input reset;
  input [31:0]control_unit_din_data;
  input control_unit_din_valid;
  input control_unit_end_of_frame;
  output control_unit_dout_ready;
  output control_unit_enable;
  input [4:0]mod_cod_schemes;
  input [4:0]num_streams;
  input [7:0]ref_distance;
  input [31:1]scrambler_init;
  input [15:0]num_words;
  input start_tx;
  input [4:0]phy_src_address;
  input [4:0]phy_dest_address;
  output [31:0]scrambler_din_data;
  output [31:1]scrambler_seed;
  output scrambler_din_valid;
  output scrambler_din_last;
  output scrambler_control_enable;
  output scrambler_last_frame;
  output [1:0]encoder_code_rate;
  input interleaver_dout_valid;
  input [31:0]interleaver_dout_data;
  input interleaver_last_frame;
  output interleaver_din_ready;
  input mapper_dout_last;
  output [2:0]mapper_selected_mod;
  output [5:0]mapper_din_data;
  output mapper_din_valid;
  output mapper_din_last;
  output dpd_din_valid;
  output [11:0]dpd_din_data_I;
  output [11:0]dpd_din_data_Q;
  output multi_din_ready;

  wire \<const0> ;
  wire clk;
  wire [31:0]control_unit_din_data;
  wire control_unit_din_valid;
  wire control_unit_dout_ready_i_1_n_0;
  wire control_unit_enable;
  wire control_unit_enable_i_1_n_0;
  wire control_unit_enable_i_2_n_0;
  wire control_unit_enable_i_3_n_0;
  wire control_unit_end_of_frame;
  wire \control_unit_states.i[0]_i_1_n_0 ;
  wire \control_unit_states.i[1]_i_1_n_0 ;
  wire \control_unit_states.i[2]_i_1_n_0 ;
  wire \control_unit_states.i[3]_i_2_n_0 ;
  wire \control_unit_states.i[3]_i_3_n_0 ;
  wire \control_unit_states.i[3]_i_4_n_0 ;
  wire \control_unit_states.i_reg_n_0_[0] ;
  wire \control_unit_states.i_reg_n_0_[1] ;
  wire \control_unit_states.i_reg_n_0_[2] ;
  wire \control_unit_states.i_reg_n_0_[3] ;
  wire \control_unit_states.k[0]_i_1_n_0 ;
  wire \control_unit_states.k[1]_i_1_n_0 ;
  wire \control_unit_states.k[2]_i_1_n_0 ;
  wire \control_unit_states.k[3]_i_1_n_0 ;
  wire \control_unit_states.k[4]_i_1_n_0 ;
  wire \control_unit_states.k[4]_i_2_n_0 ;
  wire \control_unit_states.k[5]_i_1_n_0 ;
  wire \control_unit_states.k[5]_i_2_n_0 ;
  wire \control_unit_states.k[6]_i_2_n_0 ;
  wire \control_unit_states.k_reg_n_0_[0] ;
  wire \control_unit_states.k_reg_n_0_[1] ;
  wire \control_unit_states.k_reg_n_0_[2] ;
  wire \control_unit_states.k_reg_n_0_[3] ;
  wire \control_unit_states.k_reg_n_0_[4] ;
  wire \control_unit_states.k_reg_n_0_[5] ;
  wire \control_unit_states.k_reg_n_0_[6] ;
  wire \control_unit_states.n[0]_i_1_n_0 ;
  wire [3:0]\control_unit_states.n_reg ;
  wire data_process_i_1_n_0;
  wire data_process_reg_n_0;
  wire \data_splitter.index[5]_i_1_n_0 ;
  wire \data_splitter.index[5]_i_3_n_0 ;
  wire \data_splitter.index[5]_i_4_n_0 ;
  wire [5:0]\data_splitter.index_reg ;
  wire [11:0]\^dpd_din_data_I ;
  wire dpd_din_data_I1;
  wire \dpd_din_data_I[10]_i_1_n_0 ;
  wire \dpd_din_data_I[10]_i_2_n_0 ;
  wire \dpd_din_data_I[10]_i_3_n_0 ;
  wire \dpd_din_data_I[10]_i_4_n_0 ;
  wire \dpd_din_data_I[10]_i_7_n_0 ;
  wire \dpd_din_data_I[11]_i_1_n_0 ;
  wire \dpd_din_data_I[11]_i_2_n_0 ;
  wire \dpd_din_data_I[11]_i_3_n_0 ;
  wire \dpd_din_data_I[11]_i_4_n_0 ;
  wire \dpd_din_data_I[11]_i_5_n_0 ;
  wire \dpd_din_data_I[11]_i_6_n_0 ;
  wire \dpd_din_data_I_reg[11]_i_7_n_0 ;
  wire \dpd_din_data_I_reg[11]_i_8_n_0 ;
  wire dpd_din_valid;
  wire dpd_din_valid_i_1_n_0;
  wire dpd_din_valid_i_2_n_0;
  wire [1:0]encoder_code_rate;
  wire encoder_code_rate0;
  wire g0_b1__0_n_0;
  wire g0_b1_n_0;
  wire g0_b2__0_n_0;
  wire g0_b2_n_0;
  wire g1_b1__0_n_0;
  wire g1_b1_n_0;
  wire g1_b2__0_n_0;
  wire g1_b2_n_0;
  wire i0;
  wire interleaver_din_ready;
  wire interleaver_din_ready015_out;
  wire interleaver_din_ready_i_2_n_0;
  wire interleaver_din_ready_i_3_n_0;
  wire [31:0]interleaver_dout_data;
  wire interleaver_dout_valid;
  wire interleaver_last_frame;
  wire k0;
  wire [5:0]mapper_din_data;
  wire \mapper_din_data[0]_i_10_n_0 ;
  wire \mapper_din_data[0]_i_11_n_0 ;
  wire \mapper_din_data[0]_i_12_n_0 ;
  wire \mapper_din_data[0]_i_13_n_0 ;
  wire \mapper_din_data[0]_i_14_n_0 ;
  wire \mapper_din_data[0]_i_15_n_0 ;
  wire \mapper_din_data[0]_i_16_n_0 ;
  wire \mapper_din_data[0]_i_17_n_0 ;
  wire \mapper_din_data[0]_i_18_n_0 ;
  wire \mapper_din_data[0]_i_19_n_0 ;
  wire \mapper_din_data[0]_i_1_n_0 ;
  wire \mapper_din_data[0]_i_20_n_0 ;
  wire \mapper_din_data[0]_i_21_n_0 ;
  wire \mapper_din_data[0]_i_22_n_0 ;
  wire \mapper_din_data[0]_i_23_n_0 ;
  wire \mapper_din_data[0]_i_24_n_0 ;
  wire \mapper_din_data[0]_i_25_n_0 ;
  wire \mapper_din_data[0]_i_26_n_0 ;
  wire \mapper_din_data[0]_i_27_n_0 ;
  wire \mapper_din_data[0]_i_28_n_0 ;
  wire \mapper_din_data[0]_i_29_n_0 ;
  wire \mapper_din_data[0]_i_2_n_0 ;
  wire \mapper_din_data[0]_i_30_n_0 ;
  wire \mapper_din_data[0]_i_31_n_0 ;
  wire \mapper_din_data[0]_i_32_n_0 ;
  wire \mapper_din_data[0]_i_33_n_0 ;
  wire \mapper_din_data[0]_i_34_n_0 ;
  wire \mapper_din_data[0]_i_35_n_0 ;
  wire \mapper_din_data[0]_i_36_n_0 ;
  wire \mapper_din_data[0]_i_37_n_0 ;
  wire \mapper_din_data[0]_i_38_n_0 ;
  wire \mapper_din_data[0]_i_39_n_0 ;
  wire \mapper_din_data[0]_i_3_n_0 ;
  wire \mapper_din_data[0]_i_40_n_0 ;
  wire \mapper_din_data[0]_i_41_n_0 ;
  wire \mapper_din_data[0]_i_4_n_0 ;
  wire \mapper_din_data[0]_i_5_n_0 ;
  wire \mapper_din_data[0]_i_6_n_0 ;
  wire \mapper_din_data[0]_i_7_n_0 ;
  wire \mapper_din_data[0]_i_8_n_0 ;
  wire \mapper_din_data[0]_i_9_n_0 ;
  wire \mapper_din_data[1]_i_10_n_0 ;
  wire \mapper_din_data[1]_i_11_n_0 ;
  wire \mapper_din_data[1]_i_12_n_0 ;
  wire \mapper_din_data[1]_i_13_n_0 ;
  wire \mapper_din_data[1]_i_14_n_0 ;
  wire \mapper_din_data[1]_i_15_n_0 ;
  wire \mapper_din_data[1]_i_16_n_0 ;
  wire \mapper_din_data[1]_i_17_n_0 ;
  wire \mapper_din_data[1]_i_18_n_0 ;
  wire \mapper_din_data[1]_i_19_n_0 ;
  wire \mapper_din_data[1]_i_1_n_0 ;
  wire \mapper_din_data[1]_i_20_n_0 ;
  wire \mapper_din_data[1]_i_21_n_0 ;
  wire \mapper_din_data[1]_i_22_n_0 ;
  wire \mapper_din_data[1]_i_23_n_0 ;
  wire \mapper_din_data[1]_i_24_n_0 ;
  wire \mapper_din_data[1]_i_25_n_0 ;
  wire \mapper_din_data[1]_i_26_n_0 ;
  wire \mapper_din_data[1]_i_27_n_0 ;
  wire \mapper_din_data[1]_i_28_n_0 ;
  wire \mapper_din_data[1]_i_2_n_0 ;
  wire \mapper_din_data[1]_i_3_n_0 ;
  wire \mapper_din_data[1]_i_4_n_0 ;
  wire \mapper_din_data[1]_i_5_n_0 ;
  wire \mapper_din_data[1]_i_6_n_0 ;
  wire \mapper_din_data[1]_i_7_n_0 ;
  wire \mapper_din_data[1]_i_8_n_0 ;
  wire \mapper_din_data[1]_i_9_n_0 ;
  wire \mapper_din_data[2]_i_1_n_0 ;
  wire \mapper_din_data[2]_i_2_n_0 ;
  wire \mapper_din_data[2]_i_3_n_0 ;
  wire \mapper_din_data[2]_i_4_n_0 ;
  wire \mapper_din_data[2]_i_5_n_0 ;
  wire \mapper_din_data[2]_i_6_n_0 ;
  wire \mapper_din_data[2]_i_7_n_0 ;
  wire \mapper_din_data[3]_i_10_n_0 ;
  wire \mapper_din_data[3]_i_11_n_0 ;
  wire \mapper_din_data[3]_i_12_n_0 ;
  wire \mapper_din_data[3]_i_13_n_0 ;
  wire \mapper_din_data[3]_i_14_n_0 ;
  wire \mapper_din_data[3]_i_15_n_0 ;
  wire \mapper_din_data[3]_i_16_n_0 ;
  wire \mapper_din_data[3]_i_1_n_0 ;
  wire \mapper_din_data[3]_i_2_n_0 ;
  wire \mapper_din_data[3]_i_3_n_0 ;
  wire \mapper_din_data[3]_i_4_n_0 ;
  wire \mapper_din_data[3]_i_5_n_0 ;
  wire \mapper_din_data[3]_i_6_n_0 ;
  wire \mapper_din_data[3]_i_7_n_0 ;
  wire \mapper_din_data[3]_i_8_n_0 ;
  wire \mapper_din_data[3]_i_9_n_0 ;
  wire \mapper_din_data[4]_i_10_n_0 ;
  wire \mapper_din_data[4]_i_11_n_0 ;
  wire \mapper_din_data[4]_i_12_n_0 ;
  wire \mapper_din_data[4]_i_13_n_0 ;
  wire \mapper_din_data[4]_i_14_n_0 ;
  wire \mapper_din_data[4]_i_1_n_0 ;
  wire \mapper_din_data[4]_i_2_n_0 ;
  wire \mapper_din_data[4]_i_3_n_0 ;
  wire \mapper_din_data[4]_i_4_n_0 ;
  wire \mapper_din_data[4]_i_5_n_0 ;
  wire \mapper_din_data[4]_i_6_n_0 ;
  wire \mapper_din_data[4]_i_7_n_0 ;
  wire \mapper_din_data[4]_i_8_n_0 ;
  wire \mapper_din_data[4]_i_9_n_0 ;
  wire \mapper_din_data[5]_i_10_n_0 ;
  wire \mapper_din_data[5]_i_11_n_0 ;
  wire \mapper_din_data[5]_i_12_n_0 ;
  wire \mapper_din_data[5]_i_13_n_0 ;
  wire \mapper_din_data[5]_i_14_n_0 ;
  wire \mapper_din_data[5]_i_15_n_0 ;
  wire \mapper_din_data[5]_i_16_n_0 ;
  wire \mapper_din_data[5]_i_1_n_0 ;
  wire \mapper_din_data[5]_i_2_n_0 ;
  wire \mapper_din_data[5]_i_3_n_0 ;
  wire \mapper_din_data[5]_i_4_n_0 ;
  wire \mapper_din_data[5]_i_5_n_0 ;
  wire \mapper_din_data[5]_i_6_n_0 ;
  wire \mapper_din_data[5]_i_7_n_0 ;
  wire \mapper_din_data[5]_i_8_n_0 ;
  wire \mapper_din_data[5]_i_9_n_0 ;
  wire mapper_din_last;
  wire mapper_din_last_i_1_n_0;
  wire mapper_din_valid;
  wire mapper_din_valid_i_1_n_0;
  wire mapper_din_valid_i_2_n_0;
  wire mapper_dout_last;
  wire [2:0]mapper_selected_mod;
  wire [4:0]mod_cod_schemes;
  wire multi_din_ready;
  wire [4:0]num_streams;
  wire [15:0]num_words;
  wire [31:0]p_0_in;
  wire [3:1]p_0_in__0;
  wire [5:0]p_0_in__1;
  wire [9:0]p_0_in__2;
  wire p_12_in;
  wire [4:0]phy_dest_address;
  wire [4:0]phy_src_address;
  wire \pilot_I[0]0 ;
  wire pilot_symbols0;
  wire \pilot_symbols[0]_i_10_n_0 ;
  wire \pilot_symbols[0]_i_3_n_0 ;
  wire \pilot_symbols[0]_i_4_n_0 ;
  wire \pilot_symbols[0]_i_5_n_0 ;
  wire \pilot_symbols[0]_i_6_n_0 ;
  wire \pilot_symbols[0]_i_7_n_0 ;
  wire \pilot_symbols[0]_i_8_n_0 ;
  wire \pilot_symbols[0]_i_9_n_0 ;
  wire \pilot_symbols[16]_i_2_n_0 ;
  wire \pilot_symbols[16]_i_3_n_0 ;
  wire \pilot_symbols[16]_i_4_n_0 ;
  wire \pilot_symbols[16]_i_5_n_0 ;
  wire \pilot_symbols[16]_i_6_n_0 ;
  wire \pilot_symbols[16]_i_7_n_0 ;
  wire \pilot_symbols[16]_i_8_n_0 ;
  wire \pilot_symbols[16]_i_9_n_0 ;
  wire \pilot_symbols[24]_i_2_n_0 ;
  wire \pilot_symbols[24]_i_3_n_0 ;
  wire \pilot_symbols[24]_i_4_n_0 ;
  wire \pilot_symbols[24]_i_5_n_0 ;
  wire \pilot_symbols[24]_i_6_n_0 ;
  wire \pilot_symbols[24]_i_7_n_0 ;
  wire \pilot_symbols[24]_i_8_n_0 ;
  wire \pilot_symbols[24]_i_9_n_0 ;
  wire \pilot_symbols[8]_i_2_n_0 ;
  wire \pilot_symbols[8]_i_3_n_0 ;
  wire \pilot_symbols[8]_i_4_n_0 ;
  wire \pilot_symbols[8]_i_5_n_0 ;
  wire \pilot_symbols[8]_i_6_n_0 ;
  wire \pilot_symbols[8]_i_7_n_0 ;
  wire \pilot_symbols[8]_i_8_n_0 ;
  wire \pilot_symbols[8]_i_9_n_0 ;
  wire [6:0]pilot_symbols_reg;
  wire \pilot_symbols_reg[0]_i_2_n_0 ;
  wire \pilot_symbols_reg[0]_i_2_n_1 ;
  wire \pilot_symbols_reg[0]_i_2_n_10 ;
  wire \pilot_symbols_reg[0]_i_2_n_11 ;
  wire \pilot_symbols_reg[0]_i_2_n_12 ;
  wire \pilot_symbols_reg[0]_i_2_n_13 ;
  wire \pilot_symbols_reg[0]_i_2_n_14 ;
  wire \pilot_symbols_reg[0]_i_2_n_15 ;
  wire \pilot_symbols_reg[0]_i_2_n_2 ;
  wire \pilot_symbols_reg[0]_i_2_n_3 ;
  wire \pilot_symbols_reg[0]_i_2_n_4 ;
  wire \pilot_symbols_reg[0]_i_2_n_5 ;
  wire \pilot_symbols_reg[0]_i_2_n_6 ;
  wire \pilot_symbols_reg[0]_i_2_n_7 ;
  wire \pilot_symbols_reg[0]_i_2_n_8 ;
  wire \pilot_symbols_reg[0]_i_2_n_9 ;
  wire \pilot_symbols_reg[16]_i_1_n_0 ;
  wire \pilot_symbols_reg[16]_i_1_n_1 ;
  wire \pilot_symbols_reg[16]_i_1_n_10 ;
  wire \pilot_symbols_reg[16]_i_1_n_11 ;
  wire \pilot_symbols_reg[16]_i_1_n_12 ;
  wire \pilot_symbols_reg[16]_i_1_n_13 ;
  wire \pilot_symbols_reg[16]_i_1_n_14 ;
  wire \pilot_symbols_reg[16]_i_1_n_15 ;
  wire \pilot_symbols_reg[16]_i_1_n_2 ;
  wire \pilot_symbols_reg[16]_i_1_n_3 ;
  wire \pilot_symbols_reg[16]_i_1_n_4 ;
  wire \pilot_symbols_reg[16]_i_1_n_5 ;
  wire \pilot_symbols_reg[16]_i_1_n_6 ;
  wire \pilot_symbols_reg[16]_i_1_n_7 ;
  wire \pilot_symbols_reg[16]_i_1_n_8 ;
  wire \pilot_symbols_reg[16]_i_1_n_9 ;
  wire \pilot_symbols_reg[24]_i_1_n_1 ;
  wire \pilot_symbols_reg[24]_i_1_n_10 ;
  wire \pilot_symbols_reg[24]_i_1_n_11 ;
  wire \pilot_symbols_reg[24]_i_1_n_12 ;
  wire \pilot_symbols_reg[24]_i_1_n_13 ;
  wire \pilot_symbols_reg[24]_i_1_n_14 ;
  wire \pilot_symbols_reg[24]_i_1_n_15 ;
  wire \pilot_symbols_reg[24]_i_1_n_2 ;
  wire \pilot_symbols_reg[24]_i_1_n_3 ;
  wire \pilot_symbols_reg[24]_i_1_n_4 ;
  wire \pilot_symbols_reg[24]_i_1_n_5 ;
  wire \pilot_symbols_reg[24]_i_1_n_6 ;
  wire \pilot_symbols_reg[24]_i_1_n_7 ;
  wire \pilot_symbols_reg[24]_i_1_n_8 ;
  wire \pilot_symbols_reg[24]_i_1_n_9 ;
  wire \pilot_symbols_reg[8]_i_1_n_0 ;
  wire \pilot_symbols_reg[8]_i_1_n_1 ;
  wire \pilot_symbols_reg[8]_i_1_n_10 ;
  wire \pilot_symbols_reg[8]_i_1_n_11 ;
  wire \pilot_symbols_reg[8]_i_1_n_12 ;
  wire \pilot_symbols_reg[8]_i_1_n_13 ;
  wire \pilot_symbols_reg[8]_i_1_n_14 ;
  wire \pilot_symbols_reg[8]_i_1_n_15 ;
  wire \pilot_symbols_reg[8]_i_1_n_2 ;
  wire \pilot_symbols_reg[8]_i_1_n_3 ;
  wire \pilot_symbols_reg[8]_i_1_n_4 ;
  wire \pilot_symbols_reg[8]_i_1_n_5 ;
  wire \pilot_symbols_reg[8]_i_1_n_6 ;
  wire \pilot_symbols_reg[8]_i_1_n_7 ;
  wire \pilot_symbols_reg[8]_i_1_n_8 ;
  wire \pilot_symbols_reg[8]_i_1_n_9 ;
  wire [31:7]pilot_symbols_reg__0;
  wire \preamble_lts_ROM[0]0 ;
  wire [7:0]ref_distance;
  wire reset;
  wire scrambler_control_enable;
  wire scrambler_control_enable_i_1_n_0;
  wire [31:0]scrambler_din_data;
  wire \scrambler_din_data[0]_i_2_n_0 ;
  wire \scrambler_din_data[10]_i_2_n_0 ;
  wire \scrambler_din_data[11]_i_2_n_0 ;
  wire \scrambler_din_data[11]_i_3_n_0 ;
  wire \scrambler_din_data[1]_i_2_n_0 ;
  wire \scrambler_din_data[2]_i_2_n_0 ;
  wire \scrambler_din_data[31]_i_2_n_0 ;
  wire \scrambler_din_data[31]_i_3_n_0 ;
  wire \scrambler_din_data[31]_i_4_n_0 ;
  wire \scrambler_din_data[31]_i_5_n_0 ;
  wire \scrambler_din_data[3]_i_2_n_0 ;
  wire \scrambler_din_data[4]_i_2_n_0 ;
  wire \scrambler_din_data[5]_i_2_n_0 ;
  wire \scrambler_din_data[6]_i_2_n_0 ;
  wire \scrambler_din_data[7]_i_2_n_0 ;
  wire \scrambler_din_data[8]_i_2_n_0 ;
  wire \scrambler_din_data[9]_i_2_n_0 ;
  wire scrambler_din_last;
  wire scrambler_din_last_i_1_n_0;
  wire scrambler_din_valid;
  wire scrambler_din_valid_i_1_n_0;
  wire [31:1]scrambler_init;
  wire scrambler_last_frame;
  wire scrambler_last_frame_i_1_n_0;
  wire [31:1]scrambler_seed;
  wire signal_field_en;
  wire signal_field_en_i_1_n_0;
  wire [31:0]splitter_data_in;
  wire start_tx;
  wire [2:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_10_n_0 ;
  wire \state[2]_i_11_n_0 ;
  wire \state[2]_i_12_n_0 ;
  wire \state[2]_i_13_n_0 ;
  wire \state[2]_i_14_n_0 ;
  wire \state[2]_i_15_n_0 ;
  wire \state[2]_i_16_n_0 ;
  wire \state[2]_i_17_n_0 ;
  wire \state[2]_i_18_n_0 ;
  wire \state[2]_i_19_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[2]_i_6_n_0 ;
  wire \state[2]_i_7_n_0 ;
  wire \state[2]_i_8_n_0 ;
  wire \state[2]_i_9_n_0 ;
  wire \state_reg[2]_i_3_n_4 ;
  wire \state_reg[2]_i_3_n_5 ;
  wire \state_reg[2]_i_3_n_6 ;
  wire \state_reg[2]_i_3_n_7 ;
  wire \state_reg[2]_i_5_n_0 ;
  wire \state_reg[2]_i_5_n_1 ;
  wire \state_reg[2]_i_5_n_2 ;
  wire \state_reg[2]_i_5_n_3 ;
  wire \state_reg[2]_i_5_n_4 ;
  wire \state_reg[2]_i_5_n_5 ;
  wire \state_reg[2]_i_5_n_6 ;
  wire \state_reg[2]_i_5_n_7 ;
  wire \symbol_counter[5]_i_2_n_0 ;
  wire \symbol_counter[6]_i_2_n_0 ;
  wire \symbol_counter[6]_i_3_n_0 ;
  wire \symbol_counter[9]_i_2_n_0 ;
  wire [9:0]symbol_counter_reg;
  wire temp_i_1_n_0;
  wire temp_i_2_n_0;
  wire temp_i_3_n_0;
  wire temp_i_4_n_0;
  wire temp_i_5_n_0;
  wire temp_i_6_n_0;
  wire temp_reg_n_0;
  wire [7:7]\NLW_pilot_symbols_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_state_reg[2]_i_3_CO_UNCONNECTED ;
  wire [7:0]\NLW_state_reg[2]_i_3_O_UNCONNECTED ;
  wire [7:0]\NLW_state_reg[2]_i_5_O_UNCONNECTED ;

  assign control_unit_dout_ready = multi_din_ready;
  assign dpd_din_data_I[11] = \^dpd_din_data_I [11];
  assign dpd_din_data_I[10] = \^dpd_din_data_I [9];
  assign dpd_din_data_I[9] = \^dpd_din_data_I [9];
  assign dpd_din_data_I[8] = \^dpd_din_data_I [9];
  assign dpd_din_data_I[7] = \^dpd_din_data_I [9];
  assign dpd_din_data_I[6] = \^dpd_din_data_I [9];
  assign dpd_din_data_I[5] = \^dpd_din_data_I [9];
  assign dpd_din_data_I[4] = \^dpd_din_data_I [9];
  assign dpd_din_data_I[3] = \^dpd_din_data_I [9];
  assign dpd_din_data_I[2] = \^dpd_din_data_I [9];
  assign dpd_din_data_I[1] = \^dpd_din_data_I [9];
  assign dpd_din_data_I[0] = \^dpd_din_data_I [0];
  assign dpd_din_data_Q[11] = \<const0> ;
  assign dpd_din_data_Q[10] = \<const0> ;
  assign dpd_din_data_Q[9] = \<const0> ;
  assign dpd_din_data_Q[8] = \<const0> ;
  assign dpd_din_data_Q[7] = \<const0> ;
  assign dpd_din_data_Q[6] = \<const0> ;
  assign dpd_din_data_Q[5] = \<const0> ;
  assign dpd_din_data_Q[4] = \<const0> ;
  assign dpd_din_data_Q[3] = \<const0> ;
  assign dpd_din_data_Q[2] = \<const0> ;
  assign dpd_din_data_Q[1] = \<const0> ;
  assign dpd_din_data_Q[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    control_unit_dout_ready_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(control_unit_dout_ready_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    control_unit_dout_ready_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(control_unit_dout_ready_i_1_n_0),
        .Q(multi_din_ready));
  LUT6 #(
    .INIT(64'hFFFFFF7400000074)) 
    control_unit_enable_i_1
       (.I0(control_unit_enable_i_2_n_0),
        .I1(state[2]),
        .I2(start_tx),
        .I3(control_unit_enable_i_3_n_0),
        .I4(reset),
        .I5(control_unit_enable),
        .O(control_unit_enable_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    control_unit_enable_i_2
       (.I0(dpd_din_data_I1),
        .I1(mapper_dout_last),
        .O(control_unit_enable_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hE)) 
    control_unit_enable_i_3
       (.I0(state[0]),
        .I1(state[1]),
        .O(control_unit_enable_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    control_unit_enable_reg
       (.C(clk),
        .CE(1'b1),
        .D(control_unit_enable_i_1_n_0),
        .Q(control_unit_enable),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h11133333)) 
    \control_unit_states.i[0]_i_1 
       (.I0(state[0]),
        .I1(\control_unit_states.i_reg_n_0_[0] ),
        .I2(\control_unit_states.i_reg_n_0_[2] ),
        .I3(\control_unit_states.i_reg_n_0_[1] ),
        .I4(\control_unit_states.i_reg_n_0_[3] ),
        .O(\control_unit_states.i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h070F7070)) 
    \control_unit_states.i[1]_i_1 
       (.I0(\control_unit_states.i_reg_n_0_[3] ),
        .I1(state[0]),
        .I2(\control_unit_states.i_reg_n_0_[1] ),
        .I3(\control_unit_states.i_reg_n_0_[2] ),
        .I4(\control_unit_states.i_reg_n_0_[0] ),
        .O(\control_unit_states.i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h07770888)) 
    \control_unit_states.i[2]_i_1 
       (.I0(\control_unit_states.i_reg_n_0_[0] ),
        .I1(\control_unit_states.i_reg_n_0_[1] ),
        .I2(\control_unit_states.i_reg_n_0_[3] ),
        .I3(state[0]),
        .I4(\control_unit_states.i_reg_n_0_[2] ),
        .O(\control_unit_states.i[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002FF0202)) 
    \control_unit_states.i[3]_i_1 
       (.I0(\dpd_din_data_I[11]_i_2_n_0 ),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\control_unit_states.i[3]_i_3_n_0 ),
        .I4(\control_unit_states.i[3]_i_4_n_0 ),
        .I5(reset),
        .O(i0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h05807F80)) 
    \control_unit_states.i[3]_i_2 
       (.I0(\control_unit_states.i_reg_n_0_[1] ),
        .I1(\control_unit_states.i_reg_n_0_[0] ),
        .I2(\control_unit_states.i_reg_n_0_[2] ),
        .I3(\control_unit_states.i_reg_n_0_[3] ),
        .I4(state[0]),
        .O(\control_unit_states.i[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \control_unit_states.i[3]_i_3 
       (.I0(\dpd_din_data_I[11]_i_4_n_0 ),
        .I1(\control_unit_states.k_reg_n_0_[6] ),
        .O(\control_unit_states.i[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \control_unit_states.i[3]_i_4 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(\control_unit_states.i_reg_n_0_[3] ),
        .I4(\control_unit_states.i_reg_n_0_[1] ),
        .I5(\control_unit_states.i_reg_n_0_[2] ),
        .O(\control_unit_states.i[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \control_unit_states.i_reg[0] 
       (.C(clk),
        .CE(i0),
        .D(\control_unit_states.i[0]_i_1_n_0 ),
        .Q(\control_unit_states.i_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \control_unit_states.i_reg[1] 
       (.C(clk),
        .CE(i0),
        .D(\control_unit_states.i[1]_i_1_n_0 ),
        .Q(\control_unit_states.i_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \control_unit_states.i_reg[2] 
       (.C(clk),
        .CE(i0),
        .D(\control_unit_states.i[2]_i_1_n_0 ),
        .Q(\control_unit_states.i_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \control_unit_states.i_reg[3] 
       (.C(clk),
        .CE(i0),
        .D(\control_unit_states.i[3]_i_2_n_0 ),
        .Q(\control_unit_states.i_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \control_unit_states.k[0]_i_1 
       (.I0(state[0]),
        .I1(\control_unit_states.k_reg_n_0_[6] ),
        .I2(\control_unit_states.k_reg_n_0_[0] ),
        .O(\control_unit_states.k[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0770)) 
    \control_unit_states.k[1]_i_1 
       (.I0(\control_unit_states.k_reg_n_0_[6] ),
        .I1(state[0]),
        .I2(\control_unit_states.k_reg_n_0_[0] ),
        .I3(\control_unit_states.k_reg_n_0_[1] ),
        .O(\control_unit_states.k[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h07777000)) 
    \control_unit_states.k[2]_i_1 
       (.I0(\control_unit_states.k_reg_n_0_[6] ),
        .I1(state[0]),
        .I2(\control_unit_states.k_reg_n_0_[1] ),
        .I3(\control_unit_states.k_reg_n_0_[0] ),
        .I4(\control_unit_states.k_reg_n_0_[2] ),
        .O(\control_unit_states.k[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h007F7F7F00808080)) 
    \control_unit_states.k[3]_i_1 
       (.I0(\control_unit_states.k_reg_n_0_[1] ),
        .I1(\control_unit_states.k_reg_n_0_[0] ),
        .I2(\control_unit_states.k_reg_n_0_[2] ),
        .I3(state[0]),
        .I4(\control_unit_states.k_reg_n_0_[6] ),
        .I5(\control_unit_states.k_reg_n_0_[3] ),
        .O(\control_unit_states.k[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \control_unit_states.k[4]_i_1 
       (.I0(\control_unit_states.k_reg_n_0_[2] ),
        .I1(\control_unit_states.k_reg_n_0_[0] ),
        .I2(\control_unit_states.k_reg_n_0_[1] ),
        .I3(\control_unit_states.k_reg_n_0_[3] ),
        .I4(\control_unit_states.k[4]_i_2_n_0 ),
        .I5(\control_unit_states.k_reg_n_0_[4] ),
        .O(\control_unit_states.k[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \control_unit_states.k[4]_i_2 
       (.I0(\control_unit_states.k_reg_n_0_[6] ),
        .I1(state[0]),
        .O(\control_unit_states.k[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h2A15)) 
    \control_unit_states.k[5]_i_1 
       (.I0(\control_unit_states.k[5]_i_2_n_0 ),
        .I1(state[0]),
        .I2(\control_unit_states.k_reg_n_0_[6] ),
        .I3(\control_unit_states.k_reg_n_0_[5] ),
        .O(\control_unit_states.k[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \control_unit_states.k[5]_i_2 
       (.I0(\control_unit_states.k_reg_n_0_[3] ),
        .I1(\control_unit_states.k_reg_n_0_[1] ),
        .I2(\control_unit_states.k_reg_n_0_[0] ),
        .I3(\control_unit_states.k_reg_n_0_[2] ),
        .I4(\control_unit_states.k_reg_n_0_[4] ),
        .O(\control_unit_states.k[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040406)) 
    \control_unit_states.k[6]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(\control_unit_states.i_reg_n_0_[3] ),
        .I4(dpd_din_valid_i_2_n_0),
        .I5(reset),
        .O(k0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \control_unit_states.k[6]_i_2 
       (.I0(\dpd_din_data_I[11]_i_4_n_0 ),
        .I1(\control_unit_states.k_reg_n_0_[6] ),
        .I2(state[0]),
        .O(\control_unit_states.k[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \control_unit_states.k_reg[0] 
       (.C(clk),
        .CE(k0),
        .D(\control_unit_states.k[0]_i_1_n_0 ),
        .Q(\control_unit_states.k_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \control_unit_states.k_reg[1] 
       (.C(clk),
        .CE(k0),
        .D(\control_unit_states.k[1]_i_1_n_0 ),
        .Q(\control_unit_states.k_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \control_unit_states.k_reg[2] 
       (.C(clk),
        .CE(k0),
        .D(\control_unit_states.k[2]_i_1_n_0 ),
        .Q(\control_unit_states.k_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \control_unit_states.k_reg[3] 
       (.C(clk),
        .CE(k0),
        .D(\control_unit_states.k[3]_i_1_n_0 ),
        .Q(\control_unit_states.k_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \control_unit_states.k_reg[4] 
       (.C(clk),
        .CE(k0),
        .D(\control_unit_states.k[4]_i_1_n_0 ),
        .Q(\control_unit_states.k_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \control_unit_states.k_reg[5] 
       (.C(clk),
        .CE(k0),
        .D(\control_unit_states.k[5]_i_1_n_0 ),
        .Q(\control_unit_states.k_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \control_unit_states.k_reg[6] 
       (.C(clk),
        .CE(k0),
        .D(\control_unit_states.k[6]_i_2_n_0 ),
        .Q(\control_unit_states.k_reg_n_0_[6] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \control_unit_states.n[0]_i_1 
       (.I0(\control_unit_states.n_reg [3]),
        .I1(\control_unit_states.n_reg [0]),
        .O(\control_unit_states.n[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \control_unit_states.n[1]_i_1 
       (.I0(\control_unit_states.n_reg [3]),
        .I1(\control_unit_states.n_reg [0]),
        .I2(\control_unit_states.n_reg [1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \control_unit_states.n[2]_i_1 
       (.I0(\control_unit_states.n_reg [0]),
        .I1(\control_unit_states.n_reg [1]),
        .I2(\control_unit_states.n_reg [2]),
        .I3(\control_unit_states.n_reg [3]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \control_unit_states.n[3]_i_1 
       (.I0(\control_unit_states.n_reg [3]),
        .I1(\control_unit_states.n_reg [2]),
        .I2(\control_unit_states.n_reg [1]),
        .I3(\control_unit_states.n_reg [0]),
        .O(p_0_in__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \control_unit_states.n_reg[0] 
       (.C(clk),
        .CE(encoder_code_rate0),
        .D(\control_unit_states.n[0]_i_1_n_0 ),
        .Q(\control_unit_states.n_reg [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \control_unit_states.n_reg[1] 
       (.C(clk),
        .CE(encoder_code_rate0),
        .D(p_0_in__0[1]),
        .Q(\control_unit_states.n_reg [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \control_unit_states.n_reg[2] 
       (.C(clk),
        .CE(encoder_code_rate0),
        .D(p_0_in__0[2]),
        .Q(\control_unit_states.n_reg [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \control_unit_states.n_reg[3] 
       (.C(clk),
        .CE(encoder_code_rate0),
        .D(p_0_in__0[3]),
        .Q(\control_unit_states.n_reg [3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFF00FB00)) 
    data_process_i_1
       (.I0(interleaver_din_ready_i_3_n_0),
        .I1(temp_reg_n_0),
        .I2(interleaver_dout_valid),
        .I3(data_process_reg_n_0),
        .I4(reset),
        .O(data_process_i_1_n_0));
  FDSE #(
    .INIT(1'b0)) 
    data_process_reg
       (.C(clk),
        .CE(1'b1),
        .D(data_process_i_1_n_0),
        .Q(data_process_reg_n_0),
        .S(interleaver_din_ready015_out));
  LUT3 #(
    .INIT(8'h04)) 
    \data_splitter.index[0]_i_1 
       (.I0(interleaver_dout_valid),
        .I1(data_process_reg_n_0),
        .I2(\data_splitter.index_reg [0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \data_splitter.index[1]_i_1 
       (.I0(data_process_reg_n_0),
        .I1(interleaver_dout_valid),
        .I2(\data_splitter.index_reg [0]),
        .I3(\data_splitter.index_reg [1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \data_splitter.index[2]_i_1 
       (.I0(data_process_reg_n_0),
        .I1(interleaver_dout_valid),
        .I2(\data_splitter.index_reg [1]),
        .I3(\data_splitter.index_reg [0]),
        .I4(\data_splitter.index_reg [2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h007800F0)) 
    \data_splitter.index[3]_i_1 
       (.I0(\data_splitter.index_reg [0]),
        .I1(\data_splitter.index_reg [1]),
        .I2(\data_splitter.index_reg [3]),
        .I3(\data_splitter.index[5]_i_4_n_0 ),
        .I4(\data_splitter.index_reg [2]),
        .O(p_0_in__1[3]));
  LUT6 #(
    .INIT(64'h1222222222222222)) 
    \data_splitter.index[4]_i_1 
       (.I0(\data_splitter.index_reg [4]),
        .I1(\data_splitter.index[5]_i_4_n_0 ),
        .I2(\data_splitter.index_reg [3]),
        .I3(\data_splitter.index_reg [2]),
        .I4(\data_splitter.index_reg [0]),
        .I5(\data_splitter.index_reg [1]),
        .O(p_0_in__1[4]));
  LUT3 #(
    .INIT(8'h14)) 
    \data_splitter.index[5]_i_1 
       (.I0(temp_reg_n_0),
        .I1(interleaver_dout_valid),
        .I2(data_process_reg_n_0),
        .O(\data_splitter.index[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C6CCCCCC)) 
    \data_splitter.index[5]_i_2 
       (.I0(\data_splitter.index_reg [4]),
        .I1(\data_splitter.index_reg [5]),
        .I2(\data_splitter.index[5]_i_3_n_0 ),
        .I3(\data_splitter.index_reg [2]),
        .I4(\data_splitter.index_reg [3]),
        .I5(\data_splitter.index[5]_i_4_n_0 ),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \data_splitter.index[5]_i_3 
       (.I0(\data_splitter.index_reg [0]),
        .I1(\data_splitter.index_reg [1]),
        .O(\data_splitter.index[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \data_splitter.index[5]_i_4 
       (.I0(data_process_reg_n_0),
        .I1(interleaver_dout_valid),
        .I2(temp_reg_n_0),
        .O(\data_splitter.index[5]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_splitter.index_reg[0] 
       (.C(clk),
        .CE(\data_splitter.index[5]_i_1_n_0 ),
        .CLR(reset),
        .D(p_0_in__1[0]),
        .Q(\data_splitter.index_reg [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_splitter.index_reg[1] 
       (.C(clk),
        .CE(\data_splitter.index[5]_i_1_n_0 ),
        .CLR(reset),
        .D(p_0_in__1[1]),
        .Q(\data_splitter.index_reg [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_splitter.index_reg[2] 
       (.C(clk),
        .CE(\data_splitter.index[5]_i_1_n_0 ),
        .CLR(reset),
        .D(p_0_in__1[2]),
        .Q(\data_splitter.index_reg [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_splitter.index_reg[3] 
       (.C(clk),
        .CE(\data_splitter.index[5]_i_1_n_0 ),
        .CLR(reset),
        .D(p_0_in__1[3]),
        .Q(\data_splitter.index_reg [3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_splitter.index_reg[4] 
       (.C(clk),
        .CE(\data_splitter.index[5]_i_1_n_0 ),
        .CLR(reset),
        .D(p_0_in__1[4]),
        .Q(\data_splitter.index_reg [4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_splitter.index_reg[5] 
       (.C(clk),
        .CE(\data_splitter.index[5]_i_1_n_0 ),
        .CLR(reset),
        .D(p_0_in__1[5]),
        .Q(\data_splitter.index_reg [5]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEAAA)) 
    \dpd_din_data_I[10]_i_1 
       (.I0(\dpd_din_data_I[10]_i_2_n_0 ),
        .I1(\dpd_din_data_I[11]_i_4_n_0 ),
        .I2(\dpd_din_data_I[10]_i_3_n_0 ),
        .I3(state[0]),
        .I4(state[1]),
        .I5(state[2]),
        .O(\dpd_din_data_I[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF08080808080808)) 
    \dpd_din_data_I[10]_i_2 
       (.I0(\dpd_din_data_I[10]_i_4_n_0 ),
        .I1(\pilot_I[0]0 ),
        .I2(control_unit_enable_i_2_n_0),
        .I3(\control_unit_states.i[3]_i_3_n_0 ),
        .I4(\control_unit_states.i[3]_i_4_n_0 ),
        .I5(\preamble_lts_ROM[0]0 ),
        .O(\dpd_din_data_I[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4111144400000000)) 
    \dpd_din_data_I[10]_i_3 
       (.I0(\control_unit_states.k_reg_n_0_[6] ),
        .I1(\control_unit_states.k_reg_n_0_[1] ),
        .I2(\control_unit_states.k_reg_n_0_[4] ),
        .I3(\control_unit_states.k_reg_n_0_[5] ),
        .I4(\control_unit_states.k_reg_n_0_[3] ),
        .I5(\dpd_din_data_I[10]_i_7_n_0 ),
        .O(\dpd_din_data_I[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \dpd_din_data_I[10]_i_4 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(\dpd_din_data_I[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \dpd_din_data_I[10]_i_7 
       (.I0(\control_unit_states.i_reg_n_0_[2] ),
        .I1(\control_unit_states.i_reg_n_0_[1] ),
        .I2(\control_unit_states.i_reg_n_0_[3] ),
        .O(\dpd_din_data_I[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEEFE)) 
    \dpd_din_data_I[11]_i_1 
       (.I0(\dpd_din_data_I[11]_i_2_n_0 ),
        .I1(\dpd_din_data_I[11]_i_3_n_0 ),
        .I2(\control_unit_states.k_reg_n_0_[6] ),
        .I3(\dpd_din_data_I[11]_i_4_n_0 ),
        .I4(state[2]),
        .I5(\dpd_din_data_I[11]_i_5_n_0 ),
        .O(\dpd_din_data_I[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FD550000)) 
    \dpd_din_data_I[11]_i_2 
       (.I0(\dpd_din_data_I[11]_i_4_n_0 ),
        .I1(\control_unit_states.i_reg_n_0_[2] ),
        .I2(\control_unit_states.i_reg_n_0_[1] ),
        .I3(\control_unit_states.i_reg_n_0_[3] ),
        .I4(state[0]),
        .I5(\control_unit_states.k_reg_n_0_[6] ),
        .O(\dpd_din_data_I[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFCFCFCFCFCF8)) 
    \dpd_din_data_I[11]_i_3 
       (.I0(control_unit_enable_i_2_n_0),
        .I1(state[2]),
        .I2(\dpd_din_data_I[11]_i_6_n_0 ),
        .I3(\dpd_din_data_I_reg[11]_i_7_n_0 ),
        .I4(state[1]),
        .I5(state[0]),
        .O(\dpd_din_data_I[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \dpd_din_data_I[11]_i_4 
       (.I0(\control_unit_states.k_reg_n_0_[4] ),
        .I1(\control_unit_states.k_reg_n_0_[2] ),
        .I2(\control_unit_states.k_reg_n_0_[0] ),
        .I3(\control_unit_states.k_reg_n_0_[1] ),
        .I4(\control_unit_states.k_reg_n_0_[3] ),
        .I5(\control_unit_states.k_reg_n_0_[5] ),
        .O(\dpd_din_data_I[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000FF000000EF)) 
    \dpd_din_data_I[11]_i_5 
       (.I0(\control_unit_states.i_reg_n_0_[3] ),
        .I1(dpd_din_valid_i_2_n_0),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\dpd_din_data_I_reg[11]_i_8_n_0 ),
        .O(\dpd_din_data_I[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h6A950000)) 
    \dpd_din_data_I[11]_i_6 
       (.I0(\control_unit_states.k_reg_n_0_[3] ),
        .I1(\control_unit_states.k_reg_n_0_[5] ),
        .I2(\control_unit_states.k_reg_n_0_[4] ),
        .I3(\control_unit_states.k_reg_n_0_[1] ),
        .I4(state[0]),
        .O(\dpd_din_data_I[11]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dpd_din_data_I_reg[0] 
       (.C(clk),
        .CE(p_12_in),
        .D(1'b1),
        .Q(\^dpd_din_data_I [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dpd_din_data_I_reg[10] 
       (.C(clk),
        .CE(p_12_in),
        .D(\dpd_din_data_I[10]_i_1_n_0 ),
        .Q(\^dpd_din_data_I [9]),
        .R(1'b0));
  MUXF7 \dpd_din_data_I_reg[10]_i_5 
       (.I0(g0_b1_n_0),
        .I1(g1_b1_n_0),
        .O(\pilot_I[0]0 ),
        .S(pilot_symbols_reg[6]));
  MUXF7 \dpd_din_data_I_reg[10]_i_6 
       (.I0(g0_b1__0_n_0),
        .I1(g1_b1__0_n_0),
        .O(\preamble_lts_ROM[0]0 ),
        .S(\control_unit_states.k_reg_n_0_[6] ));
  FDRE #(
    .INIT(1'b0)) 
    \dpd_din_data_I_reg[11] 
       (.C(clk),
        .CE(p_12_in),
        .D(\dpd_din_data_I[11]_i_1_n_0 ),
        .Q(\^dpd_din_data_I [11]),
        .R(1'b0));
  MUXF7 \dpd_din_data_I_reg[11]_i_7 
       (.I0(g0_b2_n_0),
        .I1(g1_b2_n_0),
        .O(\dpd_din_data_I_reg[11]_i_7_n_0 ),
        .S(pilot_symbols_reg[6]));
  MUXF7 \dpd_din_data_I_reg[11]_i_8 
       (.I0(g0_b2__0_n_0),
        .I1(g1_b2__0_n_0),
        .O(\dpd_din_data_I_reg[11]_i_8_n_0 ),
        .S(\control_unit_states.k_reg_n_0_[6] ));
  LUT6 #(
    .INIT(64'h010001300130013C)) 
    dpd_din_valid_i_1
       (.I0(control_unit_enable_i_2_n_0),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\control_unit_states.i_reg_n_0_[3] ),
        .I5(dpd_din_valid_i_2_n_0),
        .O(dpd_din_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hE)) 
    dpd_din_valid_i_2
       (.I0(\control_unit_states.i_reg_n_0_[1] ),
        .I1(\control_unit_states.i_reg_n_0_[2] ),
        .O(dpd_din_valid_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    dpd_din_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(dpd_din_valid_i_1_n_0),
        .Q(dpd_din_valid));
  LUT4 #(
    .INIT(16'h1000)) 
    \encoder_code_rate[1]_i_1 
       (.I0(state[2]),
        .I1(reset),
        .I2(state[1]),
        .I3(state[0]),
        .O(encoder_code_rate0));
  FDRE #(
    .INIT(1'b0)) 
    \encoder_code_rate_reg[0] 
       (.C(clk),
        .CE(encoder_code_rate0),
        .D(mod_cod_schemes[0]),
        .Q(encoder_code_rate[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \encoder_code_rate_reg[1] 
       (.C(clk),
        .CE(encoder_code_rate0),
        .D(mod_cod_schemes[1]),
        .Q(encoder_code_rate[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h926EFBFA8391B4B6)) 
    g0_b1
       (.I0(pilot_symbols_reg[0]),
        .I1(pilot_symbols_reg[1]),
        .I2(pilot_symbols_reg[2]),
        .I3(pilot_symbols_reg[3]),
        .I4(pilot_symbols_reg[4]),
        .I5(pilot_symbols_reg[5]),
        .O(g0_b1_n_0));
  LUT6 #(
    .INIT(64'h5455BD96FE28E8DF)) 
    g0_b1__0
       (.I0(\control_unit_states.k_reg_n_0_[0] ),
        .I1(\control_unit_states.k_reg_n_0_[1] ),
        .I2(\control_unit_states.k_reg_n_0_[2] ),
        .I3(\control_unit_states.k_reg_n_0_[3] ),
        .I4(\control_unit_states.k_reg_n_0_[4] ),
        .I5(\control_unit_states.k_reg_n_0_[5] ),
        .O(g0_b1__0_n_0));
  LUT6 #(
    .INIT(64'h6D9104057C6E4B49)) 
    g0_b2
       (.I0(pilot_symbols_reg[0]),
        .I1(pilot_symbols_reg[1]),
        .I2(pilot_symbols_reg[2]),
        .I3(pilot_symbols_reg[3]),
        .I4(pilot_symbols_reg[4]),
        .I5(pilot_symbols_reg[5]),
        .O(g0_b2_n_0));
  LUT6 #(
    .INIT(64'hABAA426901D71720)) 
    g0_b2__0
       (.I0(\control_unit_states.k_reg_n_0_[0] ),
        .I1(\control_unit_states.k_reg_n_0_[1] ),
        .I2(\control_unit_states.k_reg_n_0_[2] ),
        .I3(\control_unit_states.k_reg_n_0_[3] ),
        .I4(\control_unit_states.k_reg_n_0_[4] ),
        .I5(\control_unit_states.k_reg_n_0_[5] ),
        .O(g0_b2__0_n_0));
  LUT6 #(
    .INIT(64'h344C809BD21506D2)) 
    g1_b1
       (.I0(pilot_symbols_reg[0]),
        .I1(pilot_symbols_reg[1]),
        .I2(pilot_symbols_reg[2]),
        .I3(pilot_symbols_reg[3]),
        .I4(pilot_symbols_reg[4]),
        .I5(pilot_symbols_reg[5]),
        .O(g1_b1_n_0));
  LUT6 #(
    .INIT(64'h3C4BBB6C6D958D5D)) 
    g1_b1__0
       (.I0(\control_unit_states.k_reg_n_0_[0] ),
        .I1(\control_unit_states.k_reg_n_0_[1] ),
        .I2(\control_unit_states.k_reg_n_0_[2] ),
        .I3(\control_unit_states.k_reg_n_0_[3] ),
        .I4(\control_unit_states.k_reg_n_0_[4] ),
        .I5(\control_unit_states.k_reg_n_0_[5] ),
        .O(g1_b1__0_n_0));
  LUT6 #(
    .INIT(64'hCBB37F642DEAF92D)) 
    g1_b2
       (.I0(pilot_symbols_reg[0]),
        .I1(pilot_symbols_reg[1]),
        .I2(pilot_symbols_reg[2]),
        .I3(pilot_symbols_reg[3]),
        .I4(pilot_symbols_reg[4]),
        .I5(pilot_symbols_reg[5]),
        .O(g1_b2_n_0));
  LUT6 #(
    .INIT(64'hC3B44493926A72A2)) 
    g1_b2__0
       (.I0(\control_unit_states.k_reg_n_0_[0] ),
        .I1(\control_unit_states.k_reg_n_0_[1] ),
        .I2(\control_unit_states.k_reg_n_0_[2] ),
        .I3(\control_unit_states.k_reg_n_0_[3] ),
        .I4(\control_unit_states.k_reg_n_0_[4] ),
        .I5(\control_unit_states.k_reg_n_0_[5] ),
        .O(g1_b2__0_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    interleaver_din_ready_i_1
       (.I0(temp_reg_n_0),
        .I1(interleaver_dout_valid),
        .I2(reset),
        .I3(data_process_reg_n_0),
        .O(interleaver_din_ready015_out));
  LUT6 #(
    .INIT(64'hFFFFF7FF0000F4FF)) 
    interleaver_din_ready_i_2
       (.I0(interleaver_din_ready_i_3_n_0),
        .I1(temp_reg_n_0),
        .I2(interleaver_dout_valid),
        .I3(data_process_reg_n_0),
        .I4(reset),
        .I5(interleaver_din_ready),
        .O(interleaver_din_ready_i_2_n_0));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    interleaver_din_ready_i_3
       (.I0(interleaver_last_frame),
        .I1(symbol_counter_reg[8]),
        .I2(symbol_counter_reg[7]),
        .I3(symbol_counter_reg[9]),
        .I4(dpd_din_data_I1),
        .O(interleaver_din_ready_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    interleaver_din_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(interleaver_din_ready_i_2_n_0),
        .Q(interleaver_din_ready),
        .R(interleaver_din_ready015_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \mapper_din_data[0]_i_1 
       (.I0(\mapper_din_data[0]_i_2_n_0 ),
        .I1(\mapper_din_data[0]_i_3_n_0 ),
        .I2(\mapper_din_data[0]_i_4_n_0 ),
        .I3(\mapper_din_data[0]_i_5_n_0 ),
        .I4(\mapper_din_data[0]_i_6_n_0 ),
        .I5(\mapper_din_data[0]_i_7_n_0 ),
        .O(\mapper_din_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \mapper_din_data[0]_i_10 
       (.I0(\mapper_din_data[0]_i_30_n_0 ),
        .I1(splitter_data_in[21]),
        .I2(\mapper_din_data[0]_i_31_n_0 ),
        .I3(\mapper_din_data[0]_i_32_n_0 ),
        .I4(\mapper_din_data[0]_i_33_n_0 ),
        .I5(splitter_data_in[22]),
        .O(\mapper_din_data[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \mapper_din_data[0]_i_11 
       (.I0(\mapper_din_data[0]_i_34_n_0 ),
        .I1(\mapper_din_data[1]_i_23_n_0 ),
        .I2(splitter_data_in[0]),
        .I3(\mapper_din_data[1]_i_19_n_0 ),
        .I4(\mapper_din_data[0]_i_13_n_0 ),
        .I5(splitter_data_in[26]),
        .O(\mapper_din_data[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \mapper_din_data[0]_i_12 
       (.I0(splitter_data_in[16]),
        .I1(\mapper_din_data[1]_i_14_n_0 ),
        .I2(splitter_data_in[8]),
        .I3(\mapper_din_data[1]_i_13_n_0 ),
        .O(\mapper_din_data[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \mapper_din_data[0]_i_13 
       (.I0(mod_cod_schemes[2]),
        .I1(mod_cod_schemes[4]),
        .I2(mod_cod_schemes[3]),
        .I3(\data_splitter.index_reg [4]),
        .I4(\data_splitter.index_reg [1]),
        .I5(\data_splitter.index_reg [0]),
        .O(\mapper_din_data[0]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \mapper_din_data[0]_i_14 
       (.I0(data_process_reg_n_0),
        .I1(interleaver_dout_valid),
        .I2(temp_reg_n_0),
        .I3(\data_splitter.index_reg [3]),
        .I4(\data_splitter.index_reg [2]),
        .O(\mapper_din_data[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00C0800000008000)) 
    \mapper_din_data[0]_i_15 
       (.I0(splitter_data_in[18]),
        .I1(\mapper_din_data[0]_i_33_n_0 ),
        .I2(\mapper_din_data[5]_i_15_n_0 ),
        .I3(\data_splitter.index_reg [1]),
        .I4(\data_splitter.index_reg [0]),
        .I5(splitter_data_in[17]),
        .O(\mapper_din_data[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \mapper_din_data[0]_i_16 
       (.I0(\mapper_din_data[0]_i_35_n_0 ),
        .I1(\mapper_din_data[1]_i_23_n_0 ),
        .I2(splitter_data_in[16]),
        .I3(temp_i_6_n_0),
        .I4(\mapper_din_data[0]_i_27_n_0 ),
        .I5(splitter_data_in[15]),
        .O(\mapper_din_data[0]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0C800080)) 
    \mapper_din_data[0]_i_17 
       (.I0(splitter_data_in[10]),
        .I1(\mapper_din_data[0]_i_36_n_0 ),
        .I2(\data_splitter.index_reg [1]),
        .I3(\data_splitter.index_reg [0]),
        .I4(splitter_data_in[9]),
        .O(\mapper_din_data[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h800080008C008000)) 
    \mapper_din_data[0]_i_18 
       (.I0(\mapper_din_data[0]_i_37_n_0 ),
        .I1(\mapper_din_data[0]_i_27_n_0 ),
        .I2(\data_splitter.index_reg [2]),
        .I3(\mapper_din_data[0]_i_38_n_0 ),
        .I4(splitter_data_in[11]),
        .I5(\data_splitter.index[5]_i_3_n_0 ),
        .O(\mapper_din_data[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8080CC808080)) 
    \mapper_din_data[0]_i_19 
       (.I0(splitter_data_in[5]),
        .I1(\mapper_din_data[0]_i_27_n_0 ),
        .I2(\mapper_din_data[0]_i_31_n_0 ),
        .I3(\mapper_din_data[0]_i_32_n_0 ),
        .I4(splitter_data_in[6]),
        .I5(\mapper_din_data[1]_i_25_n_0 ),
        .O(\mapper_din_data[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \mapper_din_data[0]_i_2 
       (.I0(\mapper_din_data[3]_i_4_n_0 ),
        .I1(splitter_data_in[5]),
        .I2(\mapper_din_data[4]_i_7_n_0 ),
        .I3(splitter_data_in[15]),
        .I4(\mapper_din_data[0]_i_8_n_0 ),
        .I5(\mapper_din_data[0]_i_9_n_0 ),
        .O(\mapper_din_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF80000080800000)) 
    \mapper_din_data[0]_i_20 
       (.I0(\mapper_din_data[0]_i_14_n_0 ),
        .I1(\mapper_din_data[1]_i_23_n_0 ),
        .I2(splitter_data_in[8]),
        .I3(\mapper_din_data[3]_i_16_n_0 ),
        .I4(\mapper_din_data[0]_i_27_n_0 ),
        .I5(splitter_data_in[7]),
        .O(\mapper_din_data[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFF80000080800000)) 
    \mapper_din_data[0]_i_21 
       (.I0(\mapper_din_data[0]_i_14_n_0 ),
        .I1(\mapper_din_data[1]_i_23_n_0 ),
        .I2(splitter_data_in[24]),
        .I3(\mapper_din_data[3]_i_16_n_0 ),
        .I4(\mapper_din_data[0]_i_33_n_0 ),
        .I5(splitter_data_in[23]),
        .O(\mapper_din_data[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFF00800080008000)) 
    \mapper_din_data[0]_i_22 
       (.I0(\mapper_din_data[1]_i_23_n_0 ),
        .I1(\mapper_din_data[4]_i_9_n_0 ),
        .I2(splitter_data_in[20]),
        .I3(\mapper_din_data[0]_i_33_n_0 ),
        .I4(\mapper_din_data[5]_i_15_n_0 ),
        .I5(\mapper_din_data[0]_i_39_n_0 ),
        .O(\mapper_din_data[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h00F8000000880000)) 
    \mapper_din_data[0]_i_23 
       (.I0(\mapper_din_data[0]_i_14_n_0 ),
        .I1(splitter_data_in[22]),
        .I2(\mapper_din_data[4]_i_9_n_0 ),
        .I3(\data_splitter.index[5]_i_3_n_0 ),
        .I4(\mapper_din_data[1]_i_17_n_0 ),
        .I5(splitter_data_in[14]),
        .O(\mapper_din_data[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \mapper_din_data[0]_i_24 
       (.I0(\mapper_din_data[0]_i_13_n_0 ),
        .I1(\mapper_din_data[5]_i_15_n_0 ),
        .I2(splitter_data_in[2]),
        .I3(temp_i_6_n_0),
        .I4(\mapper_din_data[0]_i_33_n_0 ),
        .I5(splitter_data_in[31]),
        .O(\mapper_din_data[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF400060204000)) 
    \mapper_din_data[0]_i_25 
       (.I0(\data_splitter.index_reg [0]),
        .I1(\data_splitter.index_reg [1]),
        .I2(\mapper_din_data[0]_i_40_n_0 ),
        .I3(splitter_data_in[26]),
        .I4(splitter_data_in[25]),
        .I5(\mapper_din_data[4]_i_3_n_0 ),
        .O(\mapper_din_data[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h800080008C008000)) 
    \mapper_din_data[0]_i_26 
       (.I0(\mapper_din_data[0]_i_41_n_0 ),
        .I1(\mapper_din_data[0]_i_33_n_0 ),
        .I2(\data_splitter.index_reg [2]),
        .I3(\mapper_din_data[0]_i_38_n_0 ),
        .I4(splitter_data_in[27]),
        .I5(\data_splitter.index[5]_i_3_n_0 ),
        .O(\mapper_din_data[0]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \mapper_din_data[0]_i_27 
       (.I0(\data_splitter.index_reg [4]),
        .I1(mod_cod_schemes[3]),
        .I2(mod_cod_schemes[4]),
        .I3(mod_cod_schemes[2]),
        .O(\mapper_din_data[0]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hBC8CB080)) 
    \mapper_din_data[0]_i_28 
       (.I0(splitter_data_in[3]),
        .I1(\data_splitter.index_reg [0]),
        .I2(\data_splitter.index_reg [1]),
        .I3(splitter_data_in[2]),
        .I4(splitter_data_in[1]),
        .O(\mapper_din_data[0]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \mapper_din_data[0]_i_29 
       (.I0(\data_splitter.index_reg [1]),
        .I1(\data_splitter.index_reg [0]),
        .I2(\data_splitter.index_reg [2]),
        .I3(\data_splitter.index[5]_i_4_n_0 ),
        .I4(\data_splitter.index_reg [3]),
        .O(\mapper_din_data[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mapper_din_data[0]_i_3 
       (.I0(\mapper_din_data[1]_i_12_n_0 ),
        .I1(splitter_data_in[20]),
        .I2(\mapper_din_data[1]_i_8_n_0 ),
        .I3(splitter_data_in[28]),
        .I4(splitter_data_in[12]),
        .I5(\mapper_din_data[1]_i_9_n_0 ),
        .O(\mapper_din_data[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \mapper_din_data[0]_i_30 
       (.I0(\mapper_din_data[4]_i_13_n_0 ),
        .I1(\data_splitter.index_reg [4]),
        .I2(splitter_data_in[30]),
        .I3(mod_cod_schemes[3]),
        .I4(mod_cod_schemes[2]),
        .I5(\mapper_din_data[1]_i_19_n_0 ),
        .O(\mapper_din_data[0]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \mapper_din_data[0]_i_31 
       (.I0(\data_splitter.index_reg [1]),
        .I1(\data_splitter.index_reg [0]),
        .I2(\data_splitter.index_reg [2]),
        .I3(\data_splitter.index[5]_i_4_n_0 ),
        .I4(\data_splitter.index_reg [3]),
        .O(\mapper_din_data[0]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \mapper_din_data[0]_i_32 
       (.I0(\data_splitter.index_reg [0]),
        .I1(\data_splitter.index_reg [1]),
        .I2(\data_splitter.index_reg [2]),
        .I3(\data_splitter.index[5]_i_4_n_0 ),
        .I4(\data_splitter.index_reg [3]),
        .O(\mapper_din_data[0]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \mapper_din_data[0]_i_33 
       (.I0(\data_splitter.index_reg [4]),
        .I1(mod_cod_schemes[2]),
        .I2(mod_cod_schemes[3]),
        .I3(mod_cod_schemes[4]),
        .O(\mapper_din_data[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h02AA0202020AAA0A)) 
    \mapper_din_data[0]_i_34 
       (.I0(\mapper_din_data[5]_i_15_n_0 ),
        .I1(\data_splitter.index_reg [5]),
        .I2(\data_splitter.index_reg [4]),
        .I3(mod_cod_schemes[3]),
        .I4(mod_cod_schemes[2]),
        .I5(mod_cod_schemes[4]),
        .O(\mapper_din_data[0]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \mapper_din_data[0]_i_35 
       (.I0(mod_cod_schemes[4]),
        .I1(mod_cod_schemes[3]),
        .I2(mod_cod_schemes[2]),
        .I3(\data_splitter.index_reg [4]),
        .I4(\mapper_din_data[5]_i_15_n_0 ),
        .O(\mapper_din_data[0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \mapper_din_data[0]_i_36 
       (.I0(\mapper_din_data[0]_i_27_n_0 ),
        .I1(\data_splitter.index_reg [2]),
        .I2(\data_splitter.index_reg [3]),
        .I3(temp_reg_n_0),
        .I4(interleaver_dout_valid),
        .I5(data_process_reg_n_0),
        .O(\mapper_din_data[0]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \mapper_din_data[0]_i_37 
       (.I0(splitter_data_in[12]),
        .I1(\data_splitter.index_reg [0]),
        .I2(\data_splitter.index_reg [1]),
        .I3(splitter_data_in[14]),
        .I4(splitter_data_in[13]),
        .O(\mapper_din_data[0]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \mapper_din_data[0]_i_38 
       (.I0(\data_splitter.index_reg [3]),
        .I1(temp_reg_n_0),
        .I2(interleaver_dout_valid),
        .I3(data_process_reg_n_0),
        .O(\mapper_din_data[0]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \mapper_din_data[0]_i_39 
       (.I0(splitter_data_in[19]),
        .I1(\data_splitter.index_reg [1]),
        .I2(\data_splitter.index_reg [0]),
        .O(\mapper_din_data[0]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \mapper_din_data[0]_i_4 
       (.I0(\mapper_din_data[0]_i_10_n_0 ),
        .I1(\mapper_din_data[0]_i_11_n_0 ),
        .I2(\mapper_din_data[1]_i_10_n_0 ),
        .I3(splitter_data_in[24]),
        .I4(\mapper_din_data[0]_i_12_n_0 ),
        .O(\mapper_din_data[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \mapper_din_data[0]_i_40 
       (.I0(\mapper_din_data[0]_i_33_n_0 ),
        .I1(\data_splitter.index_reg [2]),
        .I2(\data_splitter.index_reg [3]),
        .I3(temp_reg_n_0),
        .I4(interleaver_dout_valid),
        .I5(data_process_reg_n_0),
        .O(\mapper_din_data[0]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h00CA)) 
    \mapper_din_data[0]_i_41 
       (.I0(splitter_data_in[28]),
        .I1(splitter_data_in[29]),
        .I2(\data_splitter.index_reg [0]),
        .I3(\data_splitter.index_reg [1]),
        .O(\mapper_din_data[0]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEA00)) 
    \mapper_din_data[0]_i_5 
       (.I0(\mapper_din_data[5]_i_13_n_0 ),
        .I1(\mapper_din_data[0]_i_13_n_0 ),
        .I2(\mapper_din_data[0]_i_14_n_0 ),
        .I3(splitter_data_in[18]),
        .I4(\mapper_din_data[0]_i_15_n_0 ),
        .I5(\mapper_din_data[0]_i_16_n_0 ),
        .O(\mapper_din_data[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \mapper_din_data[0]_i_6 
       (.I0(\mapper_din_data[0]_i_17_n_0 ),
        .I1(splitter_data_in[10]),
        .I2(\mapper_din_data[1]_i_21_n_0 ),
        .I3(\mapper_din_data[0]_i_18_n_0 ),
        .I4(\mapper_din_data[0]_i_19_n_0 ),
        .I5(\mapper_din_data[0]_i_20_n_0 ),
        .O(\mapper_din_data[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \mapper_din_data[0]_i_7 
       (.I0(\mapper_din_data[0]_i_21_n_0 ),
        .I1(\mapper_din_data[0]_i_22_n_0 ),
        .I2(\mapper_din_data[0]_i_23_n_0 ),
        .I3(\mapper_din_data[0]_i_24_n_0 ),
        .I4(\mapper_din_data[0]_i_25_n_0 ),
        .I5(\mapper_din_data[0]_i_26_n_0 ),
        .O(\mapper_din_data[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAA00AE00AA00AA00)) 
    \mapper_din_data[0]_i_8 
       (.I0(\mapper_din_data[1]_i_28_n_0 ),
        .I1(temp_i_6_n_0),
        .I2(\data_splitter.index_reg [4]),
        .I3(splitter_data_in[30]),
        .I4(mod_cod_schemes[4]),
        .I5(mod_cod_schemes[2]),
        .O(\mapper_din_data[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8080AA808080)) 
    \mapper_din_data[0]_i_9 
       (.I0(\mapper_din_data[0]_i_27_n_0 ),
        .I1(\mapper_din_data[5]_i_15_n_0 ),
        .I2(\mapper_din_data[0]_i_28_n_0 ),
        .I3(\mapper_din_data[0]_i_29_n_0 ),
        .I4(splitter_data_in[4]),
        .I5(\mapper_din_data[1]_i_11_n_0 ),
        .O(\mapper_din_data[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \mapper_din_data[1]_i_1 
       (.I0(\mapper_din_data[1]_i_2_n_0 ),
        .I1(\mapper_din_data[1]_i_3_n_0 ),
        .I2(\mapper_din_data[1]_i_4_n_0 ),
        .I3(\mapper_din_data[1]_i_5_n_0 ),
        .I4(\mapper_din_data[1]_i_6_n_0 ),
        .I5(\mapper_din_data[1]_i_7_n_0 ),
        .O(\mapper_din_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    \mapper_din_data[1]_i_10 
       (.I0(\data_splitter.index[5]_i_4_n_0 ),
        .I1(\data_splitter.index_reg [3]),
        .I2(\data_splitter.index_reg [2]),
        .I3(\mapper_din_data[1]_i_17_n_0 ),
        .I4(\mapper_din_data[1]_i_23_n_0 ),
        .I5(\mapper_din_data[3]_i_14_n_0 ),
        .O(\mapper_din_data[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00C08800)) 
    \mapper_din_data[1]_i_11 
       (.I0(\mapper_din_data[3]_i_12_n_0 ),
        .I1(\mapper_din_data[5]_i_15_n_0 ),
        .I2(\mapper_din_data[1]_i_17_n_0 ),
        .I3(\data_splitter.index_reg [0]),
        .I4(\data_splitter.index_reg [1]),
        .O(\mapper_din_data[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF04000000)) 
    \mapper_din_data[1]_i_12 
       (.I0(\data_splitter.index[5]_i_4_n_0 ),
        .I1(\data_splitter.index_reg [3]),
        .I2(\data_splitter.index_reg [2]),
        .I3(\mapper_din_data[1]_i_17_n_0 ),
        .I4(\mapper_din_data[4]_i_13_n_0 ),
        .I5(\mapper_din_data[3]_i_13_n_0 ),
        .O(\mapper_din_data[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00F8000800080008)) 
    \mapper_din_data[1]_i_13 
       (.I0(\mapper_din_data[1]_i_17_n_0 ),
        .I1(\mapper_din_data[4]_i_9_n_0 ),
        .I2(\data_splitter.index_reg [1]),
        .I3(\data_splitter.index_reg [0]),
        .I4(\mapper_din_data[3]_i_12_n_0 ),
        .I5(\mapper_din_data[5]_i_15_n_0 ),
        .O(\mapper_din_data[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000000A00000C000)) 
    \mapper_din_data[1]_i_14 
       (.I0(\mapper_din_data[1]_i_17_n_0 ),
        .I1(\mapper_din_data[3]_i_12_n_0 ),
        .I2(\mapper_din_data[1]_i_23_n_0 ),
        .I3(\data_splitter.index_reg [2]),
        .I4(\data_splitter.index[5]_i_4_n_0 ),
        .I5(\data_splitter.index_reg [3]),
        .O(\mapper_din_data[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h88888F8888888888)) 
    \mapper_din_data[1]_i_15 
       (.I0(\mapper_din_data[0]_i_14_n_0 ),
        .I1(\mapper_din_data[0]_i_13_n_0 ),
        .I2(\data_splitter.index[5]_i_3_n_0 ),
        .I3(\mapper_din_data[1]_i_27_n_0 ),
        .I4(\mapper_din_data[5]_i_16_n_0 ),
        .I5(\mapper_din_data[5]_i_15_n_0 ),
        .O(\mapper_din_data[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \mapper_din_data[1]_i_16 
       (.I0(\data_splitter.index[5]_i_3_n_0 ),
        .I1(splitter_data_in[23]),
        .I2(\mapper_din_data[1]_i_17_n_0 ),
        .I3(\data_splitter.index[5]_i_4_n_0 ),
        .I4(\data_splitter.index_reg [3]),
        .I5(\data_splitter.index_reg [2]),
        .O(\mapper_din_data[1]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \mapper_din_data[1]_i_17 
       (.I0(\data_splitter.index_reg [4]),
        .I1(mod_cod_schemes[3]),
        .I2(mod_cod_schemes[4]),
        .I3(mod_cod_schemes[2]),
        .O(\mapper_din_data[1]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mapper_din_data[1]_i_18 
       (.I0(\data_splitter.index_reg [0]),
        .I1(\data_splitter.index_reg [1]),
        .O(\mapper_din_data[1]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \mapper_din_data[1]_i_19 
       (.I0(data_process_reg_n_0),
        .I1(interleaver_dout_valid),
        .I2(temp_reg_n_0),
        .I3(\data_splitter.index_reg [3]),
        .I4(\data_splitter.index_reg [2]),
        .O(\mapper_din_data[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mapper_din_data[1]_i_2 
       (.I0(\mapper_din_data[1]_i_8_n_0 ),
        .I1(splitter_data_in[29]),
        .I2(\mapper_din_data[3]_i_4_n_0 ),
        .I3(splitter_data_in[6]),
        .I4(splitter_data_in[13]),
        .I5(\mapper_din_data[1]_i_9_n_0 ),
        .O(\mapper_din_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF080808080808080)) 
    \mapper_din_data[1]_i_20 
       (.I0(\mapper_din_data[3]_i_16_n_0 ),
        .I1(splitter_data_in[15]),
        .I2(\mapper_din_data[1]_i_17_n_0 ),
        .I3(\mapper_din_data[1]_i_18_n_0 ),
        .I4(\mapper_din_data[5]_i_15_n_0 ),
        .I5(splitter_data_in[3]),
        .O(\mapper_din_data[1]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h08F00800)) 
    \mapper_din_data[1]_i_21 
       (.I0(\mapper_din_data[1]_i_17_n_0 ),
        .I1(\mapper_din_data[4]_i_9_n_0 ),
        .I2(\data_splitter.index_reg [1]),
        .I3(\data_splitter.index_reg [0]),
        .I4(\mapper_din_data[4]_i_12_n_0 ),
        .O(\mapper_din_data[1]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAA00AE00AA00AA00)) 
    \mapper_din_data[1]_i_22 
       (.I0(\mapper_din_data[1]_i_28_n_0 ),
        .I1(temp_i_6_n_0),
        .I2(\data_splitter.index_reg [4]),
        .I3(splitter_data_in[31]),
        .I4(mod_cod_schemes[4]),
        .I5(mod_cod_schemes[2]),
        .O(\mapper_din_data[1]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mapper_din_data[1]_i_23 
       (.I0(\data_splitter.index_reg [0]),
        .I1(\data_splitter.index_reg [1]),
        .O(\mapper_din_data[1]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h420046004200FE00)) 
    \mapper_din_data[1]_i_24 
       (.I0(mod_cod_schemes[3]),
        .I1(mod_cod_schemes[2]),
        .I2(mod_cod_schemes[4]),
        .I3(\mapper_din_data[5]_i_15_n_0 ),
        .I4(\data_splitter.index_reg [4]),
        .I5(\data_splitter.index_reg [5]),
        .O(\mapper_din_data[1]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h80808C8000000000)) 
    \mapper_din_data[1]_i_25 
       (.I0(\mapper_din_data[1]_i_17_n_0 ),
        .I1(\data_splitter.index_reg [0]),
        .I2(\data_splitter.index_reg [1]),
        .I3(\mapper_din_data[1]_i_27_n_0 ),
        .I4(\mapper_din_data[5]_i_16_n_0 ),
        .I5(\mapper_din_data[5]_i_15_n_0 ),
        .O(\mapper_din_data[1]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \mapper_din_data[1]_i_26 
       (.I0(mod_cod_schemes[2]),
        .I1(mod_cod_schemes[4]),
        .I2(mod_cod_schemes[3]),
        .I3(\data_splitter.index_reg [4]),
        .I4(\data_splitter.index_reg [0]),
        .I5(\data_splitter.index_reg [1]),
        .O(\mapper_din_data[1]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \mapper_din_data[1]_i_27 
       (.I0(mod_cod_schemes[3]),
        .I1(mod_cod_schemes[2]),
        .I2(mod_cod_schemes[4]),
        .O(\mapper_din_data[1]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h3333030203020302)) 
    \mapper_din_data[1]_i_28 
       (.I0(\data_splitter.index_reg [3]),
        .I1(\data_splitter.index[5]_i_4_n_0 ),
        .I2(\mapper_din_data[4]_i_14_n_0 ),
        .I3(\mapper_din_data[5]_i_16_n_0 ),
        .I4(\data_splitter.index_reg [2]),
        .I5(temp_i_5_n_0),
        .O(\mapper_din_data[1]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mapper_din_data[1]_i_3 
       (.I0(\mapper_din_data[1]_i_10_n_0 ),
        .I1(splitter_data_in[25]),
        .I2(\mapper_din_data[1]_i_11_n_0 ),
        .I3(splitter_data_in[5]),
        .I4(splitter_data_in[21]),
        .I5(\mapper_din_data[1]_i_12_n_0 ),
        .O(\mapper_din_data[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mapper_din_data[1]_i_4 
       (.I0(\mapper_din_data[1]_i_13_n_0 ),
        .I1(splitter_data_in[9]),
        .I2(\mapper_din_data[1]_i_14_n_0 ),
        .I3(splitter_data_in[17]),
        .I4(splitter_data_in[19]),
        .I5(\mapper_din_data[1]_i_15_n_0 ),
        .O(\mapper_din_data[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAAAAAAA)) 
    \mapper_din_data[1]_i_5 
       (.I0(\mapper_din_data[1]_i_16_n_0 ),
        .I1(splitter_data_in[27]),
        .I2(\mapper_din_data[1]_i_17_n_0 ),
        .I3(\mapper_din_data[1]_i_18_n_0 ),
        .I4(\mapper_din_data[1]_i_19_n_0 ),
        .I5(\mapper_din_data[1]_i_20_n_0 ),
        .O(\mapper_din_data[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mapper_din_data[1]_i_6 
       (.I0(\mapper_din_data[1]_i_21_n_0 ),
        .I1(splitter_data_in[11]),
        .I2(\mapper_din_data[4]_i_7_n_0 ),
        .I3(splitter_data_in[16]),
        .I4(splitter_data_in[26]),
        .I5(\mapper_din_data[4]_i_3_n_0 ),
        .O(\mapper_din_data[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \mapper_din_data[1]_i_7 
       (.I0(\mapper_din_data[1]_i_22_n_0 ),
        .I1(splitter_data_in[1]),
        .I2(\mapper_din_data[1]_i_23_n_0 ),
        .I3(\mapper_din_data[1]_i_24_n_0 ),
        .I4(splitter_data_in[7]),
        .I5(\mapper_din_data[1]_i_25_n_0 ),
        .O(\mapper_din_data[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00A0000000A000C0)) 
    \mapper_din_data[1]_i_8 
       (.I0(\mapper_din_data[1]_i_26_n_0 ),
        .I1(\mapper_din_data[3]_i_12_n_0 ),
        .I2(\data_splitter.index_reg [2]),
        .I3(\data_splitter.index[5]_i_4_n_0 ),
        .I4(\data_splitter.index_reg [3]),
        .I5(\data_splitter.index[5]_i_3_n_0 ),
        .O(\mapper_din_data[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF000FF00F0008800)) 
    \mapper_din_data[1]_i_9 
       (.I0(\mapper_din_data[4]_i_9_n_0 ),
        .I1(\mapper_din_data[1]_i_17_n_0 ),
        .I2(\mapper_din_data[3]_i_8_n_0 ),
        .I3(\data_splitter.index_reg [1]),
        .I4(\data_splitter.index_reg [0]),
        .I5(\mapper_din_data[5]_i_9_n_0 ),
        .O(\mapper_din_data[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \mapper_din_data[2]_i_1 
       (.I0(\mapper_din_data[2]_i_2_n_0 ),
        .I1(\mapper_din_data[2]_i_3_n_0 ),
        .I2(splitter_data_in[7]),
        .I3(\mapper_din_data[3]_i_4_n_0 ),
        .I4(\mapper_din_data[2]_i_4_n_0 ),
        .O(\mapper_din_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \mapper_din_data[2]_i_2 
       (.I0(\mapper_din_data[2]_i_5_n_0 ),
        .I1(splitter_data_in[12]),
        .I2(\mapper_din_data[4]_i_13_n_0 ),
        .I3(\mapper_din_data[4]_i_12_n_0 ),
        .I4(splitter_data_in[18]),
        .I5(\mapper_din_data[3]_i_7_n_0 ),
        .O(\mapper_din_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hECC00000A0C00000)) 
    \mapper_din_data[2]_i_3 
       (.I0(splitter_data_in[20]),
        .I1(splitter_data_in[14]),
        .I2(\mapper_din_data[5]_i_9_n_0 ),
        .I3(\data_splitter.index_reg [0]),
        .I4(\data_splitter.index_reg [1]),
        .I5(\mapper_din_data[3]_i_8_n_0 ),
        .O(\mapper_din_data[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \mapper_din_data[2]_i_4 
       (.I0(\mapper_din_data[2]_i_6_n_0 ),
        .I1(\mapper_din_data[4]_i_3_n_0 ),
        .I2(splitter_data_in[27]),
        .I3(\mapper_din_data[2]_i_7_n_0 ),
        .I4(\mapper_din_data[4]_i_7_n_0 ),
        .I5(splitter_data_in[17]),
        .O(\mapper_din_data[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0C800080)) 
    \mapper_din_data[2]_i_5 
       (.I0(splitter_data_in[10]),
        .I1(\mapper_din_data[3]_i_8_n_0 ),
        .I2(\data_splitter.index_reg [1]),
        .I3(\data_splitter.index_reg [0]),
        .I4(splitter_data_in[6]),
        .O(\mapper_din_data[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mapper_din_data[2]_i_6 
       (.I0(\mapper_din_data[3]_i_13_n_0 ),
        .I1(splitter_data_in[22]),
        .I2(\mapper_din_data[3]_i_14_n_0 ),
        .I3(splitter_data_in[26]),
        .I4(splitter_data_in[8]),
        .I5(\mapper_din_data[5]_i_12_n_0 ),
        .O(\mapper_din_data[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \mapper_din_data[2]_i_7 
       (.I0(\mapper_din_data[3]_i_15_n_0 ),
        .I1(\mapper_din_data[1]_i_23_n_0 ),
        .I2(splitter_data_in[2]),
        .I3(\mapper_din_data[3]_i_16_n_0 ),
        .I4(\mapper_din_data[3]_i_12_n_0 ),
        .I5(splitter_data_in[30]),
        .O(\mapper_din_data[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \mapper_din_data[3]_i_1 
       (.I0(\mapper_din_data[3]_i_2_n_0 ),
        .I1(\mapper_din_data[3]_i_3_n_0 ),
        .I2(splitter_data_in[8]),
        .I3(\mapper_din_data[3]_i_4_n_0 ),
        .I4(\mapper_din_data[3]_i_5_n_0 ),
        .O(\mapper_din_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mapper_din_data[3]_i_10 
       (.I0(\mapper_din_data[3]_i_13_n_0 ),
        .I1(splitter_data_in[23]),
        .I2(\mapper_din_data[3]_i_14_n_0 ),
        .I3(splitter_data_in[27]),
        .I4(splitter_data_in[9]),
        .I5(\mapper_din_data[5]_i_12_n_0 ),
        .O(\mapper_din_data[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \mapper_din_data[3]_i_11 
       (.I0(\mapper_din_data[3]_i_15_n_0 ),
        .I1(\mapper_din_data[1]_i_23_n_0 ),
        .I2(splitter_data_in[3]),
        .I3(\mapper_din_data[3]_i_16_n_0 ),
        .I4(\mapper_din_data[3]_i_12_n_0 ),
        .I5(splitter_data_in[31]),
        .O(\mapper_din_data[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h18)) 
    \mapper_din_data[3]_i_12 
       (.I0(mod_cod_schemes[4]),
        .I1(mod_cod_schemes[2]),
        .I2(mod_cod_schemes[3]),
        .O(\mapper_din_data[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00F0002200000000)) 
    \mapper_din_data[3]_i_13 
       (.I0(\mapper_din_data[4]_i_8_n_0 ),
        .I1(\mapper_din_data[5]_i_16_n_0 ),
        .I2(\mapper_din_data[3]_i_12_n_0 ),
        .I3(\data_splitter.index_reg [1]),
        .I4(\data_splitter.index_reg [0]),
        .I5(\mapper_din_data[4]_i_9_n_0 ),
        .O(\mapper_din_data[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00A0000000A000C0)) 
    \mapper_din_data[3]_i_14 
       (.I0(\mapper_din_data[3]_i_12_n_0 ),
        .I1(\mapper_din_data[1]_i_27_n_0 ),
        .I2(\mapper_din_data[4]_i_9_n_0 ),
        .I3(\data_splitter.index_reg [0]),
        .I4(\data_splitter.index_reg [1]),
        .I5(\mapper_din_data[5]_i_16_n_0 ),
        .O(\mapper_din_data[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h101010F0F0001000)) 
    \mapper_din_data[3]_i_15 
       (.I0(\data_splitter.index_reg [5]),
        .I1(\data_splitter.index_reg [4]),
        .I2(\mapper_din_data[5]_i_15_n_0 ),
        .I3(mod_cod_schemes[4]),
        .I4(mod_cod_schemes[2]),
        .I5(mod_cod_schemes[3]),
        .O(\mapper_din_data[3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \mapper_din_data[3]_i_16 
       (.I0(\data_splitter.index_reg [2]),
        .I1(\data_splitter.index[5]_i_4_n_0 ),
        .I2(\data_splitter.index_reg [3]),
        .I3(\data_splitter.index_reg [1]),
        .I4(\data_splitter.index_reg [0]),
        .O(\mapper_din_data[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \mapper_din_data[3]_i_2 
       (.I0(\mapper_din_data[3]_i_6_n_0 ),
        .I1(splitter_data_in[13]),
        .I2(\mapper_din_data[4]_i_13_n_0 ),
        .I3(\mapper_din_data[4]_i_12_n_0 ),
        .I4(splitter_data_in[19]),
        .I5(\mapper_din_data[3]_i_7_n_0 ),
        .O(\mapper_din_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hECC00000A0C00000)) 
    \mapper_din_data[3]_i_3 
       (.I0(splitter_data_in[21]),
        .I1(splitter_data_in[15]),
        .I2(\mapper_din_data[5]_i_9_n_0 ),
        .I3(\data_splitter.index_reg [0]),
        .I4(\data_splitter.index_reg [1]),
        .I5(\mapper_din_data[3]_i_8_n_0 ),
        .O(\mapper_din_data[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000280000000000)) 
    \mapper_din_data[3]_i_4 
       (.I0(\mapper_din_data[3]_i_9_n_0 ),
        .I1(mod_cod_schemes[4]),
        .I2(mod_cod_schemes[2]),
        .I3(mod_cod_schemes[3]),
        .I4(\data_splitter.index_reg [1]),
        .I5(\data_splitter.index_reg [0]),
        .O(\mapper_din_data[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \mapper_din_data[3]_i_5 
       (.I0(\mapper_din_data[3]_i_10_n_0 ),
        .I1(\mapper_din_data[4]_i_3_n_0 ),
        .I2(splitter_data_in[28]),
        .I3(\mapper_din_data[3]_i_11_n_0 ),
        .I4(\mapper_din_data[4]_i_7_n_0 ),
        .I5(splitter_data_in[18]),
        .O(\mapper_din_data[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0C800080)) 
    \mapper_din_data[3]_i_6 
       (.I0(splitter_data_in[11]),
        .I1(\mapper_din_data[3]_i_8_n_0 ),
        .I2(\data_splitter.index_reg [1]),
        .I3(\data_splitter.index_reg [0]),
        .I4(splitter_data_in[7]),
        .O(\mapper_din_data[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \mapper_din_data[3]_i_7 
       (.I0(\data_splitter.index_reg [3]),
        .I1(\data_splitter.index[5]_i_4_n_0 ),
        .I2(\data_splitter.index_reg [2]),
        .I3(\data_splitter.index_reg [0]),
        .I4(\data_splitter.index_reg [1]),
        .I5(\mapper_din_data[3]_i_12_n_0 ),
        .O(\mapper_din_data[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000042)) 
    \mapper_din_data[3]_i_8 
       (.I0(mod_cod_schemes[3]),
        .I1(mod_cod_schemes[2]),
        .I2(mod_cod_schemes[4]),
        .I3(\data_splitter.index_reg [2]),
        .I4(\data_splitter.index[5]_i_4_n_0 ),
        .I5(\data_splitter.index_reg [3]),
        .O(\mapper_din_data[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \mapper_din_data[3]_i_9 
       (.I0(\data_splitter.index_reg [2]),
        .I1(\data_splitter.index[5]_i_4_n_0 ),
        .I2(\data_splitter.index_reg [3]),
        .I3(\data_splitter.index_reg [5]),
        .I4(\data_splitter.index_reg [4]),
        .O(\mapper_din_data[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \mapper_din_data[4]_i_1 
       (.I0(\mapper_din_data[4]_i_2_n_0 ),
        .I1(\mapper_din_data[4]_i_3_n_0 ),
        .I2(splitter_data_in[29]),
        .I3(\mapper_din_data[4]_i_4_n_0 ),
        .I4(\mapper_din_data[4]_i_5_n_0 ),
        .I5(\mapper_din_data[4]_i_6_n_0 ),
        .O(\mapper_din_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \mapper_din_data[4]_i_10 
       (.I0(\data_splitter.index_reg [3]),
        .I1(\data_splitter.index[5]_i_4_n_0 ),
        .I2(\data_splitter.index_reg [2]),
        .I3(\mapper_din_data[1]_i_23_n_0 ),
        .I4(\data_splitter.index_reg [5]),
        .I5(\data_splitter.index_reg [4]),
        .O(\mapper_din_data[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    \mapper_din_data[4]_i_11 
       (.I0(splitter_data_in[10]),
        .I1(\mapper_din_data[5]_i_12_n_0 ),
        .I2(\mapper_din_data[3]_i_9_n_0 ),
        .I3(\mapper_din_data[4]_i_14_n_0 ),
        .I4(splitter_data_in[4]),
        .I5(\mapper_din_data[1]_i_23_n_0 ),
        .O(\mapper_din_data[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000002800000000)) 
    \mapper_din_data[4]_i_12 
       (.I0(mod_cod_schemes[3]),
        .I1(mod_cod_schemes[2]),
        .I2(mod_cod_schemes[4]),
        .I3(\data_splitter.index_reg [4]),
        .I4(\data_splitter.index_reg [5]),
        .I5(\mapper_din_data[5]_i_15_n_0 ),
        .O(\mapper_din_data[4]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mapper_din_data[4]_i_13 
       (.I0(\data_splitter.index_reg [1]),
        .I1(\data_splitter.index_reg [0]),
        .O(\mapper_din_data[4]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \mapper_din_data[4]_i_14 
       (.I0(mod_cod_schemes[3]),
        .I1(mod_cod_schemes[2]),
        .I2(mod_cod_schemes[4]),
        .O(\mapper_din_data[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mapper_din_data[4]_i_2 
       (.I0(\mapper_din_data[5]_i_14_n_0 ),
        .I1(splitter_data_in[28]),
        .I2(\mapper_din_data[3]_i_4_n_0 ),
        .I3(splitter_data_in[9]),
        .I4(splitter_data_in[19]),
        .I5(\mapper_din_data[4]_i_7_n_0 ),
        .O(\mapper_din_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \mapper_din_data[4]_i_3 
       (.I0(\data_splitter.index_reg [4]),
        .I1(\data_splitter.index_reg [5]),
        .I2(\mapper_din_data[4]_i_8_n_0 ),
        .I3(\mapper_din_data[4]_i_9_n_0 ),
        .I4(\data_splitter.index_reg [0]),
        .I5(\data_splitter.index_reg [1]),
        .O(\mapper_din_data[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \mapper_din_data[4]_i_4 
       (.I0(\data_splitter.index_reg [0]),
        .I1(\data_splitter.index_reg [1]),
        .I2(\mapper_din_data[5]_i_9_n_0 ),
        .I3(splitter_data_in[22]),
        .O(\mapper_din_data[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h28000000)) 
    \mapper_din_data[4]_i_5 
       (.I0(splitter_data_in[24]),
        .I1(mod_cod_schemes[4]),
        .I2(mod_cod_schemes[2]),
        .I3(mod_cod_schemes[3]),
        .I4(\mapper_din_data[4]_i_10_n_0 ),
        .O(\mapper_din_data[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \mapper_din_data[4]_i_6 
       (.I0(\mapper_din_data[4]_i_11_n_0 ),
        .I1(splitter_data_in[16]),
        .I2(\mapper_din_data[5]_i_9_n_0 ),
        .I3(\mapper_din_data[4]_i_12_n_0 ),
        .I4(\mapper_din_data[4]_i_13_n_0 ),
        .I5(splitter_data_in[14]),
        .O(\mapper_din_data[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2800000000000000)) 
    \mapper_din_data[4]_i_7 
       (.I0(\mapper_din_data[3]_i_9_n_0 ),
        .I1(mod_cod_schemes[4]),
        .I2(mod_cod_schemes[2]),
        .I3(mod_cod_schemes[3]),
        .I4(\data_splitter.index_reg [1]),
        .I5(\data_splitter.index_reg [0]),
        .O(\mapper_din_data[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \mapper_din_data[4]_i_8 
       (.I0(mod_cod_schemes[4]),
        .I1(mod_cod_schemes[2]),
        .I2(mod_cod_schemes[3]),
        .O(\mapper_din_data[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \mapper_din_data[4]_i_9 
       (.I0(\data_splitter.index_reg [3]),
        .I1(data_process_reg_n_0),
        .I2(interleaver_dout_valid),
        .I3(temp_reg_n_0),
        .I4(\data_splitter.index_reg [2]),
        .O(\mapper_din_data[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFEEEEFFFFFFFF)) 
    \mapper_din_data[5]_i_1 
       (.I0(\mapper_din_data[5]_i_3_n_0 ),
        .I1(\mapper_din_data[5]_i_4_n_0 ),
        .I2(\mapper_din_data[5]_i_5_n_0 ),
        .I3(\data_splitter.index_reg [3]),
        .I4(\mapper_din_data[5]_i_6_n_0 ),
        .I5(\mapper_din_data[5]_i_7_n_0 ),
        .O(\mapper_din_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h77FF7F7F7FFFFF7F)) 
    \mapper_din_data[5]_i_10 
       (.I0(\data_splitter.index_reg [1]),
        .I1(\data_splitter.index_reg [2]),
        .I2(mod_cod_schemes[4]),
        .I3(mod_cod_schemes[3]),
        .I4(mod_cod_schemes[2]),
        .I5(\data_splitter.index_reg [0]),
        .O(\mapper_din_data[5]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \mapper_din_data[5]_i_11 
       (.I0(mod_cod_schemes[3]),
        .I1(mod_cod_schemes[4]),
        .O(\mapper_din_data[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2002000000000000)) 
    \mapper_din_data[5]_i_12 
       (.I0(\mapper_din_data[5]_i_15_n_0 ),
        .I1(\mapper_din_data[5]_i_16_n_0 ),
        .I2(mod_cod_schemes[3]),
        .I3(mod_cod_schemes[2]),
        .I4(mod_cod_schemes[4]),
        .I5(\mapper_din_data[1]_i_18_n_0 ),
        .O(\mapper_din_data[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020020000)) 
    \mapper_din_data[5]_i_13 
       (.I0(\mapper_din_data[5]_i_15_n_0 ),
        .I1(\mapper_din_data[5]_i_16_n_0 ),
        .I2(mod_cod_schemes[3]),
        .I3(mod_cod_schemes[2]),
        .I4(mod_cod_schemes[4]),
        .I5(\data_splitter.index[5]_i_3_n_0 ),
        .O(\mapper_din_data[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000004000)) 
    \mapper_din_data[5]_i_14 
       (.I0(\mapper_din_data[5]_i_16_n_0 ),
        .I1(\mapper_din_data[1]_i_23_n_0 ),
        .I2(\mapper_din_data[4]_i_9_n_0 ),
        .I3(mod_cod_schemes[4]),
        .I4(mod_cod_schemes[2]),
        .I5(mod_cod_schemes[3]),
        .O(\mapper_din_data[5]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \mapper_din_data[5]_i_15 
       (.I0(\data_splitter.index_reg [3]),
        .I1(data_process_reg_n_0),
        .I2(interleaver_dout_valid),
        .I3(temp_reg_n_0),
        .I4(\data_splitter.index_reg [2]),
        .O(\mapper_din_data[5]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \mapper_din_data[5]_i_16 
       (.I0(\data_splitter.index_reg [4]),
        .I1(\data_splitter.index_reg [5]),
        .O(\mapper_din_data[5]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFAEAAAAAAAEAAAA)) 
    \mapper_din_data[5]_i_2 
       (.I0(\mapper_din_data[5]_i_8_n_0 ),
        .I1(splitter_data_in[5]),
        .I2(\data_splitter.index_reg [0]),
        .I3(\data_splitter.index_reg [1]),
        .I4(\mapper_din_data[5]_i_9_n_0 ),
        .I5(splitter_data_in[17]),
        .O(\mapper_din_data[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \mapper_din_data[5]_i_3 
       (.I0(data_process_reg_n_0),
        .I1(interleaver_dout_valid),
        .I2(temp_reg_n_0),
        .O(\mapper_din_data[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000004F)) 
    \mapper_din_data[5]_i_4 
       (.I0(\data_splitter.index_reg [3]),
        .I1(\mapper_din_data[5]_i_10_n_0 ),
        .I2(\mapper_din_data[5]_i_11_n_0 ),
        .I3(\data_splitter.index_reg [5]),
        .I4(\data_splitter.index_reg [4]),
        .I5(mapper_din_valid_i_2_n_0),
        .O(\mapper_din_data[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \mapper_din_data[5]_i_5 
       (.I0(\data_splitter.index_reg [1]),
        .I1(\data_splitter.index_reg [0]),
        .I2(\data_splitter.index_reg [2]),
        .O(\mapper_din_data[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \mapper_din_data[5]_i_6 
       (.I0(\data_splitter.index_reg [5]),
        .I1(interleaver_dout_valid),
        .I2(data_process_reg_n_0),
        .I3(mod_cod_schemes[2]),
        .I4(mod_cod_schemes[3]),
        .I5(mod_cod_schemes[4]),
        .O(\mapper_din_data[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \mapper_din_data[5]_i_7 
       (.I0(data_process_reg_n_0),
        .I1(interleaver_dout_valid),
        .I2(temp_reg_n_0),
        .O(\mapper_din_data[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mapper_din_data[5]_i_8 
       (.I0(\mapper_din_data[5]_i_12_n_0 ),
        .I1(splitter_data_in[11]),
        .I2(\mapper_din_data[5]_i_13_n_0 ),
        .I3(splitter_data_in[23]),
        .I4(splitter_data_in[29]),
        .I5(\mapper_din_data[5]_i_14_n_0 ),
        .O(\mapper_din_data[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000008200000000)) 
    \mapper_din_data[5]_i_9 
       (.I0(mod_cod_schemes[4]),
        .I1(mod_cod_schemes[2]),
        .I2(mod_cod_schemes[3]),
        .I3(\data_splitter.index_reg [4]),
        .I4(\data_splitter.index_reg [5]),
        .I5(\mapper_din_data[5]_i_15_n_0 ),
        .O(\mapper_din_data[5]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mapper_din_data_reg[0] 
       (.C(clk),
        .CE(\mapper_din_data[5]_i_1_n_0 ),
        .CLR(reset),
        .D(\mapper_din_data[0]_i_1_n_0 ),
        .Q(mapper_din_data[0]));
  FDCE #(
    .INIT(1'b0)) 
    \mapper_din_data_reg[1] 
       (.C(clk),
        .CE(\mapper_din_data[5]_i_1_n_0 ),
        .CLR(reset),
        .D(\mapper_din_data[1]_i_1_n_0 ),
        .Q(mapper_din_data[1]));
  FDCE #(
    .INIT(1'b0)) 
    \mapper_din_data_reg[2] 
       (.C(clk),
        .CE(\mapper_din_data[5]_i_1_n_0 ),
        .CLR(reset),
        .D(\mapper_din_data[2]_i_1_n_0 ),
        .Q(mapper_din_data[2]));
  FDCE #(
    .INIT(1'b0)) 
    \mapper_din_data_reg[3] 
       (.C(clk),
        .CE(\mapper_din_data[5]_i_1_n_0 ),
        .CLR(reset),
        .D(\mapper_din_data[3]_i_1_n_0 ),
        .Q(mapper_din_data[3]));
  FDCE #(
    .INIT(1'b0)) 
    \mapper_din_data_reg[4] 
       (.C(clk),
        .CE(\mapper_din_data[5]_i_1_n_0 ),
        .CLR(reset),
        .D(\mapper_din_data[4]_i_1_n_0 ),
        .Q(mapper_din_data[4]));
  FDCE #(
    .INIT(1'b0)) 
    \mapper_din_data_reg[5] 
       (.C(clk),
        .CE(\mapper_din_data[5]_i_1_n_0 ),
        .CLR(reset),
        .D(\mapper_din_data[5]_i_2_n_0 ),
        .Q(mapper_din_data[5]));
  LUT6 #(
    .INIT(64'h0000C00000004000)) 
    mapper_din_last_i_1
       (.I0(signal_field_en),
        .I1(symbol_counter_reg[8]),
        .I2(symbol_counter_reg[7]),
        .I3(symbol_counter_reg[9]),
        .I4(mapper_din_valid_i_2_n_0),
        .I5(temp_reg_n_0),
        .O(mapper_din_last_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    mapper_din_last_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(mapper_din_last_i_1_n_0),
        .Q(mapper_din_last));
  LUT6 #(
    .INIT(64'h000000007F00FFFF)) 
    mapper_din_valid_i_1
       (.I0(symbol_counter_reg[8]),
        .I1(symbol_counter_reg[7]),
        .I2(symbol_counter_reg[9]),
        .I3(interleaver_last_frame),
        .I4(temp_reg_n_0),
        .I5(mapper_din_valid_i_2_n_0),
        .O(mapper_din_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hB)) 
    mapper_din_valid_i_2
       (.I0(interleaver_dout_valid),
        .I1(data_process_reg_n_0),
        .O(mapper_din_valid_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    mapper_din_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(mapper_din_valid_i_1_n_0),
        .Q(mapper_din_valid));
  FDRE #(
    .INIT(1'b0)) 
    \mapper_selected_mod_reg[0] 
       (.C(clk),
        .CE(p_12_in),
        .D(mod_cod_schemes[2]),
        .Q(mapper_selected_mod[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mapper_selected_mod_reg[1] 
       (.C(clk),
        .CE(p_12_in),
        .D(mod_cod_schemes[3]),
        .Q(mapper_selected_mod[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mapper_selected_mod_reg[2] 
       (.C(clk),
        .CE(p_12_in),
        .D(mod_cod_schemes[4]),
        .Q(mapper_selected_mod[2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00040000)) 
    \pilot_symbols[0]_i_1 
       (.I0(reset),
        .I1(mapper_dout_last),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(pilot_symbols0));
  LUT2 #(
    .INIT(4'h4)) 
    \pilot_symbols[0]_i_10 
       (.I0(pilot_symbols_reg[0]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[0]_i_3 
       (.I0(pilot_symbols_reg__0[7]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[0]_i_4 
       (.I0(pilot_symbols_reg[6]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[0]_i_5 
       (.I0(pilot_symbols_reg[5]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[0]_i_6 
       (.I0(pilot_symbols_reg[4]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[0]_i_7 
       (.I0(pilot_symbols_reg[3]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[0]_i_8 
       (.I0(pilot_symbols_reg[2]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[0]_i_9 
       (.I0(pilot_symbols_reg[1]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[16]_i_2 
       (.I0(pilot_symbols_reg__0[23]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[16]_i_3 
       (.I0(pilot_symbols_reg__0[22]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[16]_i_4 
       (.I0(pilot_symbols_reg__0[21]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[16]_i_5 
       (.I0(pilot_symbols_reg__0[20]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[16]_i_6 
       (.I0(pilot_symbols_reg__0[19]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[16]_i_7 
       (.I0(pilot_symbols_reg__0[18]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[16]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[16]_i_8 
       (.I0(pilot_symbols_reg__0[17]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[16]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[16]_i_9 
       (.I0(pilot_symbols_reg__0[16]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[16]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[24]_i_2 
       (.I0(pilot_symbols_reg__0[31]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[24]_i_3 
       (.I0(pilot_symbols_reg__0[30]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[24]_i_4 
       (.I0(pilot_symbols_reg__0[29]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[24]_i_5 
       (.I0(pilot_symbols_reg__0[28]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[24]_i_6 
       (.I0(pilot_symbols_reg__0[27]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[24]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[24]_i_7 
       (.I0(pilot_symbols_reg__0[26]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[24]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[24]_i_8 
       (.I0(pilot_symbols_reg__0[25]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[24]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[24]_i_9 
       (.I0(pilot_symbols_reg__0[24]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[24]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[8]_i_2 
       (.I0(pilot_symbols_reg__0[15]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[8]_i_3 
       (.I0(pilot_symbols_reg__0[14]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[8]_i_4 
       (.I0(pilot_symbols_reg__0[13]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[8]_i_5 
       (.I0(pilot_symbols_reg__0[12]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[8]_i_6 
       (.I0(pilot_symbols_reg__0[11]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[8]_i_7 
       (.I0(pilot_symbols_reg__0[10]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[8]_i_8 
       (.I0(pilot_symbols_reg__0[9]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pilot_symbols[8]_i_9 
       (.I0(pilot_symbols_reg__0[8]),
        .I1(dpd_din_data_I1),
        .O(\pilot_symbols[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[0] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[0]_i_2_n_15 ),
        .Q(pilot_symbols_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \pilot_symbols_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\pilot_symbols_reg[0]_i_2_n_0 ,\pilot_symbols_reg[0]_i_2_n_1 ,\pilot_symbols_reg[0]_i_2_n_2 ,\pilot_symbols_reg[0]_i_2_n_3 ,\pilot_symbols_reg[0]_i_2_n_4 ,\pilot_symbols_reg[0]_i_2_n_5 ,\pilot_symbols_reg[0]_i_2_n_6 ,\pilot_symbols_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dpd_din_data_I1}),
        .O({\pilot_symbols_reg[0]_i_2_n_8 ,\pilot_symbols_reg[0]_i_2_n_9 ,\pilot_symbols_reg[0]_i_2_n_10 ,\pilot_symbols_reg[0]_i_2_n_11 ,\pilot_symbols_reg[0]_i_2_n_12 ,\pilot_symbols_reg[0]_i_2_n_13 ,\pilot_symbols_reg[0]_i_2_n_14 ,\pilot_symbols_reg[0]_i_2_n_15 }),
        .S({\pilot_symbols[0]_i_3_n_0 ,\pilot_symbols[0]_i_4_n_0 ,\pilot_symbols[0]_i_5_n_0 ,\pilot_symbols[0]_i_6_n_0 ,\pilot_symbols[0]_i_7_n_0 ,\pilot_symbols[0]_i_8_n_0 ,\pilot_symbols[0]_i_9_n_0 ,\pilot_symbols[0]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[10] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[8]_i_1_n_13 ),
        .Q(pilot_symbols_reg__0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[11] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[8]_i_1_n_12 ),
        .Q(pilot_symbols_reg__0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[12] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[8]_i_1_n_11 ),
        .Q(pilot_symbols_reg__0[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[13] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[8]_i_1_n_10 ),
        .Q(pilot_symbols_reg__0[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[14] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[8]_i_1_n_9 ),
        .Q(pilot_symbols_reg__0[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[15] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[8]_i_1_n_8 ),
        .Q(pilot_symbols_reg__0[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[16] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[16]_i_1_n_15 ),
        .Q(pilot_symbols_reg__0[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \pilot_symbols_reg[16]_i_1 
       (.CI(\pilot_symbols_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\pilot_symbols_reg[16]_i_1_n_0 ,\pilot_symbols_reg[16]_i_1_n_1 ,\pilot_symbols_reg[16]_i_1_n_2 ,\pilot_symbols_reg[16]_i_1_n_3 ,\pilot_symbols_reg[16]_i_1_n_4 ,\pilot_symbols_reg[16]_i_1_n_5 ,\pilot_symbols_reg[16]_i_1_n_6 ,\pilot_symbols_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\pilot_symbols_reg[16]_i_1_n_8 ,\pilot_symbols_reg[16]_i_1_n_9 ,\pilot_symbols_reg[16]_i_1_n_10 ,\pilot_symbols_reg[16]_i_1_n_11 ,\pilot_symbols_reg[16]_i_1_n_12 ,\pilot_symbols_reg[16]_i_1_n_13 ,\pilot_symbols_reg[16]_i_1_n_14 ,\pilot_symbols_reg[16]_i_1_n_15 }),
        .S({\pilot_symbols[16]_i_2_n_0 ,\pilot_symbols[16]_i_3_n_0 ,\pilot_symbols[16]_i_4_n_0 ,\pilot_symbols[16]_i_5_n_0 ,\pilot_symbols[16]_i_6_n_0 ,\pilot_symbols[16]_i_7_n_0 ,\pilot_symbols[16]_i_8_n_0 ,\pilot_symbols[16]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[17] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[16]_i_1_n_14 ),
        .Q(pilot_symbols_reg__0[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[18] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[16]_i_1_n_13 ),
        .Q(pilot_symbols_reg__0[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[19] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[16]_i_1_n_12 ),
        .Q(pilot_symbols_reg__0[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[1] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[0]_i_2_n_14 ),
        .Q(pilot_symbols_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[20] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[16]_i_1_n_11 ),
        .Q(pilot_symbols_reg__0[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[21] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[16]_i_1_n_10 ),
        .Q(pilot_symbols_reg__0[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[22] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[16]_i_1_n_9 ),
        .Q(pilot_symbols_reg__0[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[23] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[16]_i_1_n_8 ),
        .Q(pilot_symbols_reg__0[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[24] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[24]_i_1_n_15 ),
        .Q(pilot_symbols_reg__0[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \pilot_symbols_reg[24]_i_1 
       (.CI(\pilot_symbols_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_pilot_symbols_reg[24]_i_1_CO_UNCONNECTED [7],\pilot_symbols_reg[24]_i_1_n_1 ,\pilot_symbols_reg[24]_i_1_n_2 ,\pilot_symbols_reg[24]_i_1_n_3 ,\pilot_symbols_reg[24]_i_1_n_4 ,\pilot_symbols_reg[24]_i_1_n_5 ,\pilot_symbols_reg[24]_i_1_n_6 ,\pilot_symbols_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\pilot_symbols_reg[24]_i_1_n_8 ,\pilot_symbols_reg[24]_i_1_n_9 ,\pilot_symbols_reg[24]_i_1_n_10 ,\pilot_symbols_reg[24]_i_1_n_11 ,\pilot_symbols_reg[24]_i_1_n_12 ,\pilot_symbols_reg[24]_i_1_n_13 ,\pilot_symbols_reg[24]_i_1_n_14 ,\pilot_symbols_reg[24]_i_1_n_15 }),
        .S({\pilot_symbols[24]_i_2_n_0 ,\pilot_symbols[24]_i_3_n_0 ,\pilot_symbols[24]_i_4_n_0 ,\pilot_symbols[24]_i_5_n_0 ,\pilot_symbols[24]_i_6_n_0 ,\pilot_symbols[24]_i_7_n_0 ,\pilot_symbols[24]_i_8_n_0 ,\pilot_symbols[24]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[25] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[24]_i_1_n_14 ),
        .Q(pilot_symbols_reg__0[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[26] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[24]_i_1_n_13 ),
        .Q(pilot_symbols_reg__0[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[27] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[24]_i_1_n_12 ),
        .Q(pilot_symbols_reg__0[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[28] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[24]_i_1_n_11 ),
        .Q(pilot_symbols_reg__0[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[29] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[24]_i_1_n_10 ),
        .Q(pilot_symbols_reg__0[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[2] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[0]_i_2_n_13 ),
        .Q(pilot_symbols_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[30] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[24]_i_1_n_9 ),
        .Q(pilot_symbols_reg__0[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[31] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[24]_i_1_n_8 ),
        .Q(pilot_symbols_reg__0[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[3] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[0]_i_2_n_12 ),
        .Q(pilot_symbols_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[4] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[0]_i_2_n_11 ),
        .Q(pilot_symbols_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[5] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[0]_i_2_n_10 ),
        .Q(pilot_symbols_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[6] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[0]_i_2_n_9 ),
        .Q(pilot_symbols_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[7] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[0]_i_2_n_8 ),
        .Q(pilot_symbols_reg__0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[8] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[8]_i_1_n_15 ),
        .Q(pilot_symbols_reg__0[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \pilot_symbols_reg[8]_i_1 
       (.CI(\pilot_symbols_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\pilot_symbols_reg[8]_i_1_n_0 ,\pilot_symbols_reg[8]_i_1_n_1 ,\pilot_symbols_reg[8]_i_1_n_2 ,\pilot_symbols_reg[8]_i_1_n_3 ,\pilot_symbols_reg[8]_i_1_n_4 ,\pilot_symbols_reg[8]_i_1_n_5 ,\pilot_symbols_reg[8]_i_1_n_6 ,\pilot_symbols_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\pilot_symbols_reg[8]_i_1_n_8 ,\pilot_symbols_reg[8]_i_1_n_9 ,\pilot_symbols_reg[8]_i_1_n_10 ,\pilot_symbols_reg[8]_i_1_n_11 ,\pilot_symbols_reg[8]_i_1_n_12 ,\pilot_symbols_reg[8]_i_1_n_13 ,\pilot_symbols_reg[8]_i_1_n_14 ,\pilot_symbols_reg[8]_i_1_n_15 }),
        .S({\pilot_symbols[8]_i_2_n_0 ,\pilot_symbols[8]_i_3_n_0 ,\pilot_symbols[8]_i_4_n_0 ,\pilot_symbols[8]_i_5_n_0 ,\pilot_symbols[8]_i_6_n_0 ,\pilot_symbols[8]_i_7_n_0 ,\pilot_symbols[8]_i_8_n_0 ,\pilot_symbols[8]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pilot_symbols_reg[9] 
       (.C(clk),
        .CE(pilot_symbols0),
        .D(\pilot_symbols_reg[8]_i_1_n_14 ),
        .Q(pilot_symbols_reg__0[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    scrambler_control_enable_i_1
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(control_unit_din_valid),
        .O(scrambler_control_enable_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    scrambler_control_enable_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(scrambler_control_enable_i_1_n_0),
        .Q(scrambler_control_enable));
  LUT6 #(
    .INIT(64'hFFFFFFFF202222AA)) 
    \scrambler_din_data[0]_i_1 
       (.I0(control_unit_din_data[0]),
        .I1(state[2]),
        .I2(\control_unit_states.n_reg [3]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\scrambler_din_data[0]_i_2_n_0 ),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[0]_i_2 
       (.I0(\scrambler_din_data[11]_i_3_n_0 ),
        .I1(num_words[15]),
        .I2(\scrambler_din_data[31]_i_2_n_0 ),
        .I3(mod_cod_schemes[0]),
        .I4(scrambler_init[15]),
        .I5(\scrambler_din_data[31]_i_3_n_0 ),
        .O(\scrambler_din_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF202222AA)) 
    \scrambler_din_data[10]_i_1 
       (.I0(control_unit_din_data[10]),
        .I1(state[2]),
        .I2(\control_unit_states.n_reg [3]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\scrambler_din_data[10]_i_2_n_0 ),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[10]_i_2 
       (.I0(\scrambler_din_data[11]_i_3_n_0 ),
        .I1(phy_dest_address[3]),
        .I2(\scrambler_din_data[31]_i_2_n_0 ),
        .I3(ref_distance[0]),
        .I4(scrambler_init[25]),
        .I5(\scrambler_din_data[31]_i_3_n_0 ),
        .O(\scrambler_din_data[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF202222AA)) 
    \scrambler_din_data[11]_i_1 
       (.I0(control_unit_din_data[11]),
        .I1(state[2]),
        .I2(\control_unit_states.n_reg [3]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\scrambler_din_data[11]_i_2_n_0 ),
        .O(p_0_in[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[11]_i_2 
       (.I0(\scrambler_din_data[11]_i_3_n_0 ),
        .I1(phy_dest_address[4]),
        .I2(\scrambler_din_data[31]_i_2_n_0 ),
        .I3(ref_distance[1]),
        .I4(scrambler_init[26]),
        .I5(\scrambler_din_data[31]_i_3_n_0 ),
        .O(\scrambler_din_data[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \scrambler_din_data[11]_i_3 
       (.I0(\control_unit_states.n_reg [0]),
        .I1(\control_unit_states.n_reg [1]),
        .I2(\control_unit_states.n_reg [2]),
        .I3(\control_unit_states.n_reg [3]),
        .I4(\scrambler_din_data[31]_i_5_n_0 ),
        .I5(state[2]),
        .O(\scrambler_din_data[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[12]_i_1 
       (.I0(\scrambler_din_data[31]_i_2_n_0 ),
        .I1(ref_distance[2]),
        .I2(\scrambler_din_data[31]_i_3_n_0 ),
        .I3(scrambler_init[27]),
        .I4(control_unit_din_data[12]),
        .I5(\scrambler_din_data[31]_i_4_n_0 ),
        .O(p_0_in[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[13]_i_1 
       (.I0(\scrambler_din_data[31]_i_2_n_0 ),
        .I1(ref_distance[3]),
        .I2(\scrambler_din_data[31]_i_3_n_0 ),
        .I3(scrambler_init[28]),
        .I4(control_unit_din_data[13]),
        .I5(\scrambler_din_data[31]_i_4_n_0 ),
        .O(p_0_in[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[14]_i_1 
       (.I0(\scrambler_din_data[31]_i_2_n_0 ),
        .I1(ref_distance[4]),
        .I2(\scrambler_din_data[31]_i_3_n_0 ),
        .I3(scrambler_init[29]),
        .I4(control_unit_din_data[14]),
        .I5(\scrambler_din_data[31]_i_4_n_0 ),
        .O(p_0_in[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[15]_i_1 
       (.I0(\scrambler_din_data[31]_i_2_n_0 ),
        .I1(ref_distance[5]),
        .I2(\scrambler_din_data[31]_i_3_n_0 ),
        .I3(scrambler_init[30]),
        .I4(control_unit_din_data[15]),
        .I5(\scrambler_din_data[31]_i_4_n_0 ),
        .O(p_0_in[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[16]_i_1 
       (.I0(\scrambler_din_data[31]_i_2_n_0 ),
        .I1(ref_distance[6]),
        .I2(\scrambler_din_data[31]_i_3_n_0 ),
        .I3(scrambler_init[31]),
        .I4(control_unit_din_data[16]),
        .I5(\scrambler_din_data[31]_i_4_n_0 ),
        .O(p_0_in[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[17]_i_1 
       (.I0(\scrambler_din_data[31]_i_2_n_0 ),
        .I1(ref_distance[7]),
        .I2(\scrambler_din_data[31]_i_3_n_0 ),
        .I3(num_words[0]),
        .I4(control_unit_din_data[17]),
        .I5(\scrambler_din_data[31]_i_4_n_0 ),
        .O(p_0_in[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[18]_i_1 
       (.I0(\scrambler_din_data[31]_i_2_n_0 ),
        .I1(scrambler_init[1]),
        .I2(\scrambler_din_data[31]_i_3_n_0 ),
        .I3(num_words[1]),
        .I4(control_unit_din_data[18]),
        .I5(\scrambler_din_data[31]_i_4_n_0 ),
        .O(p_0_in[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[19]_i_1 
       (.I0(\scrambler_din_data[31]_i_2_n_0 ),
        .I1(scrambler_init[2]),
        .I2(\scrambler_din_data[31]_i_3_n_0 ),
        .I3(num_words[2]),
        .I4(control_unit_din_data[19]),
        .I5(\scrambler_din_data[31]_i_4_n_0 ),
        .O(p_0_in[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFF202222AA)) 
    \scrambler_din_data[1]_i_1 
       (.I0(control_unit_din_data[1]),
        .I1(state[2]),
        .I2(\control_unit_states.n_reg [3]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\scrambler_din_data[1]_i_2_n_0 ),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[1]_i_2 
       (.I0(\scrambler_din_data[11]_i_3_n_0 ),
        .I1(start_tx),
        .I2(\scrambler_din_data[31]_i_2_n_0 ),
        .I3(mod_cod_schemes[1]),
        .I4(scrambler_init[16]),
        .I5(\scrambler_din_data[31]_i_3_n_0 ),
        .O(\scrambler_din_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[20]_i_1 
       (.I0(\scrambler_din_data[31]_i_2_n_0 ),
        .I1(scrambler_init[3]),
        .I2(\scrambler_din_data[31]_i_3_n_0 ),
        .I3(num_words[3]),
        .I4(control_unit_din_data[20]),
        .I5(\scrambler_din_data[31]_i_4_n_0 ),
        .O(p_0_in[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[21]_i_1 
       (.I0(\scrambler_din_data[31]_i_2_n_0 ),
        .I1(scrambler_init[4]),
        .I2(\scrambler_din_data[31]_i_3_n_0 ),
        .I3(num_words[4]),
        .I4(control_unit_din_data[21]),
        .I5(\scrambler_din_data[31]_i_4_n_0 ),
        .O(p_0_in[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[22]_i_1 
       (.I0(\scrambler_din_data[31]_i_2_n_0 ),
        .I1(scrambler_init[5]),
        .I2(\scrambler_din_data[31]_i_3_n_0 ),
        .I3(num_words[5]),
        .I4(control_unit_din_data[22]),
        .I5(\scrambler_din_data[31]_i_4_n_0 ),
        .O(p_0_in[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[23]_i_1 
       (.I0(\scrambler_din_data[31]_i_2_n_0 ),
        .I1(scrambler_init[6]),
        .I2(\scrambler_din_data[31]_i_3_n_0 ),
        .I3(num_words[6]),
        .I4(control_unit_din_data[23]),
        .I5(\scrambler_din_data[31]_i_4_n_0 ),
        .O(p_0_in[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[24]_i_1 
       (.I0(\scrambler_din_data[31]_i_2_n_0 ),
        .I1(scrambler_init[7]),
        .I2(\scrambler_din_data[31]_i_3_n_0 ),
        .I3(num_words[7]),
        .I4(control_unit_din_data[24]),
        .I5(\scrambler_din_data[31]_i_4_n_0 ),
        .O(p_0_in[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[25]_i_1 
       (.I0(\scrambler_din_data[31]_i_2_n_0 ),
        .I1(scrambler_init[8]),
        .I2(\scrambler_din_data[31]_i_3_n_0 ),
        .I3(num_words[8]),
        .I4(control_unit_din_data[25]),
        .I5(\scrambler_din_data[31]_i_4_n_0 ),
        .O(p_0_in[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[26]_i_1 
       (.I0(\scrambler_din_data[31]_i_2_n_0 ),
        .I1(scrambler_init[9]),
        .I2(\scrambler_din_data[31]_i_3_n_0 ),
        .I3(num_words[9]),
        .I4(control_unit_din_data[26]),
        .I5(\scrambler_din_data[31]_i_4_n_0 ),
        .O(p_0_in[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[27]_i_1 
       (.I0(\scrambler_din_data[31]_i_2_n_0 ),
        .I1(scrambler_init[10]),
        .I2(\scrambler_din_data[31]_i_3_n_0 ),
        .I3(num_words[10]),
        .I4(control_unit_din_data[27]),
        .I5(\scrambler_din_data[31]_i_4_n_0 ),
        .O(p_0_in[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[28]_i_1 
       (.I0(\scrambler_din_data[31]_i_2_n_0 ),
        .I1(scrambler_init[11]),
        .I2(\scrambler_din_data[31]_i_3_n_0 ),
        .I3(num_words[11]),
        .I4(control_unit_din_data[28]),
        .I5(\scrambler_din_data[31]_i_4_n_0 ),
        .O(p_0_in[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[29]_i_1 
       (.I0(\scrambler_din_data[31]_i_2_n_0 ),
        .I1(scrambler_init[12]),
        .I2(\scrambler_din_data[31]_i_3_n_0 ),
        .I3(num_words[12]),
        .I4(control_unit_din_data[29]),
        .I5(\scrambler_din_data[31]_i_4_n_0 ),
        .O(p_0_in[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFF202222AA)) 
    \scrambler_din_data[2]_i_1 
       (.I0(control_unit_din_data[2]),
        .I1(state[2]),
        .I2(\control_unit_states.n_reg [3]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\scrambler_din_data[2]_i_2_n_0 ),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[2]_i_2 
       (.I0(\scrambler_din_data[11]_i_3_n_0 ),
        .I1(phy_src_address[0]),
        .I2(\scrambler_din_data[31]_i_2_n_0 ),
        .I3(mod_cod_schemes[2]),
        .I4(scrambler_init[17]),
        .I5(\scrambler_din_data[31]_i_3_n_0 ),
        .O(\scrambler_din_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[30]_i_1 
       (.I0(\scrambler_din_data[31]_i_2_n_0 ),
        .I1(scrambler_init[13]),
        .I2(\scrambler_din_data[31]_i_3_n_0 ),
        .I3(num_words[13]),
        .I4(control_unit_din_data[30]),
        .I5(\scrambler_din_data[31]_i_4_n_0 ),
        .O(p_0_in[30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[31]_i_1 
       (.I0(\scrambler_din_data[31]_i_2_n_0 ),
        .I1(scrambler_init[14]),
        .I2(\scrambler_din_data[31]_i_3_n_0 ),
        .I3(num_words[14]),
        .I4(control_unit_din_data[31]),
        .I5(\scrambler_din_data[31]_i_4_n_0 ),
        .O(p_0_in[31]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \scrambler_din_data[31]_i_2 
       (.I0(\control_unit_states.n_reg [1]),
        .I1(state[2]),
        .I2(\scrambler_din_data[31]_i_5_n_0 ),
        .I3(\control_unit_states.n_reg [3]),
        .I4(\control_unit_states.n_reg [2]),
        .I5(\control_unit_states.n_reg [0]),
        .O(\scrambler_din_data[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \scrambler_din_data[31]_i_3 
       (.I0(\control_unit_states.n_reg [1]),
        .I1(state[2]),
        .I2(\scrambler_din_data[31]_i_5_n_0 ),
        .I3(\control_unit_states.n_reg [3]),
        .I4(\control_unit_states.n_reg [2]),
        .I5(\control_unit_states.n_reg [0]),
        .O(\scrambler_din_data[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h455F)) 
    \scrambler_din_data[31]_i_4 
       (.I0(state[2]),
        .I1(\control_unit_states.n_reg [3]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\scrambler_din_data[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \scrambler_din_data[31]_i_5 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\scrambler_din_data[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF202222AA)) 
    \scrambler_din_data[3]_i_1 
       (.I0(control_unit_din_data[3]),
        .I1(state[2]),
        .I2(\control_unit_states.n_reg [3]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\scrambler_din_data[3]_i_2_n_0 ),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[3]_i_2 
       (.I0(\scrambler_din_data[11]_i_3_n_0 ),
        .I1(phy_src_address[1]),
        .I2(\scrambler_din_data[31]_i_2_n_0 ),
        .I3(mod_cod_schemes[3]),
        .I4(scrambler_init[18]),
        .I5(\scrambler_din_data[31]_i_3_n_0 ),
        .O(\scrambler_din_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF202222AA)) 
    \scrambler_din_data[4]_i_1 
       (.I0(control_unit_din_data[4]),
        .I1(state[2]),
        .I2(\control_unit_states.n_reg [3]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\scrambler_din_data[4]_i_2_n_0 ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[4]_i_2 
       (.I0(\scrambler_din_data[11]_i_3_n_0 ),
        .I1(phy_src_address[2]),
        .I2(\scrambler_din_data[31]_i_2_n_0 ),
        .I3(mod_cod_schemes[4]),
        .I4(scrambler_init[19]),
        .I5(\scrambler_din_data[31]_i_3_n_0 ),
        .O(\scrambler_din_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF202222AA)) 
    \scrambler_din_data[5]_i_1 
       (.I0(control_unit_din_data[5]),
        .I1(state[2]),
        .I2(\control_unit_states.n_reg [3]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\scrambler_din_data[5]_i_2_n_0 ),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[5]_i_2 
       (.I0(\scrambler_din_data[11]_i_3_n_0 ),
        .I1(phy_src_address[3]),
        .I2(\scrambler_din_data[31]_i_2_n_0 ),
        .I3(num_streams[0]),
        .I4(scrambler_init[20]),
        .I5(\scrambler_din_data[31]_i_3_n_0 ),
        .O(\scrambler_din_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF202222AA)) 
    \scrambler_din_data[6]_i_1 
       (.I0(control_unit_din_data[6]),
        .I1(state[2]),
        .I2(\control_unit_states.n_reg [3]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\scrambler_din_data[6]_i_2_n_0 ),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[6]_i_2 
       (.I0(\scrambler_din_data[11]_i_3_n_0 ),
        .I1(phy_src_address[4]),
        .I2(\scrambler_din_data[31]_i_2_n_0 ),
        .I3(num_streams[1]),
        .I4(scrambler_init[21]),
        .I5(\scrambler_din_data[31]_i_3_n_0 ),
        .O(\scrambler_din_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF202222AA)) 
    \scrambler_din_data[7]_i_1 
       (.I0(control_unit_din_data[7]),
        .I1(state[2]),
        .I2(\control_unit_states.n_reg [3]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\scrambler_din_data[7]_i_2_n_0 ),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[7]_i_2 
       (.I0(\scrambler_din_data[11]_i_3_n_0 ),
        .I1(phy_dest_address[0]),
        .I2(\scrambler_din_data[31]_i_2_n_0 ),
        .I3(num_streams[2]),
        .I4(scrambler_init[22]),
        .I5(\scrambler_din_data[31]_i_3_n_0 ),
        .O(\scrambler_din_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF202222AA)) 
    \scrambler_din_data[8]_i_1 
       (.I0(control_unit_din_data[8]),
        .I1(state[2]),
        .I2(\control_unit_states.n_reg [3]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\scrambler_din_data[8]_i_2_n_0 ),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[8]_i_2 
       (.I0(\scrambler_din_data[11]_i_3_n_0 ),
        .I1(phy_dest_address[1]),
        .I2(\scrambler_din_data[31]_i_2_n_0 ),
        .I3(num_streams[3]),
        .I4(scrambler_init[23]),
        .I5(\scrambler_din_data[31]_i_3_n_0 ),
        .O(\scrambler_din_data[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF202222AA)) 
    \scrambler_din_data[9]_i_1 
       (.I0(control_unit_din_data[9]),
        .I1(state[2]),
        .I2(\control_unit_states.n_reg [3]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\scrambler_din_data[9]_i_2_n_0 ),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \scrambler_din_data[9]_i_2 
       (.I0(\scrambler_din_data[11]_i_3_n_0 ),
        .I1(phy_dest_address[2]),
        .I2(\scrambler_din_data[31]_i_2_n_0 ),
        .I3(num_streams[4]),
        .I4(scrambler_init[24]),
        .I5(\scrambler_din_data[31]_i_3_n_0 ),
        .O(\scrambler_din_data[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[0]),
        .Q(scrambler_din_data[0]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[10]),
        .Q(scrambler_din_data[10]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[11]),
        .Q(scrambler_din_data[11]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[12]),
        .Q(scrambler_din_data[12]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[13]),
        .Q(scrambler_din_data[13]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[14]),
        .Q(scrambler_din_data[14]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[15]),
        .Q(scrambler_din_data[15]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[16]),
        .Q(scrambler_din_data[16]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[17]),
        .Q(scrambler_din_data[17]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[18]),
        .Q(scrambler_din_data[18]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[19]),
        .Q(scrambler_din_data[19]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[1]),
        .Q(scrambler_din_data[1]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[20]),
        .Q(scrambler_din_data[20]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[21]),
        .Q(scrambler_din_data[21]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[22]),
        .Q(scrambler_din_data[22]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[23]),
        .Q(scrambler_din_data[23]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[24]),
        .Q(scrambler_din_data[24]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[25]),
        .Q(scrambler_din_data[25]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[26]),
        .Q(scrambler_din_data[26]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[27]),
        .Q(scrambler_din_data[27]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[28]),
        .Q(scrambler_din_data[28]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[29]),
        .Q(scrambler_din_data[29]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[2]),
        .Q(scrambler_din_data[2]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[30]),
        .Q(scrambler_din_data[30]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[31]),
        .Q(scrambler_din_data[31]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[3]),
        .Q(scrambler_din_data[3]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[4]),
        .Q(scrambler_din_data[4]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[5]),
        .Q(scrambler_din_data[5]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[6]),
        .Q(scrambler_din_data[6]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[7]),
        .Q(scrambler_din_data[7]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[8]),
        .Q(scrambler_din_data[8]));
  FDCE #(
    .INIT(1'b0)) 
    \scrambler_din_data_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[9]),
        .Q(scrambler_din_data[9]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h0202EAAA)) 
    scrambler_din_last_i_1
       (.I0(control_unit_end_of_frame),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\control_unit_states.n_reg [3]),
        .I4(state[2]),
        .O(scrambler_din_last_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    scrambler_din_last_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(scrambler_din_last_i_1_n_0),
        .Q(scrambler_din_last));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h133F1000)) 
    scrambler_din_valid_i_1
       (.I0(\control_unit_states.n_reg [3]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(control_unit_din_valid),
        .O(scrambler_din_valid_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    scrambler_din_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(scrambler_din_valid_i_1_n_0),
        .Q(scrambler_din_valid));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    scrambler_last_frame_i_1
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(control_unit_end_of_frame),
        .O(scrambler_last_frame_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    scrambler_last_frame_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(scrambler_last_frame_i_1_n_0),
        .Q(scrambler_last_frame));
  LUT1 #(
    .INIT(2'h1)) 
    \scrambler_seed[31]_i_1 
       (.I0(reset),
        .O(p_12_in));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[10] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[10]),
        .Q(scrambler_seed[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[11] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[11]),
        .Q(scrambler_seed[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[12] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[12]),
        .Q(scrambler_seed[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[13] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[13]),
        .Q(scrambler_seed[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[14] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[14]),
        .Q(scrambler_seed[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[15] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[15]),
        .Q(scrambler_seed[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[16] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[16]),
        .Q(scrambler_seed[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[17] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[17]),
        .Q(scrambler_seed[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[18] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[18]),
        .Q(scrambler_seed[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[19] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[19]),
        .Q(scrambler_seed[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[1] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[1]),
        .Q(scrambler_seed[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[20] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[20]),
        .Q(scrambler_seed[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[21] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[21]),
        .Q(scrambler_seed[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[22] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[22]),
        .Q(scrambler_seed[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[23] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[23]),
        .Q(scrambler_seed[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[24] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[24]),
        .Q(scrambler_seed[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[25] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[25]),
        .Q(scrambler_seed[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[26] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[26]),
        .Q(scrambler_seed[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[27] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[27]),
        .Q(scrambler_seed[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[28] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[28]),
        .Q(scrambler_seed[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[29] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[29]),
        .Q(scrambler_seed[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[2] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[2]),
        .Q(scrambler_seed[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[30] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[30]),
        .Q(scrambler_seed[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[31] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[31]),
        .Q(scrambler_seed[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[3] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[3]),
        .Q(scrambler_seed[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[4] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[4]),
        .Q(scrambler_seed[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[5] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[5]),
        .Q(scrambler_seed[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[6] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[6]),
        .Q(scrambler_seed[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[7] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[7]),
        .Q(scrambler_seed[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[8] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[8]),
        .Q(scrambler_seed[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_seed_reg[9] 
       (.C(clk),
        .CE(p_12_in),
        .D(scrambler_init[9]),
        .Q(scrambler_seed[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    signal_field_en_i_1
       (.I0(\control_unit_states.n_reg [3]),
        .O(signal_field_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    signal_field_en_reg
       (.C(clk),
        .CE(encoder_code_rate0),
        .D(signal_field_en_i_1_n_0),
        .Q(signal_field_en),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[0] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[0]),
        .Q(splitter_data_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[10] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[10]),
        .Q(splitter_data_in[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[11] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[11]),
        .Q(splitter_data_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[12] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[12]),
        .Q(splitter_data_in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[13] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[13]),
        .Q(splitter_data_in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[14] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[14]),
        .Q(splitter_data_in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[15] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[15]),
        .Q(splitter_data_in[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[16] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[16]),
        .Q(splitter_data_in[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[17] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[17]),
        .Q(splitter_data_in[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[18] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[18]),
        .Q(splitter_data_in[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[19] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[19]),
        .Q(splitter_data_in[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[1] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[1]),
        .Q(splitter_data_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[20] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[20]),
        .Q(splitter_data_in[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[21] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[21]),
        .Q(splitter_data_in[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[22] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[22]),
        .Q(splitter_data_in[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[23] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[23]),
        .Q(splitter_data_in[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[24] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[24]),
        .Q(splitter_data_in[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[25] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[25]),
        .Q(splitter_data_in[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[26] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[26]),
        .Q(splitter_data_in[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[27] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[27]),
        .Q(splitter_data_in[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[28] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[28]),
        .Q(splitter_data_in[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[29] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[29]),
        .Q(splitter_data_in[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[2] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[2]),
        .Q(splitter_data_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[30] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[30]),
        .Q(splitter_data_in[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[31] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[31]),
        .Q(splitter_data_in[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[3] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[3]),
        .Q(splitter_data_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[4] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[4]),
        .Q(splitter_data_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[5] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[5]),
        .Q(splitter_data_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[6] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[6]),
        .Q(splitter_data_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[7] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[7]),
        .Q(splitter_data_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[8] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[8]),
        .Q(splitter_data_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \splitter_data_in_reg[9] 
       (.C(clk),
        .CE(interleaver_din_ready015_out),
        .D(interleaver_dout_data[9]),
        .Q(splitter_data_in[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h000022FA)) 
    \state[0]_i_1 
       (.I0(state[1]),
        .I1(\control_unit_states.n_reg [3]),
        .I2(start_tx),
        .I3(state[0]),
        .I4(state[2]),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h007A)) 
    \state[1]_i_1 
       (.I0(state[1]),
        .I1(\control_unit_states.n_reg [3]),
        .I2(state[0]),
        .I3(state[2]),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFA8FFFEFFFF)) 
    \state[2]_i_1 
       (.I0(\control_unit_states.i_reg_n_0_[3] ),
        .I1(\control_unit_states.i_reg_n_0_[1] ),
        .I2(\control_unit_states.i_reg_n_0_[2] ),
        .I3(state[2]),
        .I4(state[1]),
        .I5(state[0]),
        .O(\state[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state[2]_i_10 
       (.I0(pilot_symbols_reg__0[23]),
        .I1(pilot_symbols_reg__0[22]),
        .O(\state[2]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \state[2]_i_11 
       (.I0(pilot_symbols_reg__0[7]),
        .O(\state[2]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state[2]_i_12 
       (.I0(pilot_symbols_reg__0[21]),
        .I1(pilot_symbols_reg__0[20]),
        .O(\state[2]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state[2]_i_13 
       (.I0(pilot_symbols_reg__0[19]),
        .I1(pilot_symbols_reg__0[18]),
        .O(\state[2]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state[2]_i_14 
       (.I0(pilot_symbols_reg__0[17]),
        .I1(pilot_symbols_reg__0[16]),
        .O(\state[2]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state[2]_i_15 
       (.I0(pilot_symbols_reg__0[15]),
        .I1(pilot_symbols_reg__0[14]),
        .O(\state[2]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state[2]_i_16 
       (.I0(pilot_symbols_reg__0[13]),
        .I1(pilot_symbols_reg__0[12]),
        .O(\state[2]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state[2]_i_17 
       (.I0(pilot_symbols_reg__0[11]),
        .I1(pilot_symbols_reg__0[10]),
        .O(\state[2]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state[2]_i_18 
       (.I0(pilot_symbols_reg__0[9]),
        .I1(pilot_symbols_reg__0[8]),
        .O(\state[2]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \state[2]_i_19 
       (.I0(pilot_symbols_reg__0[7]),
        .I1(pilot_symbols_reg[6]),
        .O(\state[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0D000F00)) 
    \state[2]_i_2 
       (.I0(interleaver_last_frame),
        .I1(dpd_din_data_I1),
        .I2(control_unit_enable_i_3_n_0),
        .I3(state[2]),
        .I4(mapper_dout_last),
        .I5(\state[2]_i_4_n_0 ),
        .O(\state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \state[2]_i_4 
       (.I0(state[2]),
        .I1(\control_unit_states.n_reg [3]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\state[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state[2]_i_6 
       (.I0(pilot_symbols_reg__0[31]),
        .I1(pilot_symbols_reg__0[30]),
        .O(\state[2]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state[2]_i_7 
       (.I0(pilot_symbols_reg__0[29]),
        .I1(pilot_symbols_reg__0[28]),
        .O(\state[2]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state[2]_i_8 
       (.I0(pilot_symbols_reg__0[27]),
        .I1(pilot_symbols_reg__0[26]),
        .O(\state[2]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state[2]_i_9 
       (.I0(pilot_symbols_reg__0[25]),
        .I1(pilot_symbols_reg__0[24]),
        .O(\state[2]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk),
        .CE(\state[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(\state[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk),
        .CE(\state[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\state[2]_i_2_n_0 ),
        .Q(state[2]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \state_reg[2]_i_3 
       (.CI(\state_reg[2]_i_5_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_state_reg[2]_i_3_CO_UNCONNECTED [7:5],dpd_din_data_I1,\state_reg[2]_i_3_n_4 ,\state_reg[2]_i_3_n_5 ,\state_reg[2]_i_3_n_6 ,\state_reg[2]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,pilot_symbols_reg__0[31],1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state_reg[2]_i_3_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,\state[2]_i_6_n_0 ,\state[2]_i_7_n_0 ,\state[2]_i_8_n_0 ,\state[2]_i_9_n_0 ,\state[2]_i_10_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \state_reg[2]_i_5 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\state_reg[2]_i_5_n_0 ,\state_reg[2]_i_5_n_1 ,\state_reg[2]_i_5_n_2 ,\state_reg[2]_i_5_n_3 ,\state_reg[2]_i_5_n_4 ,\state_reg[2]_i_5_n_5 ,\state_reg[2]_i_5_n_6 ,\state_reg[2]_i_5_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\state[2]_i_11_n_0 }),
        .O(\NLW_state_reg[2]_i_5_O_UNCONNECTED [7:0]),
        .S({\state[2]_i_12_n_0 ,\state[2]_i_13_n_0 ,\state[2]_i_14_n_0 ,\state[2]_i_15_n_0 ,\state[2]_i_16_n_0 ,\state[2]_i_17_n_0 ,\state[2]_i_18_n_0 ,\state[2]_i_19_n_0 }));
  LUT6 #(
    .INIT(64'h00000000CDCFCFCF)) 
    \symbol_counter[0]_i_1 
       (.I0(symbol_counter_reg[8]),
        .I1(\data_splitter.index[5]_i_4_n_0 ),
        .I2(signal_field_en),
        .I3(symbol_counter_reg[9]),
        .I4(symbol_counter_reg[7]),
        .I5(symbol_counter_reg[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \symbol_counter[1]_i_1 
       (.I0(\symbol_counter[6]_i_2_n_0 ),
        .I1(symbol_counter_reg[0]),
        .I2(symbol_counter_reg[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \symbol_counter[2]_i_1 
       (.I0(\symbol_counter[6]_i_2_n_0 ),
        .I1(symbol_counter_reg[1]),
        .I2(symbol_counter_reg[0]),
        .I3(symbol_counter_reg[2]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \symbol_counter[3]_i_1 
       (.I0(\symbol_counter[6]_i_2_n_0 ),
        .I1(symbol_counter_reg[2]),
        .I2(symbol_counter_reg[0]),
        .I3(symbol_counter_reg[1]),
        .I4(symbol_counter_reg[3]),
        .O(p_0_in__2[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \symbol_counter[4]_i_1 
       (.I0(\symbol_counter[6]_i_2_n_0 ),
        .I1(symbol_counter_reg[3]),
        .I2(symbol_counter_reg[1]),
        .I3(symbol_counter_reg[0]),
        .I4(symbol_counter_reg[2]),
        .I5(symbol_counter_reg[4]),
        .O(p_0_in__2[4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \symbol_counter[5]_i_1 
       (.I0(\symbol_counter[6]_i_2_n_0 ),
        .I1(\symbol_counter[5]_i_2_n_0 ),
        .I2(symbol_counter_reg[5]),
        .O(p_0_in__2[5]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \symbol_counter[5]_i_2 
       (.I0(symbol_counter_reg[3]),
        .I1(symbol_counter_reg[1]),
        .I2(symbol_counter_reg[0]),
        .I3(symbol_counter_reg[2]),
        .I4(symbol_counter_reg[4]),
        .O(\symbol_counter[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \symbol_counter[6]_i_1 
       (.I0(\symbol_counter[6]_i_2_n_0 ),
        .I1(\symbol_counter[6]_i_3_n_0 ),
        .I2(symbol_counter_reg[6]),
        .O(p_0_in__2[6]));
  LUT5 #(
    .INIT(32'hFF07FF0F)) 
    \symbol_counter[6]_i_2 
       (.I0(symbol_counter_reg[7]),
        .I1(symbol_counter_reg[9]),
        .I2(signal_field_en),
        .I3(\data_splitter.index[5]_i_4_n_0 ),
        .I4(symbol_counter_reg[8]),
        .O(\symbol_counter[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \symbol_counter[6]_i_3 
       (.I0(symbol_counter_reg[4]),
        .I1(symbol_counter_reg[2]),
        .I2(symbol_counter_reg[0]),
        .I3(symbol_counter_reg[1]),
        .I4(symbol_counter_reg[3]),
        .I5(symbol_counter_reg[5]),
        .O(\symbol_counter[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAA02AA0A55055505)) 
    \symbol_counter[7]_i_1 
       (.I0(\symbol_counter[9]_i_2_n_0 ),
        .I1(symbol_counter_reg[9]),
        .I2(signal_field_en),
        .I3(\data_splitter.index[5]_i_4_n_0 ),
        .I4(symbol_counter_reg[8]),
        .I5(symbol_counter_reg[7]),
        .O(p_0_in__2[7]));
  LUT6 #(
    .INIT(64'hC0C43033F0FF0000)) 
    \symbol_counter[8]_i_1 
       (.I0(symbol_counter_reg[9]),
        .I1(\symbol_counter[9]_i_2_n_0 ),
        .I2(\data_splitter.index[5]_i_4_n_0 ),
        .I3(signal_field_en),
        .I4(symbol_counter_reg[8]),
        .I5(symbol_counter_reg[7]),
        .O(p_0_in__2[8]));
  LUT6 #(
    .INIT(64'h88CFCFCF45000000)) 
    \symbol_counter[9]_i_1 
       (.I0(\symbol_counter[9]_i_2_n_0 ),
        .I1(\data_splitter.index[5]_i_4_n_0 ),
        .I2(signal_field_en),
        .I3(symbol_counter_reg[8]),
        .I4(symbol_counter_reg[7]),
        .I5(symbol_counter_reg[9]),
        .O(p_0_in__2[9]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \symbol_counter[9]_i_2 
       (.I0(\symbol_counter[6]_i_3_n_0 ),
        .I1(symbol_counter_reg[6]),
        .O(\symbol_counter[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[0] 
       (.C(clk),
        .CE(mapper_din_valid_i_1_n_0),
        .CLR(reset),
        .D(p_0_in__2[0]),
        .Q(symbol_counter_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[1] 
       (.C(clk),
        .CE(mapper_din_valid_i_1_n_0),
        .CLR(reset),
        .D(p_0_in__2[1]),
        .Q(symbol_counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[2] 
       (.C(clk),
        .CE(mapper_din_valid_i_1_n_0),
        .CLR(reset),
        .D(p_0_in__2[2]),
        .Q(symbol_counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[3] 
       (.C(clk),
        .CE(mapper_din_valid_i_1_n_0),
        .CLR(reset),
        .D(p_0_in__2[3]),
        .Q(symbol_counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[4] 
       (.C(clk),
        .CE(mapper_din_valid_i_1_n_0),
        .CLR(reset),
        .D(p_0_in__2[4]),
        .Q(symbol_counter_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[5] 
       (.C(clk),
        .CE(mapper_din_valid_i_1_n_0),
        .CLR(reset),
        .D(p_0_in__2[5]),
        .Q(symbol_counter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[6] 
       (.C(clk),
        .CE(mapper_din_valid_i_1_n_0),
        .CLR(reset),
        .D(p_0_in__2[6]),
        .Q(symbol_counter_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[7] 
       (.C(clk),
        .CE(mapper_din_valid_i_1_n_0),
        .CLR(reset),
        .D(p_0_in__2[7]),
        .Q(symbol_counter_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[8] 
       (.C(clk),
        .CE(mapper_din_valid_i_1_n_0),
        .CLR(reset),
        .D(p_0_in__2[8]),
        .Q(symbol_counter_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[9] 
       (.C(clk),
        .CE(mapper_din_valid_i_1_n_0),
        .CLR(reset),
        .D(p_0_in__2[9]),
        .Q(symbol_counter_reg[9]));
  LUT6 #(
    .INIT(64'hFEEEFFFFFEEE0000)) 
    temp_i_1
       (.I0(temp_i_2_n_0),
        .I1(temp_i_3_n_0),
        .I2(\data_splitter.index[5]_i_4_n_0 ),
        .I3(interleaver_din_ready_i_3_n_0),
        .I4(temp_i_4_n_0),
        .I5(temp_reg_n_0),
        .O(temp_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000FF888A88)) 
    temp_i_2
       (.I0(\data_splitter.index_reg [2]),
        .I1(temp_i_5_n_0),
        .I2(\data_splitter.index[5]_i_3_n_0 ),
        .I3(\mapper_din_data[5]_i_11_n_0 ),
        .I4(\data_splitter.index_reg [3]),
        .I5(\data_splitter.index[5]_i_4_n_0 ),
        .O(temp_i_2_n_0));
  LUT6 #(
    .INIT(64'hAA88FFFFAA88EEC8)) 
    temp_i_3
       (.I0(temp_i_6_n_0),
        .I1(\data_splitter.index_reg [4]),
        .I2(\mapper_din_data[5]_i_11_n_0 ),
        .I3(mod_cod_schemes[2]),
        .I4(\data_splitter.index[5]_i_4_n_0 ),
        .I5(\data_splitter.index_reg [5]),
        .O(temp_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF44444445)) 
    temp_i_4
       (.I0(mapper_din_valid_i_2_n_0),
        .I1(temp_reg_n_0),
        .I2(\data_splitter.index_reg [5]),
        .I3(mod_cod_schemes[2]),
        .I4(\mapper_din_data[5]_i_11_n_0 ),
        .I5(\mapper_din_data[5]_i_4_n_0 ),
        .O(temp_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hE0CEC000)) 
    temp_i_5
       (.I0(\data_splitter.index_reg [0]),
        .I1(\data_splitter.index_reg [1]),
        .I2(mod_cod_schemes[3]),
        .I3(mod_cod_schemes[2]),
        .I4(mod_cod_schemes[4]),
        .O(temp_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    temp_i_6
       (.I0(\data_splitter.index[5]_i_4_n_0 ),
        .I1(\data_splitter.index_reg [3]),
        .I2(\data_splitter.index_reg [2]),
        .I3(\data_splitter.index_reg [0]),
        .I4(\data_splitter.index_reg [1]),
        .O(temp_i_6_n_0));
  FDCE #(
    .INIT(1'b0)) 
    temp_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(temp_i_1_n_0),
        .Q(temp_reg_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "Design_2_Control_unit_top_0_0,Control_unit_top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "Control_unit_top,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset,
    control_unit_din_data,
    control_unit_din_valid,
    control_unit_end_of_frame,
    control_unit_dout_ready,
    control_unit_enable,
    mod_cod_schemes,
    num_streams,
    ref_distance,
    scrambler_init,
    num_words,
    start_tx,
    phy_src_address,
    phy_dest_address,
    scrambler_din_data,
    scrambler_seed,
    scrambler_din_valid,
    scrambler_din_last,
    scrambler_control_enable,
    scrambler_last_frame,
    encoder_code_rate,
    interleaver_dout_valid,
    interleaver_dout_data,
    interleaver_last_frame,
    interleaver_din_ready,
    mapper_dout_last,
    mapper_selected_mod,
    mapper_din_data,
    mapper_din_valid,
    mapper_din_last,
    dpd_din_valid,
    dpd_din_data_I,
    dpd_din_data_Q,
    multi_din_ready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Design_2_clk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [31:0]control_unit_din_data;
  input control_unit_din_valid;
  input control_unit_end_of_frame;
  output control_unit_dout_ready;
  output control_unit_enable;
  input [4:0]mod_cod_schemes;
  input [4:0]num_streams;
  input [7:0]ref_distance;
  input [31:1]scrambler_init;
  input [15:0]num_words;
  input start_tx;
  input [4:0]phy_src_address;
  input [4:0]phy_dest_address;
  output [31:0]scrambler_din_data;
  output [31:1]scrambler_seed;
  output scrambler_din_valid;
  output scrambler_din_last;
  output scrambler_control_enable;
  output scrambler_last_frame;
  output [1:0]encoder_code_rate;
  input interleaver_dout_valid;
  input [31:0]interleaver_dout_data;
  input interleaver_last_frame;
  output interleaver_din_ready;
  input mapper_dout_last;
  output [2:0]mapper_selected_mod;
  output [5:0]mapper_din_data;
  output mapper_din_valid;
  output mapper_din_last;
  output dpd_din_valid;
  output [11:0]dpd_din_data_I;
  output [11:0]dpd_din_data_Q;
  output multi_din_ready;

  wire \<const0> ;
  wire clk;
  wire [31:0]control_unit_din_data;
  wire control_unit_din_valid;
  wire control_unit_dout_ready;
  wire control_unit_enable;
  wire control_unit_end_of_frame;
  wire [11:0]dpd_din_data_I;
  wire dpd_din_valid;
  wire [1:0]encoder_code_rate;
  wire interleaver_din_ready;
  wire [31:0]interleaver_dout_data;
  wire interleaver_dout_valid;
  wire interleaver_last_frame;
  wire [5:0]mapper_din_data;
  wire mapper_din_last;
  wire mapper_din_valid;
  wire mapper_dout_last;
  wire [2:0]mapper_selected_mod;
  wire [4:0]mod_cod_schemes;
  wire multi_din_ready;
  wire [4:0]num_streams;
  wire [15:0]num_words;
  wire [4:0]phy_dest_address;
  wire [4:0]phy_src_address;
  wire [7:0]ref_distance;
  wire reset;
  wire scrambler_control_enable;
  wire [31:0]scrambler_din_data;
  wire scrambler_din_last;
  wire scrambler_din_valid;
  wire [31:1]scrambler_init;
  wire scrambler_last_frame;
  wire [31:1]scrambler_seed;
  wire start_tx;
  wire [11:0]NLW_U0_dpd_din_data_Q_UNCONNECTED;

  assign dpd_din_data_Q[11] = \<const0> ;
  assign dpd_din_data_Q[10] = \<const0> ;
  assign dpd_din_data_Q[9] = \<const0> ;
  assign dpd_din_data_Q[8] = \<const0> ;
  assign dpd_din_data_Q[7] = \<const0> ;
  assign dpd_din_data_Q[6] = \<const0> ;
  assign dpd_din_data_Q[5] = \<const0> ;
  assign dpd_din_data_Q[4] = \<const0> ;
  assign dpd_din_data_Q[3] = \<const0> ;
  assign dpd_din_data_Q[2] = \<const0> ;
  assign dpd_din_data_Q[1] = \<const0> ;
  assign dpd_din_data_Q[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_unit_top U0
       (.clk(clk),
        .control_unit_din_data(control_unit_din_data),
        .control_unit_din_valid(control_unit_din_valid),
        .control_unit_dout_ready(control_unit_dout_ready),
        .control_unit_enable(control_unit_enable),
        .control_unit_end_of_frame(control_unit_end_of_frame),
        .dpd_din_data_I(dpd_din_data_I),
        .dpd_din_data_Q(NLW_U0_dpd_din_data_Q_UNCONNECTED[11:0]),
        .dpd_din_valid(dpd_din_valid),
        .encoder_code_rate(encoder_code_rate),
        .interleaver_din_ready(interleaver_din_ready),
        .interleaver_dout_data(interleaver_dout_data),
        .interleaver_dout_valid(interleaver_dout_valid),
        .interleaver_last_frame(interleaver_last_frame),
        .mapper_din_data(mapper_din_data),
        .mapper_din_last(mapper_din_last),
        .mapper_din_valid(mapper_din_valid),
        .mapper_dout_last(mapper_dout_last),
        .mapper_selected_mod(mapper_selected_mod),
        .mod_cod_schemes(mod_cod_schemes),
        .multi_din_ready(multi_din_ready),
        .num_streams(num_streams),
        .num_words(num_words),
        .phy_dest_address(phy_dest_address),
        .phy_src_address(phy_src_address),
        .ref_distance(ref_distance),
        .reset(reset),
        .scrambler_control_enable(scrambler_control_enable),
        .scrambler_din_data(scrambler_din_data),
        .scrambler_din_last(scrambler_din_last),
        .scrambler_din_valid(scrambler_din_valid),
        .scrambler_init(scrambler_init),
        .scrambler_last_frame(scrambler_last_frame),
        .scrambler_seed(scrambler_seed),
        .start_tx(start_tx));
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
