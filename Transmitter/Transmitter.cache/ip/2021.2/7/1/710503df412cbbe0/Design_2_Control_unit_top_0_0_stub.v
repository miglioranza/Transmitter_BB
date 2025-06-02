// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Jun  2 16:10:32 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_Control_unit_top_0_0_stub.v
// Design      : Design_2_Control_unit_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Control_unit_top,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, reset, control_unit_din_data, 
  control_unit_din_valid, control_unit_end_of_frame, control_unit_dout_ready, 
  control_unit_last_frame, mod_cod_schemes, num_streams, ref_distance, scrambler_init, 
  num_words, start_tx, phy_src_address, phy_dest_address, scrambler_dout_ready, 
  scrambler_din_data, scrambler_seed, scrambler_din_valid, scrambler_din_last, 
  scrambler_control_enable, interleaver_dout_valid, interleaver_dout_data, 
  interleaver_dout_last, interleaver_last_frame, interleaver_din_ready, 
  mapper_dout_ready, mapper_dout_last, mapper_last_frame, mapper_selected_mod, 
  mapper_din_data, mapper_din_valid, mapper_signal_field_enable, 
  mapper_pilot_insertion_en, mapper_end_of_frame, dpd_dout_ready, dpd_din_valid, 
  dpd_din_data_I, dpd_din_data_Q)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,control_unit_din_data[31:0],control_unit_din_valid,control_unit_end_of_frame,control_unit_dout_ready,control_unit_last_frame,mod_cod_schemes[4:0],num_streams[4:0],ref_distance[7:0],scrambler_init[31:1],num_words[15:0],start_tx,phy_src_address[4:0],phy_dest_address[4:0],scrambler_dout_ready,scrambler_din_data[31:0],scrambler_seed[31:1],scrambler_din_valid,scrambler_din_last,scrambler_control_enable,interleaver_dout_valid,interleaver_dout_data[31:0],interleaver_dout_last,interleaver_last_frame,interleaver_din_ready,mapper_dout_ready,mapper_dout_last,mapper_last_frame,mapper_selected_mod[2:0],mapper_din_data[5:0],mapper_din_valid,mapper_signal_field_enable,mapper_pilot_insertion_en,mapper_end_of_frame,dpd_dout_ready,dpd_din_valid,dpd_din_data_I[11:0],dpd_din_data_Q[11:0]" */;
  input clk;
  input reset;
  input [31:0]control_unit_din_data;
  input control_unit_din_valid;
  input control_unit_end_of_frame;
  output control_unit_dout_ready;
  output control_unit_last_frame;
  input [4:0]mod_cod_schemes;
  input [4:0]num_streams;
  input [7:0]ref_distance;
  input [31:1]scrambler_init;
  input [15:0]num_words;
  input start_tx;
  input [4:0]phy_src_address;
  input [4:0]phy_dest_address;
  input scrambler_dout_ready;
  output [31:0]scrambler_din_data;
  output [31:1]scrambler_seed;
  output scrambler_din_valid;
  output scrambler_din_last;
  output scrambler_control_enable;
  input interleaver_dout_valid;
  input [31:0]interleaver_dout_data;
  input interleaver_dout_last;
  input interleaver_last_frame;
  output interleaver_din_ready;
  input mapper_dout_ready;
  input mapper_dout_last;
  input mapper_last_frame;
  output [2:0]mapper_selected_mod;
  output [5:0]mapper_din_data;
  output mapper_din_valid;
  output mapper_signal_field_enable;
  output mapper_pilot_insertion_en;
  output mapper_end_of_frame;
  input dpd_dout_ready;
  output dpd_din_valid;
  output [11:0]dpd_din_data_I;
  output [11:0]dpd_din_data_Q;
endmodule
