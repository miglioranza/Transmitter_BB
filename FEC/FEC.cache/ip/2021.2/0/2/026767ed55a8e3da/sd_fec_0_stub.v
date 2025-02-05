// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue Jan 28 11:44:52 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ sd_fec_0_stub.v
// Design      : sd_fec_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "sd_fec_v1_1_8,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(reset_n, core_clk, s_axi_aclk, 
  s_axis_ctrl_aclk, s_axis_ctrl_tready, s_axis_ctrl_tvalid, s_axis_ctrl_tdata, 
  s_axis_din_aclk, s_axis_din_tready, s_axis_din_tvalid, s_axis_din_tlast, 
  s_axis_din_tdata, m_axis_status_aclk, m_axis_status_tready, m_axis_status_tvalid, 
  m_axis_status_tdata, m_axis_dout_aclk, m_axis_dout_tready, m_axis_dout_tvalid, 
  m_axis_dout_tlast, m_axis_dout_tdata)
/* synthesis syn_black_box black_box_pad_pin="reset_n,core_clk,s_axi_aclk,s_axis_ctrl_aclk,s_axis_ctrl_tready,s_axis_ctrl_tvalid,s_axis_ctrl_tdata[31:0],s_axis_din_aclk,s_axis_din_tready,s_axis_din_tvalid,s_axis_din_tlast,s_axis_din_tdata[127:0],m_axis_status_aclk,m_axis_status_tready,m_axis_status_tvalid,m_axis_status_tdata[31:0],m_axis_dout_aclk,m_axis_dout_tready,m_axis_dout_tvalid,m_axis_dout_tlast,m_axis_dout_tdata[127:0]" */;
  input reset_n;
  input core_clk;
  input s_axi_aclk;
  input s_axis_ctrl_aclk;
  output s_axis_ctrl_tready;
  input s_axis_ctrl_tvalid;
  input [31:0]s_axis_ctrl_tdata;
  input s_axis_din_aclk;
  output s_axis_din_tready;
  input s_axis_din_tvalid;
  input s_axis_din_tlast;
  input [127:0]s_axis_din_tdata;
  input m_axis_status_aclk;
  input m_axis_status_tready;
  output m_axis_status_tvalid;
  output [31:0]m_axis_status_tdata;
  input m_axis_dout_aclk;
  input m_axis_dout_tready;
  output m_axis_dout_tvalid;
  output m_axis_dout_tlast;
  output [127:0]m_axis_dout_tdata;
endmodule
