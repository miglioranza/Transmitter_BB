// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Fri Apr  4 13:56:30 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_mapper_0_0_sim_netlist.v
// Design      : Design_2_mapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Design_2_mapper_0_0,mapper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "mapper,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset,
    mod_type,
    data_in,
    data_in_valid,
    data_in_ready,
    i_out,
    q_out,
    data_out_ready,
    data_out_valid);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Design_2_clk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
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
  wire [11:0]q_out;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mapper U0
       (.clk(clk),
        .data_in(data_in),
        .data_in_ready(data_in_ready),
        .data_in_valid(data_in_valid),
        .data_out_ready(data_out_ready),
        .data_out_valid(data_out_valid),
        .i_out(i_out),
        .mod_type(mod_type),
        .q_out(q_out),
        .reset(reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mapper
   (i_out,
    q_out,
    data_out_valid,
    data_out_ready,
    mod_type,
    data_in_valid,
    data_in_ready,
    clk,
    data_in,
    reset);
  output [11:0]i_out;
  output [11:0]q_out;
  output data_out_valid;
  output data_out_ready;
  input [2:0]mod_type;
  input data_in_valid;
  input data_in_ready;
  input clk;
  input [5:0]data_in;
  input reset;

  wire \buff_counter[0]_i_10_n_0 ;
  wire \buff_counter[0]_i_11_n_0 ;
  wire \buff_counter[0]_i_12_n_0 ;
  wire \buff_counter[0]_i_13_n_0 ;
  wire \buff_counter[0]_i_14_n_0 ;
  wire \buff_counter[0]_i_15_n_0 ;
  wire \buff_counter[0]_i_16_n_0 ;
  wire \buff_counter[0]_i_17_n_0 ;
  wire \buff_counter[0]_i_1_n_0 ;
  wire \buff_counter[0]_i_3_n_0 ;
  wire \buff_counter[0]_i_4_n_0 ;
  wire \buff_counter[0]_i_5_n_0 ;
  wire \buff_counter[0]_i_6_n_0 ;
  wire \buff_counter[0]_i_7_n_0 ;
  wire \buff_counter[0]_i_8_n_0 ;
  wire \buff_counter[0]_i_9_n_0 ;
  wire \buff_counter[16]_i_10_n_0 ;
  wire \buff_counter[16]_i_11_n_0 ;
  wire \buff_counter[16]_i_12_n_0 ;
  wire \buff_counter[16]_i_13_n_0 ;
  wire \buff_counter[16]_i_14_n_0 ;
  wire \buff_counter[16]_i_15_n_0 ;
  wire \buff_counter[16]_i_16_n_0 ;
  wire \buff_counter[16]_i_17_n_0 ;
  wire \buff_counter[16]_i_2_n_0 ;
  wire \buff_counter[16]_i_3_n_0 ;
  wire \buff_counter[16]_i_4_n_0 ;
  wire \buff_counter[16]_i_5_n_0 ;
  wire \buff_counter[16]_i_6_n_0 ;
  wire \buff_counter[16]_i_7_n_0 ;
  wire \buff_counter[16]_i_8_n_0 ;
  wire \buff_counter[16]_i_9_n_0 ;
  wire \buff_counter[24]_i_10_n_0 ;
  wire \buff_counter[24]_i_11_n_0 ;
  wire \buff_counter[24]_i_12_n_0 ;
  wire \buff_counter[24]_i_13_n_0 ;
  wire \buff_counter[24]_i_14_n_0 ;
  wire \buff_counter[24]_i_15_n_0 ;
  wire \buff_counter[24]_i_16_n_0 ;
  wire \buff_counter[24]_i_2_n_0 ;
  wire \buff_counter[24]_i_3_n_0 ;
  wire \buff_counter[24]_i_4_n_0 ;
  wire \buff_counter[24]_i_5_n_0 ;
  wire \buff_counter[24]_i_6_n_0 ;
  wire \buff_counter[24]_i_7_n_0 ;
  wire \buff_counter[24]_i_8_n_0 ;
  wire \buff_counter[24]_i_9_n_0 ;
  wire \buff_counter[8]_i_10_n_0 ;
  wire \buff_counter[8]_i_11_n_0 ;
  wire \buff_counter[8]_i_12_n_0 ;
  wire \buff_counter[8]_i_13_n_0 ;
  wire \buff_counter[8]_i_14_n_0 ;
  wire \buff_counter[8]_i_15_n_0 ;
  wire \buff_counter[8]_i_16_n_0 ;
  wire \buff_counter[8]_i_17_n_0 ;
  wire \buff_counter[8]_i_2_n_0 ;
  wire \buff_counter[8]_i_3_n_0 ;
  wire \buff_counter[8]_i_4_n_0 ;
  wire \buff_counter[8]_i_5_n_0 ;
  wire \buff_counter[8]_i_6_n_0 ;
  wire \buff_counter[8]_i_7_n_0 ;
  wire \buff_counter[8]_i_8_n_0 ;
  wire \buff_counter[8]_i_9_n_0 ;
  wire [31:0]buff_counter_reg;
  wire \buff_counter_reg[0]_i_2_n_0 ;
  wire \buff_counter_reg[0]_i_2_n_1 ;
  wire \buff_counter_reg[0]_i_2_n_10 ;
  wire \buff_counter_reg[0]_i_2_n_11 ;
  wire \buff_counter_reg[0]_i_2_n_12 ;
  wire \buff_counter_reg[0]_i_2_n_13 ;
  wire \buff_counter_reg[0]_i_2_n_14 ;
  wire \buff_counter_reg[0]_i_2_n_15 ;
  wire \buff_counter_reg[0]_i_2_n_2 ;
  wire \buff_counter_reg[0]_i_2_n_3 ;
  wire \buff_counter_reg[0]_i_2_n_4 ;
  wire \buff_counter_reg[0]_i_2_n_5 ;
  wire \buff_counter_reg[0]_i_2_n_6 ;
  wire \buff_counter_reg[0]_i_2_n_7 ;
  wire \buff_counter_reg[0]_i_2_n_8 ;
  wire \buff_counter_reg[0]_i_2_n_9 ;
  wire \buff_counter_reg[16]_i_1_n_0 ;
  wire \buff_counter_reg[16]_i_1_n_1 ;
  wire \buff_counter_reg[16]_i_1_n_10 ;
  wire \buff_counter_reg[16]_i_1_n_11 ;
  wire \buff_counter_reg[16]_i_1_n_12 ;
  wire \buff_counter_reg[16]_i_1_n_13 ;
  wire \buff_counter_reg[16]_i_1_n_14 ;
  wire \buff_counter_reg[16]_i_1_n_15 ;
  wire \buff_counter_reg[16]_i_1_n_2 ;
  wire \buff_counter_reg[16]_i_1_n_3 ;
  wire \buff_counter_reg[16]_i_1_n_4 ;
  wire \buff_counter_reg[16]_i_1_n_5 ;
  wire \buff_counter_reg[16]_i_1_n_6 ;
  wire \buff_counter_reg[16]_i_1_n_7 ;
  wire \buff_counter_reg[16]_i_1_n_8 ;
  wire \buff_counter_reg[16]_i_1_n_9 ;
  wire \buff_counter_reg[24]_i_1_n_1 ;
  wire \buff_counter_reg[24]_i_1_n_10 ;
  wire \buff_counter_reg[24]_i_1_n_11 ;
  wire \buff_counter_reg[24]_i_1_n_12 ;
  wire \buff_counter_reg[24]_i_1_n_13 ;
  wire \buff_counter_reg[24]_i_1_n_14 ;
  wire \buff_counter_reg[24]_i_1_n_15 ;
  wire \buff_counter_reg[24]_i_1_n_2 ;
  wire \buff_counter_reg[24]_i_1_n_3 ;
  wire \buff_counter_reg[24]_i_1_n_4 ;
  wire \buff_counter_reg[24]_i_1_n_5 ;
  wire \buff_counter_reg[24]_i_1_n_6 ;
  wire \buff_counter_reg[24]_i_1_n_7 ;
  wire \buff_counter_reg[24]_i_1_n_8 ;
  wire \buff_counter_reg[24]_i_1_n_9 ;
  wire \buff_counter_reg[8]_i_1_n_0 ;
  wire \buff_counter_reg[8]_i_1_n_1 ;
  wire \buff_counter_reg[8]_i_1_n_10 ;
  wire \buff_counter_reg[8]_i_1_n_11 ;
  wire \buff_counter_reg[8]_i_1_n_12 ;
  wire \buff_counter_reg[8]_i_1_n_13 ;
  wire \buff_counter_reg[8]_i_1_n_14 ;
  wire \buff_counter_reg[8]_i_1_n_15 ;
  wire \buff_counter_reg[8]_i_1_n_2 ;
  wire \buff_counter_reg[8]_i_1_n_3 ;
  wire \buff_counter_reg[8]_i_1_n_4 ;
  wire \buff_counter_reg[8]_i_1_n_5 ;
  wire \buff_counter_reg[8]_i_1_n_6 ;
  wire \buff_counter_reg[8]_i_1_n_7 ;
  wire \buff_counter_reg[8]_i_1_n_8 ;
  wire \buff_counter_reg[8]_i_1_n_9 ;
  wire \buff_reg[0][5]_i_2_n_0 ;
  wire \buff_reg[0]_4 ;
  wire \buff_reg[1]_0 ;
  wire \buff_reg[2]_1 ;
  wire \buff_reg[3][5]_i_2_n_0 ;
  wire \buff_reg[3][5]_i_3_n_0 ;
  wire \buff_reg[3][5]_i_4_n_0 ;
  wire \buff_reg[3][5]_i_5_n_0 ;
  wire \buff_reg[3][5]_i_6_n_0 ;
  wire \buff_reg[3]_3 ;
  wire \buff_reg[4][5]_i_2_n_0 ;
  wire \buff_reg[4][5]_i_3_n_0 ;
  wire \buff_reg[4][5]_i_4_n_0 ;
  wire \buff_reg[4][5]_i_5_n_0 ;
  wire \buff_reg[4][5]_i_6_n_0 ;
  wire \buff_reg[4][5]_i_7_n_0 ;
  wire \buff_reg[4]_2 ;
  wire \buff_reg[5][5]_i_1_n_0 ;
  wire \buff_reg[5][5]_i_2_n_0 ;
  wire \buff_reg[5][5]_i_3_n_0 ;
  wire \buff_reg[5][5]_i_4_n_0 ;
  wire \buff_reg[5][5]_i_5_n_0 ;
  wire \buff_reg[5][5]_i_6_n_0 ;
  wire [5:0]\buff_reg_reg[0] ;
  wire [5:0]\buff_reg_reg[1] ;
  wire [5:0]\buff_reg_reg[2] ;
  wire [5:0]\buff_reg_reg[3] ;
  wire [5:0]\buff_reg_reg[4] ;
  wire [5:0]\buff_reg_reg[5] ;
  wire clk;
  wire [5:0]data_in;
  wire data_in_ready;
  wire data_in_valid;
  wire data_out_ready;
  wire data_out_ready_i_1_n_0;
  wire data_out_ready_i_3_n_0;
  wire data_out_ready_i_4_n_0;
  wire data_out_ready_i_5_n_0;
  wire data_out_ready_i_6_n_0;
  wire data_out_ready_i_7_n_0;
  wire data_out_valid;
  wire data_out_valid0;
  wire data_out_valid2_carry__0_i_10_n_0;
  wire data_out_valid2_carry__0_i_11_n_0;
  wire data_out_valid2_carry__0_i_12_n_0;
  wire data_out_valid2_carry__0_i_13_n_0;
  wire data_out_valid2_carry__0_i_14_n_0;
  wire data_out_valid2_carry__0_i_15_n_0;
  wire data_out_valid2_carry__0_i_16_n_0;
  wire data_out_valid2_carry__0_i_1_n_0;
  wire data_out_valid2_carry__0_i_2_n_0;
  wire data_out_valid2_carry__0_i_3_n_0;
  wire data_out_valid2_carry__0_i_4_n_0;
  wire data_out_valid2_carry__0_i_5_n_0;
  wire data_out_valid2_carry__0_i_6_n_0;
  wire data_out_valid2_carry__0_i_7_n_0;
  wire data_out_valid2_carry__0_i_8_n_0;
  wire data_out_valid2_carry__0_i_9_n_0;
  wire data_out_valid2_carry__0_n_0;
  wire data_out_valid2_carry__0_n_1;
  wire data_out_valid2_carry__0_n_2;
  wire data_out_valid2_carry__0_n_3;
  wire data_out_valid2_carry__0_n_4;
  wire data_out_valid2_carry__0_n_5;
  wire data_out_valid2_carry__0_n_6;
  wire data_out_valid2_carry__0_n_7;
  wire data_out_valid2_carry_i_10_n_0;
  wire data_out_valid2_carry_i_11_n_0;
  wire data_out_valid2_carry_i_12_n_0;
  wire data_out_valid2_carry_i_13_n_0;
  wire data_out_valid2_carry_i_14_n_0;
  wire data_out_valid2_carry_i_15_n_0;
  wire data_out_valid2_carry_i_16_n_0;
  wire data_out_valid2_carry_i_1_n_0;
  wire data_out_valid2_carry_i_2_n_0;
  wire data_out_valid2_carry_i_3_n_0;
  wire data_out_valid2_carry_i_4_n_0;
  wire data_out_valid2_carry_i_5_n_0;
  wire data_out_valid2_carry_i_6_n_0;
  wire data_out_valid2_carry_i_7_n_0;
  wire data_out_valid2_carry_i_8_n_0;
  wire data_out_valid2_carry_i_9_n_0;
  wire data_out_valid2_carry_n_0;
  wire data_out_valid2_carry_n_1;
  wire data_out_valid2_carry_n_2;
  wire data_out_valid2_carry_n_3;
  wire data_out_valid2_carry_n_4;
  wire data_out_valid2_carry_n_5;
  wire data_out_valid2_carry_n_6;
  wire data_out_valid2_carry_n_7;
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
  wire g0_b10_i_1_n_0;
  wire g0_b10_i_2_n_0;
  wire g0_b10_i_3_n_0;
  wire g0_b10_i_4_n_0;
  wire g0_b10_i_5_n_0;
  wire g0_b10_i_6_n_0;
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
  wire \i_out[0]_i_3_n_0 ;
  wire \i_out[0]_i_4_n_0 ;
  wire \i_out[10]_i_3_n_0 ;
  wire \i_out[10]_i_4_n_0 ;
  wire \i_out[11]_i_3_n_0 ;
  wire \i_out[11]_i_4_n_0 ;
  wire \i_out[11]_i_5_n_0 ;
  wire \i_out[1]_i_3_n_0 ;
  wire \i_out[1]_i_4_n_0 ;
  wire \i_out[1]_i_5_n_0 ;
  wire \i_out[1]_i_6_n_0 ;
  wire \i_out[2]_i_2_n_0 ;
  wire \i_out[3]_i_2_n_0 ;
  wire \i_out[3]_i_3_n_0 ;
  wire \i_out[3]_i_4_n_0 ;
  wire \i_out[4]_i_2_n_0 ;
  wire \i_out[4]_i_3_n_0 ;
  wire \i_out[5]_i_2_n_0 ;
  wire \i_out[5]_i_3_n_0 ;
  wire \i_out[6]_i_2_n_0 ;
  wire \i_out[6]_i_4_n_0 ;
  wire \i_out[7]_i_3_n_0 ;
  wire \i_out[8]_i_2_n_0 ;
  wire \i_out[8]_i_3_n_0 ;
  wire \i_out[8]_i_4_n_0 ;
  wire \i_out[8]_i_5_n_0 ;
  wire \i_out[8]_i_6_n_0 ;
  wire \i_out[8]_i_7_n_0 ;
  wire \i_out[9]_i_2_n_0 ;
  wire \i_out[9]_i_3_n_0 ;
  wire \i_out[9]_i_5_n_0 ;
  wire [11:0]i_out_5;
  wire \i_out_reg[0]_i_2_n_0 ;
  wire \i_out_reg[10]_i_2_n_0 ;
  wire \i_out_reg[1]_i_2_n_0 ;
  wire \i_out_reg[2]_i_3_n_0 ;
  wire \i_out_reg[6]_i_3_n_0 ;
  wire \i_out_reg[7]_i_2_n_0 ;
  wire \i_out_reg[9]_i_4_n_0 ;
  wire [5:0]input_data;
  wire input_data0;
  wire \input_data[0]_i_1_n_0 ;
  wire \input_data[0]_i_2_n_0 ;
  wire \input_data[0]_i_3_n_0 ;
  wire \input_data[1]_i_1_n_0 ;
  wire \input_data[1]_i_2_n_0 ;
  wire \input_data[1]_i_3_n_0 ;
  wire \input_data[2]_i_1_n_0 ;
  wire \input_data[3]_i_1_n_0 ;
  wire \input_data[4]_i_1_n_0 ;
  wire \input_data[4]_i_2_n_0 ;
  wire \input_data[4]_i_3_n_0 ;
  wire \input_data[5]_i_2_n_0 ;
  wire \input_data[5]_i_3_n_0 ;
  wire \input_data[5]_i_4_n_0 ;
  wire k0;
  wire \k[0]_i_1_n_0 ;
  wire \k[0]_i_3_n_0 ;
  wire \k[0]_i_4_n_0 ;
  wire \k[0]_i_5_n_0 ;
  wire \k[0]_i_6_n_0 ;
  wire [2:0]k_reg;
  wire \k_reg[0]_i_2_n_13 ;
  wire \k_reg[0]_i_2_n_14 ;
  wire \k_reg[0]_i_2_n_15 ;
  wire \k_reg[0]_i_2_n_6 ;
  wire \k_reg[0]_i_2_n_7 ;
  wire [2:0]mod_type;
  wire [11:0]q_out;
  wire \q_out[0]_i_2_n_0 ;
  wire \q_out[0]_i_3_n_0 ;
  wire \q_out[10]_i_2_n_0 ;
  wire \q_out[10]_i_3_n_0 ;
  wire \q_out[10]_i_5_n_0 ;
  wire \q_out[11]_i_2_n_0 ;
  wire \q_out[1]_i_2_n_0 ;
  wire \q_out[1]_i_4_n_0 ;
  wire \q_out[2]_i_2_n_0 ;
  wire \q_out[3]_i_2_n_0 ;
  wire \q_out[4]_i_2_n_0 ;
  wire \q_out[5]_i_2_n_0 ;
  wire \q_out[5]_i_3_n_0 ;
  wire \q_out[5]_i_4_n_0 ;
  wire \q_out[6]_i_2_n_0 ;
  wire \q_out[6]_i_3_n_0 ;
  wire \q_out[6]_i_4_n_0 ;
  wire \q_out[7]_i_2_n_0 ;
  wire \q_out[7]_i_3_n_0 ;
  wire \q_out[8]_i_2_n_0 ;
  wire \q_out[8]_i_3_n_0 ;
  wire \q_out[8]_i_4_n_0 ;
  wire \q_out[8]_i_5_n_0 ;
  wire \q_out[9]_i_2_n_0 ;
  wire \q_out[9]_i_3_n_0 ;
  wire \q_out[9]_i_4_n_0 ;
  wire \q_out[9]_i_5_n_0 ;
  wire \q_out[9]_i_6_n_0 ;
  wire [11:0]q_out_6;
  wire \q_out_reg[0]_i_4_n_0 ;
  wire \q_out_reg[10]_i_4_n_0 ;
  wire \q_out_reg[1]_i_3_n_0 ;
  wire \q_out_reg[5]_i_5_n_0 ;
  wire reset;
  wire [7:7]\NLW_buff_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:0]NLW_data_out_valid2_carry_O_UNCONNECTED;
  wire [7:0]NLW_data_out_valid2_carry__0_O_UNCONNECTED;
  wire [7:2]\NLW_k_reg[0]_i_2_CO_UNCONNECTED ;
  wire [7:3]\NLW_k_reg[0]_i_2_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h62)) 
    \buff_counter[0]_i_1 
       (.I0(data_in_valid),
        .I1(data_in_ready),
        .I2(data_out_valid2_carry__0_n_0),
        .O(\buff_counter[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[0]_i_10 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[7]),
        .O(\buff_counter[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[0]_i_11 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[6]),
        .O(\buff_counter[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[0]_i_12 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[5]),
        .O(\buff_counter[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[0]_i_13 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[4]),
        .O(\buff_counter[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[0]_i_14 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[3]),
        .O(\buff_counter[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[0]_i_15 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[2]),
        .O(\buff_counter[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[0]_i_16 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[1]),
        .O(\buff_counter[0]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buff_counter[0]_i_17 
       (.I0(buff_counter_reg[0]),
        .O(\buff_counter[0]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[0]_i_3 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[0]_i_4 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[0]_i_5 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[0]_i_6 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[0]_i_7 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[0]_i_8 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[0]_i_9 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[16]_i_10 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[23]),
        .O(\buff_counter[16]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[16]_i_11 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[22]),
        .O(\buff_counter[16]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[16]_i_12 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[21]),
        .O(\buff_counter[16]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[16]_i_13 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[20]),
        .O(\buff_counter[16]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[16]_i_14 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[19]),
        .O(\buff_counter[16]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[16]_i_15 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[18]),
        .O(\buff_counter[16]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[16]_i_16 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[17]),
        .O(\buff_counter[16]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[16]_i_17 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[16]),
        .O(\buff_counter[16]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[16]_i_2 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[16]_i_3 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[16]_i_4 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[16]_i_5 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[16]_i_6 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[16]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[16]_i_7 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[16]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[16]_i_8 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[16]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[16]_i_9 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[16]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[24]_i_10 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[30]),
        .O(\buff_counter[24]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[24]_i_11 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[29]),
        .O(\buff_counter[24]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[24]_i_12 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[28]),
        .O(\buff_counter[24]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[24]_i_13 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[27]),
        .O(\buff_counter[24]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[24]_i_14 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[26]),
        .O(\buff_counter[24]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[24]_i_15 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[25]),
        .O(\buff_counter[24]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[24]_i_16 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[24]),
        .O(\buff_counter[24]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[24]_i_2 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[24]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[24]_i_3 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[24]_i_4 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[24]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[24]_i_5 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[24]_i_6 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[24]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[24]_i_7 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[24]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[24]_i_8 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[24]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h56AA)) 
    \buff_counter[24]_i_9 
       (.I0(buff_counter_reg[31]),
        .I1(data_in_valid),
        .I2(data_out_valid2_carry__0_n_0),
        .I3(data_in_ready),
        .O(\buff_counter[24]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[8]_i_10 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[15]),
        .O(\buff_counter[8]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[8]_i_11 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[14]),
        .O(\buff_counter[8]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[8]_i_12 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[13]),
        .O(\buff_counter[8]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[8]_i_13 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[12]),
        .O(\buff_counter[8]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[8]_i_14 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[11]),
        .O(\buff_counter[8]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[8]_i_15 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[10]),
        .O(\buff_counter[8]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[8]_i_16 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[9]),
        .O(\buff_counter[8]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \buff_counter[8]_i_17 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(buff_counter_reg[8]),
        .O(\buff_counter[8]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[8]_i_2 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[8]_i_3 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[8]_i_4 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[8]_i_5 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[8]_i_6 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[8]_i_7 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[8]_i_8 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \buff_counter[8]_i_9 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\buff_counter[8]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[0] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[0]_i_2_n_15 ),
        .Q(buff_counter_reg[0]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \buff_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\buff_counter_reg[0]_i_2_n_0 ,\buff_counter_reg[0]_i_2_n_1 ,\buff_counter_reg[0]_i_2_n_2 ,\buff_counter_reg[0]_i_2_n_3 ,\buff_counter_reg[0]_i_2_n_4 ,\buff_counter_reg[0]_i_2_n_5 ,\buff_counter_reg[0]_i_2_n_6 ,\buff_counter_reg[0]_i_2_n_7 }),
        .DI({\buff_counter[0]_i_3_n_0 ,\buff_counter[0]_i_4_n_0 ,\buff_counter[0]_i_5_n_0 ,\buff_counter[0]_i_6_n_0 ,\buff_counter[0]_i_7_n_0 ,\buff_counter[0]_i_8_n_0 ,\buff_counter[0]_i_9_n_0 ,1'b1}),
        .O({\buff_counter_reg[0]_i_2_n_8 ,\buff_counter_reg[0]_i_2_n_9 ,\buff_counter_reg[0]_i_2_n_10 ,\buff_counter_reg[0]_i_2_n_11 ,\buff_counter_reg[0]_i_2_n_12 ,\buff_counter_reg[0]_i_2_n_13 ,\buff_counter_reg[0]_i_2_n_14 ,\buff_counter_reg[0]_i_2_n_15 }),
        .S({\buff_counter[0]_i_10_n_0 ,\buff_counter[0]_i_11_n_0 ,\buff_counter[0]_i_12_n_0 ,\buff_counter[0]_i_13_n_0 ,\buff_counter[0]_i_14_n_0 ,\buff_counter[0]_i_15_n_0 ,\buff_counter[0]_i_16_n_0 ,\buff_counter[0]_i_17_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[10] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[8]_i_1_n_13 ),
        .Q(buff_counter_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[11] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[8]_i_1_n_12 ),
        .Q(buff_counter_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[12] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[8]_i_1_n_11 ),
        .Q(buff_counter_reg[12]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[13] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[8]_i_1_n_10 ),
        .Q(buff_counter_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[14] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[8]_i_1_n_9 ),
        .Q(buff_counter_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[15] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[8]_i_1_n_8 ),
        .Q(buff_counter_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[16] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[16]_i_1_n_15 ),
        .Q(buff_counter_reg[16]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \buff_counter_reg[16]_i_1 
       (.CI(\buff_counter_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\buff_counter_reg[16]_i_1_n_0 ,\buff_counter_reg[16]_i_1_n_1 ,\buff_counter_reg[16]_i_1_n_2 ,\buff_counter_reg[16]_i_1_n_3 ,\buff_counter_reg[16]_i_1_n_4 ,\buff_counter_reg[16]_i_1_n_5 ,\buff_counter_reg[16]_i_1_n_6 ,\buff_counter_reg[16]_i_1_n_7 }),
        .DI({\buff_counter[16]_i_2_n_0 ,\buff_counter[16]_i_3_n_0 ,\buff_counter[16]_i_4_n_0 ,\buff_counter[16]_i_5_n_0 ,\buff_counter[16]_i_6_n_0 ,\buff_counter[16]_i_7_n_0 ,\buff_counter[16]_i_8_n_0 ,\buff_counter[16]_i_9_n_0 }),
        .O({\buff_counter_reg[16]_i_1_n_8 ,\buff_counter_reg[16]_i_1_n_9 ,\buff_counter_reg[16]_i_1_n_10 ,\buff_counter_reg[16]_i_1_n_11 ,\buff_counter_reg[16]_i_1_n_12 ,\buff_counter_reg[16]_i_1_n_13 ,\buff_counter_reg[16]_i_1_n_14 ,\buff_counter_reg[16]_i_1_n_15 }),
        .S({\buff_counter[16]_i_10_n_0 ,\buff_counter[16]_i_11_n_0 ,\buff_counter[16]_i_12_n_0 ,\buff_counter[16]_i_13_n_0 ,\buff_counter[16]_i_14_n_0 ,\buff_counter[16]_i_15_n_0 ,\buff_counter[16]_i_16_n_0 ,\buff_counter[16]_i_17_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[17] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[16]_i_1_n_14 ),
        .Q(buff_counter_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[18] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[16]_i_1_n_13 ),
        .Q(buff_counter_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[19] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[16]_i_1_n_12 ),
        .Q(buff_counter_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[1] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[0]_i_2_n_14 ),
        .Q(buff_counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[20] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[16]_i_1_n_11 ),
        .Q(buff_counter_reg[20]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[21] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[16]_i_1_n_10 ),
        .Q(buff_counter_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[22] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[16]_i_1_n_9 ),
        .Q(buff_counter_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[23] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[16]_i_1_n_8 ),
        .Q(buff_counter_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[24] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[24]_i_1_n_15 ),
        .Q(buff_counter_reg[24]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \buff_counter_reg[24]_i_1 
       (.CI(\buff_counter_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_buff_counter_reg[24]_i_1_CO_UNCONNECTED [7],\buff_counter_reg[24]_i_1_n_1 ,\buff_counter_reg[24]_i_1_n_2 ,\buff_counter_reg[24]_i_1_n_3 ,\buff_counter_reg[24]_i_1_n_4 ,\buff_counter_reg[24]_i_1_n_5 ,\buff_counter_reg[24]_i_1_n_6 ,\buff_counter_reg[24]_i_1_n_7 }),
        .DI({1'b0,\buff_counter[24]_i_2_n_0 ,\buff_counter[24]_i_3_n_0 ,\buff_counter[24]_i_4_n_0 ,\buff_counter[24]_i_5_n_0 ,\buff_counter[24]_i_6_n_0 ,\buff_counter[24]_i_7_n_0 ,\buff_counter[24]_i_8_n_0 }),
        .O({\buff_counter_reg[24]_i_1_n_8 ,\buff_counter_reg[24]_i_1_n_9 ,\buff_counter_reg[24]_i_1_n_10 ,\buff_counter_reg[24]_i_1_n_11 ,\buff_counter_reg[24]_i_1_n_12 ,\buff_counter_reg[24]_i_1_n_13 ,\buff_counter_reg[24]_i_1_n_14 ,\buff_counter_reg[24]_i_1_n_15 }),
        .S({\buff_counter[24]_i_9_n_0 ,\buff_counter[24]_i_10_n_0 ,\buff_counter[24]_i_11_n_0 ,\buff_counter[24]_i_12_n_0 ,\buff_counter[24]_i_13_n_0 ,\buff_counter[24]_i_14_n_0 ,\buff_counter[24]_i_15_n_0 ,\buff_counter[24]_i_16_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[25] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[24]_i_1_n_14 ),
        .Q(buff_counter_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[26] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[24]_i_1_n_13 ),
        .Q(buff_counter_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[27] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[24]_i_1_n_12 ),
        .Q(buff_counter_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[28] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[24]_i_1_n_11 ),
        .Q(buff_counter_reg[28]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[29] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[24]_i_1_n_10 ),
        .Q(buff_counter_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[2] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[0]_i_2_n_13 ),
        .Q(buff_counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[30] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[24]_i_1_n_9 ),
        .Q(buff_counter_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[31] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[24]_i_1_n_8 ),
        .Q(buff_counter_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[3] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[0]_i_2_n_12 ),
        .Q(buff_counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[4] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[0]_i_2_n_11 ),
        .Q(buff_counter_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[5] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[0]_i_2_n_10 ),
        .Q(buff_counter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[6] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[0]_i_2_n_9 ),
        .Q(buff_counter_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[7] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[0]_i_2_n_8 ),
        .Q(buff_counter_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[8] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[8]_i_1_n_15 ),
        .Q(buff_counter_reg[8]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \buff_counter_reg[8]_i_1 
       (.CI(\buff_counter_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\buff_counter_reg[8]_i_1_n_0 ,\buff_counter_reg[8]_i_1_n_1 ,\buff_counter_reg[8]_i_1_n_2 ,\buff_counter_reg[8]_i_1_n_3 ,\buff_counter_reg[8]_i_1_n_4 ,\buff_counter_reg[8]_i_1_n_5 ,\buff_counter_reg[8]_i_1_n_6 ,\buff_counter_reg[8]_i_1_n_7 }),
        .DI({\buff_counter[8]_i_2_n_0 ,\buff_counter[8]_i_3_n_0 ,\buff_counter[8]_i_4_n_0 ,\buff_counter[8]_i_5_n_0 ,\buff_counter[8]_i_6_n_0 ,\buff_counter[8]_i_7_n_0 ,\buff_counter[8]_i_8_n_0 ,\buff_counter[8]_i_9_n_0 }),
        .O({\buff_counter_reg[8]_i_1_n_8 ,\buff_counter_reg[8]_i_1_n_9 ,\buff_counter_reg[8]_i_1_n_10 ,\buff_counter_reg[8]_i_1_n_11 ,\buff_counter_reg[8]_i_1_n_12 ,\buff_counter_reg[8]_i_1_n_13 ,\buff_counter_reg[8]_i_1_n_14 ,\buff_counter_reg[8]_i_1_n_15 }),
        .S({\buff_counter[8]_i_10_n_0 ,\buff_counter[8]_i_11_n_0 ,\buff_counter[8]_i_12_n_0 ,\buff_counter[8]_i_13_n_0 ,\buff_counter[8]_i_14_n_0 ,\buff_counter[8]_i_15_n_0 ,\buff_counter[8]_i_16_n_0 ,\buff_counter[8]_i_17_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[9] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[8]_i_1_n_14 ),
        .Q(buff_counter_reg[9]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \buff_reg[0][5]_i_1 
       (.I0(\buff_reg[5][5]_i_2_n_0 ),
        .I1(buff_counter_reg[16]),
        .I2(buff_counter_reg[17]),
        .I3(buff_counter_reg[15]),
        .I4(\buff_reg[0][5]_i_2_n_0 ),
        .I5(\buff_reg[5][5]_i_4_n_0 ),
        .O(\buff_reg[0]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \buff_reg[0][5]_i_2 
       (.I0(buff_counter_reg[13]),
        .I1(buff_counter_reg[14]),
        .I2(buff_counter_reg[2]),
        .I3(buff_counter_reg[1]),
        .I4(buff_counter_reg[0]),
        .O(\buff_reg[0][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \buff_reg[1][5]_i_1 
       (.I0(\buff_reg[4][5]_i_2_n_0 ),
        .I1(buff_counter_reg[0]),
        .I2(buff_counter_reg[1]),
        .I3(buff_counter_reg[3]),
        .I4(buff_counter_reg[2]),
        .I5(\buff_reg[4][5]_i_3_n_0 ),
        .O(\buff_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \buff_reg[2][5]_i_1 
       (.I0(\buff_reg[4][5]_i_2_n_0 ),
        .I1(buff_counter_reg[3]),
        .I2(buff_counter_reg[0]),
        .I3(buff_counter_reg[1]),
        .I4(buff_counter_reg[2]),
        .I5(\buff_reg[4][5]_i_3_n_0 ),
        .O(\buff_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \buff_reg[3][5]_i_1 
       (.I0(\buff_reg[3][5]_i_2_n_0 ),
        .I1(\buff_reg[5][5]_i_4_n_0 ),
        .I2(\buff_reg[3][5]_i_3_n_0 ),
        .I3(buff_counter_reg[0]),
        .I4(\buff_reg[3][5]_i_4_n_0 ),
        .I5(\buff_reg[3][5]_i_5_n_0 ),
        .O(\buff_reg[3]_3 ));
  LUT6 #(
    .INIT(64'h0000000080008080)) 
    \buff_reg[3][5]_i_2 
       (.I0(\buff_reg[3][5]_i_6_n_0 ),
        .I1(\buff_reg[4][5]_i_5_n_0 ),
        .I2(\buff_reg[4][5]_i_4_n_0 ),
        .I3(buff_counter_reg[25]),
        .I4(buff_counter_reg[24]),
        .I5(\buff_reg[4][5]_i_7_n_0 ),
        .O(\buff_reg[3][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \buff_reg[3][5]_i_3 
       (.I0(buff_counter_reg[2]),
        .I1(buff_counter_reg[1]),
        .O(\buff_reg[3][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \buff_reg[3][5]_i_4 
       (.I0(buff_counter_reg[7]),
        .I1(buff_counter_reg[6]),
        .I2(buff_counter_reg[17]),
        .I3(buff_counter_reg[16]),
        .O(\buff_reg[3][5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \buff_reg[3][5]_i_5 
       (.I0(\buff_reg[5][5]_i_5_n_0 ),
        .I1(buff_counter_reg[12]),
        .I2(buff_counter_reg[13]),
        .I3(buff_counter_reg[14]),
        .I4(buff_counter_reg[15]),
        .O(\buff_reg[3][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \buff_reg[3][5]_i_6 
       (.I0(buff_counter_reg[19]),
        .I1(buff_counter_reg[18]),
        .I2(buff_counter_reg[20]),
        .I3(buff_counter_reg[21]),
        .I4(buff_counter_reg[22]),
        .I5(buff_counter_reg[23]),
        .O(\buff_reg[3][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \buff_reg[4][5]_i_1 
       (.I0(\buff_reg[4][5]_i_2_n_0 ),
        .I1(buff_counter_reg[3]),
        .I2(buff_counter_reg[0]),
        .I3(buff_counter_reg[2]),
        .I4(buff_counter_reg[1]),
        .I5(\buff_reg[4][5]_i_3_n_0 ),
        .O(\buff_reg[4]_2 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \buff_reg[4][5]_i_2 
       (.I0(data_out_ready_i_3_n_0),
        .I1(\buff_reg[4][5]_i_4_n_0 ),
        .I2(\buff_reg[4][5]_i_5_n_0 ),
        .I3(data_out_ready_i_4_n_0),
        .I4(\buff_reg[4][5]_i_6_n_0 ),
        .I5(\buff_reg[4][5]_i_7_n_0 ),
        .O(\buff_reg[4][5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \buff_reg[4][5]_i_3 
       (.I0(buff_counter_reg[5]),
        .I1(buff_counter_reg[4]),
        .I2(buff_counter_reg[7]),
        .I3(buff_counter_reg[6]),
        .O(\buff_reg[4][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \buff_reg[4][5]_i_4 
       (.I0(buff_counter_reg[26]),
        .I1(buff_counter_reg[27]),
        .O(\buff_reg[4][5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \buff_reg[4][5]_i_5 
       (.I0(data_in_valid),
        .I1(data_in_ready),
        .O(\buff_reg[4][5]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \buff_reg[4][5]_i_6 
       (.I0(buff_counter_reg[24]),
        .I1(buff_counter_reg[25]),
        .O(\buff_reg[4][5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \buff_reg[4][5]_i_7 
       (.I0(buff_counter_reg[29]),
        .I1(buff_counter_reg[28]),
        .I2(buff_counter_reg[30]),
        .I3(buff_counter_reg[31]),
        .O(\buff_reg[4][5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \buff_reg[5][5]_i_1 
       (.I0(\buff_reg[5][5]_i_2_n_0 ),
        .I1(buff_counter_reg[16]),
        .I2(buff_counter_reg[17]),
        .I3(buff_counter_reg[15]),
        .I4(\buff_reg[5][5]_i_3_n_0 ),
        .I5(\buff_reg[5][5]_i_4_n_0 ),
        .O(\buff_reg[5][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000202200000000)) 
    \buff_reg[5][5]_i_2 
       (.I0(\buff_reg[3][5]_i_2_n_0 ),
        .I1(buff_counter_reg[14]),
        .I2(buff_counter_reg[13]),
        .I3(buff_counter_reg[12]),
        .I4(\buff_reg[5][5]_i_5_n_0 ),
        .I5(\buff_reg[5][5]_i_6_n_0 ),
        .O(\buff_reg[5][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \buff_reg[5][5]_i_3 
       (.I0(buff_counter_reg[2]),
        .I1(buff_counter_reg[5]),
        .I2(buff_counter_reg[1]),
        .I3(buff_counter_reg[0]),
        .I4(buff_counter_reg[13]),
        .I5(buff_counter_reg[14]),
        .O(\buff_reg[5][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \buff_reg[5][5]_i_4 
       (.I0(buff_counter_reg[3]),
        .I1(buff_counter_reg[25]),
        .I2(buff_counter_reg[26]),
        .I3(buff_counter_reg[5]),
        .I4(buff_counter_reg[4]),
        .O(\buff_reg[5][5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \buff_reg[5][5]_i_5 
       (.I0(buff_counter_reg[11]),
        .I1(buff_counter_reg[10]),
        .I2(buff_counter_reg[9]),
        .I3(buff_counter_reg[8]),
        .O(\buff_reg[5][5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \buff_reg[5][5]_i_6 
       (.I0(buff_counter_reg[6]),
        .I1(buff_counter_reg[7]),
        .O(\buff_reg[5][5]_i_6_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[0][0] 
       (.C(clk),
        .CE(\buff_reg[0]_4 ),
        .CLR(reset),
        .D(data_in[0]),
        .Q(\buff_reg_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[0][1] 
       (.C(clk),
        .CE(\buff_reg[0]_4 ),
        .CLR(reset),
        .D(data_in[1]),
        .Q(\buff_reg_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[0][2] 
       (.C(clk),
        .CE(\buff_reg[0]_4 ),
        .CLR(reset),
        .D(data_in[2]),
        .Q(\buff_reg_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[0][3] 
       (.C(clk),
        .CE(\buff_reg[0]_4 ),
        .CLR(reset),
        .D(data_in[3]),
        .Q(\buff_reg_reg[0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[0][4] 
       (.C(clk),
        .CE(\buff_reg[0]_4 ),
        .CLR(reset),
        .D(data_in[4]),
        .Q(\buff_reg_reg[0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[0][5] 
       (.C(clk),
        .CE(\buff_reg[0]_4 ),
        .CLR(reset),
        .D(data_in[5]),
        .Q(\buff_reg_reg[0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[1][0] 
       (.C(clk),
        .CE(\buff_reg[1]_0 ),
        .CLR(reset),
        .D(data_in[0]),
        .Q(\buff_reg_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[1][1] 
       (.C(clk),
        .CE(\buff_reg[1]_0 ),
        .CLR(reset),
        .D(data_in[1]),
        .Q(\buff_reg_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[1][2] 
       (.C(clk),
        .CE(\buff_reg[1]_0 ),
        .CLR(reset),
        .D(data_in[2]),
        .Q(\buff_reg_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[1][3] 
       (.C(clk),
        .CE(\buff_reg[1]_0 ),
        .CLR(reset),
        .D(data_in[3]),
        .Q(\buff_reg_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[1][4] 
       (.C(clk),
        .CE(\buff_reg[1]_0 ),
        .CLR(reset),
        .D(data_in[4]),
        .Q(\buff_reg_reg[1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[1][5] 
       (.C(clk),
        .CE(\buff_reg[1]_0 ),
        .CLR(reset),
        .D(data_in[5]),
        .Q(\buff_reg_reg[1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[2][0] 
       (.C(clk),
        .CE(\buff_reg[2]_1 ),
        .CLR(reset),
        .D(data_in[0]),
        .Q(\buff_reg_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[2][1] 
       (.C(clk),
        .CE(\buff_reg[2]_1 ),
        .CLR(reset),
        .D(data_in[1]),
        .Q(\buff_reg_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[2][2] 
       (.C(clk),
        .CE(\buff_reg[2]_1 ),
        .CLR(reset),
        .D(data_in[2]),
        .Q(\buff_reg_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[2][3] 
       (.C(clk),
        .CE(\buff_reg[2]_1 ),
        .CLR(reset),
        .D(data_in[3]),
        .Q(\buff_reg_reg[2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[2][4] 
       (.C(clk),
        .CE(\buff_reg[2]_1 ),
        .CLR(reset),
        .D(data_in[4]),
        .Q(\buff_reg_reg[2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[2][5] 
       (.C(clk),
        .CE(\buff_reg[2]_1 ),
        .CLR(reset),
        .D(data_in[5]),
        .Q(\buff_reg_reg[2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[3][0] 
       (.C(clk),
        .CE(\buff_reg[3]_3 ),
        .CLR(reset),
        .D(data_in[0]),
        .Q(\buff_reg_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[3][1] 
       (.C(clk),
        .CE(\buff_reg[3]_3 ),
        .CLR(reset),
        .D(data_in[1]),
        .Q(\buff_reg_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[3][2] 
       (.C(clk),
        .CE(\buff_reg[3]_3 ),
        .CLR(reset),
        .D(data_in[2]),
        .Q(\buff_reg_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[3][3] 
       (.C(clk),
        .CE(\buff_reg[3]_3 ),
        .CLR(reset),
        .D(data_in[3]),
        .Q(\buff_reg_reg[3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[3][4] 
       (.C(clk),
        .CE(\buff_reg[3]_3 ),
        .CLR(reset),
        .D(data_in[4]),
        .Q(\buff_reg_reg[3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[3][5] 
       (.C(clk),
        .CE(\buff_reg[3]_3 ),
        .CLR(reset),
        .D(data_in[5]),
        .Q(\buff_reg_reg[3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[4][0] 
       (.C(clk),
        .CE(\buff_reg[4]_2 ),
        .CLR(reset),
        .D(data_in[0]),
        .Q(\buff_reg_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[4][1] 
       (.C(clk),
        .CE(\buff_reg[4]_2 ),
        .CLR(reset),
        .D(data_in[1]),
        .Q(\buff_reg_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[4][2] 
       (.C(clk),
        .CE(\buff_reg[4]_2 ),
        .CLR(reset),
        .D(data_in[2]),
        .Q(\buff_reg_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[4][3] 
       (.C(clk),
        .CE(\buff_reg[4]_2 ),
        .CLR(reset),
        .D(data_in[3]),
        .Q(\buff_reg_reg[4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[4][4] 
       (.C(clk),
        .CE(\buff_reg[4]_2 ),
        .CLR(reset),
        .D(data_in[4]),
        .Q(\buff_reg_reg[4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[4][5] 
       (.C(clk),
        .CE(\buff_reg[4]_2 ),
        .CLR(reset),
        .D(data_in[5]),
        .Q(\buff_reg_reg[4] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[5][0] 
       (.C(clk),
        .CE(\buff_reg[5][5]_i_1_n_0 ),
        .CLR(reset),
        .D(data_in[0]),
        .Q(\buff_reg_reg[5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[5][1] 
       (.C(clk),
        .CE(\buff_reg[5][5]_i_1_n_0 ),
        .CLR(reset),
        .D(data_in[1]),
        .Q(\buff_reg_reg[5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[5][2] 
       (.C(clk),
        .CE(\buff_reg[5][5]_i_1_n_0 ),
        .CLR(reset),
        .D(data_in[2]),
        .Q(\buff_reg_reg[5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[5][3] 
       (.C(clk),
        .CE(\buff_reg[5][5]_i_1_n_0 ),
        .CLR(reset),
        .D(data_in[3]),
        .Q(\buff_reg_reg[5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[5][4] 
       (.C(clk),
        .CE(\buff_reg[5][5]_i_1_n_0 ),
        .CLR(reset),
        .D(data_in[4]),
        .Q(\buff_reg_reg[5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[5][5] 
       (.C(clk),
        .CE(\buff_reg[5][5]_i_1_n_0 ),
        .CLR(reset),
        .D(data_in[5]),
        .Q(\buff_reg_reg[5] [5]));
  LUT6 #(
    .INIT(64'hAAAAAAB8AA00AAF0)) 
    data_out_ready_i_1
       (.I0(data_out_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(k0),
        .I3(reset),
        .I4(data_in_valid),
        .I5(data_in_ready),
        .O(data_out_ready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    data_out_ready_i_2
       (.I0(data_out_ready_i_3_n_0),
        .I1(data_out_ready_i_4_n_0),
        .I2(buff_counter_reg[6]),
        .I3(buff_counter_reg[7]),
        .I4(data_out_ready_i_5_n_0),
        .I5(data_out_ready_i_6_n_0),
        .O(k0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    data_out_ready_i_3
       (.I0(buff_counter_reg[15]),
        .I1(buff_counter_reg[14]),
        .I2(buff_counter_reg[13]),
        .I3(buff_counter_reg[12]),
        .I4(\buff_reg[5][5]_i_5_n_0 ),
        .I5(\buff_reg[3][5]_i_6_n_0 ),
        .O(data_out_ready_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_4
       (.I0(buff_counter_reg[16]),
        .I1(buff_counter_reg[17]),
        .O(data_out_ready_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    data_out_ready_i_5
       (.I0(\buff_reg[4][5]_i_7_n_0 ),
        .I1(buff_counter_reg[26]),
        .I2(buff_counter_reg[27]),
        .I3(buff_counter_reg[1]),
        .I4(buff_counter_reg[2]),
        .O(data_out_ready_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    data_out_ready_i_6
       (.I0(\buff_reg[4][5]_i_6_n_0 ),
        .I1(data_in_valid),
        .I2(data_in_ready),
        .I3(data_out_ready_i_7_n_0),
        .I4(buff_counter_reg[0]),
        .I5(buff_counter_reg[3]),
        .O(data_out_ready_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    data_out_ready_i_7
       (.I0(buff_counter_reg[4]),
        .I1(buff_counter_reg[5]),
        .O(data_out_ready_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_out_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(data_out_ready_i_1_n_0),
        .Q(data_out_ready),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 data_out_valid2_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({data_out_valid2_carry_n_0,data_out_valid2_carry_n_1,data_out_valid2_carry_n_2,data_out_valid2_carry_n_3,data_out_valid2_carry_n_4,data_out_valid2_carry_n_5,data_out_valid2_carry_n_6,data_out_valid2_carry_n_7}),
        .DI({data_out_valid2_carry_i_1_n_0,data_out_valid2_carry_i_2_n_0,data_out_valid2_carry_i_3_n_0,data_out_valid2_carry_i_4_n_0,data_out_valid2_carry_i_5_n_0,data_out_valid2_carry_i_6_n_0,data_out_valid2_carry_i_7_n_0,data_out_valid2_carry_i_8_n_0}),
        .O(NLW_data_out_valid2_carry_O_UNCONNECTED[7:0]),
        .S({data_out_valid2_carry_i_9_n_0,data_out_valid2_carry_i_10_n_0,data_out_valid2_carry_i_11_n_0,data_out_valid2_carry_i_12_n_0,data_out_valid2_carry_i_13_n_0,data_out_valid2_carry_i_14_n_0,data_out_valid2_carry_i_15_n_0,data_out_valid2_carry_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 data_out_valid2_carry__0
       (.CI(data_out_valid2_carry_n_0),
        .CI_TOP(1'b0),
        .CO({data_out_valid2_carry__0_n_0,data_out_valid2_carry__0_n_1,data_out_valid2_carry__0_n_2,data_out_valid2_carry__0_n_3,data_out_valid2_carry__0_n_4,data_out_valid2_carry__0_n_5,data_out_valid2_carry__0_n_6,data_out_valid2_carry__0_n_7}),
        .DI({data_out_valid2_carry__0_i_1_n_0,data_out_valid2_carry__0_i_2_n_0,data_out_valid2_carry__0_i_3_n_0,data_out_valid2_carry__0_i_4_n_0,data_out_valid2_carry__0_i_5_n_0,data_out_valid2_carry__0_i_6_n_0,data_out_valid2_carry__0_i_7_n_0,data_out_valid2_carry__0_i_8_n_0}),
        .O(NLW_data_out_valid2_carry__0_O_UNCONNECTED[7:0]),
        .S({data_out_valid2_carry__0_i_9_n_0,data_out_valid2_carry__0_i_10_n_0,data_out_valid2_carry__0_i_11_n_0,data_out_valid2_carry__0_i_12_n_0,data_out_valid2_carry__0_i_13_n_0,data_out_valid2_carry__0_i_14_n_0,data_out_valid2_carry__0_i_15_n_0,data_out_valid2_carry__0_i_16_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    data_out_valid2_carry__0_i_1
       (.I0(buff_counter_reg[30]),
        .I1(buff_counter_reg[31]),
        .O(data_out_valid2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid2_carry__0_i_10
       (.I0(buff_counter_reg[28]),
        .I1(buff_counter_reg[29]),
        .O(data_out_valid2_carry__0_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid2_carry__0_i_11
       (.I0(buff_counter_reg[26]),
        .I1(buff_counter_reg[27]),
        .O(data_out_valid2_carry__0_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid2_carry__0_i_12
       (.I0(buff_counter_reg[24]),
        .I1(buff_counter_reg[25]),
        .O(data_out_valid2_carry__0_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid2_carry__0_i_13
       (.I0(buff_counter_reg[22]),
        .I1(buff_counter_reg[23]),
        .O(data_out_valid2_carry__0_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid2_carry__0_i_14
       (.I0(buff_counter_reg[20]),
        .I1(buff_counter_reg[21]),
        .O(data_out_valid2_carry__0_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid2_carry__0_i_15
       (.I0(buff_counter_reg[18]),
        .I1(buff_counter_reg[19]),
        .O(data_out_valid2_carry__0_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid2_carry__0_i_16
       (.I0(buff_counter_reg[16]),
        .I1(buff_counter_reg[17]),
        .O(data_out_valid2_carry__0_i_16_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid2_carry__0_i_2
       (.I0(buff_counter_reg[29]),
        .I1(buff_counter_reg[28]),
        .O(data_out_valid2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid2_carry__0_i_3
       (.I0(buff_counter_reg[27]),
        .I1(buff_counter_reg[26]),
        .O(data_out_valid2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid2_carry__0_i_4
       (.I0(buff_counter_reg[25]),
        .I1(buff_counter_reg[24]),
        .O(data_out_valid2_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid2_carry__0_i_5
       (.I0(buff_counter_reg[23]),
        .I1(buff_counter_reg[22]),
        .O(data_out_valid2_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid2_carry__0_i_6
       (.I0(buff_counter_reg[21]),
        .I1(buff_counter_reg[20]),
        .O(data_out_valid2_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid2_carry__0_i_7
       (.I0(buff_counter_reg[19]),
        .I1(buff_counter_reg[18]),
        .O(data_out_valid2_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid2_carry__0_i_8
       (.I0(buff_counter_reg[17]),
        .I1(buff_counter_reg[16]),
        .O(data_out_valid2_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid2_carry__0_i_9
       (.I0(buff_counter_reg[31]),
        .I1(buff_counter_reg[30]),
        .O(data_out_valid2_carry__0_i_9_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid2_carry_i_1
       (.I0(buff_counter_reg[15]),
        .I1(buff_counter_reg[14]),
        .O(data_out_valid2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid2_carry_i_10
       (.I0(buff_counter_reg[12]),
        .I1(buff_counter_reg[13]),
        .O(data_out_valid2_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid2_carry_i_11
       (.I0(buff_counter_reg[10]),
        .I1(buff_counter_reg[11]),
        .O(data_out_valid2_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid2_carry_i_12
       (.I0(buff_counter_reg[8]),
        .I1(buff_counter_reg[9]),
        .O(data_out_valid2_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid2_carry_i_13
       (.I0(buff_counter_reg[6]),
        .I1(buff_counter_reg[7]),
        .O(data_out_valid2_carry_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid2_carry_i_14
       (.I0(buff_counter_reg[4]),
        .I1(buff_counter_reg[5]),
        .O(data_out_valid2_carry_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid2_carry_i_15
       (.I0(buff_counter_reg[2]),
        .I1(buff_counter_reg[3]),
        .O(data_out_valid2_carry_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid2_carry_i_16
       (.I0(buff_counter_reg[0]),
        .I1(buff_counter_reg[1]),
        .O(data_out_valid2_carry_i_16_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid2_carry_i_2
       (.I0(buff_counter_reg[13]),
        .I1(buff_counter_reg[12]),
        .O(data_out_valid2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid2_carry_i_3
       (.I0(buff_counter_reg[11]),
        .I1(buff_counter_reg[10]),
        .O(data_out_valid2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid2_carry_i_4
       (.I0(buff_counter_reg[9]),
        .I1(buff_counter_reg[8]),
        .O(data_out_valid2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid2_carry_i_5
       (.I0(buff_counter_reg[7]),
        .I1(buff_counter_reg[6]),
        .O(data_out_valid2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid2_carry_i_6
       (.I0(buff_counter_reg[5]),
        .I1(buff_counter_reg[4]),
        .O(data_out_valid2_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid2_carry_i_7
       (.I0(buff_counter_reg[3]),
        .I1(buff_counter_reg[2]),
        .O(data_out_valid2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid2_carry_i_8
       (.I0(buff_counter_reg[1]),
        .I1(buff_counter_reg[0]),
        .O(data_out_valid2_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid2_carry_i_9
       (.I0(buff_counter_reg[14]),
        .I1(buff_counter_reg[15]),
        .O(data_out_valid2_carry_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    data_out_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(data_out_valid0),
        .Q(data_out_valid));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h7)) 
    g0_b0
       (.I0(\input_data[0]_i_1_n_0 ),
        .I1(\input_data[1]_i_1_n_0 ),
        .O(g0_b0_n_0));
  LUT3 #(
    .INIT(8'h6E)) 
    g0_b0__0
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[4]_i_1_n_0 ),
        .O(g0_b0__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    g0_b0__1
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .O(g0_b0__1_n_0));
  LUT3 #(
    .INIT(8'h9E)) 
    g0_b0__2
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[4]_i_1_n_0 ),
        .O(g0_b0__2_n_0));
  LUT4 #(
    .INIT(16'hD8EC)) 
    g0_b0__3
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[4]_i_1_n_0 ),
        .I3(\input_data[5]_i_2_n_0 ),
        .O(g0_b0__3_n_0));
  LUT4 #(
    .INIT(16'h8DBA)) 
    g0_b0__4
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[4]_i_1_n_0 ),
        .I3(\input_data[5]_i_2_n_0 ),
        .O(g0_b0__4_n_0));
  LUT4 #(
    .INIT(16'h9F86)) 
    g0_b1
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[1]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b1_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    g0_b10
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[1]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h708F)) 
    g0_b10__0
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[1]_i_1_n_0 ),
        .O(g0_b10__0_n_0));
  LUT4 #(
    .INIT(16'h87B4)) 
    g0_b10__1
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b10__1_n_0));
  LUT5 #(
    .INIT(32'h0FD2C3F0)) 
    g0_b10__2
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b10__2_n_0));
  LUT6 #(
    .INIT(64'h55AB55AA55AA75AA)) 
    g0_b10__3
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[1]_i_1_n_0 ),
        .I4(\input_data[4]_i_1_n_0 ),
        .I5(\input_data[5]_i_2_n_0 ),
        .O(g0_b10__3_n_0));
  LUT5 #(
    .INIT(32'hD20F3CF0)) 
    g0_b10__4
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[1]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b10__4_n_0));
  LUT5 #(
    .INIT(32'h1D1D0C3F)) 
    g0_b10_i_1
       (.I0(g0_b10_i_3_n_0),
        .I1(data_in_valid),
        .I2(data_in[2]),
        .I3(input_data[2]),
        .I4(data_out_valid2_carry__0_n_0),
        .O(g0_b10_i_1_n_0));
  LUT5 #(
    .INIT(32'h0053FF53)) 
    g0_b10_i_2
       (.I0(g0_b10_i_4_n_0),
        .I1(input_data[3]),
        .I2(data_out_valid2_carry__0_n_0),
        .I3(data_in_valid),
        .I4(data_in[3]),
        .O(g0_b10_i_2_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    g0_b10_i_3
       (.I0(\buff_reg_reg[5] [2]),
        .I1(k_reg[0]),
        .I2(\buff_reg_reg[4] [2]),
        .I3(k_reg[2]),
        .I4(g0_b10_i_5_n_0),
        .O(g0_b10_i_3_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    g0_b10_i_4
       (.I0(\buff_reg_reg[5] [3]),
        .I1(k_reg[0]),
        .I2(\buff_reg_reg[4] [3]),
        .I3(k_reg[2]),
        .I4(g0_b10_i_6_n_0),
        .O(g0_b10_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    g0_b10_i_5
       (.I0(\buff_reg_reg[3] [2]),
        .I1(\buff_reg_reg[2] [2]),
        .I2(k_reg[1]),
        .I3(\buff_reg_reg[1] [2]),
        .I4(k_reg[0]),
        .I5(\buff_reg_reg[0] [2]),
        .O(g0_b10_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    g0_b10_i_6
       (.I0(\buff_reg_reg[3] [3]),
        .I1(\buff_reg_reg[2] [3]),
        .I2(k_reg[1]),
        .I3(\buff_reg_reg[1] [3]),
        .I4(k_reg[0]),
        .I5(\buff_reg_reg[0] [3]),
        .O(g0_b10_i_6_n_0));
  LUT6 #(
    .INIT(64'h5554555555557555)) 
    g0_b11
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[1]_i_1_n_0 ),
        .I4(\input_data[4]_i_1_n_0 ),
        .I5(\input_data[5]_i_2_n_0 ),
        .O(g0_b11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h77F8)) 
    g0_b1__0
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[1]_i_1_n_0 ),
        .O(g0_b1__0_n_0));
  LUT4 #(
    .INIT(16'h6F86)) 
    g0_b1__1
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b1__1_n_0));
  LUT5 #(
    .INIT(32'hD0F7B50C)) 
    g0_b1__2
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b1__2_n_0));
  LUT6 #(
    .INIT(64'hF5ABF5AAF5AAF5AA)) 
    g0_b1__3
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[1]_i_1_n_0 ),
        .I4(\input_data[4]_i_1_n_0 ),
        .I5(\input_data[5]_i_2_n_0 ),
        .O(g0_b1__3_n_0));
  LUT5 #(
    .INIT(32'hF7D0E50A)) 
    g0_b1__4
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[1]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b1__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h5A97)) 
    g0_b2
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[1]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b2_n_0));
  LUT4 #(
    .INIT(16'h5A97)) 
    g0_b2__0
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b2__0_n_0));
  LUT5 #(
    .INIT(32'h1CF0697B)) 
    g0_b2__1
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b2__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hF01C967D)) 
    g0_b2__2
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[1]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b2__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hC3B4)) 
    g0_b3
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[1]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h3CD2)) 
    g0_b3__0
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hA75A4B69)) 
    g0_b3__1
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b3__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h5AA71E69)) 
    g0_b3__2
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[1]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b3__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h69B4)) 
    g0_b4
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[1]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h96D2)) 
    g0_b4__0
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h78B40FB4)) 
    g0_b4__1
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b4__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hB4780FD2)) 
    g0_b4__2
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[1]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b4__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h1EF0A5C3)) 
    g0_b5
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b5_n_0));
  LUT5 #(
    .INIT(32'hF01EA5A5)) 
    g0_b5__0
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[1]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b5__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h93)) 
    g0_b5__1
       (.I0(g0_b10_i_1_n_0),
        .I1(\input_data[0]_i_1_n_0 ),
        .I2(\input_data[4]_i_1_n_0 ),
        .O(g0_b5__1_n_0));
  LUT3 #(
    .INIT(8'h93)) 
    g0_b5__2
       (.I0(g0_b10_i_1_n_0),
        .I1(\input_data[1]_i_1_n_0 ),
        .I2(\input_data[4]_i_1_n_0 ),
        .O(g0_b5__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h69E1)) 
    g0_b6
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[1]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b6_n_0));
  LUT4 #(
    .INIT(16'h96E1)) 
    g0_b6__0
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b6__0_n_0));
  LUT5 #(
    .INIT(32'h782DF00F)) 
    g0_b6__1
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b6__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h2D78F00F)) 
    g0_b6__2
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[1]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b6__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h1ED2)) 
    g0_b7
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[1]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b7_n_0));
  LUT4 #(
    .INIT(16'h4BB4)) 
    g0_b7__0
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b7__0_n_0));
  LUT5 #(
    .INIT(32'h3C69C35A)) 
    g0_b7__1
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b7__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h693C3C3C)) 
    g0_b7__2
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[1]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b7__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h5A2D)) 
    g0_b8
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[1]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h07F8)) 
    g0_b8__0
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[1]_i_1_n_0 ),
        .O(g0_b8__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h5A4B)) 
    g0_b8__1
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b8__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h2DC31EB4)) 
    g0_b8__2
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b8__2_n_0));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAA8AAA)) 
    g0_b8__3
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[1]_i_1_n_0 ),
        .I4(\input_data[4]_i_1_n_0 ),
        .I5(\input_data[5]_i_2_n_0 ),
        .O(g0_b8__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hC32D4BD2)) 
    g0_b8__4
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[1]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b8__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h3CE1)) 
    g0_b9
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[1]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    g0_b9__0
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[1]_i_1_n_0 ),
        .O(g0_b9__0_n_0));
  LUT4 #(
    .INIT(16'hC3E1)) 
    g0_b9__1
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b9__1_n_0));
  LUT5 #(
    .INIT(32'h0FA5B4A5)) 
    g0_b9__2
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b9__2_n_0));
  LUT6 #(
    .INIT(64'hA55BA55AA55A855A)) 
    g0_b9__3
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[1]_i_1_n_0 ),
        .I4(\input_data[4]_i_1_n_0 ),
        .I5(\input_data[5]_i_2_n_0 ),
        .O(g0_b9__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hA50FE1C3)) 
    g0_b9__4
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[1]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b9__4_n_0));
  LUT6 #(
    .INIT(64'hA0AF3F3FAFAF3F3F)) 
    \i_out[0]_i_1 
       (.I0(\i_out_reg[0]_i_2_n_0 ),
        .I1(\i_out[0]_i_3_n_0 ),
        .I2(mod_type[2]),
        .I3(mod_type[0]),
        .I4(mod_type[1]),
        .I5(\i_out[0]_i_4_n_0 ),
        .O(i_out_5[0]));
  LUT6 #(
    .INIT(64'hCBC8CBC8CBC8FBFB)) 
    \i_out[0]_i_3 
       (.I0(g0_b10_i_1_n_0),
        .I1(mod_type[0]),
        .I2(g0_b10_i_2_n_0),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .I5(\i_out[1]_i_5_n_0 ),
        .O(\i_out[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hC4)) 
    \i_out[0]_i_4 
       (.I0(g0_b10_i_2_n_0),
        .I1(g0_b10_i_1_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .O(\i_out[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \i_out[10]_i_1 
       (.I0(\i_out_reg[10]_i_2_n_0 ),
        .I1(mod_type[1]),
        .I2(\i_out[10]_i_3_n_0 ),
        .I3(mod_type[2]),
        .I4(\i_out[10]_i_4_n_0 ),
        .O(i_out_5[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h99990FF0)) 
    \i_out[10]_i_3 
       (.I0(\input_data[0]_i_1_n_0 ),
        .I1(g0_b10_i_1_n_0),
        .I2(\input_data[5]_i_2_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(mod_type[0]),
        .O(\i_out[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hB88BBB88)) 
    \i_out[10]_i_4 
       (.I0(\i_out[6]_i_2_n_0 ),
        .I1(mod_type[1]),
        .I2(\input_data[1]_i_1_n_0 ),
        .I3(\input_data[0]_i_1_n_0 ),
        .I4(mod_type[0]),
        .O(\i_out[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \i_out[11]_i_1 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(data_out_valid0));
  LUT6 #(
    .INIT(64'hF055C055F355F355)) 
    \i_out[11]_i_2 
       (.I0(\i_out[11]_i_3_n_0 ),
        .I1(mod_type[1]),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(mod_type[2]),
        .I4(mod_type[0]),
        .I5(\i_out[11]_i_4_n_0 ),
        .O(i_out_5[11]));
  LUT6 #(
    .INIT(64'hF00099AAF0FF99AA)) 
    \i_out[11]_i_3 
       (.I0(\input_data[0]_i_1_n_0 ),
        .I1(\input_data[1]_i_1_n_0 ),
        .I2(\input_data[4]_i_1_n_0 ),
        .I3(mod_type[0]),
        .I4(mod_type[1]),
        .I5(g0_b10_i_2_n_0),
        .O(\i_out[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFEEEEEEEEEEE)) 
    \i_out[11]_i_4 
       (.I0(\input_data[5]_i_2_n_0 ),
        .I1(mod_type[0]),
        .I2(g0_b10_i_1_n_0),
        .I3(\i_out[11]_i_5_n_0 ),
        .I4(\input_data[4]_i_1_n_0 ),
        .I5(\input_data[1]_i_1_n_0 ),
        .O(\i_out[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i_out[11]_i_5 
       (.I0(\input_data[0]_i_1_n_0 ),
        .I1(g0_b10_i_2_n_0),
        .O(\i_out[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8FFB8FFB800)) 
    \i_out[1]_i_1 
       (.I0(\i_out_reg[1]_i_2_n_0 ),
        .I1(mod_type[1]),
        .I2(\i_out[1]_i_3_n_0 ),
        .I3(mod_type[2]),
        .I4(\i_out[8]_i_2_n_0 ),
        .I5(\i_out[1]_i_4_n_0 ),
        .O(i_out_5[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF15441555)) 
    \i_out[1]_i_3 
       (.I0(mod_type[0]),
        .I1(\input_data[4]_i_1_n_0 ),
        .I2(g0_b10_i_2_n_0),
        .I3(\input_data[5]_i_2_n_0 ),
        .I4(\i_out[1]_i_5_n_0 ),
        .I5(\i_out[1]_i_6_n_0 ),
        .O(\i_out[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE600DDFF00000000)) 
    \i_out[1]_i_4 
       (.I0(\input_data[4]_i_1_n_0 ),
        .I1(g0_b10_i_1_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(mod_type[0]),
        .I4(g0_b10_i_2_n_0),
        .I5(mod_type[1]),
        .O(\i_out[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \i_out[1]_i_5 
       (.I0(\input_data[0]_i_1_n_0 ),
        .I1(g0_b10_i_2_n_0),
        .I2(g0_b10_i_1_n_0),
        .I3(\input_data[1]_i_1_n_0 ),
        .O(\i_out[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hCC04)) 
    \i_out[1]_i_6 
       (.I0(g0_b10_i_1_n_0),
        .I1(mod_type[0]),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(g0_b10_i_2_n_0),
        .O(\i_out[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF444FFFFF4440000)) 
    \i_out[2]_i_1 
       (.I0(\i_out[8]_i_6_n_0 ),
        .I1(\i_out[2]_i_2_n_0 ),
        .I2(mod_type[1]),
        .I3(\i_out_reg[2]_i_3_n_0 ),
        .I4(mod_type[2]),
        .I5(\i_out[10]_i_4_n_0 ),
        .O(i_out_5[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hF3BF)) 
    \i_out[2]_i_2 
       (.I0(g0_b10_i_1_n_0),
        .I1(mod_type[0]),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(g0_b10_i_2_n_0),
        .O(\i_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA3A3A3A30FFFF000)) 
    \i_out[3]_i_2 
       (.I0(\input_data[4]_i_1_n_0 ),
        .I1(g0_b10_i_2_n_0),
        .I2(mod_type[0]),
        .I3(\input_data[1]_i_1_n_0 ),
        .I4(\input_data[0]_i_1_n_0 ),
        .I5(mod_type[1]),
        .O(\i_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCFCFAFA0C0C0)) 
    \i_out[3]_i_3 
       (.I0(g0_b3__1_n_0),
        .I1(g0_b3__0_n_0),
        .I2(mod_type[1]),
        .I3(\input_data[0]_i_1_n_0 ),
        .I4(mod_type[0]),
        .I5(\i_out[3]_i_4_n_0 ),
        .O(\i_out[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h1221)) 
    \i_out[3]_i_4 
       (.I0(g0_b10_i_2_n_0),
        .I1(mod_type[0]),
        .I2(\input_data[5]_i_2_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(\i_out[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE0EEE0EEE0EEE0E0)) 
    \i_out[4]_i_1 
       (.I0(\i_out[8]_i_3_n_0 ),
        .I1(\i_out[9]_i_2_n_0 ),
        .I2(\i_out[4]_i_2_n_0 ),
        .I3(mod_type[1]),
        .I4(\i_out[8]_i_5_n_0 ),
        .I5(\i_out[4]_i_3_n_0 ),
        .O(i_out_5[4]));
  LUT5 #(
    .INIT(32'hF3BB3333)) 
    \i_out[4]_i_2 
       (.I0(g0_b4__0_n_0),
        .I1(mod_type[2]),
        .I2(g0_b4__1_n_0),
        .I3(mod_type[0]),
        .I4(mod_type[1]),
        .O(\i_out[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \i_out[4]_i_3 
       (.I0(mod_type[0]),
        .I1(\input_data[4]_i_1_n_0 ),
        .I2(\input_data[5]_i_2_n_0 ),
        .O(\i_out[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FE00FE00FEFE)) 
    \i_out[5]_i_1 
       (.I0(mod_type[2]),
        .I1(\i_out[8]_i_2_n_0 ),
        .I2(\i_out[9]_i_3_n_0 ),
        .I3(\i_out[5]_i_2_n_0 ),
        .I4(\i_out[5]_i_3_n_0 ),
        .I5(\i_out[8]_i_6_n_0 ),
        .O(i_out_5[5]));
  LUT5 #(
    .INIT(32'hF3BB3333)) 
    \i_out[5]_i_2 
       (.I0(g0_b5__1_n_0),
        .I1(mod_type[2]),
        .I2(g0_b5_n_0),
        .I3(mod_type[0]),
        .I4(mod_type[1]),
        .O(\i_out[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8228)) 
    \i_out[5]_i_3 
       (.I0(mod_type[0]),
        .I1(\input_data[0]_i_1_n_0 ),
        .I2(g0_b10_i_1_n_0),
        .I3(g0_b10_i_2_n_0),
        .O(\i_out[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE000EAEAEAEAEAEA)) 
    \i_out[6]_i_1 
       (.I0(\i_out[9]_i_2_n_0 ),
        .I1(\i_out[6]_i_2_n_0 ),
        .I2(mod_type[1]),
        .I3(\i_out_reg[6]_i_3_n_0 ),
        .I4(mod_type[2]),
        .I5(\i_out[6]_i_4_n_0 ),
        .O(i_out_5[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h6C3C0FF0)) 
    \i_out[6]_i_2 
       (.I0(\input_data[0]_i_1_n_0 ),
        .I1(\input_data[4]_i_1_n_0 ),
        .I2(g0_b10_i_1_n_0),
        .I3(g0_b10_i_2_n_0),
        .I4(mod_type[0]),
        .O(\i_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEBEBEEBEBBBBBE)) 
    \i_out[6]_i_4 
       (.I0(mod_type[1]),
        .I1(g0_b10_i_2_n_0),
        .I2(mod_type[0]),
        .I3(\input_data[5]_i_2_n_0 ),
        .I4(\input_data[4]_i_1_n_0 ),
        .I5(\input_data[0]_i_1_n_0 ),
        .O(\i_out[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \i_out[7]_i_1 
       (.I0(\i_out_reg[7]_i_2_n_0 ),
        .I1(mod_type[1]),
        .I2(\i_out[7]_i_3_n_0 ),
        .I3(mod_type[2]),
        .I4(\i_out[11]_i_3_n_0 ),
        .O(i_out_5[7]));
  LUT6 #(
    .INIT(64'h2D002DFF2DFF2D00)) 
    \i_out[7]_i_3 
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(mod_type[0]),
        .I4(\input_data[4]_i_1_n_0 ),
        .I5(\input_data[5]_i_2_n_0 ),
        .O(\i_out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FE00FE00FEFE)) 
    \i_out[8]_i_1 
       (.I0(mod_type[2]),
        .I1(\i_out[8]_i_2_n_0 ),
        .I2(\i_out[8]_i_3_n_0 ),
        .I3(\i_out[8]_i_4_n_0 ),
        .I4(\i_out[8]_i_5_n_0 ),
        .I5(\i_out[8]_i_6_n_0 ),
        .O(i_out_5[8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h00B4)) 
    \i_out[8]_i_2 
       (.I0(\input_data[1]_i_1_n_0 ),
        .I1(mod_type[0]),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(mod_type[1]),
        .O(\i_out[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA828282802288228)) 
    \i_out[8]_i_3 
       (.I0(mod_type[1]),
        .I1(g0_b10_i_2_n_0),
        .I2(g0_b10_i_1_n_0),
        .I3(mod_type[0]),
        .I4(\input_data[0]_i_1_n_0 ),
        .I5(\input_data[4]_i_1_n_0 ),
        .O(\i_out[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF3BB3333)) 
    \i_out[8]_i_4 
       (.I0(g0_b8__1_n_0),
        .I1(mod_type[2]),
        .I2(g0_b8__2_n_0),
        .I3(mod_type[0]),
        .I4(mod_type[1]),
        .O(\i_out[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hD020)) 
    \i_out[8]_i_5 
       (.I0(g0_b10_i_1_n_0),
        .I1(g0_b10_i_2_n_0),
        .I2(mod_type[0]),
        .I3(\input_data[0]_i_1_n_0 ),
        .O(\i_out[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hAAAE)) 
    \i_out[8]_i_6 
       (.I0(mod_type[1]),
        .I1(\i_out[8]_i_7_n_0 ),
        .I2(mod_type[0]),
        .I3(\input_data[5]_i_2_n_0 ),
        .O(\i_out[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFDFFFFF)) 
    \i_out[8]_i_7 
       (.I0(\input_data[1]_i_1_n_0 ),
        .I1(\input_data[4]_i_1_n_0 ),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(g0_b10_i_2_n_0),
        .I4(g0_b10_i_1_n_0),
        .O(\i_out[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE000EEEEEE0EEEEE)) 
    \i_out[9]_i_1 
       (.I0(\i_out[9]_i_2_n_0 ),
        .I1(\i_out[9]_i_3_n_0 ),
        .I2(mod_type[1]),
        .I3(\i_out_reg[9]_i_4_n_0 ),
        .I4(mod_type[2]),
        .I5(\i_out[9]_i_5_n_0 ),
        .O(i_out_5[9]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hAAAABFEA)) 
    \i_out[9]_i_2 
       (.I0(mod_type[2]),
        .I1(mod_type[0]),
        .I2(\input_data[1]_i_1_n_0 ),
        .I3(\input_data[0]_i_1_n_0 ),
        .I4(mod_type[1]),
        .O(\i_out[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h2D550000)) 
    \i_out[9]_i_3 
       (.I0(g0_b10_i_2_n_0),
        .I1(g0_b10_i_1_n_0),
        .I2(\input_data[4]_i_1_n_0 ),
        .I3(mod_type[0]),
        .I4(mod_type[1]),
        .O(\i_out[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6666F00F99990FF0)) 
    \i_out[9]_i_5 
       (.I0(g0_b10_i_1_n_0),
        .I1(\input_data[0]_i_1_n_0 ),
        .I2(\input_data[4]_i_1_n_0 ),
        .I3(\input_data[5]_i_2_n_0 ),
        .I4(mod_type[0]),
        .I5(g0_b10_i_2_n_0),
        .O(\i_out[9]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[0] 
       (.C(clk),
        .CE(data_out_valid0),
        .CLR(reset),
        .D(i_out_5[0]),
        .Q(i_out[0]));
  MUXF7 \i_out_reg[0]_i_2 
       (.I0(g0_b0__2_n_0),
        .I1(g0_b0__3_n_0),
        .O(\i_out_reg[0]_i_2_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[10] 
       (.C(clk),
        .CE(data_out_valid0),
        .CLR(reset),
        .D(i_out_5[10]),
        .Q(i_out[10]));
  MUXF7 \i_out_reg[10]_i_2 
       (.I0(g0_b10__1_n_0),
        .I1(g0_b10__2_n_0),
        .O(\i_out_reg[10]_i_2_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[11] 
       (.C(clk),
        .CE(data_out_valid0),
        .CLR(reset),
        .D(i_out_5[11]),
        .Q(i_out[11]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[1] 
       (.C(clk),
        .CE(data_out_valid0),
        .CLR(reset),
        .D(i_out_5[1]),
        .Q(i_out[1]));
  MUXF7 \i_out_reg[1]_i_2 
       (.I0(g0_b1__1_n_0),
        .I1(g0_b1__2_n_0),
        .O(\i_out_reg[1]_i_2_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[2] 
       (.C(clk),
        .CE(data_out_valid0),
        .CLR(reset),
        .D(i_out_5[2]),
        .Q(i_out[2]));
  MUXF7 \i_out_reg[2]_i_3 
       (.I0(g0_b2__0_n_0),
        .I1(g0_b2__1_n_0),
        .O(\i_out_reg[2]_i_3_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[3] 
       (.C(clk),
        .CE(data_out_valid0),
        .CLR(reset),
        .D(i_out_5[3]),
        .Q(i_out[3]));
  MUXF7 \i_out_reg[3]_i_1 
       (.I0(\i_out[3]_i_2_n_0 ),
        .I1(\i_out[3]_i_3_n_0 ),
        .O(i_out_5[3]),
        .S(mod_type[2]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[4] 
       (.C(clk),
        .CE(data_out_valid0),
        .CLR(reset),
        .D(i_out_5[4]),
        .Q(i_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[5] 
       (.C(clk),
        .CE(data_out_valid0),
        .CLR(reset),
        .D(i_out_5[5]),
        .Q(i_out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[6] 
       (.C(clk),
        .CE(data_out_valid0),
        .CLR(reset),
        .D(i_out_5[6]),
        .Q(i_out[6]));
  MUXF7 \i_out_reg[6]_i_3 
       (.I0(g0_b6__0_n_0),
        .I1(g0_b6__1_n_0),
        .O(\i_out_reg[6]_i_3_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[7] 
       (.C(clk),
        .CE(data_out_valid0),
        .CLR(reset),
        .D(i_out_5[7]),
        .Q(i_out[7]));
  MUXF7 \i_out_reg[7]_i_2 
       (.I0(g0_b7__0_n_0),
        .I1(g0_b7__1_n_0),
        .O(\i_out_reg[7]_i_2_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[8] 
       (.C(clk),
        .CE(data_out_valid0),
        .CLR(reset),
        .D(i_out_5[8]),
        .Q(i_out[8]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[9] 
       (.C(clk),
        .CE(data_out_valid0),
        .CLR(reset),
        .D(i_out_5[9]),
        .Q(i_out[9]));
  MUXF7 \i_out_reg[9]_i_4 
       (.I0(g0_b9__1_n_0),
        .I1(g0_b9__2_n_0),
        .O(\i_out_reg[9]_i_4_n_0 ),
        .S(mod_type[0]));
  LUT5 #(
    .INIT(32'hCCCCF0AA)) 
    \input_data[0]_i_1 
       (.I0(input_data[0]),
        .I1(data_in[0]),
        .I2(\input_data[0]_i_2_n_0 ),
        .I3(data_out_valid2_carry__0_n_0),
        .I4(data_in_valid),
        .O(\input_data[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \input_data[0]_i_2 
       (.I0(\buff_reg_reg[5] [0]),
        .I1(k_reg[0]),
        .I2(\buff_reg_reg[4] [0]),
        .I3(k_reg[2]),
        .I4(\input_data[0]_i_3_n_0 ),
        .O(\input_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \input_data[0]_i_3 
       (.I0(\buff_reg_reg[3] [0]),
        .I1(\buff_reg_reg[2] [0]),
        .I2(k_reg[1]),
        .I3(\buff_reg_reg[1] [0]),
        .I4(k_reg[0]),
        .I5(\buff_reg_reg[0] [0]),
        .O(\input_data[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAF0CC)) 
    \input_data[1]_i_1 
       (.I0(data_in[1]),
        .I1(input_data[1]),
        .I2(\input_data[1]_i_2_n_0 ),
        .I3(data_out_valid2_carry__0_n_0),
        .I4(data_in_valid),
        .O(\input_data[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \input_data[1]_i_2 
       (.I0(\buff_reg_reg[5] [1]),
        .I1(k_reg[0]),
        .I2(\buff_reg_reg[4] [1]),
        .I3(k_reg[2]),
        .I4(\input_data[1]_i_3_n_0 ),
        .O(\input_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \input_data[1]_i_3 
       (.I0(\buff_reg_reg[3] [1]),
        .I1(\buff_reg_reg[2] [1]),
        .I2(k_reg[1]),
        .I3(\buff_reg_reg[1] [1]),
        .I4(k_reg[0]),
        .I5(\buff_reg_reg[0] [1]),
        .O(\input_data[1]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \input_data[2]_i_1 
       (.I0(g0_b10_i_1_n_0),
        .O(\input_data[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \input_data[3]_i_1 
       (.I0(g0_b10_i_2_n_0),
        .O(\input_data[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAF0CC)) 
    \input_data[4]_i_1 
       (.I0(data_in[4]),
        .I1(input_data[4]),
        .I2(\input_data[4]_i_2_n_0 ),
        .I3(data_out_valid2_carry__0_n_0),
        .I4(data_in_valid),
        .O(\input_data[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \input_data[4]_i_2 
       (.I0(\buff_reg_reg[5] [4]),
        .I1(k_reg[0]),
        .I2(\buff_reg_reg[4] [4]),
        .I3(k_reg[2]),
        .I4(\input_data[4]_i_3_n_0 ),
        .O(\input_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \input_data[4]_i_3 
       (.I0(\buff_reg_reg[3] [4]),
        .I1(\buff_reg_reg[2] [4]),
        .I2(k_reg[1]),
        .I3(\buff_reg_reg[1] [4]),
        .I4(k_reg[0]),
        .I5(\buff_reg_reg[0] [4]),
        .O(\input_data[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E0)) 
    \input_data[5]_i_1 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(reset),
        .O(input_data0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \input_data[5]_i_2 
       (.I0(data_in[5]),
        .I1(data_in_valid),
        .I2(\input_data[5]_i_3_n_0 ),
        .I3(data_out_valid2_carry__0_n_0),
        .I4(input_data[5]),
        .O(\input_data[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \input_data[5]_i_3 
       (.I0(\buff_reg_reg[5] [5]),
        .I1(k_reg[0]),
        .I2(\buff_reg_reg[4] [5]),
        .I3(k_reg[2]),
        .I4(\input_data[5]_i_4_n_0 ),
        .O(\input_data[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \input_data[5]_i_4 
       (.I0(\buff_reg_reg[3] [5]),
        .I1(\buff_reg_reg[2] [5]),
        .I2(k_reg[1]),
        .I3(\buff_reg_reg[1] [5]),
        .I4(k_reg[0]),
        .I5(\buff_reg_reg[0] [5]),
        .O(\input_data[5]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \input_data_reg[0] 
       (.C(clk),
        .CE(input_data0),
        .D(\input_data[0]_i_1_n_0 ),
        .Q(input_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_data_reg[1] 
       (.C(clk),
        .CE(input_data0),
        .D(\input_data[1]_i_1_n_0 ),
        .Q(input_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_data_reg[2] 
       (.C(clk),
        .CE(input_data0),
        .D(\input_data[2]_i_1_n_0 ),
        .Q(input_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_data_reg[3] 
       (.C(clk),
        .CE(input_data0),
        .D(\input_data[3]_i_1_n_0 ),
        .Q(input_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_data_reg[4] 
       (.C(clk),
        .CE(input_data0),
        .D(\input_data[4]_i_1_n_0 ),
        .Q(input_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_data_reg[5] 
       (.C(clk),
        .CE(input_data0),
        .D(\input_data[5]_i_2_n_0 ),
        .Q(input_data[5]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h5F08)) 
    \k[0]_i_1 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .I3(k0),
        .O(\k[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \k[0]_i_3 
       (.I0(data_in_ready),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_valid),
        .O(\k[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE000)) 
    \k[0]_i_4 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(k_reg[2]),
        .O(\k[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE000)) 
    \k[0]_i_5 
       (.I0(data_in_valid),
        .I1(data_out_valid2_carry__0_n_0),
        .I2(data_in_ready),
        .I3(k_reg[1]),
        .O(\k[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h5400)) 
    \k[0]_i_6 
       (.I0(k_reg[0]),
        .I1(data_in_valid),
        .I2(data_out_valid2_carry__0_n_0),
        .I3(data_in_ready),
        .O(\k[0]_i_6_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \k_reg[0] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\k_reg[0]_i_2_n_15 ),
        .Q(k_reg[0]));
  CARRY8 \k_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\NLW_k_reg[0]_i_2_CO_UNCONNECTED [7:2],\k_reg[0]_i_2_n_6 ,\k_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\k[0]_i_3_n_0 }),
        .O({\NLW_k_reg[0]_i_2_O_UNCONNECTED [7:3],\k_reg[0]_i_2_n_13 ,\k_reg[0]_i_2_n_14 ,\k_reg[0]_i_2_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\k[0]_i_4_n_0 ,\k[0]_i_5_n_0 ,\k[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \k_reg[1] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\k_reg[0]_i_2_n_14 ),
        .Q(k_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \k_reg[2] 
       (.C(clk),
        .CE(\k[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\k_reg[0]_i_2_n_13 ),
        .Q(k_reg[2]));
  LUT6 #(
    .INIT(64'hBCBCBC8CBCBCBCBC)) 
    \q_out[0]_i_2 
       (.I0(g0_b0__1_n_0),
        .I1(mod_type[0]),
        .I2(mod_type[1]),
        .I3(\input_data[0]_i_1_n_0 ),
        .I4(\input_data[1]_i_1_n_0 ),
        .I5(\q_out[8]_i_3_n_0 ),
        .O(\q_out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888B888BBBBB8888)) 
    \q_out[0]_i_3 
       (.I0(\q_out_reg[0]_i_4_n_0 ),
        .I1(mod_type[1]),
        .I2(g0_b10_i_1_n_0),
        .I3(g0_b10_i_2_n_0),
        .I4(g0_b0_n_0),
        .I5(mod_type[0]),
        .O(\q_out[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q_out[10]_i_1 
       (.I0(\q_out[10]_i_2_n_0 ),
        .I1(mod_type[2]),
        .I2(\q_out[10]_i_3_n_0 ),
        .O(q_out_6[10]));
  LUT6 #(
    .INIT(64'hFFFF99F0000099F0)) 
    \q_out[10]_i_2 
       (.I0(\input_data[1]_i_1_n_0 ),
        .I1(g0_b10_i_2_n_0),
        .I2(g0_b10__3_n_0),
        .I3(mod_type[0]),
        .I4(mod_type[1]),
        .I5(\q_out_reg[10]_i_4_n_0 ),
        .O(\q_out[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFC050)) 
    \q_out[10]_i_3 
       (.I0(\input_data[1]_i_1_n_0 ),
        .I1(g0_b10__0_n_0),
        .I2(mod_type[0]),
        .I3(mod_type[1]),
        .I4(\q_out[10]_i_5_n_0 ),
        .O(\q_out[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F00000000000D00)) 
    \q_out[10]_i_5 
       (.I0(g0_b10_i_2_n_0),
        .I1(g0_b10_i_1_n_0),
        .I2(mod_type[0]),
        .I3(mod_type[1]),
        .I4(\input_data[1]_i_1_n_0 ),
        .I5(\input_data[0]_i_1_n_0 ),
        .O(\q_out[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0F3F088F0F0F088)) 
    \q_out[11]_i_1 
       (.I0(g0_b11_n_0),
        .I1(mod_type[2]),
        .I2(\input_data[1]_i_1_n_0 ),
        .I3(mod_type[0]),
        .I4(mod_type[1]),
        .I5(\q_out[11]_i_2_n_0 ),
        .O(q_out_6[11]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \q_out[11]_i_2 
       (.I0(g0_b10_i_2_n_0),
        .I1(g0_b10_i_1_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .O(\q_out[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE0EEE000EEEEEEEE)) 
    \q_out[1]_i_1 
       (.I0(\q_out[1]_i_2_n_0 ),
        .I1(\q_out[5]_i_4_n_0 ),
        .I2(\q_out_reg[1]_i_3_n_0 ),
        .I3(mod_type[1]),
        .I4(\q_out[1]_i_4_n_0 ),
        .I5(mod_type[2]),
        .O(q_out_6[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFDCCCDCC)) 
    \q_out[1]_i_2 
       (.I0(\input_data[1]_i_1_n_0 ),
        .I1(mod_type[2]),
        .I2(mod_type[1]),
        .I3(mod_type[0]),
        .I4(g0_b1__0_n_0),
        .O(\q_out[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hABFFAB00)) 
    \q_out[1]_i_4 
       (.I0(g0_b10_i_1_n_0),
        .I1(\input_data[1]_i_1_n_0 ),
        .I2(g0_b10_i_2_n_0),
        .I3(mod_type[0]),
        .I4(g0_b1__3_n_0),
        .O(\q_out[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFD0FFFFFFD00000)) 
    \q_out[2]_i_1 
       (.I0(\q_out[6]_i_4_n_0 ),
        .I1(\q_out[8]_i_3_n_0 ),
        .I2(\q_out[8]_i_4_n_0 ),
        .I3(\q_out[2]_i_2_n_0 ),
        .I4(mod_type[2]),
        .I5(\q_out[10]_i_3_n_0 ),
        .O(q_out_6[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hCA0FCA00)) 
    \q_out[2]_i_2 
       (.I0(g0_b2_n_0),
        .I1(g0_b2__2_n_0),
        .I2(mod_type[0]),
        .I3(mod_type[1]),
        .I4(g0_b8__3_n_0),
        .O(\q_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBB8B88B888)) 
    \q_out[3]_i_1 
       (.I0(\q_out[3]_i_2_n_0 ),
        .I1(mod_type[2]),
        .I2(\input_data[1]_i_1_n_0 ),
        .I3(mod_type[0]),
        .I4(mod_type[1]),
        .I5(\q_out[5]_i_4_n_0 ),
        .O(q_out_6[3]));
  LUT6 #(
    .INIT(64'hAFAFCFC0A0A0CFC0)) 
    \q_out[3]_i_2 
       (.I0(g0_b3__2_n_0),
        .I1(g0_b3_n_0),
        .I2(mod_type[1]),
        .I3(g0_b9__3_n_0),
        .I4(mod_type[0]),
        .I5(\input_data[1]_i_1_n_0 ),
        .O(\q_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0E0FFE0EEE0E0E0)) 
    \q_out[4]_i_1 
       (.I0(\q_out[8]_i_5_n_0 ),
        .I1(mod_type[2]),
        .I2(\q_out[4]_i_2_n_0 ),
        .I3(\q_out[8]_i_4_n_0 ),
        .I4(\q_out[8]_i_3_n_0 ),
        .I5(\input_data[1]_i_1_n_0 ),
        .O(q_out_6[4]));
  LUT6 #(
    .INIT(64'hF555FDFDF5555D5D)) 
    \q_out[4]_i_2 
       (.I0(mod_type[2]),
        .I1(g0_b10__3_n_0),
        .I2(mod_type[1]),
        .I3(g0_b4__2_n_0),
        .I4(mod_type[0]),
        .I5(g0_b4_n_0),
        .O(\q_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8A8A8A8A8A8A8)) 
    \q_out[5]_i_1 
       (.I0(\q_out[5]_i_2_n_0 ),
        .I1(\q_out[5]_i_3_n_0 ),
        .I2(\q_out[5]_i_4_n_0 ),
        .I3(mod_type[1]),
        .I4(mod_type[0]),
        .I5(g0_b9__0_n_0),
        .O(q_out_6[5]));
  LUT6 #(
    .INIT(64'hC5CFC5C0FFFFFFFF)) 
    \q_out[5]_i_2 
       (.I0(\q_out[9]_i_5_n_0 ),
        .I1(\q_out_reg[5]_i_5_n_0 ),
        .I2(mod_type[1]),
        .I3(mod_type[0]),
        .I4(g0_b8__3_n_0),
        .I5(mod_type[2]),
        .O(\q_out[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hAABA)) 
    \q_out[5]_i_3 
       (.I0(mod_type[2]),
        .I1(\input_data[1]_i_1_n_0 ),
        .I2(mod_type[0]),
        .I3(mod_type[1]),
        .O(\q_out[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0202020202020002)) 
    \q_out[5]_i_4 
       (.I0(mod_type[1]),
        .I1(mod_type[0]),
        .I2(\input_data[1]_i_1_n_0 ),
        .I3(g0_b10_i_2_n_0),
        .I4(g0_b10_i_1_n_0),
        .I5(\input_data[0]_i_1_n_0 ),
        .O(\q_out[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0EEEEE0E0E0E0)) 
    \q_out[6]_i_1 
       (.I0(\q_out[9]_i_3_n_0 ),
        .I1(\q_out[6]_i_2_n_0 ),
        .I2(\q_out[6]_i_3_n_0 ),
        .I3(\q_out[6]_i_4_n_0 ),
        .I4(mod_type[0]),
        .I5(\q_out[9]_i_6_n_0 ),
        .O(q_out_6[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \q_out[6]_i_2 
       (.I0(\q_out[10]_i_5_n_0 ),
        .I1(mod_type[1]),
        .I2(mod_type[0]),
        .I3(g0_b10__0_n_0),
        .O(\q_out[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF3BB3333)) 
    \q_out[6]_i_3 
       (.I0(g0_b6_n_0),
        .I1(mod_type[2]),
        .I2(g0_b6__2_n_0),
        .I3(mod_type[0]),
        .I4(mod_type[1]),
        .O(\q_out[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_out[6]_i_4 
       (.I0(\input_data[1]_i_1_n_0 ),
        .I1(g0_b10_i_1_n_0),
        .O(\q_out[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE00000F0EEEEFEFE)) 
    \q_out[7]_i_1 
       (.I0(\q_out[7]_i_2_n_0 ),
        .I1(mod_type[2]),
        .I2(\q_out[8]_i_4_n_0 ),
        .I3(\q_out[8]_i_3_n_0 ),
        .I4(\input_data[1]_i_1_n_0 ),
        .I5(\q_out[7]_i_3_n_0 ),
        .O(q_out_6[7]));
  LUT6 #(
    .INIT(64'h00000000FF00EF00)) 
    \q_out[7]_i_2 
       (.I0(\input_data[0]_i_1_n_0 ),
        .I1(g0_b10_i_1_n_0),
        .I2(g0_b10_i_2_n_0),
        .I3(mod_type[1]),
        .I4(mod_type[0]),
        .I5(\input_data[1]_i_1_n_0 ),
        .O(\q_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h50503030F0F000F0)) 
    \q_out[7]_i_3 
       (.I0(g0_b7__2_n_0),
        .I1(g0_b7_n_0),
        .I2(mod_type[2]),
        .I3(g0_b10__3_n_0),
        .I4(mod_type[0]),
        .I5(mod_type[1]),
        .O(\q_out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEBBAAAAE0BBA0A0)) 
    \q_out[8]_i_1 
       (.I0(\q_out[8]_i_2_n_0 ),
        .I1(\q_out[8]_i_3_n_0 ),
        .I2(mod_type[2]),
        .I3(\input_data[1]_i_1_n_0 ),
        .I4(\q_out[8]_i_4_n_0 ),
        .I5(\q_out[8]_i_5_n_0 ),
        .O(q_out_6[8]));
  LUT6 #(
    .INIT(64'hAFAFCFCF0F0FFF0F)) 
    \q_out[8]_i_2 
       (.I0(g0_b8__4_n_0),
        .I1(g0_b8_n_0),
        .I2(mod_type[2]),
        .I3(g0_b8__3_n_0),
        .I4(mod_type[0]),
        .I5(mod_type[1]),
        .O(\q_out[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q_out[8]_i_3 
       (.I0(g0_b10_i_2_n_0),
        .I1(g0_b10_i_1_n_0),
        .O(\q_out[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q_out[8]_i_4 
       (.I0(mod_type[0]),
        .I1(mod_type[1]),
        .O(\q_out[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \q_out[8]_i_5 
       (.I0(\q_out[10]_i_5_n_0 ),
        .I1(mod_type[1]),
        .I2(mod_type[0]),
        .I3(g0_b8__0_n_0),
        .O(\q_out[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDD0DDD0D0D0D0)) 
    \q_out[9]_i_1 
       (.I0(\q_out[9]_i_2_n_0 ),
        .I1(\q_out[9]_i_3_n_0 ),
        .I2(\q_out[9]_i_4_n_0 ),
        .I3(mod_type[0]),
        .I4(\q_out[9]_i_5_n_0 ),
        .I5(\q_out[9]_i_6_n_0 ),
        .O(q_out_6[9]));
  LUT4 #(
    .INIT(16'h1555)) 
    \q_out[9]_i_2 
       (.I0(\q_out[5]_i_4_n_0 ),
        .I1(mod_type[1]),
        .I2(mod_type[0]),
        .I3(g0_b9__0_n_0),
        .O(\q_out[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hAEAA)) 
    \q_out[9]_i_3 
       (.I0(mod_type[2]),
        .I1(mod_type[0]),
        .I2(mod_type[1]),
        .I3(\input_data[1]_i_1_n_0 ),
        .O(\q_out[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF3BB3333)) 
    \q_out[9]_i_4 
       (.I0(g0_b9_n_0),
        .I1(mod_type[2]),
        .I2(g0_b9__4_n_0),
        .I3(mod_type[0]),
        .I4(mod_type[1]),
        .O(\q_out[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q_out[9]_i_5 
       (.I0(g0_b10_i_2_n_0),
        .I1(g0_b10_i_1_n_0),
        .I2(\input_data[1]_i_1_n_0 ),
        .O(\q_out[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \q_out[9]_i_6 
       (.I0(mod_type[1]),
        .I1(g0_b9__3_n_0),
        .I2(mod_type[0]),
        .O(\q_out[9]_i_6_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[0] 
       (.C(clk),
        .CE(data_out_valid0),
        .CLR(reset),
        .D(q_out_6[0]),
        .Q(q_out[0]));
  MUXF7 \q_out_reg[0]_i_1 
       (.I0(\q_out[0]_i_2_n_0 ),
        .I1(\q_out[0]_i_3_n_0 ),
        .O(q_out_6[0]),
        .S(mod_type[2]));
  MUXF7 \q_out_reg[0]_i_4 
       (.I0(g0_b0__0_n_0),
        .I1(g0_b0__4_n_0),
        .O(\q_out_reg[0]_i_4_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[10] 
       (.C(clk),
        .CE(data_out_valid0),
        .CLR(reset),
        .D(q_out_6[10]),
        .Q(q_out[10]));
  MUXF7 \q_out_reg[10]_i_4 
       (.I0(g0_b10_n_0),
        .I1(g0_b10__4_n_0),
        .O(\q_out_reg[10]_i_4_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[11] 
       (.C(clk),
        .CE(data_out_valid0),
        .CLR(reset),
        .D(q_out_6[11]),
        .Q(q_out[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[1] 
       (.C(clk),
        .CE(data_out_valid0),
        .CLR(reset),
        .D(q_out_6[1]),
        .Q(q_out[1]));
  MUXF7 \q_out_reg[1]_i_3 
       (.I0(g0_b1_n_0),
        .I1(g0_b1__4_n_0),
        .O(\q_out_reg[1]_i_3_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[2] 
       (.C(clk),
        .CE(data_out_valid0),
        .CLR(reset),
        .D(q_out_6[2]),
        .Q(q_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[3] 
       (.C(clk),
        .CE(data_out_valid0),
        .CLR(reset),
        .D(q_out_6[3]),
        .Q(q_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[4] 
       (.C(clk),
        .CE(data_out_valid0),
        .CLR(reset),
        .D(q_out_6[4]),
        .Q(q_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[5] 
       (.C(clk),
        .CE(data_out_valid0),
        .CLR(reset),
        .D(q_out_6[5]),
        .Q(q_out[5]));
  MUXF7 \q_out_reg[5]_i_5 
       (.I0(g0_b5__2_n_0),
        .I1(g0_b5__0_n_0),
        .O(\q_out_reg[5]_i_5_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[6] 
       (.C(clk),
        .CE(data_out_valid0),
        .CLR(reset),
        .D(q_out_6[6]),
        .Q(q_out[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[7] 
       (.C(clk),
        .CE(data_out_valid0),
        .CLR(reset),
        .D(q_out_6[7]),
        .Q(q_out[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[8] 
       (.C(clk),
        .CE(data_out_valid0),
        .CLR(reset),
        .D(q_out_6[8]),
        .Q(q_out[8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[9] 
       (.C(clk),
        .CE(data_out_valid0),
        .CLR(reset),
        .D(q_out_6[9]),
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
