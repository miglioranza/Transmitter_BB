// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Fri Mar  7 14:50:02 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_sid_0_0_stub.v
// Design      : Design_2_sid_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "sid_v8_0_16,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk, s_axis_data_tdata, s_axis_data_tvalid, 
  s_axis_data_tlast, s_axis_data_tready, m_axis_data_tdata, m_axis_data_tvalid, 
  m_axis_data_tlast, event_tlast_unexpected, event_tlast_missing)
/* synthesis syn_black_box black_box_pad_pin="aclk,s_axis_data_tdata[31:0],s_axis_data_tvalid,s_axis_data_tlast,s_axis_data_tready,m_axis_data_tdata[31:0],m_axis_data_tvalid,m_axis_data_tlast,event_tlast_unexpected,event_tlast_missing" */;
  input aclk;
  input [31:0]s_axis_data_tdata;
  input s_axis_data_tvalid;
  input s_axis_data_tlast;
  output s_axis_data_tready;
  output [31:0]m_axis_data_tdata;
  output m_axis_data_tvalid;
  output m_axis_data_tlast;
  output event_tlast_unexpected;
  output event_tlast_missing;
endmodule
