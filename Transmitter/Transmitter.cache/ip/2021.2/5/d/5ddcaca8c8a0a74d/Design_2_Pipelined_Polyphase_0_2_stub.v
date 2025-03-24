// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Thu Mar 13 11:29:45 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_Pipelined_Polyphase_0_2_stub.v
// Design      : Design_2_Pipelined_Polyphase_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Pipelined_Polyphase_Filter,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, reset, input_I, input_Q, data_in_ready, 
  data_in_valid, data_out_ready, data_out_valid, data_out_I, data_out_Q)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,input_I[31:0],input_Q[31:0],data_in_ready,data_in_valid,data_out_ready,data_out_valid,data_out_I[51:0],data_out_Q[51:0]" */;
  input clk;
  input reset;
  input [31:0]input_I;
  input [31:0]input_Q;
  input data_in_ready;
  input data_in_valid;
  output data_out_ready;
  output data_out_valid;
  output [51:0]data_out_I;
  output [51:0]data_out_Q;
endmodule
