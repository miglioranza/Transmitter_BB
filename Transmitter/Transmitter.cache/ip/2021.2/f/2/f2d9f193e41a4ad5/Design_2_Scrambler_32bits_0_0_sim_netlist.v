// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Fri Mar  7 14:49:45 2025
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
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN Design_2_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]data_in;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input data_in_valid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN Design_2_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input data_in_ready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input data_in_last;
  input [31:1]seed;
  input control_enable;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [32:1]data_out;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output data_out_valid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output data_out_last;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output data_out_ready;

  wire clk;
  wire control_enable;
  wire [31:0]data_in;
  wire data_in_last;
  wire data_in_ready;
  wire data_in_valid;
  wire [32:1]data_out;
  wire data_out_last;
  wire data_out_valid;
  wire rst;
  wire [31:1]seed;

  assign data_out_ready = data_out_valid;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Scrambler_32bits U0
       (.clk(clk),
        .control_enable(control_enable),
        .data_in(data_in),
        .data_in_last(data_in_last),
        .data_in_ready(data_in_ready),
        .data_in_valid(data_in_valid),
        .data_out(data_out),
        .data_out_last(data_out_last),
        .data_out_ready(data_out_valid),
        .rst(rst),
        .seed(seed));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Scrambler_32bits
   (data_out_ready,
    data_out,
    data_out_last,
    data_in_ready,
    data_in_valid,
    rst,
    clk,
    seed,
    control_enable,
    data_in,
    data_in_last);
  output data_out_ready;
  output [32:1]data_out;
  output data_out_last;
  input data_in_ready;
  input data_in_valid;
  input rst;
  input clk;
  input [31:1]seed;
  input control_enable;
  input [31:0]data_in;
  input data_in_last;

  wire clk;
  wire control_enable;
  wire [31:0]data_in;
  wire data_in_last;
  wire data_in_ready;
  wire data_in_valid;
  wire [32:1]data_out;
  wire data_out_last;
  wire data_out_last_i_1_n_0;
  wire data_out_ready;
  wire data_out_ready0;
  wire feedback;
  wire feedback0;
  wire [30:0]next_seed;
  wire p_0_in;
  wire p_10_in;
  wire p_12_in;
  wire p_14_in;
  wire p_16_in;
  wire p_18_in;
  wire [30:0]p_1_in;
  wire p_1_in_0;
  wire p_20_in;
  wire p_22_in;
  wire p_24_in;
  wire p_26_in;
  wire p_28_in;
  wire p_2_in;
  wire p_30_in;
  wire p_32_in;
  wire p_34_in;
  wire p_36_in;
  wire p_38_in;
  wire p_40_in;
  wire p_42_in;
  wire p_44_in;
  wire p_46_in;
  wire p_48_in;
  wire p_50_in;
  wire p_52_in;
  wire p_54_in;
  wire p_56_in;
  wire [31:0]p_61_out;
  wire p_6_in;
  wire p_8_in;
  wire rst;
  wire [31:0]scrambled_data;
  wire \scrambled_data[31]_i_1_n_0 ;
  wire [31:1]seed;
  wire \tmp_seed[30]_i_1_n_0 ;
  wire \tmp_seed_reg_n_0_[0] ;
  wire \tmp_seed_reg_n_0_[1] ;
  wire \tmp_seed_reg_n_0_[28] ;

  LUT3 #(
    .INIT(8'h08)) 
    \data_out[32]_i_1 
       (.I0(data_in_valid),
        .I1(data_in_ready),
        .I2(data_out_ready),
        .O(data_out_ready0));
  LUT5 #(
    .INIT(32'hFFEA002A)) 
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
  FDCE #(
    .INIT(1'b0)) 
    data_out_ready_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(data_out_ready0),
        .Q(data_out_ready));
  FDCE \data_out_reg[10] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[9]),
        .Q(data_out[10]));
  FDCE \data_out_reg[11] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[10]),
        .Q(data_out[11]));
  FDCE \data_out_reg[12] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[11]),
        .Q(data_out[12]));
  FDCE \data_out_reg[13] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[12]),
        .Q(data_out[13]));
  FDCE \data_out_reg[14] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[13]),
        .Q(data_out[14]));
  FDCE \data_out_reg[15] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[14]),
        .Q(data_out[15]));
  FDCE \data_out_reg[16] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[15]),
        .Q(data_out[16]));
  FDCE \data_out_reg[17] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[16]),
        .Q(data_out[17]));
  FDCE \data_out_reg[18] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[17]),
        .Q(data_out[18]));
  FDCE \data_out_reg[19] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[18]),
        .Q(data_out[19]));
  FDCE \data_out_reg[1] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[0]),
        .Q(data_out[1]));
  FDCE \data_out_reg[20] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[19]),
        .Q(data_out[20]));
  FDCE \data_out_reg[21] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[20]),
        .Q(data_out[21]));
  FDCE \data_out_reg[22] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[21]),
        .Q(data_out[22]));
  FDCE \data_out_reg[23] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[22]),
        .Q(data_out[23]));
  FDCE \data_out_reg[24] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[23]),
        .Q(data_out[24]));
  FDCE \data_out_reg[25] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[24]),
        .Q(data_out[25]));
  FDCE \data_out_reg[26] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[25]),
        .Q(data_out[26]));
  FDCE \data_out_reg[27] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[26]),
        .Q(data_out[27]));
  FDCE \data_out_reg[28] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[27]),
        .Q(data_out[28]));
  FDCE \data_out_reg[29] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[28]),
        .Q(data_out[29]));
  FDCE \data_out_reg[2] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[1]),
        .Q(data_out[2]));
  FDCE \data_out_reg[30] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[29]),
        .Q(data_out[30]));
  FDCE \data_out_reg[31] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[30]),
        .Q(data_out[31]));
  FDCE \data_out_reg[32] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[31]),
        .Q(data_out[32]));
  FDCE \data_out_reg[3] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[2]),
        .Q(data_out[3]));
  FDCE \data_out_reg[4] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[3]),
        .Q(data_out[4]));
  FDCE \data_out_reg[5] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[4]),
        .Q(data_out[5]));
  FDCE \data_out_reg[6] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[5]),
        .Q(data_out[6]));
  FDCE \data_out_reg[7] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[6]),
        .Q(data_out[7]));
  FDCE \data_out_reg[8] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[7]),
        .Q(data_out[8]));
  FDCE \data_out_reg[9] 
       (.C(clk),
        .CE(data_out_ready0),
        .CLR(rst),
        .D(scrambled_data[8]),
        .Q(data_out[9]));
  LUT1 #(
    .INIT(2'h1)) 
    feedback_i_1
       (.I0(rst),
        .O(p_1_in_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    feedback_i_2
       (.I0(p_6_in),
        .I1(p_0_in),
        .O(feedback0));
  FDRE #(
    .INIT(1'b0)) 
    feedback_reg
       (.C(clk),
        .CE(p_1_in_0),
        .D(feedback0),
        .Q(feedback),
        .R(1'b0));
  FDRE \next_seed_reg[0] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(feedback),
        .Q(next_seed[0]),
        .R(1'b0));
  FDRE \next_seed_reg[10] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_42_in),
        .Q(next_seed[10]),
        .R(1'b0));
  FDRE \next_seed_reg[11] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_40_in),
        .Q(next_seed[11]),
        .R(1'b0));
  FDRE \next_seed_reg[12] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_38_in),
        .Q(next_seed[12]),
        .R(1'b0));
  FDRE \next_seed_reg[13] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_36_in),
        .Q(next_seed[13]),
        .R(1'b0));
  FDRE \next_seed_reg[14] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_34_in),
        .Q(next_seed[14]),
        .R(1'b0));
  FDRE \next_seed_reg[15] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_32_in),
        .Q(next_seed[15]),
        .R(1'b0));
  FDRE \next_seed_reg[16] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_30_in),
        .Q(next_seed[16]),
        .R(1'b0));
  FDRE \next_seed_reg[17] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_28_in),
        .Q(next_seed[17]),
        .R(1'b0));
  FDRE \next_seed_reg[18] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_26_in),
        .Q(next_seed[18]),
        .R(1'b0));
  FDRE \next_seed_reg[19] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_24_in),
        .Q(next_seed[19]),
        .R(1'b0));
  FDRE \next_seed_reg[1] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(\tmp_seed_reg_n_0_[0] ),
        .Q(next_seed[1]),
        .R(1'b0));
  FDRE \next_seed_reg[20] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_22_in),
        .Q(next_seed[20]),
        .R(1'b0));
  FDRE \next_seed_reg[21] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_20_in),
        .Q(next_seed[21]),
        .R(1'b0));
  FDRE \next_seed_reg[22] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_18_in),
        .Q(next_seed[22]),
        .R(1'b0));
  FDRE \next_seed_reg[23] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_16_in),
        .Q(next_seed[23]),
        .R(1'b0));
  FDRE \next_seed_reg[24] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_14_in),
        .Q(next_seed[24]),
        .R(1'b0));
  FDRE \next_seed_reg[25] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_12_in),
        .Q(next_seed[25]),
        .R(1'b0));
  FDRE \next_seed_reg[26] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_10_in),
        .Q(next_seed[26]),
        .R(1'b0));
  FDRE \next_seed_reg[27] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_8_in),
        .Q(next_seed[27]),
        .R(1'b0));
  FDRE \next_seed_reg[28] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_6_in),
        .Q(next_seed[28]),
        .R(1'b0));
  FDRE \next_seed_reg[29] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(\tmp_seed_reg_n_0_[28] ),
        .Q(next_seed[29]),
        .R(1'b0));
  FDRE \next_seed_reg[2] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(\tmp_seed_reg_n_0_[1] ),
        .Q(next_seed[2]),
        .R(1'b0));
  FDRE \next_seed_reg[30] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_2_in),
        .Q(next_seed[30]),
        .R(1'b0));
  FDRE \next_seed_reg[3] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_56_in),
        .Q(next_seed[3]),
        .R(1'b0));
  FDRE \next_seed_reg[4] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_54_in),
        .Q(next_seed[4]),
        .R(1'b0));
  FDRE \next_seed_reg[5] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_52_in),
        .Q(next_seed[5]),
        .R(1'b0));
  FDRE \next_seed_reg[6] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_50_in),
        .Q(next_seed[6]),
        .R(1'b0));
  FDRE \next_seed_reg[7] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_48_in),
        .Q(next_seed[7]),
        .R(1'b0));
  FDRE \next_seed_reg[8] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_46_in),
        .Q(next_seed[8]),
        .R(1'b0));
  FDRE \next_seed_reg[9] 
       (.C(clk),
        .CE(p_1_in_0),
        .D(p_44_in),
        .Q(next_seed[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[0]_i_1 
       (.I0(p_0_in),
        .I1(data_in[0]),
        .O(p_61_out[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[10]_i_1 
       (.I0(p_20_in),
        .I1(data_in[10]),
        .O(p_61_out[10]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[11]_i_1 
       (.I0(p_22_in),
        .I1(data_in[11]),
        .O(p_61_out[11]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[12]_i_1 
       (.I0(p_24_in),
        .I1(data_in[12]),
        .O(p_61_out[12]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[13]_i_1 
       (.I0(p_26_in),
        .I1(data_in[13]),
        .O(p_61_out[13]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[14]_i_1 
       (.I0(p_28_in),
        .I1(data_in[14]),
        .O(p_61_out[14]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[15]_i_1 
       (.I0(p_30_in),
        .I1(data_in[15]),
        .O(p_61_out[15]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[16]_i_1 
       (.I0(p_32_in),
        .I1(data_in[16]),
        .O(p_61_out[16]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[17]_i_1 
       (.I0(p_34_in),
        .I1(data_in[17]),
        .O(p_61_out[17]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[18]_i_1 
       (.I0(p_36_in),
        .I1(data_in[18]),
        .O(p_61_out[18]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[19]_i_1 
       (.I0(p_38_in),
        .I1(data_in[19]),
        .O(p_61_out[19]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[1]_i_1 
       (.I0(p_2_in),
        .I1(data_in[1]),
        .O(p_61_out[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[20]_i_1 
       (.I0(p_40_in),
        .I1(data_in[20]),
        .O(p_61_out[20]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[21]_i_1 
       (.I0(p_42_in),
        .I1(data_in[21]),
        .O(p_61_out[21]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[22]_i_1 
       (.I0(p_44_in),
        .I1(data_in[22]),
        .O(p_61_out[22]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[23]_i_1 
       (.I0(p_46_in),
        .I1(data_in[23]),
        .O(p_61_out[23]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[24]_i_1 
       (.I0(p_48_in),
        .I1(data_in[24]),
        .O(p_61_out[24]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[25]_i_1 
       (.I0(p_50_in),
        .I1(data_in[25]),
        .O(p_61_out[25]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[26]_i_1 
       (.I0(p_52_in),
        .I1(data_in[26]),
        .O(p_61_out[26]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[27]_i_1 
       (.I0(p_54_in),
        .I1(data_in[27]),
        .O(p_61_out[27]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[28]_i_1 
       (.I0(p_56_in),
        .I1(data_in[28]),
        .O(p_61_out[28]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[29]_i_1 
       (.I0(\tmp_seed_reg_n_0_[1] ),
        .I1(data_in[29]),
        .O(p_61_out[29]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[2]_i_1 
       (.I0(\tmp_seed_reg_n_0_[28] ),
        .I1(data_in[2]),
        .O(p_61_out[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[30]_i_1 
       (.I0(\tmp_seed_reg_n_0_[0] ),
        .I1(data_in[30]),
        .O(p_61_out[30]));
  LUT4 #(
    .INIT(16'h0040)) 
    \scrambled_data[31]_i_1 
       (.I0(data_out_ready),
        .I1(data_in_ready),
        .I2(data_in_valid),
        .I3(rst),
        .O(\scrambled_data[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[31]_i_2 
       (.I0(feedback),
        .I1(data_in[31]),
        .O(p_61_out[31]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[3]_i_1 
       (.I0(p_6_in),
        .I1(data_in[3]),
        .O(p_61_out[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[4]_i_1 
       (.I0(p_8_in),
        .I1(data_in[4]),
        .O(p_61_out[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[5]_i_1 
       (.I0(p_10_in),
        .I1(data_in[5]),
        .O(p_61_out[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[6]_i_1 
       (.I0(p_12_in),
        .I1(data_in[6]),
        .O(p_61_out[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[7]_i_1 
       (.I0(p_14_in),
        .I1(data_in[7]),
        .O(p_61_out[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[8]_i_1 
       (.I0(p_16_in),
        .I1(data_in[8]),
        .O(p_61_out[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled_data[9]_i_1 
       (.I0(p_18_in),
        .I1(data_in[9]),
        .O(p_61_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[0] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[0]),
        .Q(scrambled_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[10] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[10]),
        .Q(scrambled_data[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[11] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[11]),
        .Q(scrambled_data[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[12] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[12]),
        .Q(scrambled_data[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[13] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[13]),
        .Q(scrambled_data[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[14] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[14]),
        .Q(scrambled_data[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[15] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[15]),
        .Q(scrambled_data[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[16] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[16]),
        .Q(scrambled_data[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[17] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[17]),
        .Q(scrambled_data[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[18] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[18]),
        .Q(scrambled_data[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[19] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[19]),
        .Q(scrambled_data[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[1] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[1]),
        .Q(scrambled_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[20] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[20]),
        .Q(scrambled_data[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[21] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[21]),
        .Q(scrambled_data[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[22] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[22]),
        .Q(scrambled_data[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[23] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[23]),
        .Q(scrambled_data[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[24] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[24]),
        .Q(scrambled_data[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[25] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[25]),
        .Q(scrambled_data[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[26] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[26]),
        .Q(scrambled_data[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[27] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[27]),
        .Q(scrambled_data[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[28] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[28]),
        .Q(scrambled_data[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[29] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[29]),
        .Q(scrambled_data[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[2] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[2]),
        .Q(scrambled_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[30] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[30]),
        .Q(scrambled_data[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[31] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[31]),
        .Q(scrambled_data[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[3] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[3]),
        .Q(scrambled_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[4] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[4]),
        .Q(scrambled_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[5] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[5]),
        .Q(scrambled_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[6] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[6]),
        .Q(scrambled_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[7] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[7]),
        .Q(scrambled_data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[8] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[8]),
        .Q(scrambled_data[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambled_data_reg[9] 
       (.C(clk),
        .CE(\scrambled_data[31]_i_1_n_0 ),
        .D(p_61_out[9]),
        .Q(scrambled_data[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[0]_i_1 
       (.I0(next_seed[0]),
        .I1(seed[1]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[10]_i_1 
       (.I0(next_seed[10]),
        .I1(seed[11]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[10]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[11]_i_1 
       (.I0(next_seed[11]),
        .I1(seed[12]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[11]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[12]_i_1 
       (.I0(next_seed[12]),
        .I1(seed[13]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[12]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[13]_i_1 
       (.I0(next_seed[13]),
        .I1(seed[14]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[13]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[14]_i_1 
       (.I0(next_seed[14]),
        .I1(seed[15]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[14]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[15]_i_1 
       (.I0(next_seed[15]),
        .I1(seed[16]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[16]_i_1 
       (.I0(next_seed[16]),
        .I1(seed[17]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[16]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[17]_i_1 
       (.I0(next_seed[17]),
        .I1(seed[18]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[17]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[18]_i_1 
       (.I0(next_seed[18]),
        .I1(seed[19]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[18]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[19]_i_1 
       (.I0(next_seed[19]),
        .I1(seed[20]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[19]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[1]_i_1 
       (.I0(next_seed[1]),
        .I1(seed[2]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[20]_i_1 
       (.I0(next_seed[20]),
        .I1(seed[21]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[20]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[21]_i_1 
       (.I0(next_seed[21]),
        .I1(seed[22]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[21]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[22]_i_1 
       (.I0(next_seed[22]),
        .I1(seed[23]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[22]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[23]_i_1 
       (.I0(next_seed[23]),
        .I1(seed[24]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[24]_i_1 
       (.I0(next_seed[24]),
        .I1(seed[25]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[24]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[25]_i_1 
       (.I0(next_seed[25]),
        .I1(seed[26]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[25]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[26]_i_1 
       (.I0(next_seed[26]),
        .I1(seed[27]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[26]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[27]_i_1 
       (.I0(next_seed[27]),
        .I1(seed[28]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[27]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[28]_i_1 
       (.I0(next_seed[28]),
        .I1(seed[29]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[28]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[29]_i_1 
       (.I0(next_seed[29]),
        .I1(seed[30]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[29]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[2]_i_1 
       (.I0(next_seed[2]),
        .I1(seed[3]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'hFF40)) 
    \tmp_seed[30]_i_1 
       (.I0(data_out_ready),
        .I1(data_in_ready),
        .I2(data_in_valid),
        .I3(control_enable),
        .O(\tmp_seed[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[30]_i_2 
       (.I0(next_seed[30]),
        .I1(seed[31]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[30]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[3]_i_1 
       (.I0(next_seed[3]),
        .I1(seed[4]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[4]_i_1 
       (.I0(next_seed[4]),
        .I1(seed[5]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[5]_i_1 
       (.I0(next_seed[5]),
        .I1(seed[6]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[6]_i_1 
       (.I0(next_seed[6]),
        .I1(seed[7]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[7]_i_1 
       (.I0(next_seed[7]),
        .I1(seed[8]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[8]_i_1 
       (.I0(next_seed[8]),
        .I1(seed[9]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'hCCCCACCC)) 
    \tmp_seed[9]_i_1 
       (.I0(next_seed[9]),
        .I1(seed[10]),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(data_out_ready),
        .O(p_1_in[9]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[0] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[0]),
        .PRE(rst),
        .Q(\tmp_seed_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[10] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[10]),
        .PRE(rst),
        .Q(p_40_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[11] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[11]),
        .PRE(rst),
        .Q(p_38_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[12] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[12]),
        .PRE(rst),
        .Q(p_36_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[13] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[13]),
        .PRE(rst),
        .Q(p_34_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[14] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[14]),
        .PRE(rst),
        .Q(p_32_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[15] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[15]),
        .PRE(rst),
        .Q(p_30_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[16] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[16]),
        .PRE(rst),
        .Q(p_28_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[17] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[17]),
        .PRE(rst),
        .Q(p_26_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[18] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[18]),
        .PRE(rst),
        .Q(p_24_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[19] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[19]),
        .PRE(rst),
        .Q(p_22_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[1] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[1]),
        .PRE(rst),
        .Q(\tmp_seed_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[20] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[20]),
        .PRE(rst),
        .Q(p_20_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[21] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[21]),
        .PRE(rst),
        .Q(p_18_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[22] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[22]),
        .PRE(rst),
        .Q(p_16_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[23] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[23]),
        .PRE(rst),
        .Q(p_14_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[24] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[24]),
        .PRE(rst),
        .Q(p_12_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[25] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[25]),
        .PRE(rst),
        .Q(p_10_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[26] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[26]),
        .PRE(rst),
        .Q(p_8_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[27] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[27]),
        .PRE(rst),
        .Q(p_6_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[28] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[28]),
        .PRE(rst),
        .Q(\tmp_seed_reg_n_0_[28] ));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[29] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[29]),
        .PRE(rst),
        .Q(p_2_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[2] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[2]),
        .PRE(rst),
        .Q(p_56_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[30] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[30]),
        .PRE(rst),
        .Q(p_0_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[3] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[3]),
        .PRE(rst),
        .Q(p_54_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[4] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[4]),
        .PRE(rst),
        .Q(p_52_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[5] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[5]),
        .PRE(rst),
        .Q(p_50_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[6] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[6]),
        .PRE(rst),
        .Q(p_48_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[7] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[7]),
        .PRE(rst),
        .Q(p_46_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[8] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[8]),
        .PRE(rst),
        .Q(p_44_in));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[9] 
       (.C(clk),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[9]),
        .PRE(rst),
        .Q(p_42_in));
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
