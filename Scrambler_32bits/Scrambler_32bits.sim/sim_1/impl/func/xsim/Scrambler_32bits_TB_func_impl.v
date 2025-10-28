// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue Oct 28 11:56:00 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /ihp/departments/D-SYA/work/miglioranza/Scrambler_32bits/Scrambler_32bits.sim/sim_1/impl/func/xsim/Scrambler_32bits_TB_func_impl.v
// Design      : Scrambler_32bits
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DATA_DIM = "32" *) (* ECO_CHECKSUM = "baeb8fb3" *) (* POLY_DEG = "32" *) 
(* poly = "32'b10010000000000000000000000000001" *) 
(* NotValidForBitStream *)
module Scrambler_32bits
   (clk,
    rst,
    data_in,
    data_in_valid,
    data_in_last,
    seed,
    control_enable,
    data_out,
    data_out_valid,
    data_out_last);
  input clk;
  input rst;
  input [32:1]data_in;
  input data_in_valid;
  input data_in_last;
  input [30:0]seed;
  input control_enable;
  output [32:1]data_out;
  output data_out_valid;
  output data_out_last;

  wire clk;
  wire clk_IBUF;
  (* MAX_PROG_DELAY = "1" *) wire clk_IBUF_BUFG;
  wire control_enable;
  wire control_enable_IBUF;
  wire [32:1]data_in;
  wire [32:1]data_in_IBUF;
  wire data_in_last;
  wire data_in_last_IBUF;
  wire data_in_valid;
  wire data_in_valid_IBUF;
  wire [32:1]data_out;
  wire \data_out[10]_i_1_n_0 ;
  wire \data_out[11]_i_1_n_0 ;
  wire \data_out[12]_i_1_n_0 ;
  wire \data_out[13]_i_1_n_0 ;
  wire \data_out[14]_i_1_n_0 ;
  wire \data_out[15]_i_1_n_0 ;
  wire \data_out[16]_i_1_n_0 ;
  wire \data_out[17]_i_1_n_0 ;
  wire \data_out[18]_i_1_n_0 ;
  wire \data_out[19]_i_1_n_0 ;
  wire \data_out[1]_i_1_n_0 ;
  wire \data_out[20]_i_1_n_0 ;
  wire \data_out[21]_i_1_n_0 ;
  wire \data_out[22]_i_1_n_0 ;
  wire \data_out[23]_i_1_n_0 ;
  wire \data_out[24]_i_1_n_0 ;
  wire \data_out[25]_i_1_n_0 ;
  wire \data_out[26]_i_1_n_0 ;
  wire \data_out[27]_i_1_n_0 ;
  wire \data_out[28]_i_1_n_0 ;
  wire \data_out[29]_i_1_n_0 ;
  wire \data_out[2]_i_1_n_0 ;
  wire \data_out[30]_i_1_n_0 ;
  wire \data_out[31]_i_1_n_0 ;
  wire \data_out[32]_i_1_n_0 ;
  wire \data_out[3]_i_1_n_0 ;
  wire \data_out[4]_i_1_n_0 ;
  wire \data_out[5]_i_1_n_0 ;
  wire \data_out[6]_i_1_n_0 ;
  wire \data_out[7]_i_1_n_0 ;
  wire \data_out[8]_i_1_n_0 ;
  wire \data_out[9]_i_1_n_0 ;
  wire [32:1]data_out_OBUF;
  wire data_out_last;
  wire data_out_last_OBUF;
  wire data_out_last_i_1_n_0;
  wire data_out_valid;
  wire data_out_valid_OBUF;
  wire feedback;
  wire feedback_i_1_n_0;
  wire [30:1]p_0_in;
  wire [30:0]p_1_in;
  wire rst;
  wire rst_IBUF;
  wire [30:0]seed;
  wire [30:0]seed_IBUF;
  wire \tmp_seed[30]_i_1_n_0 ;
  wire \tmp_seed_reg_n_0_[30] ;

  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    clk_IBUF_BUFG_inst
       (.CE(1'b1),
        .I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF control_enable_IBUF_inst
       (.I(control_enable),
        .O(control_enable_IBUF));
  IBUF \data_in_IBUF[10]_inst 
       (.I(data_in[10]),
        .O(data_in_IBUF[10]));
  IBUF \data_in_IBUF[11]_inst 
       (.I(data_in[11]),
        .O(data_in_IBUF[11]));
  IBUF \data_in_IBUF[12]_inst 
       (.I(data_in[12]),
        .O(data_in_IBUF[12]));
  IBUF \data_in_IBUF[13]_inst 
       (.I(data_in[13]),
        .O(data_in_IBUF[13]));
  IBUF \data_in_IBUF[14]_inst 
       (.I(data_in[14]),
        .O(data_in_IBUF[14]));
  IBUF \data_in_IBUF[15]_inst 
       (.I(data_in[15]),
        .O(data_in_IBUF[15]));
  IBUF \data_in_IBUF[16]_inst 
       (.I(data_in[16]),
        .O(data_in_IBUF[16]));
  IBUF \data_in_IBUF[17]_inst 
       (.I(data_in[17]),
        .O(data_in_IBUF[17]));
  IBUF \data_in_IBUF[18]_inst 
       (.I(data_in[18]),
        .O(data_in_IBUF[18]));
  IBUF \data_in_IBUF[19]_inst 
       (.I(data_in[19]),
        .O(data_in_IBUF[19]));
  IBUF \data_in_IBUF[1]_inst 
       (.I(data_in[1]),
        .O(data_in_IBUF[1]));
  IBUF \data_in_IBUF[20]_inst 
       (.I(data_in[20]),
        .O(data_in_IBUF[20]));
  IBUF \data_in_IBUF[21]_inst 
       (.I(data_in[21]),
        .O(data_in_IBUF[21]));
  IBUF \data_in_IBUF[22]_inst 
       (.I(data_in[22]),
        .O(data_in_IBUF[22]));
  IBUF \data_in_IBUF[23]_inst 
       (.I(data_in[23]),
        .O(data_in_IBUF[23]));
  IBUF \data_in_IBUF[24]_inst 
       (.I(data_in[24]),
        .O(data_in_IBUF[24]));
  IBUF \data_in_IBUF[25]_inst 
       (.I(data_in[25]),
        .O(data_in_IBUF[25]));
  IBUF \data_in_IBUF[26]_inst 
       (.I(data_in[26]),
        .O(data_in_IBUF[26]));
  IBUF \data_in_IBUF[27]_inst 
       (.I(data_in[27]),
        .O(data_in_IBUF[27]));
  IBUF \data_in_IBUF[28]_inst 
       (.I(data_in[28]),
        .O(data_in_IBUF[28]));
  IBUF \data_in_IBUF[29]_inst 
       (.I(data_in[29]),
        .O(data_in_IBUF[29]));
  IBUF \data_in_IBUF[2]_inst 
       (.I(data_in[2]),
        .O(data_in_IBUF[2]));
  IBUF \data_in_IBUF[30]_inst 
       (.I(data_in[30]),
        .O(data_in_IBUF[30]));
  IBUF \data_in_IBUF[31]_inst 
       (.I(data_in[31]),
        .O(data_in_IBUF[31]));
  IBUF \data_in_IBUF[32]_inst 
       (.I(data_in[32]),
        .O(data_in_IBUF[32]));
  IBUF \data_in_IBUF[3]_inst 
       (.I(data_in[3]),
        .O(data_in_IBUF[3]));
  IBUF \data_in_IBUF[4]_inst 
       (.I(data_in[4]),
        .O(data_in_IBUF[4]));
  IBUF \data_in_IBUF[5]_inst 
       (.I(data_in[5]),
        .O(data_in_IBUF[5]));
  IBUF \data_in_IBUF[6]_inst 
       (.I(data_in[6]),
        .O(data_in_IBUF[6]));
  IBUF \data_in_IBUF[7]_inst 
       (.I(data_in[7]),
        .O(data_in_IBUF[7]));
  IBUF \data_in_IBUF[8]_inst 
       (.I(data_in[8]),
        .O(data_in_IBUF[8]));
  IBUF \data_in_IBUF[9]_inst 
       (.I(data_in[9]),
        .O(data_in_IBUF[9]));
  IBUF data_in_last_IBUF_inst
       (.I(data_in_last),
        .O(data_in_last_IBUF));
  IBUF data_in_valid_IBUF_inst
       (.I(data_in_valid),
        .O(data_in_valid_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[10]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[10]),
        .I2(p_0_in[10]),
        .O(\data_out[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[11]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[11]),
        .I2(p_0_in[11]),
        .O(\data_out[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[12]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[12]),
        .I2(p_0_in[12]),
        .O(\data_out[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[13]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[13]),
        .I2(p_0_in[13]),
        .O(\data_out[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[14]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[14]),
        .I2(p_0_in[14]),
        .O(\data_out[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[15]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[15]),
        .I2(p_0_in[15]),
        .O(\data_out[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[16]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[16]),
        .I2(p_0_in[16]),
        .O(\data_out[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[17]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[17]),
        .I2(p_0_in[17]),
        .O(\data_out[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[18]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[18]),
        .I2(p_0_in[18]),
        .O(\data_out[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[19]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[19]),
        .I2(p_0_in[19]),
        .O(\data_out[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[1]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[1]),
        .I2(p_0_in[1]),
        .O(\data_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[20]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[20]),
        .I2(p_0_in[20]),
        .O(\data_out[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[21]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[21]),
        .I2(p_0_in[21]),
        .O(\data_out[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[22]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[22]),
        .I2(p_0_in[22]),
        .O(\data_out[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[23]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[23]),
        .I2(p_0_in[23]),
        .O(\data_out[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[24]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[24]),
        .I2(p_0_in[24]),
        .O(\data_out[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[25]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[25]),
        .I2(p_0_in[25]),
        .O(\data_out[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[26]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[26]),
        .I2(p_0_in[26]),
        .O(\data_out[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[27]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[27]),
        .I2(p_0_in[27]),
        .O(\data_out[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[28]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[28]),
        .I2(p_0_in[28]),
        .O(\data_out[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[29]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[29]),
        .I2(p_0_in[29]),
        .O(\data_out[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[2]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[2]),
        .I2(p_0_in[2]),
        .O(\data_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[30]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[30]),
        .I2(p_0_in[30]),
        .O(\data_out[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[31]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[31]),
        .I2(\tmp_seed_reg_n_0_[30] ),
        .O(\data_out[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[32]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[32]),
        .O(\data_out[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[3]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[3]),
        .I2(p_0_in[3]),
        .O(\data_out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[4]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[4]),
        .I2(p_0_in[4]),
        .O(\data_out[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[5]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[5]),
        .I2(p_0_in[5]),
        .O(\data_out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[6]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[6]),
        .I2(p_0_in[6]),
        .O(\data_out[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[7]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[7]),
        .I2(p_0_in[7]),
        .O(\data_out[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[8]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[8]),
        .I2(p_0_in[8]),
        .O(\data_out[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[9]_i_1 
       (.I0(data_in_valid_IBUF),
        .I1(data_in_IBUF[9]),
        .I2(p_0_in[9]),
        .O(\data_out[9]_i_1_n_0 ));
  OBUF \data_out_OBUF[10]_inst 
       (.I(data_out_OBUF[10]),
        .O(data_out[10]));
  OBUF \data_out_OBUF[11]_inst 
       (.I(data_out_OBUF[11]),
        .O(data_out[11]));
  OBUF \data_out_OBUF[12]_inst 
       (.I(data_out_OBUF[12]),
        .O(data_out[12]));
  OBUF \data_out_OBUF[13]_inst 
       (.I(data_out_OBUF[13]),
        .O(data_out[13]));
  OBUF \data_out_OBUF[14]_inst 
       (.I(data_out_OBUF[14]),
        .O(data_out[14]));
  OBUF \data_out_OBUF[15]_inst 
       (.I(data_out_OBUF[15]),
        .O(data_out[15]));
  OBUF \data_out_OBUF[16]_inst 
       (.I(data_out_OBUF[16]),
        .O(data_out[16]));
  OBUF \data_out_OBUF[17]_inst 
       (.I(data_out_OBUF[17]),
        .O(data_out[17]));
  OBUF \data_out_OBUF[18]_inst 
       (.I(data_out_OBUF[18]),
        .O(data_out[18]));
  OBUF \data_out_OBUF[19]_inst 
       (.I(data_out_OBUF[19]),
        .O(data_out[19]));
  OBUF \data_out_OBUF[1]_inst 
       (.I(data_out_OBUF[1]),
        .O(data_out[1]));
  OBUF \data_out_OBUF[20]_inst 
       (.I(data_out_OBUF[20]),
        .O(data_out[20]));
  OBUF \data_out_OBUF[21]_inst 
       (.I(data_out_OBUF[21]),
        .O(data_out[21]));
  OBUF \data_out_OBUF[22]_inst 
       (.I(data_out_OBUF[22]),
        .O(data_out[22]));
  OBUF \data_out_OBUF[23]_inst 
       (.I(data_out_OBUF[23]),
        .O(data_out[23]));
  OBUF \data_out_OBUF[24]_inst 
       (.I(data_out_OBUF[24]),
        .O(data_out[24]));
  OBUF \data_out_OBUF[25]_inst 
       (.I(data_out_OBUF[25]),
        .O(data_out[25]));
  OBUF \data_out_OBUF[26]_inst 
       (.I(data_out_OBUF[26]),
        .O(data_out[26]));
  OBUF \data_out_OBUF[27]_inst 
       (.I(data_out_OBUF[27]),
        .O(data_out[27]));
  OBUF \data_out_OBUF[28]_inst 
       (.I(data_out_OBUF[28]),
        .O(data_out[28]));
  OBUF \data_out_OBUF[29]_inst 
       (.I(data_out_OBUF[29]),
        .O(data_out[29]));
  OBUF \data_out_OBUF[2]_inst 
       (.I(data_out_OBUF[2]),
        .O(data_out[2]));
  OBUF \data_out_OBUF[30]_inst 
       (.I(data_out_OBUF[30]),
        .O(data_out[30]));
  OBUF \data_out_OBUF[31]_inst 
       (.I(data_out_OBUF[31]),
        .O(data_out[31]));
  OBUF \data_out_OBUF[32]_inst 
       (.I(data_out_OBUF[32]),
        .O(data_out[32]));
  OBUF \data_out_OBUF[3]_inst 
       (.I(data_out_OBUF[3]),
        .O(data_out[3]));
  OBUF \data_out_OBUF[4]_inst 
       (.I(data_out_OBUF[4]),
        .O(data_out[4]));
  OBUF \data_out_OBUF[5]_inst 
       (.I(data_out_OBUF[5]),
        .O(data_out[5]));
  OBUF \data_out_OBUF[6]_inst 
       (.I(data_out_OBUF[6]),
        .O(data_out[6]));
  OBUF \data_out_OBUF[7]_inst 
       (.I(data_out_OBUF[7]),
        .O(data_out[7]));
  OBUF \data_out_OBUF[8]_inst 
       (.I(data_out_OBUF[8]),
        .O(data_out[8]));
  OBUF \data_out_OBUF[9]_inst 
       (.I(data_out_OBUF[9]),
        .O(data_out[9]));
  OBUF data_out_last_OBUF_inst
       (.I(data_out_last_OBUF),
        .O(data_out_last));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_last_i_1
       (.I0(rst_IBUF),
        .O(data_out_last_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_out_last_reg
       (.C(clk_IBUF_BUFG),
        .CE(data_out_last_i_1_n_0),
        .D(data_in_last_IBUF),
        .Q(data_out_last_OBUF),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[10]_i_1_n_0 ),
        .Q(data_out_OBUF[10]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[11]_i_1_n_0 ),
        .Q(data_out_OBUF[11]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[12]_i_1_n_0 ),
        .Q(data_out_OBUF[12]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[13]_i_1_n_0 ),
        .Q(data_out_OBUF[13]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[14]_i_1_n_0 ),
        .Q(data_out_OBUF[14]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[15]_i_1_n_0 ),
        .Q(data_out_OBUF[15]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[16]_i_1_n_0 ),
        .Q(data_out_OBUF[16]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[17]_i_1_n_0 ),
        .Q(data_out_OBUF[17]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[18]_i_1_n_0 ),
        .Q(data_out_OBUF[18]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[19]_i_1_n_0 ),
        .Q(data_out_OBUF[19]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[1]_i_1_n_0 ),
        .Q(data_out_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[20]_i_1_n_0 ),
        .Q(data_out_OBUF[20]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[21]_i_1_n_0 ),
        .Q(data_out_OBUF[21]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[22]_i_1_n_0 ),
        .Q(data_out_OBUF[22]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[23]_i_1_n_0 ),
        .Q(data_out_OBUF[23]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[24]_i_1_n_0 ),
        .Q(data_out_OBUF[24]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[25]_i_1_n_0 ),
        .Q(data_out_OBUF[25]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[26]_i_1_n_0 ),
        .Q(data_out_OBUF[26]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[27]_i_1_n_0 ),
        .Q(data_out_OBUF[27]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[28]_i_1_n_0 ),
        .Q(data_out_OBUF[28]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[29]_i_1_n_0 ),
        .Q(data_out_OBUF[29]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[2]_i_1_n_0 ),
        .Q(data_out_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[30]_i_1_n_0 ),
        .Q(data_out_OBUF[30]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[31]_i_1_n_0 ),
        .Q(data_out_OBUF[31]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[32]_i_1_n_0 ),
        .Q(data_out_OBUF[32]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[3]_i_1_n_0 ),
        .Q(data_out_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[4]_i_1_n_0 ),
        .Q(data_out_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[5]_i_1_n_0 ),
        .Q(data_out_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[6]_i_1_n_0 ),
        .Q(data_out_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[7]_i_1_n_0 ),
        .Q(data_out_OBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[8]_i_1_n_0 ),
        .Q(data_out_OBUF[8]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out[9]_i_1_n_0 ),
        .Q(data_out_OBUF[9]));
  OBUF data_out_valid_OBUF_inst
       (.I(data_out_valid_OBUF),
        .O(data_out_valid));
  FDCE #(
    .INIT(1'b0)) 
    data_out_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(data_in_valid_IBUF),
        .Q(data_out_valid_OBUF));
  LUT5 #(
    .INIT(32'hFF6F0060)) 
    feedback_i_1
       (.I0(p_0_in[28]),
        .I1(\tmp_seed_reg_n_0_[30] ),
        .I2(data_in_valid_IBUF),
        .I3(rst_IBUF),
        .I4(feedback),
        .O(feedback_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    feedback_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(feedback_i_1_n_0),
        .Q(feedback),
        .R(1'b0));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF \seed_IBUF[0]_inst 
       (.I(seed[0]),
        .O(seed_IBUF[0]));
  IBUF \seed_IBUF[10]_inst 
       (.I(seed[10]),
        .O(seed_IBUF[10]));
  IBUF \seed_IBUF[11]_inst 
       (.I(seed[11]),
        .O(seed_IBUF[11]));
  IBUF \seed_IBUF[12]_inst 
       (.I(seed[12]),
        .O(seed_IBUF[12]));
  IBUF \seed_IBUF[13]_inst 
       (.I(seed[13]),
        .O(seed_IBUF[13]));
  IBUF \seed_IBUF[14]_inst 
       (.I(seed[14]),
        .O(seed_IBUF[14]));
  IBUF \seed_IBUF[15]_inst 
       (.I(seed[15]),
        .O(seed_IBUF[15]));
  IBUF \seed_IBUF[16]_inst 
       (.I(seed[16]),
        .O(seed_IBUF[16]));
  IBUF \seed_IBUF[17]_inst 
       (.I(seed[17]),
        .O(seed_IBUF[17]));
  IBUF \seed_IBUF[18]_inst 
       (.I(seed[18]),
        .O(seed_IBUF[18]));
  IBUF \seed_IBUF[19]_inst 
       (.I(seed[19]),
        .O(seed_IBUF[19]));
  IBUF \seed_IBUF[1]_inst 
       (.I(seed[1]),
        .O(seed_IBUF[1]));
  IBUF \seed_IBUF[20]_inst 
       (.I(seed[20]),
        .O(seed_IBUF[20]));
  IBUF \seed_IBUF[21]_inst 
       (.I(seed[21]),
        .O(seed_IBUF[21]));
  IBUF \seed_IBUF[22]_inst 
       (.I(seed[22]),
        .O(seed_IBUF[22]));
  IBUF \seed_IBUF[23]_inst 
       (.I(seed[23]),
        .O(seed_IBUF[23]));
  IBUF \seed_IBUF[24]_inst 
       (.I(seed[24]),
        .O(seed_IBUF[24]));
  IBUF \seed_IBUF[25]_inst 
       (.I(seed[25]),
        .O(seed_IBUF[25]));
  IBUF \seed_IBUF[26]_inst 
       (.I(seed[26]),
        .O(seed_IBUF[26]));
  IBUF \seed_IBUF[27]_inst 
       (.I(seed[27]),
        .O(seed_IBUF[27]));
  IBUF \seed_IBUF[28]_inst 
       (.I(seed[28]),
        .O(seed_IBUF[28]));
  IBUF \seed_IBUF[29]_inst 
       (.I(seed[29]),
        .O(seed_IBUF[29]));
  IBUF \seed_IBUF[2]_inst 
       (.I(seed[2]),
        .O(seed_IBUF[2]));
  IBUF \seed_IBUF[30]_inst 
       (.I(seed[30]),
        .O(seed_IBUF[30]));
  IBUF \seed_IBUF[3]_inst 
       (.I(seed[3]),
        .O(seed_IBUF[3]));
  IBUF \seed_IBUF[4]_inst 
       (.I(seed[4]),
        .O(seed_IBUF[4]));
  IBUF \seed_IBUF[5]_inst 
       (.I(seed[5]),
        .O(seed_IBUF[5]));
  IBUF \seed_IBUF[6]_inst 
       (.I(seed[6]),
        .O(seed_IBUF[6]));
  IBUF \seed_IBUF[7]_inst 
       (.I(seed[7]),
        .O(seed_IBUF[7]));
  IBUF \seed_IBUF[8]_inst 
       (.I(seed[8]),
        .O(seed_IBUF[8]));
  IBUF \seed_IBUF[9]_inst 
       (.I(seed[9]),
        .O(seed_IBUF[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[0]_i_1 
       (.I0(feedback),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[10]_i_1 
       (.I0(p_0_in[10]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[10]),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[11]_i_1 
       (.I0(p_0_in[11]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[11]),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[12]_i_1 
       (.I0(p_0_in[12]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[12]),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[13]_i_1 
       (.I0(p_0_in[13]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[13]),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[14]_i_1 
       (.I0(p_0_in[14]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[14]),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[15]_i_1 
       (.I0(p_0_in[15]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[15]),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[16]_i_1 
       (.I0(p_0_in[16]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[16]),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[17]_i_1 
       (.I0(p_0_in[17]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[17]),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[18]_i_1 
       (.I0(p_0_in[18]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[18]),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[19]_i_1 
       (.I0(p_0_in[19]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[19]),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[1]_i_1 
       (.I0(p_0_in[1]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[20]_i_1 
       (.I0(p_0_in[20]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[20]),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[21]_i_1 
       (.I0(p_0_in[21]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[21]),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[22]_i_1 
       (.I0(p_0_in[22]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[22]),
        .O(p_1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[23]_i_1 
       (.I0(p_0_in[23]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[23]),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[24]_i_1 
       (.I0(p_0_in[24]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[24]),
        .O(p_1_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[25]_i_1 
       (.I0(p_0_in[25]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[25]),
        .O(p_1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[26]_i_1 
       (.I0(p_0_in[26]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[26]),
        .O(p_1_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[27]_i_1 
       (.I0(p_0_in[27]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[27]),
        .O(p_1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[28]_i_1 
       (.I0(p_0_in[28]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[28]),
        .O(p_1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[29]_i_1 
       (.I0(p_0_in[29]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[29]),
        .O(p_1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[2]_i_1 
       (.I0(p_0_in[2]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[2]),
        .O(p_1_in[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \tmp_seed[30]_i_1 
       (.I0(control_enable_IBUF),
        .I1(data_in_valid_IBUF),
        .O(\tmp_seed[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[30]_i_2 
       (.I0(p_0_in[30]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[30]),
        .O(p_1_in[30]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[3]_i_1 
       (.I0(p_0_in[3]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[3]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[4]_i_1 
       (.I0(p_0_in[4]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[4]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[5]_i_1 
       (.I0(p_0_in[5]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[5]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[6]_i_1 
       (.I0(p_0_in[6]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[6]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[7]_i_1 
       (.I0(p_0_in[7]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[7]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[8]_i_1 
       (.I0(p_0_in[8]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[8]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_seed[9]_i_1 
       (.I0(p_0_in[9]),
        .I1(data_in_valid_IBUF),
        .I2(seed_IBUF[9]),
        .O(p_1_in[9]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[0]),
        .PRE(rst_IBUF),
        .Q(p_0_in[1]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[10]),
        .PRE(rst_IBUF),
        .Q(p_0_in[11]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[11]),
        .PRE(rst_IBUF),
        .Q(p_0_in[12]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[12]),
        .PRE(rst_IBUF),
        .Q(p_0_in[13]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[13]),
        .PRE(rst_IBUF),
        .Q(p_0_in[14]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[14]),
        .PRE(rst_IBUF),
        .Q(p_0_in[15]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[15]),
        .PRE(rst_IBUF),
        .Q(p_0_in[16]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[16]),
        .PRE(rst_IBUF),
        .Q(p_0_in[17]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[17]),
        .PRE(rst_IBUF),
        .Q(p_0_in[18]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[18]),
        .PRE(rst_IBUF),
        .Q(p_0_in[19]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[19]),
        .PRE(rst_IBUF),
        .Q(p_0_in[20]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[1]),
        .PRE(rst_IBUF),
        .Q(p_0_in[2]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[20]),
        .PRE(rst_IBUF),
        .Q(p_0_in[21]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[21]),
        .PRE(rst_IBUF),
        .Q(p_0_in[22]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[22]),
        .PRE(rst_IBUF),
        .Q(p_0_in[23]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[23]),
        .PRE(rst_IBUF),
        .Q(p_0_in[24]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[24]),
        .PRE(rst_IBUF),
        .Q(p_0_in[25]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[25]),
        .PRE(rst_IBUF),
        .Q(p_0_in[26]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[26]),
        .PRE(rst_IBUF),
        .Q(p_0_in[27]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[27]),
        .PRE(rst_IBUF),
        .Q(p_0_in[28]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[28]),
        .PRE(rst_IBUF),
        .Q(p_0_in[29]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[29]),
        .PRE(rst_IBUF),
        .Q(p_0_in[30]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[2]),
        .PRE(rst_IBUF),
        .Q(p_0_in[3]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[30]),
        .PRE(rst_IBUF),
        .Q(\tmp_seed_reg_n_0_[30] ));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[3]),
        .PRE(rst_IBUF),
        .Q(p_0_in[4]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[4]),
        .PRE(rst_IBUF),
        .Q(p_0_in[5]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[5]),
        .PRE(rst_IBUF),
        .Q(p_0_in[6]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[6]),
        .PRE(rst_IBUF),
        .Q(p_0_in[7]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[7]),
        .PRE(rst_IBUF),
        .Q(p_0_in[8]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[8]),
        .PRE(rst_IBUF),
        .Q(p_0_in[9]));
  FDPE #(
    .INIT(1'b1)) 
    \tmp_seed_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmp_seed[30]_i_1_n_0 ),
        .D(p_1_in[9]),
        .PRE(rst_IBUF),
        .Q(p_0_in[10]));
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
