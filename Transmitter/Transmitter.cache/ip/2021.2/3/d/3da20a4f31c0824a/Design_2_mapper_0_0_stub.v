// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue May 20 17:21:48 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_mapper_0_0_stub.v
// Design      : Design_2_mapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mapper,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, reset, mod_type, data_in, data_in_valid, 
  data_in_ready, end_of_frame, signal_field_en, pilot_insertion, i_out, q_out, data_out_last, 
  last_frame, data_out_ready, data_out_valid)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,mod_type[2:0],data_in[5:0],data_in_valid,data_in_ready,end_of_frame,signal_field_en,pilot_insertion,i_out[11:0],q_out[11:0],data_out_last,last_frame,data_out_ready,data_out_valid" */;
  input clk;
  input reset;
  input [2:0]mod_type;
  input [5:0]data_in;
  input data_in_valid;
  input data_in_ready;
  input end_of_frame;
  input signal_field_en;
  input pilot_insertion;
  output [11:0]i_out;
  output [11:0]q_out;
  output data_out_last;
  output last_frame;
  output data_out_ready;
  output data_out_valid;
endmodule
