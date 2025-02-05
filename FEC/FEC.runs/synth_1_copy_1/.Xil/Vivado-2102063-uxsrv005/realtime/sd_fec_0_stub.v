// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "sd_fec_v1_1_8,Vivado 2021.2" *)
module sd_fec_0(reset_n, core_clk, s_axi_aclk, 
  s_axis_ctrl_aclk, s_axis_ctrl_tready, s_axis_ctrl_tvalid, s_axis_ctrl_tdata, 
  s_axis_din_aclk, s_axis_din_tready, s_axis_din_tvalid, s_axis_din_tlast, 
  s_axis_din_tdata, m_axis_status_aclk, m_axis_status_tready, m_axis_status_tvalid, 
  m_axis_status_tdata, m_axis_dout_aclk, m_axis_dout_tready, m_axis_dout_tvalid, 
  m_axis_dout_tlast, m_axis_dout_tdata);
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
