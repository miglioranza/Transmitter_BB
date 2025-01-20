// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Thu Aug 29 11:38:19 2024
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_sd_fec_0_0_sim_netlist.v
// Design      : design_1_sd_fec_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_sd_fec_0_0,sd_fec_v1_1_8,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "sd_fec_v1_1_8,Vivado 2021.2" *) 
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock_intf, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_clk_out1, INSERT_VIP 0" *) input core_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk_intf, ASSOCIATED_BUSIF S_AXI, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_s_axi_aclk_0, INSERT_VIP 0" *) input s_axi_aclk;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_s_axi_aclk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt_intf INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt_intf, SENSITIVITY EDGE_RISING, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axis_ctrl_aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_ctrl_aclk_intf, ASSOCIATED_BUSIF S_AXIS_CTRL, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_s_axis_ctrl_aclk_0, INSERT_VIP 0" *) input s_axis_ctrl_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CTRL TREADY" *) output s_axis_ctrl_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CTRL TVALID" *) input s_axis_ctrl_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CTRL TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_CTRL, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN design_1_s_axis_ctrl_aclk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_ctrl_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axis_din_aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_din_aclk_intf, ASSOCIATED_BUSIF S_AXIS_DIN, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_s_axis_din_aclk_0, INSERT_VIP 0" *) input s_axis_din_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIN TREADY" *) output s_axis_din_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIN TVALID" *) input s_axis_din_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIN TLAST" *) input s_axis_din_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIN TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DIN, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN design_1_s_axis_din_aclk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [127:0]s_axis_din_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axis_status_aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_status_aclk_intf, ASSOCIATED_BUSIF M_AXIS_STATUS, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_m_axis_status_aclk_0, INSERT_VIP 0" *) input m_axis_status_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_STATUS TREADY" *) input m_axis_status_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_STATUS TVALID" *) output m_axis_status_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_STATUS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_STATUS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN design_1_m_axis_status_aclk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_axis_status_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axis_dout_aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_dout_aclk_intf, ASSOCIATED_BUSIF M_AXIS_DOUT, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_m_axis_dout_aclk_0, INSERT_VIP 0" *) input m_axis_dout_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TREADY" *) input m_axis_dout_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TVALID" *) output m_axis_dout_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TLAST" *) output m_axis_dout_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DOUT, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN design_1_m_axis_dout_aclk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [127:0]m_axis_dout_tdata;

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
  (* CORE_ECC_IER = "4194303" *) 
  (* CORE_IER = "63" *) 
  (* CORE_ORDER = "0" *) 
  (* C_CTRL_TDATA_WIDTH = "32" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_MODE = "TURBO_DECODE" *) 
  (* C_M_DOUT_TDATA_WIDTH = "128" *) 
  (* C_PHYSICAL_UTILIZATION = "100.000000" *) 
  (* C_SIM_DEVICE = "ULTRASCALE_PLUS" *) 
  (* C_STANDARD = "LTE" *) 
  (* C_S_AXI_MODE = "0" *) 
  (* C_S_DIN_TDATA_WIDTH = "128" *) 
  (* C_S_DIN_WORDS_MODE = "0" *) 
  (* C_S_DIN_WORDS_TDATA_WIDTH = "8" *) 
  (* C_S_DIN_WORDS_VALUE = "16" *) 
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
  (* TURBO_INIT = "3072" *) 
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
GL4kKPvXwvc+Rnnh12Ncyo33Oiv+q4n/Nw9df3UmubMpahHDDiUunrbpGKgyqP+3DuNBVvLw5yvy
lwJnfqLIoxwG98iC1JZmC+vGp21Aga7kU7kuW7g6Am6gr4sqMjkZpeEVXv4A9EpyuphowXlrieRp
/W7jqRB3V2UC0FMoLbUdFVOuEr21b1/v/B3lb6nxh/hVGW7O9F7vvKD+rsnnTh6cp8Zv53ESxB2A
o8fVtJoLte0rVkTDmnLOISCWHPdJ6dMdr/8AWzlVH8Cd7XCJMHqYnaBlgVFC9yiHKq1pK4G2T/Fe
gYOGfB+ueyoNSFVhySTdA4BalpgkEazZPeHXqA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CT+4pTOfWiwwPb9iTTpKmB+LeW0J9cjkL4QcrxQPGsT/AFK2P5nnDJSfsGCIhOA1HioTaQ17qSWJ
HYrHoE1FLjLUa840PeZIne6BrPhcpWVKaRnH0BgJZiSarWnBOk42s38dBTRlppCLhweswLOnLEuM
bkNFMHOrlduPa/hLrjaKD6pSSfVrN0xsnFVxQ0kwv+rY9+QZ1Rm7lYH1aiDXKfIgQIuqtC64aJv5
9UxON7Ew9KPKt5oB7vHWrZx7nV6UVn6gCTRjw2pw/tsSP/1KZZCXFiLxCGtKWwg6EYEl18LsiFX+
Swztjh0YbKLQBxw7CSTM6Lb0Tc4IzZDiPiftRQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14160)
`pragma protect data_block
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
ZHJF24yXzNQmYRzVE7cWFduthQ24E54D
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
