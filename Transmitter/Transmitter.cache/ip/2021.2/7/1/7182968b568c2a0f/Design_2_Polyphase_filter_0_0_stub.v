// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue Sep 30 13:40:13 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_Polyphase_filter_0_0_stub.v
// Design      : Design_2_Polyphase_filter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Polyphase_filter,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, reset, FIFO_reset, input_I, input_Q, 
  data_in_valid, data_out_valid, data_out_I, data_out_Q)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,FIFO_reset,input_I[15:0],input_Q[15:0],data_in_valid,data_out_valid,data_out_I[15:0],data_out_Q[15:0]" */;
  input clk;
  input reset;
  input FIFO_reset;
  input [15:0]input_I;
  input [15:0]input_Q;
  input data_in_valid;
  output data_out_valid;
  output [15:0]data_out_I;
  output [15:0]data_out_Q;
endmodule
