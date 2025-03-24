// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Fri Mar 14 13:53:06 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_Encoder_0_0_stub.v
// Design      : Design_2_Encoder_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Encoder,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ldpc_core_clk, clk, reset, aresetn, data_in, 
  data_in_valid, din_ready_ifsm2enc, data_in_last, sel_FEC_code_rate, data_out_ready, 
  data_out, data_out_valid, core_finish, current_code_rate, data_out_last)
/* synthesis syn_black_box black_box_pad_pin="ldpc_core_clk,clk,reset,aresetn,data_in[31:0],data_in_valid,din_ready_ifsm2enc,data_in_last,sel_FEC_code_rate[1:0],data_out_ready,data_out[31:0],data_out_valid,core_finish,current_code_rate[1:0],data_out_last" */;
  input ldpc_core_clk;
  input clk;
  input reset;
  input aresetn;
  input [31:0]data_in;
  input data_in_valid;
  input din_ready_ifsm2enc;
  input data_in_last;
  input [1:0]sel_FEC_code_rate;
  output data_out_ready;
  output [31:0]data_out;
  output data_out_valid;
  output core_finish;
  output [1:0]current_code_rate;
  output data_out_last;
endmodule
