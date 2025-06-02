// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue May 20 17:21:48 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_block_interleaver_0_0_stub.v
// Design      : Design_2_block_interleaver_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "block_interleaver,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst, data_in, data_in_ready, data_in_last, 
  end_of_frame, write_en, signal_field, code_rate, data_out, data_out_ready, data_out_last, 
  last_frame_to_cu, current_code_rate, read_valid)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,data_in[31:0],data_in_ready,data_in_last,end_of_frame,write_en,signal_field,code_rate[1:0],data_out[31:0],data_out_ready,data_out_last,last_frame_to_cu,current_code_rate[1:0],read_valid" */;
  input clk;
  input rst;
  input [31:0]data_in;
  input data_in_ready;
  input data_in_last;
  input end_of_frame;
  input write_en;
  input signal_field;
  input [1:0]code_rate;
  output [31:0]data_out;
  output data_out_ready;
  output data_out_last;
  output last_frame_to_cu;
  output [1:0]current_code_rate;
  output read_valid;
endmodule
