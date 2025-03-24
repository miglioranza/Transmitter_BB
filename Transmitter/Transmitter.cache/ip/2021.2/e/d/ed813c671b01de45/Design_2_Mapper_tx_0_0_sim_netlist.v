// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Fri Mar  7 14:49:46 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_Mapper_tx_0_0_sim_netlist.v
// Design      : Design_2_Mapper_tx_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Design_2_Mapper_tx_0_0,mapper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "mapper,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    nreset,
    mod_type,
    data_in,
    data_in_valid,
    data_in_ready,
    i_out,
    q_out,
    data_out_ready,
    data_out_valid);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Design_2_clk, INSERT_VIP 0" *) input clk;
  input nreset;
  input [2:0]mod_type;
  input [5:0]data_in;
  input data_in_valid;
  input data_in_ready;
  output [11:0]i_out;
  output [11:0]q_out;
  output data_out_ready;
  output data_out_valid;

  wire clk;
  wire [5:0]data_in;
  wire data_in_ready;
  wire data_in_valid;
  wire data_out_ready;
  wire data_out_valid;
  wire [11:0]i_out;
  wire [2:0]mod_type;
  wire nreset;
  wire [11:0]q_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mapper U0
       (.clk(clk),
        .data_in(data_in),
        .data_in_ready(data_in_ready),
        .data_in_valid(data_in_valid),
        .data_out_ready(data_out_ready),
        .data_out_valid(data_out_valid),
        .i_out(i_out),
        .mod_type(mod_type),
        .nreset(nreset),
        .q_out(q_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mapper
   (i_out,
    q_out,
    data_out_ready,
    data_out_valid,
    data_in,
    mod_type,
    clk,
    data_in_ready,
    data_in_valid,
    nreset);
  output [11:0]i_out;
  output [11:0]q_out;
  output data_out_ready;
  output data_out_valid;
  input [5:0]data_in;
  input [2:0]mod_type;
  input clk;
  input data_in_ready;
  input data_in_valid;
  input nreset;

  wire clk;
  wire [10:0]data4;
  wire [5:0]data_in;
  wire data_in_ready;
  wire data_in_valid;
  wire data_out_ready;
  wire data_out_valid;
  wire data_out_valid_i_1_n_0;
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
  wire g0_b7_i_1_n_0;
  wire g0_b7_i_2_n_0;
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
  wire \i_out[0]_i_2_n_0 ;
  wire \i_out[0]_i_3_n_0 ;
  wire \i_out[0]_i_4_n_0 ;
  wire \i_out[10]_i_2_n_0 ;
  wire \i_out[10]_i_3_n_0 ;
  wire \i_out[10]_i_4_n_0 ;
  wire \i_out[10]_i_6_n_0 ;
  wire \i_out[10]_i_7_n_0 ;
  wire \i_out[11]_i_2_n_0 ;
  wire \i_out[11]_i_3_n_0 ;
  wire \i_out[11]_i_4_n_0 ;
  wire \i_out[11]_i_5_n_0 ;
  wire \i_out[1]_i_2_n_0 ;
  wire \i_out[1]_i_3_n_0 ;
  wire \i_out[1]_i_5_n_0 ;
  wire \i_out[2]_i_2_n_0 ;
  wire \i_out[2]_i_3_n_0 ;
  wire \i_out[2]_i_4_n_0 ;
  wire \i_out[2]_i_5_n_0 ;
  wire \i_out[2]_i_6_n_0 ;
  wire \i_out[2]_i_7_n_0 ;
  wire \i_out[3]_i_2_n_0 ;
  wire \i_out[4]_i_2_n_0 ;
  wire \i_out[4]_i_3_n_0 ;
  wire \i_out[4]_i_4_n_0 ;
  wire \i_out[5]_i_2_n_0 ;
  wire \i_out[5]_i_3_n_0 ;
  wire \i_out[6]_i_2_n_0 ;
  wire \i_out[6]_i_3_n_0 ;
  wire \i_out[7]_i_2_n_0 ;
  wire \i_out[7]_i_3_n_0 ;
  wire \i_out[8]_i_2_n_0 ;
  wire \i_out[8]_i_3_n_0 ;
  wire \i_out[8]_i_4_n_0 ;
  wire \i_out[8]_i_5_n_0 ;
  wire \i_out[9]_i_2_n_0 ;
  wire \i_out[9]_i_3_n_0 ;
  wire \i_out[9]_i_4_n_0 ;
  wire [2:0]mod_type;
  wire nreset;
  wire [11:0]p_0_in;
  wire [11:0]q_out;
  wire \q_out[0]_i_1_n_0 ;
  wire \q_out[0]_i_2_n_0 ;
  wire \q_out[0]_i_3_n_0 ;
  wire \q_out[10]_i_1_n_0 ;
  wire \q_out[10]_i_2_n_0 ;
  wire \q_out[10]_i_3_n_0 ;
  wire \q_out[11]_i_1_n_0 ;
  wire \q_out[11]_i_2_n_0 ;
  wire \q_out[1]_i_1_n_0 ;
  wire \q_out[1]_i_2_n_0 ;
  wire \q_out[1]_i_3_n_0 ;
  wire \q_out[1]_i_4_n_0 ;
  wire \q_out[2]_i_1_n_0 ;
  wire \q_out[2]_i_2_n_0 ;
  wire \q_out[3]_i_1_n_0 ;
  wire \q_out[3]_i_2_n_0 ;
  wire \q_out[4]_i_1_n_0 ;
  wire \q_out[4]_i_2_n_0 ;
  wire \q_out[4]_i_3_n_0 ;
  wire \q_out[5]_i_1_n_0 ;
  wire \q_out[5]_i_2_n_0 ;
  wire \q_out[5]_i_3_n_0 ;
  wire \q_out[6]_i_1_n_0 ;
  wire \q_out[6]_i_2_n_0 ;
  wire \q_out[6]_i_3_n_0 ;
  wire \q_out[7]_i_1_n_0 ;
  wire \q_out[7]_i_2_n_0 ;
  wire \q_out[8]_i_1_n_0 ;
  wire \q_out[8]_i_2_n_0 ;
  wire \q_out[8]_i_3_n_0 ;
  wire \q_out[8]_i_4_n_0 ;
  wire \q_out[8]_i_5_n_0 ;
  wire \q_out[9]_i_1_n_0 ;
  wire \q_out[9]_i_2_n_0 ;
  wire \q_out[9]_i_3_n_0 ;
  wire \q_out[9]_i_4_n_0 ;
  wire \q_out[9]_i_5_n_0 ;

  FDCE #(
    .INIT(1'b0)) 
    data_out_ready_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(data_in_ready),
        .Q(data_out_ready));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    data_out_valid_i_1
       (.I0(data_in_ready),
        .I1(data_in_valid),
        .O(data_out_valid_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    data_out_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(data_out_valid_i_1_n_0),
        .Q(data_out_valid));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h97)) 
    g0_b0
       (.I0(data_in[2]),
        .I1(data_in[3]),
        .I2(data_in[4]),
        .O(g0_b0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hB173)) 
    g0_b0__0
       (.I0(data_in[2]),
        .I1(data_in[3]),
        .I2(data_in[4]),
        .I3(data_in[5]),
        .O(g0_b0__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h57)) 
    g0_b0__1
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .O(g0_b0__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    g0_b0__2
       (.I0(data_in[0]),
        .I1(data_in[1]),
        .O(g0_b0__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h67)) 
    g0_b0__3
       (.I0(data_in[2]),
        .I1(data_in[3]),
        .I2(data_in[4]),
        .O(g0_b0__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h1BD5)) 
    g0_b0__4
       (.I0(data_in[2]),
        .I1(data_in[3]),
        .I2(data_in[4]),
        .I3(data_in[5]),
        .O(g0_b0__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h7D16)) 
    g0_b1
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    g0_b10
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h559A5AAA)) 
    g0_b10__0
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b10__0_n_0));
  LUT6 #(
    .INIT(64'hD3C3C3C3C3C3CBC3)) 
    g0_b10__1
       (.I0(data_in[0]),
        .I1(data_in[1]),
        .I2(data_in[2]),
        .I3(data_in[3]),
        .I4(data_in[4]),
        .I5(data_in[5]),
        .O(g0_b10__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h659A)) 
    g0_b10__2
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b10__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h9A55A5AA)) 
    g0_b10__3
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b10__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h99939989)) 
    g0_b10__4
       (.I0(data_in[0]),
        .I1(data_in[1]),
        .I2(data_in[2]),
        .I3(data_in[3]),
        .I4(mod_type[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h8AFEE605)) 
    g0_b1__0
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hD716)) 
    g0_b1__3
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b1__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFE8A6E11)) 
    g0_b1__4
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b1__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h99D6)) 
    g0_b2
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h85AA69F9)) 
    g0_b2__0
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h99D6)) 
    g0_b2__1
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b2__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hAA8596ED)) 
    g0_b2__2
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b2__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hA59A)) 
    g0_b3
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h76995969)) 
    g0_b3__0
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h5AA6)) 
    g0_b3__1
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b3__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h99769569)) 
    g0_b3__2
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b3__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h969A)) 
    g0_b4
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hA9A655A6)) 
    g0_b4__0
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h69A6)) 
    g0_b4__1
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b4__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hA6A9559A)) 
    g0_b4__2
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b4__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h65)) 
    g0_b5
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[4]),
        .O(g0_b5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h95AA665A)) 
    g0_b5__0
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b5__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h65)) 
    g0_b5__1
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[4]),
        .O(g0_b5__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hAA956666)) 
    g0_b5__2
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b5__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h966A)) 
    g0_b6
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hA965AA55)) 
    g0_b6__0
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b6__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h696A)) 
    g0_b6__1
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b6__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h65A9AA55)) 
    g0_b6__2
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b6__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h59A6)) 
    g0_b7
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hA5695A99)) 
    g0_b7__0
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b7__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h959A)) 
    g0_b7__1
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b7__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h69A5A5A5)) 
    g0_b7__2
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b7__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h44444440)) 
    g0_b7__3
       (.I0(data_in[1]),
        .I1(g0_b7_i_1_n_0),
        .I2(data_in[0]),
        .I3(g0_b7_i_2_n_0),
        .I4(mod_type[0]),
        .O(g0_b7__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    g0_b7_i_1
       (.I0(mod_type[1]),
        .I1(mod_type[2]),
        .O(g0_b7_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hB)) 
    g0_b7_i_2
       (.I0(data_in[3]),
        .I1(data_in[2]),
        .O(g0_b7_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h9959)) 
    g0_b8
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h655A95A6)) 
    g0_b8__0
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b8__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h9965)) 
    g0_b8__3
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b8__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h5A65599A)) 
    g0_b8__4
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b8__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h5A6A)) 
    g0_b9
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h5566A666)) 
    g0_b9__0
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b9__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hA56A)) 
    g0_b9__3
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(g0_b9__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h66556A5A)) 
    g0_b9__4
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .O(g0_b9__4_n_0));
  LUT5 #(
    .INIT(32'hAA00FC00)) 
    \i_out[0]_i_1 
       (.I0(\i_out[0]_i_2_n_0 ),
        .I1(\i_out[9]_i_2_n_0 ),
        .I2(\i_out[0]_i_3_n_0 ),
        .I3(data_out_valid_i_1_n_0),
        .I4(mod_type[2]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hCF5FCF50C05FC050)) 
    \i_out[0]_i_2 
       (.I0(\i_out[0]_i_4_n_0 ),
        .I1(g0_b0__0_n_0),
        .I2(mod_type[0]),
        .I3(mod_type[1]),
        .I4(data4[0]),
        .I5(g0_b0_n_0),
        .O(\i_out[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \i_out[0]_i_3 
       (.I0(data_in[2]),
        .I1(data_in[3]),
        .I2(data_in[0]),
        .O(\i_out[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \i_out[0]_i_4 
       (.I0(data_in[2]),
        .I1(data_in[3]),
        .O(\i_out[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00F7FFFFFFFF)) 
    \i_out[0]_i_5 
       (.I0(data_in[0]),
        .I1(data_in[1]),
        .I2(data_in[2]),
        .I3(data_in[4]),
        .I4(data_in[5]),
        .I5(data_in[3]),
        .O(data4[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \i_out[10]_i_1 
       (.I0(\i_out[10]_i_2_n_0 ),
        .I1(data_in_valid),
        .I2(data_in_ready),
        .I3(mod_type[2]),
        .I4(\i_out[10]_i_3_n_0 ),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \i_out[10]_i_2 
       (.I0(\i_out[10]_i_4_n_0 ),
        .I1(g0_b10__0_n_0),
        .I2(mod_type[0]),
        .I3(mod_type[1]),
        .I4(data4[10]),
        .I5(g0_b10_n_0),
        .O(\i_out[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA882800008828)) 
    \i_out[10]_i_3 
       (.I0(\i_out[10]_i_6_n_0 ),
        .I1(data_in[0]),
        .I2(mod_type[0]),
        .I3(data_in[1]),
        .I4(mod_type[1]),
        .I5(\i_out[10]_i_7_n_0 ),
        .O(\i_out[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_out[10]_i_4 
       (.I0(data_in[0]),
        .I1(data_in[2]),
        .O(\i_out[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_out[10]_i_5 
       (.I0(data_in[5]),
        .I1(data_in[4]),
        .O(data4[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \i_out[10]_i_6 
       (.I0(data_in_valid),
        .I1(data_in_ready),
        .I2(mod_type[2]),
        .O(\i_out[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hC0CF3F60)) 
    \i_out[10]_i_7 
       (.I0(data_in[0]),
        .I1(data_in[4]),
        .I2(mod_type[0]),
        .I3(data_in[3]),
        .I4(data_in[2]),
        .O(\i_out[10]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hA000C000)) 
    \i_out[11]_i_1 
       (.I0(\i_out[11]_i_3_n_0 ),
        .I1(\i_out[11]_i_4_n_0 ),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(mod_type[2]),
        .O(p_0_in[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \i_out[11]_i_2 
       (.I0(nreset),
        .O(\i_out[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFDFC01010100)) 
    \i_out[11]_i_3 
       (.I0(data_in[5]),
        .I1(mod_type[1]),
        .I2(mod_type[0]),
        .I3(data_in[4]),
        .I4(\i_out[11]_i_5_n_0 ),
        .I5(data_in[0]),
        .O(\i_out[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h305030AF3F503FAF)) 
    \i_out[11]_i_4 
       (.I0(data_in[1]),
        .I1(data_in[4]),
        .I2(mod_type[0]),
        .I3(mod_type[1]),
        .I4(data_in[0]),
        .I5(data_in[3]),
        .O(\i_out[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \i_out[11]_i_5 
       (.I0(data_in[3]),
        .I1(data_in[2]),
        .I2(data_in[1]),
        .I3(data_in[0]),
        .O(\i_out[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA8A808080)) 
    \i_out[1]_i_1 
       (.I0(data_out_valid_i_1_n_0),
        .I1(\i_out[1]_i_2_n_0 ),
        .I2(mod_type[2]),
        .I3(\i_out[1]_i_3_n_0 ),
        .I4(mod_type[1]),
        .I5(\i_out[8]_i_4_n_0 ),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hFFCCF0EE00CCF0EE)) 
    \i_out[1]_i_2 
       (.I0(data4[1]),
        .I1(\i_out[1]_i_5_n_0 ),
        .I2(g0_b1_n_0),
        .I3(mod_type[1]),
        .I4(mod_type[0]),
        .I5(g0_b1__0_n_0),
        .O(\i_out[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h3CCCECFC)) 
    \i_out[1]_i_3 
       (.I0(data_in[0]),
        .I1(data_in[3]),
        .I2(mod_type[0]),
        .I3(data_in[4]),
        .I4(data_in[2]),
        .O(\i_out[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFFFFFF2000)) 
    \i_out[1]_i_4 
       (.I0(data_in[3]),
        .I1(data_in[2]),
        .I2(data_in[1]),
        .I3(data_in[0]),
        .I4(data_in[5]),
        .I5(data_in[4]),
        .O(data4[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h2F00)) 
    \i_out[1]_i_5 
       (.I0(data_in[2]),
        .I1(data_in[0]),
        .I2(data_in[3]),
        .I3(mod_type[0]),
        .O(\i_out[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEE0000)) 
    \i_out[2]_i_1 
       (.I0(\i_out[2]_i_2_n_0 ),
        .I1(\i_out[2]_i_3_n_0 ),
        .I2(\i_out[2]_i_4_n_0 ),
        .I3(g0_b2_n_0),
        .I4(\i_out[2]_i_5_n_0 ),
        .I5(\i_out[10]_i_3_n_0 ),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hAAAA00003FF00000)) 
    \i_out[2]_i_2 
       (.I0(g0_b2__0_n_0),
        .I1(data_in[2]),
        .I2(data_in[0]),
        .I3(data_in[3]),
        .I4(mod_type[0]),
        .I5(mod_type[1]),
        .O(\i_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888A888888)) 
    \i_out[2]_i_3 
       (.I0(\i_out[2]_i_6_n_0 ),
        .I1(data_in[5]),
        .I2(data_in[4]),
        .I3(data_in[0]),
        .I4(data_in[1]),
        .I5(\i_out[2]_i_7_n_0 ),
        .O(\i_out[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i_out[2]_i_4 
       (.I0(mod_type[1]),
        .I1(mod_type[0]),
        .O(\i_out[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \i_out[2]_i_5 
       (.I0(data_in_valid),
        .I1(data_in_ready),
        .I2(mod_type[2]),
        .O(\i_out[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \i_out[2]_i_6 
       (.I0(mod_type[1]),
        .I1(mod_type[0]),
        .O(\i_out[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \i_out[2]_i_7 
       (.I0(data_in[2]),
        .I1(data_in[3]),
        .O(\i_out[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888000)) 
    \i_out[3]_i_1 
       (.I0(data_in_valid),
        .I1(data_in_ready),
        .I2(\i_out[3]_i_2_n_0 ),
        .I3(mod_type[2]),
        .I4(\i_out[7]_i_3_n_0 ),
        .I5(\i_out[4]_i_3_n_0 ),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \i_out[3]_i_2 
       (.I0(data_in[0]),
        .I1(g0_b3__0_n_0),
        .I2(mod_type[0]),
        .I3(mod_type[1]),
        .I4(data4[9]),
        .I5(g0_b3_n_0),
        .O(\i_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888000)) 
    \i_out[4]_i_1 
       (.I0(data_in_valid),
        .I1(data_in_ready),
        .I2(\i_out[4]_i_2_n_0 ),
        .I3(mod_type[2]),
        .I4(\i_out[8]_i_3_n_0 ),
        .I5(\i_out[4]_i_3_n_0 ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hFF33F0AA0033F0AA)) 
    \i_out[4]_i_2 
       (.I0(data4[10]),
        .I1(\i_out[4]_i_4_n_0 ),
        .I2(g0_b4_n_0),
        .I3(mod_type[1]),
        .I4(mod_type[0]),
        .I5(g0_b4__0_n_0),
        .O(\i_out[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h01101010)) 
    \i_out[4]_i_3 
       (.I0(mod_type[1]),
        .I1(mod_type[2]),
        .I2(data_in[0]),
        .I3(mod_type[0]),
        .I4(data_in[1]),
        .O(\i_out[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h2D)) 
    \i_out[4]_i_4 
       (.I0(data_in[3]),
        .I1(data_in[2]),
        .I2(data_in[0]),
        .O(\i_out[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA080000)) 
    \i_out[5]_i_1 
       (.I0(data_out_valid_i_1_n_0),
        .I1(g0_b5__0_n_0),
        .I2(\i_out[9]_i_2_n_0 ),
        .I3(\i_out[5]_i_2_n_0 ),
        .I4(mod_type[2]),
        .I5(\i_out[5]_i_3_n_0 ),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'h3300B8B80033B8B8)) 
    \i_out[5]_i_2 
       (.I0(g0_b5_n_0),
        .I1(mod_type[1]),
        .I2(data4[8]),
        .I3(\i_out[10]_i_4_n_0 ),
        .I4(mod_type[0]),
        .I5(data_in[3]),
        .O(\i_out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF6A2E0000)) 
    \i_out[5]_i_3 
       (.I0(data_in[3]),
        .I1(mod_type[0]),
        .I2(data_in[4]),
        .I3(data_in[2]),
        .I4(g0_b7_i_1_n_0),
        .I5(\i_out[8]_i_4_n_0 ),
        .O(\i_out[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA080000)) 
    \i_out[6]_i_1 
       (.I0(data_out_valid_i_1_n_0),
        .I1(g0_b6__0_n_0),
        .I2(\i_out[9]_i_2_n_0 ),
        .I3(\i_out[6]_i_2_n_0 ),
        .I4(mod_type[2]),
        .I5(\i_out[6]_i_3_n_0 ),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h3300B8B80033B8B8)) 
    \i_out[6]_i_2 
       (.I0(g0_b6_n_0),
        .I1(mod_type[1]),
        .I2(data4[9]),
        .I3(data_in[0]),
        .I4(mod_type[0]),
        .I5(data_in[3]),
        .O(\i_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAAA00003FC0)) 
    \i_out[6]_i_3 
       (.I0(\i_out[10]_i_7_n_0 ),
        .I1(data_in[1]),
        .I2(mod_type[0]),
        .I3(data_in[0]),
        .I4(mod_type[2]),
        .I5(mod_type[1]),
        .O(\i_out[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888000)) 
    \i_out[7]_i_1 
       (.I0(data_in_valid),
        .I1(data_in_ready),
        .I2(\i_out[7]_i_2_n_0 ),
        .I3(mod_type[2]),
        .I4(\i_out[7]_i_3_n_0 ),
        .I5(\i_out[8]_i_4_n_0 ),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hEFAFEFAAEAAFEAAA)) 
    \i_out[7]_i_2 
       (.I0(\i_out[8]_i_5_n_0 ),
        .I1(g0_b7__0_n_0),
        .I2(mod_type[0]),
        .I3(mod_type[1]),
        .I4(data4[10]),
        .I5(g0_b7_n_0),
        .O(\i_out[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h44400040)) 
    \i_out[7]_i_3 
       (.I0(mod_type[2]),
        .I1(mod_type[1]),
        .I2(data_in[3]),
        .I3(mod_type[0]),
        .I4(data_in[4]),
        .O(\i_out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888000)) 
    \i_out[8]_i_1 
       (.I0(data_in_valid),
        .I1(data_in_ready),
        .I2(\i_out[8]_i_2_n_0 ),
        .I3(mod_type[2]),
        .I4(\i_out[8]_i_3_n_0 ),
        .I5(\i_out[8]_i_4_n_0 ),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hEFAFEFAAEAAFEAAA)) 
    \i_out[8]_i_2 
       (.I0(\i_out[8]_i_5_n_0 ),
        .I1(g0_b8__0_n_0),
        .I2(mod_type[0]),
        .I3(mod_type[1]),
        .I4(data4[8]),
        .I5(g0_b8_n_0),
        .O(\i_out[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2A28282880288228)) 
    \i_out[8]_i_3 
       (.I0(g0_b7_i_1_n_0),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(mod_type[0]),
        .I4(data_in[0]),
        .I5(data_in[4]),
        .O(\i_out[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h10100110)) 
    \i_out[8]_i_4 
       (.I0(mod_type[1]),
        .I1(mod_type[2]),
        .I2(data_in[0]),
        .I3(mod_type[0]),
        .I4(data_in[1]),
        .O(\i_out[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h04400404)) 
    \i_out[8]_i_5 
       (.I0(mod_type[1]),
        .I1(mod_type[0]),
        .I2(data_in[0]),
        .I3(data_in[2]),
        .I4(data_in[3]),
        .O(\i_out[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00004000)) 
    \i_out[8]_i_6 
       (.I0(data_in[2]),
        .I1(data_in[3]),
        .I2(data_in[1]),
        .I3(data_in[0]),
        .I4(data_in[4]),
        .I5(data_in[5]),
        .O(data4[8]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA080000)) 
    \i_out[9]_i_1 
       (.I0(data_out_valid_i_1_n_0),
        .I1(g0_b9__0_n_0),
        .I2(\i_out[9]_i_2_n_0 ),
        .I3(\i_out[9]_i_3_n_0 ),
        .I4(mod_type[2]),
        .I5(\i_out[9]_i_4_n_0 ),
        .O(p_0_in[9]));
  LUT2 #(
    .INIT(4'h7)) 
    \i_out[9]_i_2 
       (.I0(mod_type[1]),
        .I1(mod_type[0]),
        .O(\i_out[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8B83300B8B8)) 
    \i_out[9]_i_3 
       (.I0(g0_b9_n_0),
        .I1(mod_type[1]),
        .I2(data4[9]),
        .I3(\i_out[10]_i_4_n_0 ),
        .I4(mod_type[0]),
        .I5(data_in[3]),
        .O(\i_out[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF6A2E0000)) 
    \i_out[9]_i_4 
       (.I0(data_in[3]),
        .I1(mod_type[0]),
        .I2(data_in[4]),
        .I3(data_in[2]),
        .I4(g0_b7_i_1_n_0),
        .I5(\i_out[4]_i_3_n_0 ),
        .O(\i_out[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \i_out[9]_i_5 
       (.I0(data_in[3]),
        .I1(data_in[5]),
        .I2(data_in[4]),
        .O(data4[9]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(i_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(p_0_in[10]),
        .Q(i_out[10]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(p_0_in[11]),
        .Q(i_out[11]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(i_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(i_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(i_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(i_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(i_out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(i_out[6]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(i_out[7]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(i_out[8]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(p_0_in[9]),
        .Q(i_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hA000C000)) 
    \q_out[0]_i_1 
       (.I0(\q_out[0]_i_2_n_0 ),
        .I1(\q_out[0]_i_3_n_0 ),
        .I2(data_in_valid),
        .I3(data_in_ready),
        .I4(mod_type[2]),
        .O(\q_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCF5FCF50C05FC050)) 
    \q_out[0]_i_2 
       (.I0(\i_out[0]_i_4_n_0 ),
        .I1(g0_b0__4_n_0),
        .I2(mod_type[0]),
        .I3(mod_type[1]),
        .I4(g0_b0__2_n_0),
        .I5(g0_b0__3_n_0),
        .O(\q_out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFFFFFC0000)) 
    \q_out[0]_i_3 
       (.I0(g0_b0__1_n_0),
        .I1(g0_b7_i_2_n_0),
        .I2(data_in[1]),
        .I3(data_in[0]),
        .I4(mod_type[1]),
        .I5(mod_type[0]),
        .O(\q_out[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBA000000)) 
    \q_out[10]_i_1 
       (.I0(\q_out[10]_i_2_n_0 ),
        .I1(\i_out[9]_i_2_n_0 ),
        .I2(g0_b10__3_n_0),
        .I3(data_out_valid_i_1_n_0),
        .I4(mod_type[2]),
        .I5(\q_out[10]_i_3_n_0 ),
        .O(\q_out[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8B83300B8B8)) 
    \q_out[10]_i_2 
       (.I0(g0_b10__2_n_0),
        .I1(mod_type[1]),
        .I2(g0_b10__1_n_0),
        .I3(data_in[1]),
        .I4(mod_type[0]),
        .I5(data_in[3]),
        .O(\q_out[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4444040000000400)) 
    \q_out[10]_i_3 
       (.I0(mod_type[2]),
        .I1(data_out_valid_i_1_n_0),
        .I2(data_in[1]),
        .I3(mod_type[0]),
        .I4(mod_type[1]),
        .I5(g0_b10__4_n_0),
        .O(\q_out[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE100000)) 
    \q_out[11]_i_1 
       (.I0(mod_type[0]),
        .I1(mod_type[1]),
        .I2(g0_b11_n_0),
        .I3(data_in[1]),
        .I4(\i_out[2]_i_5_n_0 ),
        .I5(\q_out[11]_i_2_n_0 ),
        .O(\q_out[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA800A800A800A820)) 
    \q_out[11]_i_2 
       (.I0(\i_out[10]_i_6_n_0 ),
        .I1(mod_type[0]),
        .I2(mod_type[1]),
        .I3(data_in[1]),
        .I4(g0_b7_i_2_n_0),
        .I5(data_in[0]),
        .O(\q_out[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABA0000FF000000)) 
    \q_out[1]_i_1 
       (.I0(\q_out[1]_i_2_n_0 ),
        .I1(\i_out[9]_i_2_n_0 ),
        .I2(g0_b1__4_n_0),
        .I3(\q_out[1]_i_3_n_0 ),
        .I4(data_out_valid_i_1_n_0),
        .I5(mod_type[2]),
        .O(\q_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h33BB33BB00B833B8)) 
    \q_out[1]_i_2 
       (.I0(g0_b1__3_n_0),
        .I1(mod_type[1]),
        .I2(g0_b1__2_n_0),
        .I3(mod_type[0]),
        .I4(data_in[2]),
        .I5(\q_out[1]_i_4_n_0 ),
        .O(\q_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA00FF00FC0000)) 
    \q_out[1]_i_3 
       (.I0(g0_b1__1_n_0),
        .I1(data_in[0]),
        .I2(g0_b7_i_2_n_0),
        .I3(data_in[1]),
        .I4(mod_type[1]),
        .I5(mod_type[0]),
        .O(\q_out[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q_out[1]_i_4 
       (.I0(data_in[3]),
        .I1(mod_type[0]),
        .I2(data_in[1]),
        .O(\q_out[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBA000000)) 
    \q_out[2]_i_1 
       (.I0(\q_out[2]_i_2_n_0 ),
        .I1(\i_out[9]_i_2_n_0 ),
        .I2(g0_b2__2_n_0),
        .I3(data_out_valid_i_1_n_0),
        .I4(mod_type[2]),
        .I5(\q_out[10]_i_3_n_0 ),
        .O(\q_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h33330033B8B8B8B8)) 
    \q_out[2]_i_2 
       (.I0(g0_b2__1_n_0),
        .I1(mod_type[1]),
        .I2(g0_b8__2_n_0),
        .I3(g0_b7_i_2_n_0),
        .I4(\q_out[9]_i_4_n_0 ),
        .I5(mod_type[0]),
        .O(\q_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888000)) 
    \q_out[3]_i_1 
       (.I0(data_in_valid),
        .I1(data_in_ready),
        .I2(\q_out[3]_i_2_n_0 ),
        .I3(mod_type[2]),
        .I4(g0_b7__3_n_0),
        .I5(\q_out[6]_i_3_n_0 ),
        .O(\q_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \q_out[3]_i_2 
       (.I0(data_in[1]),
        .I1(g0_b3__2_n_0),
        .I2(mod_type[0]),
        .I3(mod_type[1]),
        .I4(g0_b9__2_n_0),
        .I5(g0_b3__1_n_0),
        .O(\q_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888000)) 
    \q_out[4]_i_1 
       (.I0(data_in_valid),
        .I1(data_in_ready),
        .I2(\q_out[4]_i_2_n_0 ),
        .I3(mod_type[2]),
        .I4(\q_out[8]_i_3_n_0 ),
        .I5(\q_out[6]_i_3_n_0 ),
        .O(\q_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF33F0AA0033F0AA)) 
    \q_out[4]_i_2 
       (.I0(g0_b10__1_n_0),
        .I1(\q_out[4]_i_3_n_0 ),
        .I2(g0_b4__1_n_0),
        .I3(mod_type[1]),
        .I4(mod_type[0]),
        .I5(g0_b4__2_n_0),
        .O(\q_out[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h2D)) 
    \q_out[4]_i_3 
       (.I0(data_in[2]),
        .I1(data_in[3]),
        .I2(data_in[1]),
        .O(\q_out[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA080000)) 
    \q_out[5]_i_1 
       (.I0(data_out_valid_i_1_n_0),
        .I1(g0_b5__2_n_0),
        .I2(\i_out[9]_i_2_n_0 ),
        .I3(\q_out[5]_i_2_n_0 ),
        .I4(mod_type[2]),
        .I5(\q_out[5]_i_3_n_0 ),
        .O(\q_out[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3300B8B80033B8B8)) 
    \q_out[5]_i_2 
       (.I0(g0_b5__1_n_0),
        .I1(mod_type[1]),
        .I2(g0_b8__2_n_0),
        .I3(\q_out[9]_i_4_n_0 ),
        .I4(mod_type[0]),
        .I5(data_in[3]),
        .O(\q_out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000A3A3000000F0)) 
    \q_out[5]_i_3 
       (.I0(g0_b9__1_n_0),
        .I1(\q_out[9]_i_5_n_0 ),
        .I2(mod_type[0]),
        .I3(data_in[1]),
        .I4(mod_type[2]),
        .I5(mod_type[1]),
        .O(\q_out[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA8A808080)) 
    \q_out[6]_i_1 
       (.I0(data_out_valid_i_1_n_0),
        .I1(\q_out[6]_i_2_n_0 ),
        .I2(mod_type[2]),
        .I3(g0_b10__4_n_0),
        .I4(mod_type[1]),
        .I5(\q_out[6]_i_3_n_0 ),
        .O(\q_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF33F0AA0033F0AA)) 
    \q_out[6]_i_2 
       (.I0(g0_b9__2_n_0),
        .I1(\q_out[9]_i_4_n_0 ),
        .I2(g0_b6__1_n_0),
        .I3(mod_type[1]),
        .I4(mod_type[0]),
        .I5(g0_b6__2_n_0),
        .O(\q_out[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q_out[6]_i_3 
       (.I0(mod_type[1]),
        .I1(mod_type[2]),
        .I2(data_in[1]),
        .I3(mod_type[0]),
        .O(\q_out[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888000)) 
    \q_out[7]_i_1 
       (.I0(data_in_valid),
        .I1(data_in_ready),
        .I2(\q_out[7]_i_2_n_0 ),
        .I3(mod_type[2]),
        .I4(g0_b7__3_n_0),
        .I5(\q_out[8]_i_4_n_0 ),
        .O(\q_out[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFAFEFAAEAAFEAAA)) 
    \q_out[7]_i_2 
       (.I0(\q_out[8]_i_5_n_0 ),
        .I1(g0_b7__2_n_0),
        .I2(mod_type[0]),
        .I3(mod_type[1]),
        .I4(g0_b10__1_n_0),
        .I5(g0_b7__1_n_0),
        .O(\q_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888000)) 
    \q_out[8]_i_1 
       (.I0(data_in_valid),
        .I1(data_in_ready),
        .I2(\q_out[8]_i_2_n_0 ),
        .I3(mod_type[2]),
        .I4(\q_out[8]_i_3_n_0 ),
        .I5(\q_out[8]_i_4_n_0 ),
        .O(\q_out[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFAFEFAAEAAFEAAA)) 
    \q_out[8]_i_2 
       (.I0(\q_out[8]_i_5_n_0 ),
        .I1(g0_b8__4_n_0),
        .I2(mod_type[0]),
        .I3(mod_type[1]),
        .I4(g0_b8__2_n_0),
        .I5(g0_b8__3_n_0),
        .O(\q_out[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA828000008280)) 
    \q_out[8]_i_3 
       (.I0(g0_b7_i_1_n_0),
        .I1(data_in[0]),
        .I2(data_in[1]),
        .I3(g0_b7_i_2_n_0),
        .I4(mod_type[0]),
        .I5(g0_b8__1_n_0),
        .O(\q_out[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \q_out[8]_i_4 
       (.I0(mod_type[1]),
        .I1(mod_type[2]),
        .I2(data_in[1]),
        .I3(mod_type[0]),
        .O(\q_out[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h04400404)) 
    \q_out[8]_i_5 
       (.I0(mod_type[1]),
        .I1(mod_type[0]),
        .I2(data_in[1]),
        .I3(data_in[3]),
        .I4(data_in[2]),
        .O(\q_out[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA080000)) 
    \q_out[9]_i_1 
       (.I0(data_out_valid_i_1_n_0),
        .I1(g0_b9__4_n_0),
        .I2(\i_out[9]_i_2_n_0 ),
        .I3(\q_out[9]_i_2_n_0 ),
        .I4(mod_type[2]),
        .I5(\q_out[9]_i_3_n_0 ),
        .O(\q_out[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8B83300B8B8)) 
    \q_out[9]_i_2 
       (.I0(g0_b9__3_n_0),
        .I1(mod_type[1]),
        .I2(g0_b9__2_n_0),
        .I3(\q_out[9]_i_4_n_0 ),
        .I4(mod_type[0]),
        .I5(data_in[3]),
        .O(\q_out[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000A3A30000F000)) 
    \q_out[9]_i_3 
       (.I0(g0_b9__1_n_0),
        .I1(\q_out[9]_i_5_n_0 ),
        .I2(mod_type[0]),
        .I3(data_in[1]),
        .I4(mod_type[2]),
        .I5(mod_type[1]),
        .O(\q_out[9]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q_out[9]_i_4 
       (.I0(data_in[2]),
        .I1(data_in[1]),
        .O(\q_out[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFF10)) 
    \q_out[9]_i_5 
       (.I0(data_in[0]),
        .I1(data_in[3]),
        .I2(data_in[2]),
        .I3(data_in[1]),
        .O(\q_out[9]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(\q_out[0]_i_1_n_0 ),
        .Q(q_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(\q_out[10]_i_1_n_0 ),
        .Q(q_out[10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(\q_out[11]_i_1_n_0 ),
        .Q(q_out[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(\q_out[1]_i_1_n_0 ),
        .Q(q_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(\q_out[2]_i_1_n_0 ),
        .Q(q_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(\q_out[3]_i_1_n_0 ),
        .Q(q_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(\q_out[4]_i_1_n_0 ),
        .Q(q_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(\q_out[5]_i_1_n_0 ),
        .Q(q_out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(\q_out[6]_i_1_n_0 ),
        .Q(q_out[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(\q_out[7]_i_1_n_0 ),
        .Q(q_out[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(\q_out[8]_i_1_n_0 ),
        .Q(q_out[8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\i_out[11]_i_2_n_0 ),
        .D(\q_out[9]_i_1_n_0 ),
        .Q(q_out[9]));
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
