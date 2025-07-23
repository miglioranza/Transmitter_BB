// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue Jul 22 15:36:46 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ sd_fec_0_sim_netlist.v
// Design      : sd_fec_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sd_fec_0,sd_fec_v1_1_8,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "sd_fec_v1_1_8,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (reset_n,
    core_clk,
    s_axi_aclk,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bready,
    s_axi_bvalid,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rready,
    s_axi_rdata,
    s_axi_rvalid,
    interrupt,
    s_axis_ctrl_aclk,
    s_axis_ctrl_tready,
    s_axis_ctrl_tvalid,
    s_axis_ctrl_tdata,
    s_axis_din_aclk,
    s_axis_din_tready,
    s_axis_din_tvalid,
    s_axis_din_tlast,
    s_axis_din_tdata,
    m_axis_status_aclk,
    m_axis_status_tready,
    m_axis_status_tvalid,
    m_axis_status_tdata,
    m_axis_dout_aclk,
    m_axis_dout_tready,
    m_axis_dout_tvalid,
    m_axis_dout_tlast,
    m_axis_dout_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n_intf RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock_intf, FREQ_HZ 666000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input core_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk_intf, ASSOCIATED_BUSIF S_AXI, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [17:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [17:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt_intf INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt_intf, SENSITIVITY EDGE_RISING, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axis_ctrl_aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_ctrl_aclk_intf, ASSOCIATED_BUSIF S_AXIS_CTRL, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input s_axis_ctrl_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CTRL TREADY" *) output s_axis_ctrl_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CTRL TVALID" *) input s_axis_ctrl_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CTRL TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_CTRL, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_ctrl_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axis_din_aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_din_aclk_intf, ASSOCIATED_BUSIF S_AXIS_DIN, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input s_axis_din_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIN TREADY" *) output s_axis_din_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIN TVALID" *) input s_axis_din_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIN TLAST" *) input s_axis_din_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIN TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DIN, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [127:0]s_axis_din_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axis_status_aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_status_aclk_intf, ASSOCIATED_BUSIF M_AXIS_STATUS, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input m_axis_status_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_STATUS TREADY" *) input m_axis_status_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_STATUS TVALID" *) output m_axis_status_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_STATUS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_STATUS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_axis_status_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axis_dout_aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_dout_aclk_intf, ASSOCIATED_BUSIF M_AXIS_DOUT, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input m_axis_dout_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TREADY" *) input m_axis_dout_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TVALID" *) output m_axis_dout_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TLAST" *) output m_axis_dout_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DOUT, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [127:0]m_axis_dout_tdata;

  wire core_clk;
  wire interrupt;
  wire m_axis_dout_aclk;
  wire [127:0]m_axis_dout_tdata;
  wire m_axis_dout_tlast;
  wire m_axis_dout_tready;
  wire m_axis_dout_tvalid;
  wire m_axis_status_aclk;
  wire [31:0]m_axis_status_tdata;
  wire m_axis_status_tready;
  wire m_axis_status_tvalid;
  wire reset_n;
  wire s_axi_aclk;
  wire [17:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [17:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire s_axis_ctrl_aclk;
  wire [31:0]s_axis_ctrl_tdata;
  wire s_axis_ctrl_tready;
  wire s_axis_ctrl_tvalid;
  wire s_axis_din_aclk;
  wire [127:0]s_axis_din_tdata;
  wire s_axis_din_tlast;
  wire s_axis_din_tready;
  wire s_axis_din_tvalid;
  wire NLW_inst_s_axis_din_words_tready_UNCONNECTED;
  wire NLW_inst_s_axis_dout_words_tready_UNCONNECTED;

  (* CODE_REG_FILENAME = "NO_INIT" *) 
  (* CORE_AXIS_ENABLE = "0" *) 
  (* CORE_AXIS_WIDTH = "0" *) 
  (* CORE_AXI_WR_PROTECT = "0" *) 
  (* CORE_BYPASS = "0" *) 
  (* CORE_CODE_WR_PROTECT = "0" *) 
  (* CORE_ECC_IER = "0" *) 
  (* CORE_IER = "0" *) 
  (* CORE_ORDER = "0" *) 
  (* C_CTRL_TDATA_WIDTH = "32" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_MODE = "LDPC_DECODE" *) 
  (* C_M_DOUT_TDATA_WIDTH = "128" *) 
  (* C_PHYSICAL_UTILIZATION = "81.000000" *) 
  (* C_SIM_DEVICE = "ULTRASCALE_PLUS" *) 
  (* C_STANDARD = "WIFI" *) 
  (* C_S_AXI_MODE = "0" *) 
  (* C_S_DIN_TDATA_WIDTH = "128" *) 
  (* C_S_DIN_WORDS_MODE = "0" *) 
  (* C_S_DIN_WORDS_TDATA_WIDTH = "8" *) 
  (* C_S_DIN_WORDS_VALUE = "4" *) 
  (* C_S_DOUT_WORDS_MODE = "0" *) 
  (* C_S_DOUT_WORDS_TDATA_WIDTH = "8" *) 
  (* C_S_DOUT_WORDS_VALUE = "16" *) 
  (* C_THROUGHPUT_UTILIZATION = "100.000000" *) 
  (* ENCODE = "0" *) 
  (* LA_TABLE_FILENAME = "NO_INIT" *) 
  (* MERGED_CODE_REG_SIZE = "0" *) 
  (* MERGED_FILENAME = "NO_INIT" *) 
  (* MERGED_LA_TABLE_SIZE = "0" *) 
  (* MERGED_QC_TABLE_SIZE = "0" *) 
  (* MERGED_SC_TABLE_SIZE = "0" *) 
  (* NM_NMQC_FILENAME = "NO_INIT" *) 
  (* ONLY_5G = "0" *) 
  (* QC_TABLE_FILENAME = "NO_INIT" *) 
  (* QC_TABLE_FILENAME_T = "NO_INIT" *) 
  (* SC_TABLE_FILENAME = "NO_INIT" *) 
  (* TURBO_INIT = "0" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_fec_v1_1_8 inst
       (.core_clk(core_clk),
        .interrupt(interrupt),
        .m_axis_dout_aclk(m_axis_dout_aclk),
        .m_axis_dout_tdata(m_axis_dout_tdata),
        .m_axis_dout_tlast(m_axis_dout_tlast),
        .m_axis_dout_tready(m_axis_dout_tready),
        .m_axis_dout_tvalid(m_axis_dout_tvalid),
        .m_axis_status_aclk(m_axis_status_aclk),
        .m_axis_status_tdata(m_axis_status_tdata),
        .m_axis_status_tready(m_axis_status_tready),
        .m_axis_status_tvalid(m_axis_status_tvalid),
        .reset_n(reset_n),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_ctrl_aclk(s_axis_ctrl_aclk),
        .s_axis_ctrl_tdata(s_axis_ctrl_tdata),
        .s_axis_ctrl_tready(s_axis_ctrl_tready),
        .s_axis_ctrl_tvalid(s_axis_ctrl_tvalid),
        .s_axis_din_aclk(s_axis_din_aclk),
        .s_axis_din_tdata(s_axis_din_tdata),
        .s_axis_din_tlast(s_axis_din_tlast),
        .s_axis_din_tready(s_axis_din_tready),
        .s_axis_din_tvalid(s_axis_din_tvalid),
        .s_axis_din_words_aclk(1'b0),
        .s_axis_din_words_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_din_words_tlast(1'b0),
        .s_axis_din_words_tready(NLW_inst_s_axis_din_words_tready_UNCONNECTED),
        .s_axis_din_words_tvalid(1'b0),
        .s_axis_dout_words_aclk(1'b0),
        .s_axis_dout_words_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_dout_words_tlast(1'b0),
        .s_axis_dout_words_tready(NLW_inst_s_axis_dout_words_tready_UNCONNECTED),
        .s_axis_dout_words_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hUqoVvDaQFV2nM7DkmRJXe9zk2pZWLadtwygU0vtIbscJ0l3HwMPGa/1DEQ/vZ88ABYfrTFY6eQv
tUBPl1BXlmqMuh7EovXxg80/D3H3yZzMffZ0Fc9v3MKvFpFH2FQ7vrBDVc+YpgicqQn/KWZARplL
SC84J0OxSlu4kjQZTAY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MtDDXA/WzLeWB3zTJ71zIkRy0Rch3cyfbOzNSmIiqnyL3f9xFKkANz0gdSZbxaypjG5mtnKd0idK
nveRAJjca+tJ1DA9S3ioZmhRajl0xklsv7V33yIkjeWQj1hEvcbc9hlLYIQAZwD4soDyCUXYazcg
BYSfjJI295RGOgzhOhH6LeV4tzMc3WorVH7jeGskc/D0pRQH0vQ0YCReBsdhJuw2zJFiU/n1XoNQ
AEPHsY8DAECH9Tl1LrwWW0WnZPOQok9qN7h+SQ6pnRPtNrPplSZ9ZEXs5nNTWhF0zIvd5UxNIhh8
wdLQFPq2P9NzKOkb4/n2I0NHNDpkq9qKWN2NQg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
imRBzFfPvI19SpwwYd3VQPbqIyCO8AekkpAOYQiLaihdctf/ilGeF91Ahon8+khW2Rq2aPwuv4M/
1RuN/1ztU7i2rr2bTHypbW3oCmAr1xJq9r6RZeEteNoe1Rjil5IBYyh9fohHfbr3oR+m7XmgAFnL
ZI1/aL9S8Ypb/o8XHIQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
V74VzGeaeAebnnI2dFAV+fWbi16KZhg8DsbWOktHVVm7FvEhV1Qg6nSHBSLT6hrVZI3h6k77hKPx
I8mNN/snA6seFz4sMTQZp2tzv84SFTqMYXxOoH/8m3N298v27aQiCRIha+iNXVN0lB75+O1yp8eA
iBWQXGeZyDeWC3Ld4Rcp/RBtoQGMSEJSrZtkxlqKn9ulUGllU/SsRwmoAZrV2jLXnbPZYmymufaL
w11j2pQLSYtCXABJbpkRc596XI5/GYSpu12eL0uNJ+A770apKTQjH/h/WdteuZAxYGinHS0cnZic
gZxdnneuT+wdbkZKI/DVvUUkqK3MWkp2SQD+Vg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xMOI2tdXKur5UzTgFOqhiy/XpmNfTSoCyayLbGy3nsOLQQijxZZVyto+wJ/1IahW0aZjBEBdScxV
qlXEoivaY+LAU4IFcai/BN1k/r3k1yK63WKmqLOjBbjxBjZe41T6+KULJmb6C9jTLm6MX0Q5vsvt
dlE+a35kbwqqZKwPXGl60Ws00kWUCK3H2boZ6Byw4IT+TRY4KQ64XwKdk4NDlevtulD9RHq6dwAl
W7F4aWEXElpBYothb5G2pveRbw0CVkZegOBHZf9xX5tF5OTTk9r9ToAY+vNWB4ut2EYKglzQitRR
z2WkLolZ5PUmEmenlHnkFZv9CCPuRmfdb1MNqg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
K48igJpbDpbcBLkPBfEKagA7flfCcRVbI2cfoqClhm5I1CCauTeyB3Aa+07zgBmJiQbiegkEZzKM
MyZo6sxbG+k3RWXk6P88MUOV0ezhixtA5eaMXWkAuDDr0U8hI9cEW2q5c6PsQF+5ooOq8P5XBv45
ZiKduXTDllRzAGkzm23BmZtB8GfNItFHyuVdmckhinViudCL9EOGxpavWyRXGI23WzaBU9OI9XB6
9nBqSOyPnEuNSF96c7kJI5lH145kuXPmnBlfKWH401X+sHw5OwsSROjwxsyksnWfngu+lP8uETsX
m2lcC6Q3SEJO/BDRhYUkFzvFTRHBtyqmHZSe/w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W1dYazj/ZyHavVOxVtZnAdwvdaG+YToOWnFBIg/62F5q08CsEBON29KH6Ot+b1PoWLu7GaHWilNh
QKlJZZdm+WCGtBDsPxrWlE5q9pRporxR39vB+MuqNaTQkcQca15TRVeJx+xT+dZISb5S/xDqG05Y
McHoMDHIDtxNdjlr5HI4froQ+A3WlHI+Da2G19yOS6JE6F7lpav4/fLO/pHjvIRaF/QcCrHddryd
wNo7SqId0DeYOkyXC4mJoOWmPXeOzlCXvmByMBXlpo+y/Wx+ZSwyR4jwcK448v9y5fodNw3oENd0
CwDLhjfnGz00iRQ8X4nMqJvv7p8TuaFatMcCQA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
ZFF39RAwcWXSmGRFsQyrxW7n2cNwWoz3P85WgiHLQ71YkPVaqlfn7lV5PcR+GBvrkiRAHYaVzbpU
8KjMZviBtfIHYC0AE4gtqfhndqDHRdfxaHt0nMGJ0+Chs705x+Pj2RGhmU9YRur7UbqR1E4Xdx4O
Wpi8kltUd3O93z/f6nVq8iHjXrXTCJeBbLM7pE1aFUMnvqxsANIwjMoVz86YEI6w7Zwf8dV3NrQq
xl4DwYS5F1j6sWcCJ7m/0MB59eZ6O5l+lfdPhC1vqzuns/3tXhq3zy3ctahbzUAIEMlVCi7sE7mm
VJluzLV0iNWIMsUTY19VyG3CnaIXXlzd2ipE3+ryjhU9PxCs+xsTyalXw0XrXHOsstet54AVxh2/
VvumlgAT4/KkzxwzDEKxwA7G/isC1eZsWKDbXZqqv1/QN4ckMrshaHp/eVtlL2+0pn/9sYwR+00V
mTvpM/OGc7ABkClXEzJzcd8X036FYAqo6mgjWg3pSOT0NMpG9OFexh2u

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PImjPlu2BtoY/Fp4Zrq/sdBpr454nmoXCtLqWBzdzGKzkrZAj/6bXxHsVD4dqI1m4XA2h4CpKKmT
tb04JmOqwfI+97j+ItrTIGMlS7x2CXT14X7+jW97O77Z3j+MEYEKtIRn7EX9Lh3HJ+V2SFWcqlmq
3OmyH87LT3TV5dYrWeutoUVuqrbF/HIYv6oU8W4R0pVCTWXvxNRzP2HNPFhmNY0vudoQLwAuT/iw
NZeeshB2/jjSVHqhND6Ts0NS+p0/hBl2batTwVhc7+FvYzANoH41Qg+AZtFotfkfE5lu7Cpeq6cI
xb9hJaFrl8ebeJHvBdDEvFsIawv4TmyFXVeSGA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KsVTnrmjvNjx4W+nLDp8EWfDpHwOerKT7spsX1Dar+bjkg2Yrzk3C/LDBbR83hkNfJj410GETvu+
8z6rSWIZqT0/2EH/X/tY5FTIjnr2RqGhyVKeCVQhjF8OKrV1aVYZTcAGs30YJnJCX8UJilLicW8Z
hAUQmsOw8tmXbtAwtpuG5/G/V3HlH89HMUqaxTom2ghfUWZk0m54YRe/ISAXQjK8LsfxdZIsHy52
dxFkJ9U5vDXvdBDPKwkwX/veA2AeJLl7a+wjt8y+qVWDA7huxm46QUfUcaif6fsHTNyIp+va7lUc
OJQuLXZW3FvIVfY/cP0yWVjEVm0LDoJ7afnHdQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
x+Tla8QBP8T8fmhPx6Wko4vY+Ut+ejsu5/OJUqnv7jwbPf4XFTDG4BJUz3YHbcHpsRcFWlxgUhWO
L/3cjg7z+ltp3U9Kfe7xtwSyG0WK+850WuNplGRGug/9LnJj+DSCDjYoX3/ttjND8Wwj4NzgrNbh
SpgQdjLn43jBnot6vxwDweAugENM/D2S7ZuAQ9BVVHFZkP6oEE+E6aZxXCspD6Z5+YpTweikwvzE
sHy32kUHqpFLuwUjQZLD182XUz7kzmz/g/Wt559GDf1bShVozORd4hgFqa7D0msCq4EC2plGp5uE
f3f+vnRAwwRIAki4XidrYWyQNpOF0kPR1+imWA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14144)
`pragma protect data_block
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
KuQcs3sLfS8=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
