// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sun Sep  7 19:31:47 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_LDPC_encoder_0_2_stub.v
// Design      : Design_2_LDPC_encoder_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "LDPC_encoder,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, reset, reset_fifos, ldpc_core_clk, data_in, 
  data_in_valid, data_in_last, data_in_ready, sel_code_rate, end_of_frame, data_out, 
  data_out_valid, data_out_last, current_cr, last_frame)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,reset_fifos,ldpc_core_clk,data_in[31:0],data_in_valid,data_in_last,data_in_ready,sel_code_rate[1:0],end_of_frame,data_out[31:0],data_out_valid,data_out_last,current_cr[1:0],last_frame" */;
  input clk;
  input reset;
  input reset_fifos;
  input ldpc_core_clk;
  input [31:0]data_in;
  input data_in_valid;
  input data_in_last;
  input data_in_ready;
  input [1:0]sel_code_rate;
  input end_of_frame;
  output [31:0]data_out;
  output data_out_valid;
  output data_out_last;
  output [1:0]current_cr;
  output last_frame;
endmodule
