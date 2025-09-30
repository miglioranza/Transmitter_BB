// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sun Sep  7 19:30:48 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_MUX_0_2_stub.v
// Design      : Design_2_MUX_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "MUX,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(I_out, Q_out, data_out_valid, ready_out_CU, 
  dpd_I_OUT, dpd_Q_OUT, dpd_valid, ready_out_mapper, select_signal, ready_in, mux_I, mux_Q, 
  mux_valid)
/* synthesis syn_black_box black_box_pad_pin="I_out[11:0],Q_out[11:0],data_out_valid,ready_out_CU,dpd_I_OUT[11:0],dpd_Q_OUT[11:0],dpd_valid,ready_out_mapper,select_signal,ready_in,mux_I[11:0],mux_Q[11:0],mux_valid" */;
  input [11:0]I_out;
  input [11:0]Q_out;
  input data_out_valid;
  output ready_out_CU;
  input [11:0]dpd_I_OUT;
  input [11:0]dpd_Q_OUT;
  input dpd_valid;
  output ready_out_mapper;
  input select_signal;
  input ready_in;
  output [11:0]mux_I;
  output [11:0]mux_Q;
  output mux_valid;
endmodule
