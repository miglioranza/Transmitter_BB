// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Jun  2 15:16:48 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_Pre_Distortion_Filter_0_0_stub.v
// Design      : Design_2_Pre_Distortion_Filter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Parallel_FIR_filter,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, reset, I_input, Q_input, data_in_ready, 
  data_in_valid, data_out_valid, Q_output, I_output, data_out_ready)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,I_input[11:0],Q_input[11:0],data_in_ready,data_in_valid,data_out_valid,Q_output[15:0],I_output[15:0],data_out_ready" */;
  input clk;
  input reset;
  input [11:0]I_input;
  input [11:0]Q_input;
  input data_in_ready;
  input data_in_valid;
  output data_out_valid;
  output [15:0]Q_output;
  output [15:0]I_output;
  output data_out_ready;
endmodule
