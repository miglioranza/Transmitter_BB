// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Wed Mar  5 15:48:47 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_design_1_0_0_stub.v
// Design      : design_1_design_1_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "design_1,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, data_in_0, data_in_valid_0, 
  data_out_ready, data_out_ready_0, data_out_valid, i_out, mod_type, mod_type_0, q_out, reset)
/* synthesis syn_black_box black_box_pad_pin="clk,data_in_0[31:0],data_in_valid_0,data_out_ready,data_out_ready_0,data_out_valid,i_out[11:0],mod_type[2:0],mod_type_0[2:0],q_out[11:0],reset" */;
  input clk;
  input [31:0]data_in_0;
  input data_in_valid_0;
  output data_out_ready;
  output data_out_ready_0;
  output data_out_valid;
  output [11:0]i_out;
  input [2:0]mod_type;
  input [2:0]mod_type_0;
  output [11:0]q_out;
  input reset;
endmodule
