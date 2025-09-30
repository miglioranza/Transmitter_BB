// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Sep  8 10:29:24 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_Symbol_mapper_0_0_sim_netlist.v
// Design      : Design_2_Symbol_mapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Design_2_Symbol_mapper_0_0,Symbol_mapper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "Symbol_mapper,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset,
    mod_type,
    data_in,
    data_in_valid,
    data_in_ready,
    data_in_last,
    i_out,
    q_out,
    data_out_last,
    data_out_ready,
    data_out_valid);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Design_2_clk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [2:0]mod_type;
  input [5:0]data_in;
  input data_in_valid;
  input data_in_ready;
  input data_in_last;
  output [11:0]i_out;
  output [11:0]q_out;
  output data_out_last;
  output data_out_ready;
  output data_out_valid;

  wire clk;
  wire [5:0]data_in;
  wire data_in_last;
  wire data_in_ready;
  wire data_in_valid;
  wire data_out_last;
  wire data_out_ready;
  wire data_out_valid;
  wire [11:0]i_out;
  wire [2:0]mod_type;
  wire [11:0]q_out;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Symbol_mapper U0
       (.clk(clk),
        .data_in(data_in),
        .data_in_last(data_in_last),
        .data_in_ready(data_in_ready),
        .data_in_valid(data_in_valid),
        .data_out_last(data_out_last),
        .data_out_ready(data_out_ready),
        .data_out_valid(data_out_valid),
        .i_out(i_out),
        .mod_type(mod_type),
        .q_out(q_out),
        .reset(reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Symbol_mapper
   (clk,
    reset,
    mod_type,
    data_in,
    data_in_valid,
    data_in_ready,
    data_in_last,
    i_out,
    q_out,
    data_out_last,
    data_out_ready,
    data_out_valid);
  input clk;
  input reset;
  input [2:0]mod_type;
  input [5:0]data_in;
  input data_in_valid;
  input data_in_ready;
  input data_in_last;
  output [11:0]i_out;
  output [11:0]q_out;
  output data_out_last;
  output data_out_ready;
  output data_out_valid;

  wire clk;
  wire [5:0]data_in;
  wire data_in_last;
  wire data_in_ready;
  wire data_in_valid;
  wire data_out_last;
  wire data_out_last_i_1_n_0;
  wire data_out_ready;
  wire data_out_ready11_out;
  wire data_out_valid;
  wire g0_b0__0_n_0;
  wire g0_b0__1_n_0;
  wire g0_b0__2_n_0;
  wire g0_b0__3_n_0;
  wire g0_b0__4_n_0;
  wire g0_b0_n_0;
  wire g0_b10__0_n_0;
  wire g0_b10__1_n_0;
  wire g0_b10__2_n_0;
  wire g0_b10__3_n_0;
  wire g0_b10__4_n_0;
  wire g0_b10_n_0;
  wire g0_b11_n_0;
  wire g0_b1__0_n_0;
  wire g0_b1__1_n_0;
  wire g0_b1__2_n_0;
  wire g0_b1__3_n_0;
  wire g0_b1__4_n_0;
  wire g0_b1_n_0;
  wire g0_b2__0_n_0;
  wire g0_b2__1_n_0;
  wire g0_b2__2_n_0;
  wire g0_b2_n_0;
  wire g0_b3__0_n_0;
  wire g0_b3__1_n_0;
  wire g0_b3__2_n_0;
  wire g0_b3_n_0;
  wire g0_b4__0_n_0;
  wire g0_b4__1_n_0;
  wire g0_b4__2_n_0;
  wire g0_b4_n_0;
  wire g0_b5__0_n_0;
  wire g0_b5__1_n_0;
  wire g0_b5__2_n_0;
  wire g0_b5_n_0;
  wire g0_b6__0_n_0;
  wire g0_b6__1_n_0;
  wire g0_b6__2_n_0;
  wire g0_b6_n_0;
  wire g0_b7__0_n_0;
  wire g0_b7__1_n_0;
  wire g0_b7__2_n_0;
  wire g0_b7__3_n_0;
  wire g0_b7__4_n_0;
  wire g0_b7__5_n_0;
  wire g0_b7__6_n_0;
  wire g0_b7__7_n_0;
  wire g0_b7__8_n_0;
  wire g0_b7__9_n_0;
  wire g0_b7_i_1_n_0;
  wire g0_b7_n_0;
  wire g0_b8__0_n_0;
  wire g0_b8__1_n_0;
  wire g0_b8__2_n_0;
  wire g0_b8__3_n_0;
  wire g0_b8__4_n_0;
  wire g0_b8_n_0;
  wire g0_b9__0_n_0;
  wire g0_b9__1_n_0;
  wire g0_b9__2_n_0;
  wire g0_b9__3_n_0;
  wire g0_b9__4_n_0;
  wire g0_b9_n_0;
  wire [11:0]i_out;
  wire \i_out[0]_i_1_n_0 ;
  wire \i_out[0]_i_3_n_0 ;
  wire \i_out[0]_i_4_n_0 ;
  wire \i_out[10]_i_1_n_0 ;
  wire \i_out[10]_i_3_n_0 ;
  wire \i_out[10]_i_4_n_0 ;
  wire \i_out[11]_i_3_n_0 ;
  wire \i_out[11]_i_4_n_0 ;
  wire \i_out[1]_i_1_n_0 ;
  wire \i_out[1]_i_3_n_0 ;
  wire \i_out[1]_i_4_n_0 ;
  wire \i_out[1]_i_5_n_0 ;
  wire \i_out[2]_i_1_n_0 ;
  wire \i_out[2]_i_3_n_0 ;
  wire \i_out[3]_i_2_n_0 ;
  wire \i_out[3]_i_3_n_0 ;
  wire \i_out[3]_i_4_n_0 ;
  wire \i_out[4]_i_1_n_0 ;
  wire \i_out[4]_i_3_n_0 ;
  wire \i_out[5]_i_1_n_0 ;
  wire \i_out[5]_i_3_n_0 ;
  wire \i_out[5]_i_4_n_0 ;
  wire \i_out[6]_i_1_n_0 ;
  wire \i_out[6]_i_3_n_0 ;
  wire \i_out[7]_i_1_n_0 ;
  wire \i_out[7]_i_3_n_0 ;
  wire \i_out[7]_i_4_n_0 ;
  wire \i_out[8]_i_1_n_0 ;
  wire \i_out[8]_i_3_n_0 ;
  wire \i_out[8]_i_4_n_0 ;
  wire \i_out[8]_i_5_n_0 ;
  wire \i_out[9]_i_1_n_0 ;
  wire \i_out[9]_i_3_n_0 ;
  wire \i_out[9]_i_4_n_0 ;
  wire \i_out_reg[0]_i_2_n_0 ;
  wire \i_out_reg[10]_i_2_n_0 ;
  wire \i_out_reg[11]_i_2_n_0 ;
  wire \i_out_reg[1]_i_2_n_0 ;
  wire \i_out_reg[2]_i_2_n_0 ;
  wire \i_out_reg[3]_i_1_n_0 ;
  wire \i_out_reg[4]_i_2_n_0 ;
  wire \i_out_reg[5]_i_2_n_0 ;
  wire \i_out_reg[6]_i_2_n_0 ;
  wire \i_out_reg[7]_i_2_n_0 ;
  wire \i_out_reg[8]_i_2_n_0 ;
  wire \i_out_reg[9]_i_2_n_0 ;
  wire [2:0]mod_type;
  wire [11:0]q_out;
  wire \q_out[0]_i_2_n_0 ;
  wire \q_out[0]_i_3_n_0 ;
  wire \q_out[10]_i_1_n_0 ;
  wire \q_out[10]_i_2_n_0 ;
  wire \q_out[10]_i_3_n_0 ;
  wire \q_out[11]_i_1_n_0 ;
  wire \q_out[11]_i_2_n_0 ;
  wire \q_out[1]_i_2_n_0 ;
  wire \q_out[1]_i_3_n_0 ;
  wire \q_out[1]_i_4_n_0 ;
  wire \q_out[2]_i_1_n_0 ;
  wire \q_out[2]_i_3_n_0 ;
  wire \q_out[2]_i_4_n_0 ;
  wire \q_out[3]_i_2_n_0 ;
  wire \q_out[4]_i_2_n_0 ;
  wire \q_out[4]_i_3_n_0 ;
  wire \q_out[5]_i_1_n_0 ;
  wire \q_out[5]_i_3_n_0 ;
  wire \q_out[5]_i_4_n_0 ;
  wire \q_out[6]_i_2_n_0 ;
  wire \q_out[6]_i_3_n_0 ;
  wire \q_out[7]_i_2_n_0 ;
  wire \q_out[8]_i_2_n_0 ;
  wire \q_out[8]_i_3_n_0 ;
  wire \q_out[9]_i_1_n_0 ;
  wire \q_out[9]_i_3_n_0 ;
  wire \q_out[9]_i_4_n_0 ;
  wire \q_out_reg[0]_i_1_n_0 ;
  wire \q_out_reg[0]_i_4_n_0 ;
  wire \q_out_reg[10]_i_4_n_0 ;
  wire \q_out_reg[1]_i_1_n_0 ;
  wire \q_out_reg[2]_i_2_n_0 ;
  wire \q_out_reg[3]_i_1_n_0 ;
  wire \q_out_reg[4]_i_1_n_0 ;
  wire \q_out_reg[4]_i_4_n_0 ;
  wire \q_out_reg[5]_i_2_n_0 ;
  wire \q_out_reg[6]_i_1_n_0 ;
  wire \q_out_reg[6]_i_4_n_0 ;
  wire \q_out_reg[7]_i_1_n_0 ;
  wire \q_out_reg[7]_i_3_n_0 ;
  wire \q_out_reg[8]_i_1_n_0 ;
  wire \q_out_reg[8]_i_4_n_0 ;
  wire \q_out_reg[9]_i_2_n_0 ;
  wire reset;

  LUT3 #(
    .INIT(8'h80)) 
    data_out_last_i_1
       (.I0(data_in_valid),
        .I1(data_in_ready),
        .I2(data_in_last),
        .O(data_out_last_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    data_out_last_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(data_out_last_i_1_n_0),
        .Q(data_out_last));
  FDCE #(
    .INIT(1'b0)) 
    data_out_ready_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(data_in_ready),
        .Q(data_out_ready));
  FDCE #(
    .INIT(1'b0)) 
    data_out_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(data_out_ready11_out),
        .Q(data_out_valid));
  LUT3 #(
    .INIT(8'h97)) 
    g0_b0
       (.I0(data_in[2]),
        .I1(data_in[3]),
        .I2(data_in[4]),
        .O(g0_b0_n_0));
  LUT4 #(
    .INIT(16'hB173)) 
    g0_b0__0
       (.I0(data_in[2]),
        .I1(data_in[3]),
        .I2(data_in[4]),
        .I3(data_in[5]),
        .O(g0_b0__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h57)) 
    g0_b0__1
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .O(g0_b0__1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    g0_b0__2
       (.I0(data_in[0]),
        .I1(data_in[1]),
        .O(g0_b0__2_n_0));
  LUT3 #(
    .INIT(8'h67)) 
    g0_b0__3
       (.I0(data_in[2]),
        .I1(data_in[3]),
        .I2(data_in[4]),
        .O(g0_b0__3_n_0));
  LUT4 #(
    .INIT(16'h1BD5)) 
    g0_b0__4
       (.I0(data_in[2]),
        .I1(data_in[3]),
        .I2(data_in[4]),
        .I3(data_in[5]),
        .O(g0_b0__4_n_0));
  LUT4 #(
    .INIT(16'h7D16)) 
    g0_b1
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b1_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    g0_b10
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b10_n_0));
  LUT5 #(
    .INIT(32'h559A5AAA)) 
    g0_b10__0
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b10__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h9993)) 
    g0_b10__1
       (.I0(data_in[0]),
        .I1(data_in[1]),
        .I2(data_in[2]),
        .I3(data_in[3]),
        .O(g0_b10__1_n_0));
  LUT6 #(
    .INIT(64'hD3C3C3C3C3C3CBC3)) 
    g0_b10__2
       (.I0(data_in[0]),
        .I1(data_in[1]),
        .I2(data_in[2]),
        .I3(data_in[3]),
        .I4(data_in[4]),
        .I5(data_in[5]),
        .O(g0_b10__2_n_0));
  LUT4 #(
    .INIT(16'h659A)) 
    g0_b10__3
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b10__3_n_0));
  LUT5 #(
    .INIT(32'h9A55A5AA)) 
    g0_b10__4
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b10__4_n_0));
  LUT6 #(
    .INIT(64'hE0F0F0F0F0F0F8F0)) 
    g0_b11
       (.I0(data_in[0]),
        .I1(data_in[1]),
        .I2(data_in[2]),
        .I3(data_in[3]),
        .I4(data_in[4]),
        .I5(data_in[5]),
        .O(g0_b11_n_0));
  LUT5 #(
    .INIT(32'h8AFEE605)) 
    g0_b1__0
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hEEE3)) 
    g0_b1__1
       (.I0(data_in[0]),
        .I1(data_in[1]),
        .I2(data_in[2]),
        .I3(data_in[3]),
        .O(g0_b1__1_n_0));
  LUT6 #(
    .INIT(64'hDBCBCBCBCBCBCBCB)) 
    g0_b1__2
       (.I0(data_in[0]),
        .I1(data_in[1]),
        .I2(data_in[2]),
        .I3(data_in[3]),
        .I4(data_in[4]),
        .I5(data_in[5]),
        .O(g0_b1__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hD716)) 
    g0_b1__3
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b1__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFE8A6E11)) 
    g0_b1__4
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b1__4_n_0));
  LUT4 #(
    .INIT(16'h99D6)) 
    g0_b2
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b2_n_0));
  LUT5 #(
    .INIT(32'h85AA69F9)) 
    g0_b2__0
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b2__0_n_0));
  LUT4 #(
    .INIT(16'h99D6)) 
    g0_b2__1
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b2__1_n_0));
  LUT5 #(
    .INIT(32'hAA8596ED)) 
    g0_b2__2
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b2__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA59A)) 
    g0_b3
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h76995969)) 
    g0_b3__0
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h5AA6)) 
    g0_b3__1
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b3__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h99769569)) 
    g0_b3__2
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b3__2_n_0));
  LUT4 #(
    .INIT(16'h969A)) 
    g0_b4
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b4_n_0));
  LUT5 #(
    .INIT(32'hA9A655A6)) 
    g0_b4__0
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b4__0_n_0));
  LUT4 #(
    .INIT(16'h69A6)) 
    g0_b4__1
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b4__1_n_0));
  LUT5 #(
    .INIT(32'hA6A9559A)) 
    g0_b4__2
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b4__2_n_0));
  LUT3 #(
    .INIT(8'h65)) 
    g0_b5
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[4]),
        .O(g0_b5_n_0));
  LUT5 #(
    .INIT(32'h95AA665A)) 
    g0_b5__0
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b5__0_n_0));
  LUT3 #(
    .INIT(8'h65)) 
    g0_b5__1
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[4]),
        .O(g0_b5__1_n_0));
  LUT5 #(
    .INIT(32'hAA956666)) 
    g0_b5__2
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b5__2_n_0));
  LUT4 #(
    .INIT(16'h966A)) 
    g0_b6
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b6_n_0));
  LUT5 #(
    .INIT(32'hA965AA55)) 
    g0_b6__0
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b6__0_n_0));
  LUT4 #(
    .INIT(16'h696A)) 
    g0_b6__1
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b6__1_n_0));
  LUT5 #(
    .INIT(32'h65A9AA55)) 
    g0_b6__2
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b6__2_n_0));
  LUT4 #(
    .INIT(16'h59A6)) 
    g0_b7
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b7_n_0));
  LUT5 #(
    .INIT(32'hA5695A99)) 
    g0_b7__0
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b7__0_n_0));
  LUT4 #(
    .INIT(16'h959A)) 
    g0_b7__1
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b7__1_n_0));
  LUT5 #(
    .INIT(32'h69A5A5A5)) 
    g0_b7__2
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b7__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h5545)) 
    g0_b7__3
       (.I0(data_in[1]),
        .I1(data_in[0]),
        .I2(data_in[2]),
        .I3(data_in[3]),
        .O(g0_b7__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hC5C5C5C0)) 
    g0_b7__4
       (.I0(data_in[1]),
        .I1(g0_b9__1_n_0),
        .I2(mod_type[0]),
        .I3(data_in[0]),
        .I4(g0_b7_i_1_n_0),
        .O(g0_b7__4_n_0));
  LUT5 #(
    .INIT(32'h55555400)) 
    g0_b7__5
       (.I0(data_in[1]),
        .I1(data_in[0]),
        .I2(g0_b7_i_1_n_0),
        .I3(mod_type[1]),
        .I4(mod_type[0]),
        .O(g0_b7__5_n_0));
  LUT5 #(
    .INIT(32'h55AA5400)) 
    g0_b7__6
       (.I0(data_in[1]),
        .I1(data_in[0]),
        .I2(g0_b7_i_1_n_0),
        .I3(mod_type[1]),
        .I4(mod_type[0]),
        .O(g0_b7__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    g0_b7__7
       (.I0(data_in[1]),
        .I1(mod_type[0]),
        .I2(data_in[0]),
        .O(g0_b7__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    g0_b7__8
       (.I0(data_in[1]),
        .I1(mod_type[0]),
        .I2(data_in[0]),
        .O(g0_b7__8_n_0));
  LUT6 #(
    .INIT(64'h0F0F666600FF3333)) 
    g0_b7__9
       (.I0(data_in[1]),
        .I1(data_in[0]),
        .I2(data_in[4]),
        .I3(data_in[3]),
        .I4(mod_type[1]),
        .I5(mod_type[0]),
        .O(g0_b7__9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    g0_b7_i_1
       (.I0(data_in[3]),
        .I1(data_in[2]),
        .O(g0_b7_i_1_n_0));
  LUT4 #(
    .INIT(16'h9959)) 
    g0_b8
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b8_n_0));
  LUT5 #(
    .INIT(32'h655A95A6)) 
    g0_b8__0
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b8__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6663)) 
    g0_b8__1
       (.I0(data_in[0]),
        .I1(data_in[1]),
        .I2(data_in[2]),
        .I3(data_in[3]),
        .O(g0_b8__1_n_0));
  LUT6 #(
    .INIT(64'h1F0F0F0F0F0F070F)) 
    g0_b8__2
       (.I0(data_in[0]),
        .I1(data_in[1]),
        .I2(data_in[2]),
        .I3(data_in[3]),
        .I4(data_in[4]),
        .I5(data_in[5]),
        .O(g0_b8__2_n_0));
  LUT4 #(
    .INIT(16'h9965)) 
    g0_b8__3
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b8__3_n_0));
  LUT5 #(
    .INIT(32'h5A65599A)) 
    g0_b8__4
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b8__4_n_0));
  LUT4 #(
    .INIT(16'h5A6A)) 
    g0_b9
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b9_n_0));
  LUT5 #(
    .INIT(32'h5566A666)) 
    g0_b9__0
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b9__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    g0_b9__1
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .O(g0_b9__1_n_0));
  LUT6 #(
    .INIT(64'h7969696969696169)) 
    g0_b9__2
       (.I0(data_in[0]),
        .I1(data_in[1]),
        .I2(data_in[2]),
        .I3(data_in[3]),
        .I4(data_in[4]),
        .I5(data_in[5]),
        .O(g0_b9__2_n_0));
  LUT4 #(
    .INIT(16'hA56A)) 
    g0_b9__3
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b9__3_n_0));
  LUT5 #(
    .INIT(32'h66556A5A)) 
    g0_b9__4
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b9__4_n_0));
  LUT6 #(
    .INIT(64'hAFAFA0AFCFCFCFCF)) 
    \i_out[0]_i_1 
       (.I0(\i_out_reg[0]_i_2_n_0 ),
        .I1(\i_out[0]_i_3_n_0 ),
        .I2(mod_type[2]),
        .I3(mod_type[0]),
        .I4(\i_out[0]_i_4_n_0 ),
        .I5(mod_type[1]),
        .O(\i_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8833BB338833B830)) 
    \i_out[0]_i_3 
       (.I0(data_in[2]),
        .I1(mod_type[0]),
        .I2(data_in[5]),
        .I3(data_in[3]),
        .I4(data_in[4]),
        .I5(\i_out[11]_i_4_n_0 ),
        .O(\i_out[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hCD)) 
    \i_out[0]_i_4 
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .O(\i_out[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \i_out[10]_i_1 
       (.I0(\i_out_reg[10]_i_2_n_0 ),
        .I1(\i_out[10]_i_3_n_0 ),
        .I2(mod_type[2]),
        .I3(\i_out[10]_i_4_n_0 ),
        .I4(mod_type[1]),
        .I5(g0_b7__7_n_0),
        .O(\i_out[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \i_out[10]_i_3 
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(mod_type[0]),
        .I3(data_in[5]),
        .I4(data_in[4]),
        .O(\i_out[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hA05FAF60)) 
    \i_out[10]_i_4 
       (.I0(data_in[4]),
        .I1(data_in[0]),
        .I2(mod_type[0]),
        .I3(data_in[2]),
        .I4(data_in[3]),
        .O(\i_out[10]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i_out[11]_i_1 
       (.I0(data_in_ready),
        .I1(data_in_valid),
        .O(data_out_ready11_out));
  LUT6 #(
    .INIT(64'hC8C8C8C8CDCDCDC8)) 
    \i_out[11]_i_3 
       (.I0(mod_type[1]),
        .I1(data_in[0]),
        .I2(mod_type[0]),
        .I3(data_in[4]),
        .I4(\i_out[11]_i_4_n_0 ),
        .I5(data_in[5]),
        .O(\i_out[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \i_out[11]_i_4 
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[0]),
        .O(\i_out[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \i_out[1]_i_1 
       (.I0(\i_out_reg[1]_i_2_n_0 ),
        .I1(\i_out[1]_i_3_n_0 ),
        .I2(mod_type[2]),
        .I3(\i_out[1]_i_4_n_0 ),
        .I4(mod_type[1]),
        .I5(g0_b7__7_n_0),
        .O(\i_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h4FFF4F00)) 
    \i_out[1]_i_3 
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(mod_type[0]),
        .I4(\i_out[1]_i_5_n_0 ),
        .O(\i_out[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h3FFFCB00)) 
    \i_out[1]_i_4 
       (.I0(data_in[0]),
        .I1(data_in[4]),
        .I2(data_in[2]),
        .I3(mod_type[0]),
        .I4(data_in[3]),
        .O(\i_out[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF55AEAAAAAA)) 
    \i_out[1]_i_5 
       (.I0(data_in[5]),
        .I1(data_in[0]),
        .I2(data_in[2]),
        .I3(data_in[3]),
        .I4(data_in[1]),
        .I5(data_in[4]),
        .O(\i_out[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \i_out[2]_i_1 
       (.I0(\i_out_reg[2]_i_2_n_0 ),
        .I1(\i_out[2]_i_3_n_0 ),
        .I2(mod_type[2]),
        .I3(\i_out[10]_i_4_n_0 ),
        .I4(mod_type[1]),
        .I5(g0_b7__7_n_0),
        .O(\i_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7CFF7C00)) 
    \i_out[2]_i_3 
       (.I0(data_in[2]),
        .I1(data_in[0]),
        .I2(data_in[3]),
        .I3(mod_type[0]),
        .I4(\i_out[5]_i_4_n_0 ),
        .O(\i_out[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \i_out[3]_i_2 
       (.I0(data_in[4]),
        .I1(mod_type[0]),
        .I2(data_in[3]),
        .I3(mod_type[1]),
        .I4(g0_b7__8_n_0),
        .O(\i_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \i_out[3]_i_3 
       (.I0(g0_b3__0_n_0),
        .I1(g0_b3_n_0),
        .I2(mod_type[1]),
        .I3(data_in[0]),
        .I4(mod_type[0]),
        .I5(\i_out[3]_i_4_n_0 ),
        .O(\i_out[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \i_out[3]_i_4 
       (.I0(data_in[5]),
        .I1(data_in[4]),
        .I2(data_in[3]),
        .O(\i_out[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \i_out[4]_i_1 
       (.I0(\i_out_reg[4]_i_2_n_0 ),
        .I1(\i_out[4]_i_3_n_0 ),
        .I2(mod_type[2]),
        .I3(\i_out[8]_i_4_n_0 ),
        .I4(mod_type[1]),
        .I5(g0_b7__8_n_0),
        .O(\i_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9A009AFF9AFF9A00)) 
    \i_out[4]_i_3 
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(mod_type[0]),
        .I4(data_in[5]),
        .I5(data_in[4]),
        .O(\i_out[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \i_out[5]_i_1 
       (.I0(\i_out_reg[5]_i_2_n_0 ),
        .I1(\i_out[5]_i_3_n_0 ),
        .I2(mod_type[2]),
        .I3(\i_out[9]_i_4_n_0 ),
        .I4(mod_type[1]),
        .I5(g0_b7__7_n_0),
        .O(\i_out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h69FF6900)) 
    \i_out[5]_i_3 
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(mod_type[0]),
        .I4(\i_out[5]_i_4_n_0 ),
        .O(\i_out[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00400000)) 
    \i_out[5]_i_4 
       (.I0(data_in[4]),
        .I1(data_in[1]),
        .I2(data_in[3]),
        .I3(data_in[2]),
        .I4(data_in[0]),
        .I5(data_in[5]),
        .O(\i_out[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \i_out[6]_i_1 
       (.I0(\i_out_reg[6]_i_2_n_0 ),
        .I1(\i_out[6]_i_3_n_0 ),
        .I2(mod_type[2]),
        .I3(\i_out[10]_i_4_n_0 ),
        .I4(mod_type[1]),
        .I5(g0_b7__8_n_0),
        .O(\i_out[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB88B4774)) 
    \i_out[6]_i_3 
       (.I0(data_in[0]),
        .I1(mod_type[0]),
        .I2(data_in[5]),
        .I3(data_in[4]),
        .I4(data_in[3]),
        .O(\i_out[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \i_out[7]_i_1 
       (.I0(\i_out_reg[7]_i_2_n_0 ),
        .I1(\i_out[7]_i_3_n_0 ),
        .I2(mod_type[2]),
        .I3(\i_out[7]_i_4_n_0 ),
        .I4(mod_type[1]),
        .I5(g0_b7__7_n_0),
        .O(\i_out[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h590059FF59FF5900)) 
    \i_out[7]_i_3 
       (.I0(data_in[0]),
        .I1(data_in[3]),
        .I2(data_in[2]),
        .I3(mod_type[0]),
        .I4(data_in[5]),
        .I5(data_in[4]),
        .O(\i_out[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \i_out[7]_i_4 
       (.I0(data_in[4]),
        .I1(mod_type[0]),
        .I2(data_in[3]),
        .O(\i_out[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \i_out[8]_i_1 
       (.I0(\i_out_reg[8]_i_2_n_0 ),
        .I1(\i_out[8]_i_3_n_0 ),
        .I2(mod_type[2]),
        .I3(\i_out[8]_i_4_n_0 ),
        .I4(mod_type[1]),
        .I5(g0_b7__7_n_0),
        .O(\i_out[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55FFFF5500BAAA00)) 
    \i_out[8]_i_3 
       (.I0(mod_type[0]),
        .I1(data_in[4]),
        .I2(data_in[1]),
        .I3(\i_out[8]_i_5_n_0 ),
        .I4(data_in[0]),
        .I5(data_in[5]),
        .O(\i_out[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h50AFAF90)) 
    \i_out[8]_i_4 
       (.I0(data_in[4]),
        .I1(data_in[0]),
        .I2(mod_type[0]),
        .I3(data_in[2]),
        .I4(data_in[3]),
        .O(\i_out[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \i_out[8]_i_5 
       (.I0(data_in[2]),
        .I1(data_in[3]),
        .O(\i_out[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \i_out[9]_i_1 
       (.I0(\i_out_reg[9]_i_2_n_0 ),
        .I1(\i_out[9]_i_3_n_0 ),
        .I2(mod_type[2]),
        .I3(\i_out[9]_i_4_n_0 ),
        .I4(mod_type[1]),
        .I5(g0_b7__8_n_0),
        .O(\i_out[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9F90909F606F6F60)) 
    \i_out[9]_i_3 
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(mod_type[0]),
        .I3(data_in[5]),
        .I4(data_in[4]),
        .I5(data_in[3]),
        .O(\i_out[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h5F90)) 
    \i_out[9]_i_4 
       (.I0(data_in[4]),
        .I1(data_in[2]),
        .I2(mod_type[0]),
        .I3(data_in[3]),
        .O(\i_out[9]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[0] 
       (.C(clk),
        .CE(data_out_ready11_out),
        .CLR(reset),
        .D(\i_out[0]_i_1_n_0 ),
        .Q(i_out[0]));
  MUXF7 \i_out_reg[0]_i_2 
       (.I0(g0_b0_n_0),
        .I1(g0_b0__0_n_0),
        .O(\i_out_reg[0]_i_2_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[10] 
       (.C(clk),
        .CE(data_out_ready11_out),
        .CLR(reset),
        .D(\i_out[10]_i_1_n_0 ),
        .Q(i_out[10]));
  MUXF7 \i_out_reg[10]_i_2 
       (.I0(g0_b10_n_0),
        .I1(g0_b10__0_n_0),
        .O(\i_out_reg[10]_i_2_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[11] 
       (.C(clk),
        .CE(data_out_ready11_out),
        .CLR(reset),
        .D(\i_out_reg[11]_i_2_n_0 ),
        .Q(i_out[11]));
  MUXF7 \i_out_reg[11]_i_2 
       (.I0(g0_b7__9_n_0),
        .I1(\i_out[11]_i_3_n_0 ),
        .O(\i_out_reg[11]_i_2_n_0 ),
        .S(mod_type[2]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[1] 
       (.C(clk),
        .CE(data_out_ready11_out),
        .CLR(reset),
        .D(\i_out[1]_i_1_n_0 ),
        .Q(i_out[1]));
  MUXF7 \i_out_reg[1]_i_2 
       (.I0(g0_b1_n_0),
        .I1(g0_b1__0_n_0),
        .O(\i_out_reg[1]_i_2_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[2] 
       (.C(clk),
        .CE(data_out_ready11_out),
        .CLR(reset),
        .D(\i_out[2]_i_1_n_0 ),
        .Q(i_out[2]));
  MUXF7 \i_out_reg[2]_i_2 
       (.I0(g0_b2_n_0),
        .I1(g0_b2__0_n_0),
        .O(\i_out_reg[2]_i_2_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[3] 
       (.C(clk),
        .CE(data_out_ready11_out),
        .CLR(reset),
        .D(\i_out_reg[3]_i_1_n_0 ),
        .Q(i_out[3]));
  MUXF7 \i_out_reg[3]_i_1 
       (.I0(\i_out[3]_i_2_n_0 ),
        .I1(\i_out[3]_i_3_n_0 ),
        .O(\i_out_reg[3]_i_1_n_0 ),
        .S(mod_type[2]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[4] 
       (.C(clk),
        .CE(data_out_ready11_out),
        .CLR(reset),
        .D(\i_out[4]_i_1_n_0 ),
        .Q(i_out[4]));
  MUXF7 \i_out_reg[4]_i_2 
       (.I0(g0_b4_n_0),
        .I1(g0_b4__0_n_0),
        .O(\i_out_reg[4]_i_2_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[5] 
       (.C(clk),
        .CE(data_out_ready11_out),
        .CLR(reset),
        .D(\i_out[5]_i_1_n_0 ),
        .Q(i_out[5]));
  MUXF7 \i_out_reg[5]_i_2 
       (.I0(g0_b5_n_0),
        .I1(g0_b5__0_n_0),
        .O(\i_out_reg[5]_i_2_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[6] 
       (.C(clk),
        .CE(data_out_ready11_out),
        .CLR(reset),
        .D(\i_out[6]_i_1_n_0 ),
        .Q(i_out[6]));
  MUXF7 \i_out_reg[6]_i_2 
       (.I0(g0_b6_n_0),
        .I1(g0_b6__0_n_0),
        .O(\i_out_reg[6]_i_2_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[7] 
       (.C(clk),
        .CE(data_out_ready11_out),
        .CLR(reset),
        .D(\i_out[7]_i_1_n_0 ),
        .Q(i_out[7]));
  MUXF7 \i_out_reg[7]_i_2 
       (.I0(g0_b7_n_0),
        .I1(g0_b7__0_n_0),
        .O(\i_out_reg[7]_i_2_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[8] 
       (.C(clk),
        .CE(data_out_ready11_out),
        .CLR(reset),
        .D(\i_out[8]_i_1_n_0 ),
        .Q(i_out[8]));
  MUXF7 \i_out_reg[8]_i_2 
       (.I0(g0_b8_n_0),
        .I1(g0_b8__0_n_0),
        .O(\i_out_reg[8]_i_2_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[9] 
       (.C(clk),
        .CE(data_out_ready11_out),
        .CLR(reset),
        .D(\i_out[9]_i_1_n_0 ),
        .Q(i_out[9]));
  MUXF7 \i_out_reg[9]_i_2 
       (.I0(g0_b9_n_0),
        .I1(g0_b9__0_n_0),
        .O(\i_out_reg[9]_i_2_n_0 ),
        .S(mod_type[0]));
  LUT6 #(
    .INIT(64'hAAAAFFFFFFFC0000)) 
    \q_out[0]_i_2 
       (.I0(g0_b0__1_n_0),
        .I1(data_in[1]),
        .I2(g0_b7_i_1_n_0),
        .I3(data_in[0]),
        .I4(mod_type[1]),
        .I5(mod_type[0]),
        .O(\q_out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \q_out[0]_i_3 
       (.I0(\q_out_reg[0]_i_4_n_0 ),
        .I1(mod_type[1]),
        .I2(data_in[3]),
        .I3(data_in[2]),
        .I4(mod_type[0]),
        .I5(g0_b0__2_n_0),
        .O(\q_out[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \q_out[10]_i_1 
       (.I0(\q_out[10]_i_2_n_0 ),
        .I1(mod_type[2]),
        .I2(\q_out[10]_i_3_n_0 ),
        .I3(mod_type[1]),
        .I4(mod_type[0]),
        .I5(data_in[1]),
        .O(\q_out[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \q_out[10]_i_2 
       (.I0(\q_out_reg[10]_i_4_n_0 ),
        .I1(mod_type[1]),
        .I2(data_in[1]),
        .I3(data_in[3]),
        .I4(mod_type[0]),
        .I5(g0_b10__2_n_0),
        .O(\q_out[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B88B8B888B)) 
    \q_out[10]_i_3 
       (.I0(g0_b10__1_n_0),
        .I1(mod_type[0]),
        .I2(data_in[0]),
        .I3(data_in[2]),
        .I4(data_in[3]),
        .I5(data_in[1]),
        .O(\q_out[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \q_out[11]_i_1 
       (.I0(mod_type[1]),
        .I1(data_in[1]),
        .I2(mod_type[0]),
        .I3(g0_b11_n_0),
        .I4(mod_type[2]),
        .I5(\q_out[11]_i_2_n_0 ),
        .O(\q_out[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FF001000)) 
    \q_out[11]_i_2 
       (.I0(data_in[0]),
        .I1(data_in[3]),
        .I2(data_in[2]),
        .I3(mod_type[1]),
        .I4(data_in[1]),
        .I5(mod_type[0]),
        .O(\q_out[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0C0AFC0)) 
    \q_out[1]_i_2 
       (.I0(g0_b1__1_n_0),
        .I1(g0_b7__3_n_0),
        .I2(mod_type[1]),
        .I3(mod_type[0]),
        .I4(data_in[1]),
        .O(\q_out[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q_out[1]_i_3 
       (.I0(g0_b1__4_n_0),
        .I1(mod_type[0]),
        .I2(g0_b1__3_n_0),
        .I3(mod_type[1]),
        .I4(\q_out[1]_i_4_n_0 ),
        .O(\q_out[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h4FFF4F00)) 
    \q_out[1]_i_4 
       (.I0(data_in[1]),
        .I1(data_in[3]),
        .I2(data_in[2]),
        .I3(mod_type[0]),
        .I4(g0_b1__2_n_0),
        .O(\q_out[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q_out[2]_i_1 
       (.I0(\q_out_reg[2]_i_2_n_0 ),
        .I1(mod_type[1]),
        .I2(\q_out[2]_i_3_n_0 ),
        .I3(mod_type[2]),
        .I4(\q_out[2]_i_4_n_0 ),
        .O(\q_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7CFF7C00)) 
    \q_out[2]_i_3 
       (.I0(data_in[3]),
        .I1(data_in[1]),
        .I2(data_in[2]),
        .I3(mod_type[0]),
        .I4(g0_b8__2_n_0),
        .O(\q_out[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAA00CC00AAFF3000)) 
    \q_out[2]_i_4 
       (.I0(g0_b10__1_n_0),
        .I1(data_in[0]),
        .I2(g0_b7_i_1_n_0),
        .I3(mod_type[1]),
        .I4(mod_type[0]),
        .I5(data_in[1]),
        .O(\q_out[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_out[3]_i_2 
       (.I0(g0_b3__2_n_0),
        .I1(g0_b3__1_n_0),
        .I2(mod_type[1]),
        .I3(data_in[1]),
        .I4(mod_type[0]),
        .I5(g0_b9__2_n_0),
        .O(\q_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA00CC003000)) 
    \q_out[4]_i_2 
       (.I0(g0_b8__1_n_0),
        .I1(data_in[0]),
        .I2(g0_b7_i_1_n_0),
        .I3(mod_type[1]),
        .I4(data_in[1]),
        .I5(mod_type[0]),
        .O(\q_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB88BBBBBB88B8888)) 
    \q_out[4]_i_3 
       (.I0(\q_out_reg[4]_i_4_n_0 ),
        .I1(mod_type[1]),
        .I2(data_in[1]),
        .I3(g0_b7_i_1_n_0),
        .I4(mod_type[0]),
        .I5(g0_b10__2_n_0),
        .O(\q_out[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_out[5]_i_1 
       (.I0(\q_out_reg[5]_i_2_n_0 ),
        .I1(\q_out[5]_i_3_n_0 ),
        .I2(mod_type[2]),
        .I3(g0_b7__4_n_0),
        .I4(mod_type[1]),
        .I5(\q_out[5]_i_4_n_0 ),
        .O(\q_out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h69FF6900)) 
    \q_out[5]_i_3 
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(mod_type[0]),
        .I4(g0_b8__2_n_0),
        .O(\q_out[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q_out[5]_i_4 
       (.I0(mod_type[0]),
        .I1(data_in[1]),
        .O(\q_out[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA00CC003000)) 
    \q_out[6]_i_2 
       (.I0(g0_b10__1_n_0),
        .I1(data_in[0]),
        .I2(g0_b7_i_1_n_0),
        .I3(mod_type[1]),
        .I4(data_in[1]),
        .I5(mod_type[0]),
        .O(\q_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB88BBBBBB88B8888)) 
    \q_out[6]_i_3 
       (.I0(\q_out_reg[6]_i_4_n_0 ),
        .I1(mod_type[1]),
        .I2(data_in[1]),
        .I3(data_in[2]),
        .I4(mod_type[0]),
        .I5(g0_b9__2_n_0),
        .O(\q_out[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \q_out[7]_i_2 
       (.I0(\q_out_reg[7]_i_3_n_0 ),
        .I1(mod_type[1]),
        .I2(data_in[1]),
        .I3(g0_b7_i_1_n_0),
        .I4(mod_type[0]),
        .I5(g0_b10__2_n_0),
        .O(\q_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA00CC00AAFF3000)) 
    \q_out[8]_i_2 
       (.I0(g0_b8__1_n_0),
        .I1(data_in[0]),
        .I2(g0_b7_i_1_n_0),
        .I3(mod_type[1]),
        .I4(mod_type[0]),
        .I5(data_in[1]),
        .O(\q_out[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \q_out[8]_i_3 
       (.I0(\q_out_reg[8]_i_4_n_0 ),
        .I1(mod_type[1]),
        .I2(data_in[1]),
        .I3(g0_b7_i_1_n_0),
        .I4(mod_type[0]),
        .I5(g0_b8__2_n_0),
        .O(\q_out[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_out[9]_i_1 
       (.I0(\q_out_reg[9]_i_2_n_0 ),
        .I1(\q_out[9]_i_3_n_0 ),
        .I2(mod_type[2]),
        .I3(g0_b7__4_n_0),
        .I4(mod_type[1]),
        .I5(\q_out[9]_i_4_n_0 ),
        .O(\q_out[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \q_out[9]_i_3 
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(mod_type[0]),
        .I4(g0_b9__2_n_0),
        .O(\q_out[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q_out[9]_i_4 
       (.I0(data_in[1]),
        .I1(mod_type[0]),
        .O(\q_out[9]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[0] 
       (.C(clk),
        .CE(data_out_ready11_out),
        .CLR(reset),
        .D(\q_out_reg[0]_i_1_n_0 ),
        .Q(q_out[0]));
  MUXF7 \q_out_reg[0]_i_1 
       (.I0(\q_out[0]_i_2_n_0 ),
        .I1(\q_out[0]_i_3_n_0 ),
        .O(\q_out_reg[0]_i_1_n_0 ),
        .S(mod_type[2]));
  MUXF7 \q_out_reg[0]_i_4 
       (.I0(g0_b0__3_n_0),
        .I1(g0_b0__4_n_0),
        .O(\q_out_reg[0]_i_4_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[10] 
       (.C(clk),
        .CE(data_out_ready11_out),
        .CLR(reset),
        .D(\q_out[10]_i_1_n_0 ),
        .Q(q_out[10]));
  MUXF7 \q_out_reg[10]_i_4 
       (.I0(g0_b10__3_n_0),
        .I1(g0_b10__4_n_0),
        .O(\q_out_reg[10]_i_4_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[11] 
       (.C(clk),
        .CE(data_out_ready11_out),
        .CLR(reset),
        .D(\q_out[11]_i_1_n_0 ),
        .Q(q_out[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[1] 
       (.C(clk),
        .CE(data_out_ready11_out),
        .CLR(reset),
        .D(\q_out_reg[1]_i_1_n_0 ),
        .Q(q_out[1]));
  MUXF7 \q_out_reg[1]_i_1 
       (.I0(\q_out[1]_i_2_n_0 ),
        .I1(\q_out[1]_i_3_n_0 ),
        .O(\q_out_reg[1]_i_1_n_0 ),
        .S(mod_type[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[2] 
       (.C(clk),
        .CE(data_out_ready11_out),
        .CLR(reset),
        .D(\q_out[2]_i_1_n_0 ),
        .Q(q_out[2]));
  MUXF7 \q_out_reg[2]_i_2 
       (.I0(g0_b2__1_n_0),
        .I1(g0_b2__2_n_0),
        .O(\q_out_reg[2]_i_2_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[3] 
       (.C(clk),
        .CE(data_out_ready11_out),
        .CLR(reset),
        .D(\q_out_reg[3]_i_1_n_0 ),
        .Q(q_out[3]));
  MUXF7 \q_out_reg[3]_i_1 
       (.I0(g0_b7__6_n_0),
        .I1(\q_out[3]_i_2_n_0 ),
        .O(\q_out_reg[3]_i_1_n_0 ),
        .S(mod_type[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[4] 
       (.C(clk),
        .CE(data_out_ready11_out),
        .CLR(reset),
        .D(\q_out_reg[4]_i_1_n_0 ),
        .Q(q_out[4]));
  MUXF7 \q_out_reg[4]_i_1 
       (.I0(\q_out[4]_i_2_n_0 ),
        .I1(\q_out[4]_i_3_n_0 ),
        .O(\q_out_reg[4]_i_1_n_0 ),
        .S(mod_type[2]));
  MUXF7 \q_out_reg[4]_i_4 
       (.I0(g0_b4__1_n_0),
        .I1(g0_b4__2_n_0),
        .O(\q_out_reg[4]_i_4_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[5] 
       (.C(clk),
        .CE(data_out_ready11_out),
        .CLR(reset),
        .D(\q_out[5]_i_1_n_0 ),
        .Q(q_out[5]));
  MUXF7 \q_out_reg[5]_i_2 
       (.I0(g0_b5__1_n_0),
        .I1(g0_b5__2_n_0),
        .O(\q_out_reg[5]_i_2_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[6] 
       (.C(clk),
        .CE(data_out_ready11_out),
        .CLR(reset),
        .D(\q_out_reg[6]_i_1_n_0 ),
        .Q(q_out[6]));
  MUXF7 \q_out_reg[6]_i_1 
       (.I0(\q_out[6]_i_2_n_0 ),
        .I1(\q_out[6]_i_3_n_0 ),
        .O(\q_out_reg[6]_i_1_n_0 ),
        .S(mod_type[2]));
  MUXF7 \q_out_reg[6]_i_4 
       (.I0(g0_b6__1_n_0),
        .I1(g0_b6__2_n_0),
        .O(\q_out_reg[6]_i_4_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[7] 
       (.C(clk),
        .CE(data_out_ready11_out),
        .CLR(reset),
        .D(\q_out_reg[7]_i_1_n_0 ),
        .Q(q_out[7]));
  MUXF7 \q_out_reg[7]_i_1 
       (.I0(g0_b7__5_n_0),
        .I1(\q_out[7]_i_2_n_0 ),
        .O(\q_out_reg[7]_i_1_n_0 ),
        .S(mod_type[2]));
  MUXF7 \q_out_reg[7]_i_3 
       (.I0(g0_b7__1_n_0),
        .I1(g0_b7__2_n_0),
        .O(\q_out_reg[7]_i_3_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[8] 
       (.C(clk),
        .CE(data_out_ready11_out),
        .CLR(reset),
        .D(\q_out_reg[8]_i_1_n_0 ),
        .Q(q_out[8]));
  MUXF7 \q_out_reg[8]_i_1 
       (.I0(\q_out[8]_i_2_n_0 ),
        .I1(\q_out[8]_i_3_n_0 ),
        .O(\q_out_reg[8]_i_1_n_0 ),
        .S(mod_type[2]));
  MUXF7 \q_out_reg[8]_i_4 
       (.I0(g0_b8__3_n_0),
        .I1(g0_b8__4_n_0),
        .O(\q_out_reg[8]_i_4_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[9] 
       (.C(clk),
        .CE(data_out_ready11_out),
        .CLR(reset),
        .D(\q_out[9]_i_1_n_0 ),
        .Q(q_out[9]));
  MUXF7 \q_out_reg[9]_i_2 
       (.I0(g0_b9__3_n_0),
        .I1(g0_b9__4_n_0),
        .O(\q_out_reg[9]_i_2_n_0 ),
        .S(mod_type[0]));
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
