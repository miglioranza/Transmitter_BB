// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Wed Mar  5 18:48:55 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_Scrambler_32bits_0_0_sim_netlist.v
// Design      : Design_2_Scrambler_32bits_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Design_2_Scrambler_32bits_0_0,Scrambler_32bits,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "Scrambler_32bits,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    data_in,
    data_in_valid,
    data_in_ready,
    data_in_last,
    seed,
    control_enable,
    data_out,
    data_out_valid,
    data_out_last,
    data_out_ready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, ASSOCIATED_BUSIF S_AXIS:M_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Design_2_clk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN Design_2_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [32:1]data_in;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input data_in_valid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN Design_2_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input data_in_ready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input data_in_last;
  input [30:0]seed;
  input control_enable;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [32:1]data_out;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output data_out_valid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output data_out_last;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output data_out_ready;

  wire clk;
  wire control_enable;
  wire [32:1]data_in;
  wire data_in_last;
  wire data_in_ready;
  wire data_in_valid;
  wire [32:1]data_out;
  wire data_out_last;
  wire data_out_ready;
  wire data_out_valid;
  wire rst;
  wire [30:0]seed;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Scrambler_32bits U0
       (.clk(clk),
        .control_enable(control_enable),
        .data_in(data_in),
        .data_in_last(data_in_last),
        .data_in_ready(data_in_ready),
        .data_in_valid(data_in_valid),
        .data_out(data_out),
        .data_out_last(data_out_last),
        .data_out_ready(data_out_ready),
        .data_out_valid(data_out_valid),
        .rst(rst),
        .seed({seed[30],seed[27]}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Scrambler_32bits
   (data_out,
    data_out_valid,
    data_out_ready,
    data_out_last,
    seed,
    clk,
    rst,
    data_in_ready,
    control_enable,
    data_in_valid,
    data_in,
    data_in_last);
  output [32:1]data_out;
  output data_out_valid;
  output data_out_ready;
  output data_out_last;
  input [1:0]seed;
  input clk;
  input rst;
  input data_in_ready;
  input control_enable;
  input data_in_valid;
  input [32:1]data_in;
  input data_in_last;

  wire clk;
  wire control_enable;
  wire [32:1]data_in;
  wire data_in_last;
  wire data_in_ready;
  wire data_in_valid;
  wire [32:1]data_out;
  wire \data_out[32]_i_1_n_0 ;
  wire data_out_last;
  wire data_out_last_i_1_n_0;
  wire data_out_ready;
  wire data_out_valid;
  wire [31:0]p_32_out;
  wire rst;
  wire [1:0]seed;
  wire [31:28]tmp_seed;
  wire tmp_seed0_n_0;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[10]_i_1 
       (.I0(data_in[10]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[11]_i_1 
       (.I0(data_in[11]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[12]_i_1 
       (.I0(data_in[12]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[13]_i_1 
       (.I0(data_in[13]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[14]_i_1 
       (.I0(data_in[14]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[15]_i_1 
       (.I0(data_in[15]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[16]_i_1 
       (.I0(data_in[16]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[17]_i_1 
       (.I0(data_in[17]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[18]_i_1 
       (.I0(data_in[18]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[19]_i_1 
       (.I0(data_in[19]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[1]_i_1 
       (.I0(data_in[1]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[20]_i_1 
       (.I0(data_in[20]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[21]_i_1 
       (.I0(data_in[21]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[22]_i_1 
       (.I0(data_in[22]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[23]_i_1 
       (.I0(data_in[23]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[24]_i_1 
       (.I0(data_in[24]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[25]_i_1 
       (.I0(data_in[25]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[26]_i_1 
       (.I0(data_in[26]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[27]_i_1 
       (.I0(data_in[27]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[28]_i_1 
       (.I0(data_in[28]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[29]_i_1 
       (.I0(data_in[29]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[2]_i_1 
       (.I0(data_in[2]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[30]_i_1 
       (.I0(data_in[30]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[31]_i_1 
       (.I0(data_in[31]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[32]_i_1 
       (.I0(data_in_ready),
        .I1(data_in_valid),
        .O(\data_out[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[32]_i_2 
       (.I0(data_in[32]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[3]_i_1 
       (.I0(data_in[3]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[4]_i_1 
       (.I0(data_in[4]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[5]_i_1 
       (.I0(data_in[5]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[6]_i_1 
       (.I0(data_in[6]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[7]_i_1 
       (.I0(data_in[7]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[8]_i_1 
       (.I0(data_in[8]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[9]_i_1 
       (.I0(data_in[9]),
        .I1(tmp_seed[31]),
        .I2(tmp_seed[28]),
        .O(p_32_out[8]));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    data_out_last_i_1
       (.I0(data_in_last),
        .I1(data_in_valid),
        .I2(data_in_ready),
        .I3(rst),
        .I4(data_out_last),
        .O(data_out_last_i_1_n_0));
  FDRE data_out_last_reg
       (.C(clk),
        .CE(1'b1),
        .D(data_out_last_i_1_n_0),
        .Q(data_out_last),
        .R(1'b0));
  FDCE data_out_ready_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(data_in_ready),
        .Q(data_out_ready));
  FDCE \data_out_reg[10] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[9]),
        .Q(data_out[10]));
  FDCE \data_out_reg[11] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[10]),
        .Q(data_out[11]));
  FDCE \data_out_reg[12] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[11]),
        .Q(data_out[12]));
  FDCE \data_out_reg[13] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[12]),
        .Q(data_out[13]));
  FDCE \data_out_reg[14] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[13]),
        .Q(data_out[14]));
  FDCE \data_out_reg[15] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[14]),
        .Q(data_out[15]));
  FDCE \data_out_reg[16] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[15]),
        .Q(data_out[16]));
  FDCE \data_out_reg[17] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[16]),
        .Q(data_out[17]));
  FDCE \data_out_reg[18] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[17]),
        .Q(data_out[18]));
  FDCE \data_out_reg[19] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[18]),
        .Q(data_out[19]));
  FDCE \data_out_reg[1] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[0]),
        .Q(data_out[1]));
  FDCE \data_out_reg[20] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[19]),
        .Q(data_out[20]));
  FDCE \data_out_reg[21] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[20]),
        .Q(data_out[21]));
  FDCE \data_out_reg[22] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[21]),
        .Q(data_out[22]));
  FDCE \data_out_reg[23] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[22]),
        .Q(data_out[23]));
  FDCE \data_out_reg[24] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[23]),
        .Q(data_out[24]));
  FDCE \data_out_reg[25] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[24]),
        .Q(data_out[25]));
  FDCE \data_out_reg[26] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[25]),
        .Q(data_out[26]));
  FDCE \data_out_reg[27] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[26]),
        .Q(data_out[27]));
  FDCE \data_out_reg[28] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[27]),
        .Q(data_out[28]));
  FDCE \data_out_reg[29] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[28]),
        .Q(data_out[29]));
  FDCE \data_out_reg[2] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[1]),
        .Q(data_out[2]));
  FDCE \data_out_reg[30] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[29]),
        .Q(data_out[30]));
  FDCE \data_out_reg[31] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[30]),
        .Q(data_out[31]));
  FDCE \data_out_reg[32] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[31]),
        .Q(data_out[32]));
  FDCE \data_out_reg[3] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[2]),
        .Q(data_out[3]));
  FDCE \data_out_reg[4] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[3]),
        .Q(data_out[4]));
  FDCE \data_out_reg[5] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[4]),
        .Q(data_out[5]));
  FDCE \data_out_reg[6] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[5]),
        .Q(data_out[6]));
  FDCE \data_out_reg[7] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[6]),
        .Q(data_out[7]));
  FDCE \data_out_reg[8] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[7]),
        .Q(data_out[8]));
  FDCE \data_out_reg[9] 
       (.C(clk),
        .CE(\data_out[32]_i_1_n_0 ),
        .CLR(rst),
        .D(p_32_out[8]),
        .Q(data_out[9]));
  FDCE data_out_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\data_out[32]_i_1_n_0 ),
        .Q(data_out_valid));
  LUT4 #(
    .INIT(16'h002A)) 
    tmp_seed0
       (.I0(control_enable),
        .I1(data_in_ready),
        .I2(data_in_valid),
        .I3(rst),
        .O(tmp_seed0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[28] 
       (.C(clk),
        .CE(tmp_seed0_n_0),
        .D(seed[0]),
        .Q(tmp_seed[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[31] 
       (.C(clk),
        .CE(tmp_seed0_n_0),
        .D(seed[1]),
        .Q(tmp_seed[31]),
        .R(1'b0));
endmodule
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
