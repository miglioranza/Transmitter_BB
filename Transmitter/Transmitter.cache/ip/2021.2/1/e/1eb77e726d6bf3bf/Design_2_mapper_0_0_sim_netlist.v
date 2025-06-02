// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Jun  2 15:57:15 2025
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
    end_of_frame,
    signal_field_en,
    pilot_insertion,
    i_out,
    q_out,
    data_out_last,
    last_frame,
    data_out_ready,
    data_out_valid);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Design_2_clk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [2:0]mod_type;
  input [5:0]data_in;
  input data_in_valid;
  input data_in_ready;
  input end_of_frame;
  input signal_field_en;
  input pilot_insertion;
  output [11:0]i_out;
  output [11:0]q_out;
  output data_out_last;
  output last_frame;
  output data_out_ready;
  output data_out_valid;

  wire clk;
  wire [5:0]data_in;
  wire data_in_ready;
  wire data_in_valid;
  wire data_out_last;
  wire data_out_ready;
  wire data_out_valid;
  wire end_of_frame;
  wire [11:0]i_out;
  wire last_frame;
  wire [2:0]mod_type;
  wire pilot_insertion;
  wire [11:0]q_out;
  wire reset;
  wire signal_field_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mapper U0
       (.clk(clk),
        .data_in(data_in),
        .data_in_ready(data_in_ready),
        .data_in_valid(data_in_valid),
        .data_out_last(data_out_last),
        .data_out_ready(data_out_ready),
        .data_out_valid(data_out_valid),
        .end_of_frame(end_of_frame),
        .i_out(i_out),
        .last_frame(last_frame),
        .mod_type(mod_type),
        .pilot_insertion(pilot_insertion),
        .q_out(q_out),
        .reset(reset),
        .signal_field_en(signal_field_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mapper
   (i_out,
    q_out,
    data_out_valid,
    data_out_ready,
    data_out_last,
    last_frame,
    mod_type,
    pilot_insertion,
    data_in_ready,
    data_in_valid,
    clk,
    data_in,
    reset,
    end_of_frame,
    signal_field_en);
  output [11:0]i_out;
  output [11:0]q_out;
  output data_out_valid;
  output data_out_ready;
  output data_out_last;
  output last_frame;
  input [2:0]mod_type;
  input pilot_insertion;
  input data_in_ready;
  input data_in_valid;
  input clk;
  input [5:0]data_in;
  input reset;
  input end_of_frame;
  input signal_field_en;

  wire \buff_counter[0]_i_10_n_0 ;
  wire \buff_counter[0]_i_1_n_0 ;
  wire \buff_counter[0]_i_3_n_0 ;
  wire \buff_counter[0]_i_4_n_0 ;
  wire \buff_counter[0]_i_5_n_0 ;
  wire \buff_counter[0]_i_6_n_0 ;
  wire \buff_counter[0]_i_7_n_0 ;
  wire \buff_counter[0]_i_8_n_0 ;
  wire \buff_counter[0]_i_9_n_0 ;
  wire \buff_counter[16]_i_2_n_0 ;
  wire \buff_counter[16]_i_3_n_0 ;
  wire \buff_counter[16]_i_4_n_0 ;
  wire \buff_counter[16]_i_5_n_0 ;
  wire \buff_counter[16]_i_6_n_0 ;
  wire \buff_counter[16]_i_7_n_0 ;
  wire \buff_counter[16]_i_8_n_0 ;
  wire \buff_counter[16]_i_9_n_0 ;
  wire \buff_counter[24]_i_2_n_0 ;
  wire \buff_counter[24]_i_3_n_0 ;
  wire \buff_counter[24]_i_4_n_0 ;
  wire \buff_counter[24]_i_5_n_0 ;
  wire \buff_counter[24]_i_6_n_0 ;
  wire \buff_counter[24]_i_7_n_0 ;
  wire \buff_counter[24]_i_8_n_0 ;
  wire \buff_counter[24]_i_9_n_0 ;
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
  wire \buff_reg[0]_3 ;
  wire \buff_reg[1][5]_i_2_n_0 ;
  wire \buff_reg[1][5]_i_3_n_0 ;
  wire \buff_reg[1][5]_i_4_n_0 ;
  wire \buff_reg[1]_0 ;
  wire \buff_reg[2]_1 ;
  wire \buff_reg[3][5]_i_2_n_0 ;
  wire \buff_reg[3][5]_i_3_n_0 ;
  wire \buff_reg[3][5]_i_4_n_0 ;
  wire \buff_reg[3][5]_i_5_n_0 ;
  wire \buff_reg[3][5]_i_6_n_0 ;
  wire \buff_reg[3][5]_i_7_n_0 ;
  wire \buff_reg[3][5]_i_8_n_0 ;
  wire \buff_reg[3][5]_i_9_n_0 ;
  wire \buff_reg[3]_4 ;
  wire \buff_reg[4][5]_i_2_n_0 ;
  wire \buff_reg[4][5]_i_3_n_0 ;
  wire \buff_reg[4]_2 ;
  wire \buff_reg[5][5]_i_1_n_0 ;
  wire \buff_reg[5][5]_i_2_n_0 ;
  wire \buff_reg[5][5]_i_3_n_0 ;
  wire \buff_reg[5][5]_i_4_n_0 ;
  wire \buff_reg[5][5]_i_5_n_0 ;
  wire \buff_reg[5][5]_i_6_n_0 ;
  wire \buff_reg[5][5]_i_7_n_0 ;
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
  wire data_out_last;
  wire data_out_last15_out;
  wire data_out_last_i_1_n_0;
  wire data_out_last_i_2_n_0;
  wire data_out_last_i_3_n_0;
  wire data_out_last_i_5_n_0;
  wire data_out_ready;
  wire data_out_ready_i_1_n_0;
  wire data_out_ready_i_2_n_0;
  wire data_out_valid;
  wire data_out_valid0;
  wire data_out_valid0_carry__0_i_1_n_0;
  wire data_out_valid0_carry__0_i_2_n_0;
  wire data_out_valid0_carry__0_i_3_n_0;
  wire data_out_valid0_carry__0_i_4_n_0;
  wire data_out_valid0_carry__0_i_5_n_0;
  wire data_out_valid0_carry__0_i_6_n_0;
  wire data_out_valid0_carry__0_i_7_n_0;
  wire data_out_valid0_carry__0_i_8_n_0;
  wire data_out_valid0_carry__0_n_1;
  wire data_out_valid0_carry__0_n_2;
  wire data_out_valid0_carry__0_n_3;
  wire data_out_valid0_carry__0_n_4;
  wire data_out_valid0_carry__0_n_5;
  wire data_out_valid0_carry__0_n_6;
  wire data_out_valid0_carry__0_n_7;
  wire data_out_valid0_carry_i_10_n_0;
  wire data_out_valid0_carry_i_11_n_0;
  wire data_out_valid0_carry_i_12_n_0;
  wire data_out_valid0_carry_i_13_n_0;
  wire data_out_valid0_carry_i_1_n_0;
  wire data_out_valid0_carry_i_2_n_0;
  wire data_out_valid0_carry_i_3_n_0;
  wire data_out_valid0_carry_i_4_n_0;
  wire data_out_valid0_carry_i_5_n_0;
  wire data_out_valid0_carry_i_6_n_0;
  wire data_out_valid0_carry_i_7_n_0;
  wire data_out_valid0_carry_i_8_n_0;
  wire data_out_valid0_carry_i_9_n_0;
  wire data_out_valid0_carry_n_0;
  wire data_out_valid0_carry_n_1;
  wire data_out_valid0_carry_n_2;
  wire data_out_valid0_carry_n_3;
  wire data_out_valid0_carry_n_4;
  wire data_out_valid0_carry_n_5;
  wire data_out_valid0_carry_n_6;
  wire data_out_valid0_carry_n_7;
  wire data_out_valid122_out;
  wire data_out_valid4_carry__0_i_10_n_0;
  wire data_out_valid4_carry__0_i_11_n_0;
  wire data_out_valid4_carry__0_i_12_n_0;
  wire data_out_valid4_carry__0_i_13_n_0;
  wire data_out_valid4_carry__0_i_14_n_0;
  wire data_out_valid4_carry__0_i_15_n_0;
  wire data_out_valid4_carry__0_i_16_n_0;
  wire data_out_valid4_carry__0_i_1_n_0;
  wire data_out_valid4_carry__0_i_2_n_0;
  wire data_out_valid4_carry__0_i_3_n_0;
  wire data_out_valid4_carry__0_i_4_n_0;
  wire data_out_valid4_carry__0_i_5_n_0;
  wire data_out_valid4_carry__0_i_6_n_0;
  wire data_out_valid4_carry__0_i_7_n_0;
  wire data_out_valid4_carry__0_i_8_n_0;
  wire data_out_valid4_carry__0_i_9_n_0;
  wire data_out_valid4_carry__0_n_0;
  wire data_out_valid4_carry__0_n_1;
  wire data_out_valid4_carry__0_n_2;
  wire data_out_valid4_carry__0_n_3;
  wire data_out_valid4_carry__0_n_4;
  wire data_out_valid4_carry__0_n_5;
  wire data_out_valid4_carry__0_n_6;
  wire data_out_valid4_carry__0_n_7;
  wire data_out_valid4_carry_i_10_n_0;
  wire data_out_valid4_carry_i_11_n_0;
  wire data_out_valid4_carry_i_12_n_0;
  wire data_out_valid4_carry_i_13_n_0;
  wire data_out_valid4_carry_i_14_n_0;
  wire data_out_valid4_carry_i_15_n_0;
  wire data_out_valid4_carry_i_16_n_0;
  wire data_out_valid4_carry_i_1_n_0;
  wire data_out_valid4_carry_i_2_n_0;
  wire data_out_valid4_carry_i_3_n_0;
  wire data_out_valid4_carry_i_4_n_0;
  wire data_out_valid4_carry_i_5_n_0;
  wire data_out_valid4_carry_i_6_n_0;
  wire data_out_valid4_carry_i_7_n_0;
  wire data_out_valid4_carry_i_8_n_0;
  wire data_out_valid4_carry_i_9_n_0;
  wire data_out_valid4_carry_n_0;
  wire data_out_valid4_carry_n_1;
  wire data_out_valid4_carry_n_2;
  wire data_out_valid4_carry_n_3;
  wire data_out_valid4_carry_n_4;
  wire data_out_valid4_carry_n_5;
  wire data_out_valid4_carry_n_6;
  wire data_out_valid4_carry_n_7;
  wire end_of_frame;
  wire g0_b0__0_n_0;
  wire g0_b0__1_n_0;
  wire g0_b0__2_n_0;
  wire g0_b0__3_n_0;
  wire g0_b0__4_n_0;
  wire g0_b0_i_1_n_0;
  wire g0_b0_i_2_n_0;
  wire g0_b0_i_3_n_0;
  wire g0_b0_i_4_n_0;
  wire g0_b0_i_5_n_0;
  wire g0_b0_i_6_n_0;
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
  wire g0_b5_i_1_n_0;
  wire g0_b5_i_2_n_0;
  wire g0_b5_i_3_n_0;
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
  wire \i_out[0]_i_1_n_0 ;
  wire \i_out[0]_i_2_n_0 ;
  wire \i_out[0]_i_3_n_0 ;
  wire \i_out[0]_i_5_n_0 ;
  wire \i_out[0]_i_6_n_0 ;
  wire \i_out[10]_i_1_n_0 ;
  wire \i_out[10]_i_2_n_0 ;
  wire \i_out[10]_i_3_n_0 ;
  wire \i_out[10]_i_5_n_0 ;
  wire \i_out[11]_i_1_n_0 ;
  wire \i_out[11]_i_2_n_0 ;
  wire \i_out[11]_i_4_n_0 ;
  wire \i_out[11]_i_5_n_0 ;
  wire \i_out[11]_i_6_n_0 ;
  wire \i_out[11]_i_7_n_0 ;
  wire \i_out[1]_i_1_n_0 ;
  wire \i_out[1]_i_2_n_0 ;
  wire \i_out[1]_i_3_n_0 ;
  wire \i_out[1]_i_5_n_0 ;
  wire \i_out[1]_i_6_n_0 ;
  wire \i_out[1]_i_7_n_0 ;
  wire \i_out[2]_i_1_n_0 ;
  wire \i_out[2]_i_2_n_0 ;
  wire \i_out[2]_i_3_n_0 ;
  wire \i_out[3]_i_1_n_0 ;
  wire \i_out[3]_i_2_n_0 ;
  wire \i_out[3]_i_3_n_0 ;
  wire \i_out[4]_i_1_n_0 ;
  wire \i_out[4]_i_2_n_0 ;
  wire \i_out[4]_i_3_n_0 ;
  wire \i_out[4]_i_4_n_0 ;
  wire \i_out[4]_i_6_n_0 ;
  wire \i_out[5]_i_1_n_0 ;
  wire \i_out[5]_i_2_n_0 ;
  wire \i_out[5]_i_3_n_0 ;
  wire \i_out[5]_i_4_n_0 ;
  wire \i_out[5]_i_5_n_0 ;
  wire \i_out[5]_i_6_n_0 ;
  wire \i_out[6]_i_1_n_0 ;
  wire \i_out[6]_i_2_n_0 ;
  wire \i_out[6]_i_3_n_0 ;
  wire \i_out[6]_i_4_n_0 ;
  wire \i_out[6]_i_6_n_0 ;
  wire \i_out[7]_i_1_n_0 ;
  wire \i_out[7]_i_2_n_0 ;
  wire \i_out[7]_i_3_n_0 ;
  wire \i_out[8]_i_1_n_0 ;
  wire \i_out[8]_i_2_n_0 ;
  wire \i_out[8]_i_3_n_0 ;
  wire \i_out[8]_i_4_n_0 ;
  wire \i_out[8]_i_5_n_0 ;
  wire \i_out[8]_i_7_n_0 ;
  wire \i_out[9]_i_1_n_0 ;
  wire \i_out[9]_i_2_n_0 ;
  wire \i_out[9]_i_3_n_0 ;
  wire \i_out[9]_i_4_n_0 ;
  wire \i_out[9]_i_5_n_0 ;
  wire \i_out[9]_i_6_n_0 ;
  wire \i_out_reg[0]_i_4_n_0 ;
  wire \i_out_reg[10]_i_4_n_0 ;
  wire \i_out_reg[1]_i_4_n_0 ;
  wire \i_out_reg[2]_i_4_n_0 ;
  wire \i_out_reg[4]_i_5_n_0 ;
  wire \i_out_reg[6]_i_5_n_0 ;
  wire \i_out_reg[7]_i_4_n_0 ;
  wire \i_out_reg[8]_i_6_n_0 ;
  wire [5:0]input_data;
  wire input_data0;
  wire \input_data[0]_i_1_n_0 ;
  wire \input_data[0]_i_2_n_0 ;
  wire \input_data[0]_i_3_n_0 ;
  wire \input_data[1]_i_1_n_0 ;
  wire \input_data[2]_i_1_n_0 ;
  wire \input_data[3]_i_1_n_0 ;
  wire \input_data[4]_i_1_n_0 ;
  wire \input_data[4]_i_2_n_0 ;
  wire \input_data[4]_i_3_n_0 ;
  wire \input_data[5]_i_2_n_0 ;
  wire \input_data[5]_i_3_n_0 ;
  wire \input_data[5]_i_4_n_0 ;
  wire \k[0]_i_1_n_0 ;
  wire \k[0]_i_3_n_0 ;
  wire \k[0]_i_4_n_0 ;
  wire \k[0]_i_5_n_0 ;
  wire [2:0]k_reg;
  wire \k_reg[0]_i_2_n_13 ;
  wire \k_reg[0]_i_2_n_14 ;
  wire \k_reg[0]_i_2_n_15 ;
  wire \k_reg[0]_i_2_n_6 ;
  wire \k_reg[0]_i_2_n_7 ;
  wire last_frame;
  wire last_frame_i_1_n_0;
  wire [2:0]mod_type;
  wire pilot_insertion;
  wire [11:0]q_out;
  wire \q_out[0]_i_1_n_0 ;
  wire \q_out[0]_i_2_n_0 ;
  wire \q_out[0]_i_3_n_0 ;
  wire \q_out[10]_i_1_n_0 ;
  wire \q_out[10]_i_2_n_0 ;
  wire \q_out[10]_i_3_n_0 ;
  wire \q_out[11]_i_1_n_0 ;
  wire \q_out[11]_i_2_n_0 ;
  wire \q_out[11]_i_3_n_0 ;
  wire \q_out[1]_i_1_n_0 ;
  wire \q_out[1]_i_2_n_0 ;
  wire \q_out[1]_i_4_n_0 ;
  wire \q_out[2]_i_1_n_0 ;
  wire \q_out[2]_i_2_n_0 ;
  wire \q_out[2]_i_3_n_0 ;
  wire \q_out[3]_i_1_n_0 ;
  wire \q_out[3]_i_2_n_0 ;
  wire \q_out[3]_i_3_n_0 ;
  wire \q_out[4]_i_1_n_0 ;
  wire \q_out[4]_i_2_n_0 ;
  wire \q_out[5]_i_1_n_0 ;
  wire \q_out[5]_i_2_n_0 ;
  wire \q_out[5]_i_3_n_0 ;
  wire \q_out[5]_i_4_n_0 ;
  wire \q_out[5]_i_5_n_0 ;
  wire \q_out[6]_i_1_n_0 ;
  wire \q_out[6]_i_2_n_0 ;
  wire \q_out[6]_i_3_n_0 ;
  wire \q_out[7]_i_1_n_0 ;
  wire \q_out[7]_i_2_n_0 ;
  wire \q_out[7]_i_3_n_0 ;
  wire \q_out[7]_i_4_n_0 ;
  wire \q_out[8]_i_1_n_0 ;
  wire \q_out[8]_i_2_n_0 ;
  wire \q_out[8]_i_3_n_0 ;
  wire \q_out[8]_i_4_n_0 ;
  wire \q_out[8]_i_5_n_0 ;
  wire \q_out[8]_i_6_n_0 ;
  wire \q_out[9]_i_1_n_0 ;
  wire \q_out[9]_i_2_n_0 ;
  wire \q_out[9]_i_3_n_0 ;
  wire \q_out[9]_i_4_n_0 ;
  wire \q_out[9]_i_5_n_0 ;
  wire \q_out[9]_i_6_n_0 ;
  wire \q_out_reg[0]_i_4_n_0 ;
  wire \q_out_reg[10]_i_4_n_0 ;
  wire \q_out_reg[1]_i_3_n_0 ;
  wire \q_out_reg[4]_i_3_n_0 ;
  wire \q_out_reg[7]_i_5_n_0 ;
  wire \q_out_reg[9]_i_7_n_0 ;
  wire reset;
  wire signal_field_en;
  wire [31:1]symbol_counter0;
  wire symbol_counter0_5;
  wire \symbol_counter[0]_i_10_n_0 ;
  wire \symbol_counter[0]_i_11_n_0 ;
  wire \symbol_counter[0]_i_12_n_0 ;
  wire \symbol_counter[0]_i_13_n_0 ;
  wire \symbol_counter[0]_i_15_n_0 ;
  wire \symbol_counter[0]_i_16_n_0 ;
  wire \symbol_counter[0]_i_17_n_0 ;
  wire \symbol_counter[0]_i_18_n_0 ;
  wire \symbol_counter[0]_i_19_n_0 ;
  wire \symbol_counter[0]_i_20_n_0 ;
  wire \symbol_counter[0]_i_21_n_0 ;
  wire \symbol_counter[0]_i_3_n_0 ;
  wire \symbol_counter[0]_i_4_n_0 ;
  wire \symbol_counter[0]_i_5_n_0 ;
  wire \symbol_counter[0]_i_6_n_0 ;
  wire \symbol_counter[0]_i_7_n_0 ;
  wire \symbol_counter[0]_i_8_n_0 ;
  wire \symbol_counter[0]_i_9_n_0 ;
  wire \symbol_counter[16]_i_2_n_0 ;
  wire \symbol_counter[16]_i_3_n_0 ;
  wire \symbol_counter[16]_i_4_n_0 ;
  wire \symbol_counter[16]_i_5_n_0 ;
  wire \symbol_counter[16]_i_6_n_0 ;
  wire \symbol_counter[16]_i_7_n_0 ;
  wire \symbol_counter[16]_i_8_n_0 ;
  wire \symbol_counter[16]_i_9_n_0 ;
  wire \symbol_counter[24]_i_2_n_0 ;
  wire \symbol_counter[24]_i_3_n_0 ;
  wire \symbol_counter[24]_i_4_n_0 ;
  wire \symbol_counter[24]_i_5_n_0 ;
  wire \symbol_counter[24]_i_6_n_0 ;
  wire \symbol_counter[24]_i_7_n_0 ;
  wire \symbol_counter[24]_i_8_n_0 ;
  wire \symbol_counter[24]_i_9_n_0 ;
  wire \symbol_counter[8]_i_2_n_0 ;
  wire \symbol_counter[8]_i_3_n_0 ;
  wire \symbol_counter[8]_i_4_n_0 ;
  wire \symbol_counter[8]_i_5_n_0 ;
  wire \symbol_counter[8]_i_6_n_0 ;
  wire \symbol_counter[8]_i_7_n_0 ;
  wire \symbol_counter[8]_i_8_n_0 ;
  wire \symbol_counter[8]_i_9_n_0 ;
  wire [31:0]symbol_counter_reg;
  wire \symbol_counter_reg[0]_i_14_n_0 ;
  wire \symbol_counter_reg[0]_i_14_n_1 ;
  wire \symbol_counter_reg[0]_i_14_n_2 ;
  wire \symbol_counter_reg[0]_i_14_n_3 ;
  wire \symbol_counter_reg[0]_i_14_n_4 ;
  wire \symbol_counter_reg[0]_i_14_n_5 ;
  wire \symbol_counter_reg[0]_i_14_n_6 ;
  wire \symbol_counter_reg[0]_i_14_n_7 ;
  wire \symbol_counter_reg[0]_i_2_n_0 ;
  wire \symbol_counter_reg[0]_i_2_n_1 ;
  wire \symbol_counter_reg[0]_i_2_n_10 ;
  wire \symbol_counter_reg[0]_i_2_n_11 ;
  wire \symbol_counter_reg[0]_i_2_n_12 ;
  wire \symbol_counter_reg[0]_i_2_n_13 ;
  wire \symbol_counter_reg[0]_i_2_n_14 ;
  wire \symbol_counter_reg[0]_i_2_n_15 ;
  wire \symbol_counter_reg[0]_i_2_n_2 ;
  wire \symbol_counter_reg[0]_i_2_n_3 ;
  wire \symbol_counter_reg[0]_i_2_n_4 ;
  wire \symbol_counter_reg[0]_i_2_n_5 ;
  wire \symbol_counter_reg[0]_i_2_n_6 ;
  wire \symbol_counter_reg[0]_i_2_n_7 ;
  wire \symbol_counter_reg[0]_i_2_n_8 ;
  wire \symbol_counter_reg[0]_i_2_n_9 ;
  wire \symbol_counter_reg[16]_i_10_n_0 ;
  wire \symbol_counter_reg[16]_i_10_n_1 ;
  wire \symbol_counter_reg[16]_i_10_n_2 ;
  wire \symbol_counter_reg[16]_i_10_n_3 ;
  wire \symbol_counter_reg[16]_i_10_n_4 ;
  wire \symbol_counter_reg[16]_i_10_n_5 ;
  wire \symbol_counter_reg[16]_i_10_n_6 ;
  wire \symbol_counter_reg[16]_i_10_n_7 ;
  wire \symbol_counter_reg[16]_i_1_n_0 ;
  wire \symbol_counter_reg[16]_i_1_n_1 ;
  wire \symbol_counter_reg[16]_i_1_n_10 ;
  wire \symbol_counter_reg[16]_i_1_n_11 ;
  wire \symbol_counter_reg[16]_i_1_n_12 ;
  wire \symbol_counter_reg[16]_i_1_n_13 ;
  wire \symbol_counter_reg[16]_i_1_n_14 ;
  wire \symbol_counter_reg[16]_i_1_n_15 ;
  wire \symbol_counter_reg[16]_i_1_n_2 ;
  wire \symbol_counter_reg[16]_i_1_n_3 ;
  wire \symbol_counter_reg[16]_i_1_n_4 ;
  wire \symbol_counter_reg[16]_i_1_n_5 ;
  wire \symbol_counter_reg[16]_i_1_n_6 ;
  wire \symbol_counter_reg[16]_i_1_n_7 ;
  wire \symbol_counter_reg[16]_i_1_n_8 ;
  wire \symbol_counter_reg[16]_i_1_n_9 ;
  wire \symbol_counter_reg[24]_i_10_n_2 ;
  wire \symbol_counter_reg[24]_i_10_n_3 ;
  wire \symbol_counter_reg[24]_i_10_n_4 ;
  wire \symbol_counter_reg[24]_i_10_n_5 ;
  wire \symbol_counter_reg[24]_i_10_n_6 ;
  wire \symbol_counter_reg[24]_i_10_n_7 ;
  wire \symbol_counter_reg[24]_i_1_n_1 ;
  wire \symbol_counter_reg[24]_i_1_n_10 ;
  wire \symbol_counter_reg[24]_i_1_n_11 ;
  wire \symbol_counter_reg[24]_i_1_n_12 ;
  wire \symbol_counter_reg[24]_i_1_n_13 ;
  wire \symbol_counter_reg[24]_i_1_n_14 ;
  wire \symbol_counter_reg[24]_i_1_n_15 ;
  wire \symbol_counter_reg[24]_i_1_n_2 ;
  wire \symbol_counter_reg[24]_i_1_n_3 ;
  wire \symbol_counter_reg[24]_i_1_n_4 ;
  wire \symbol_counter_reg[24]_i_1_n_5 ;
  wire \symbol_counter_reg[24]_i_1_n_6 ;
  wire \symbol_counter_reg[24]_i_1_n_7 ;
  wire \symbol_counter_reg[24]_i_1_n_8 ;
  wire \symbol_counter_reg[24]_i_1_n_9 ;
  wire \symbol_counter_reg[8]_i_10_n_0 ;
  wire \symbol_counter_reg[8]_i_10_n_1 ;
  wire \symbol_counter_reg[8]_i_10_n_2 ;
  wire \symbol_counter_reg[8]_i_10_n_3 ;
  wire \symbol_counter_reg[8]_i_10_n_4 ;
  wire \symbol_counter_reg[8]_i_10_n_5 ;
  wire \symbol_counter_reg[8]_i_10_n_6 ;
  wire \symbol_counter_reg[8]_i_10_n_7 ;
  wire \symbol_counter_reg[8]_i_1_n_0 ;
  wire \symbol_counter_reg[8]_i_1_n_1 ;
  wire \symbol_counter_reg[8]_i_1_n_10 ;
  wire \symbol_counter_reg[8]_i_1_n_11 ;
  wire \symbol_counter_reg[8]_i_1_n_12 ;
  wire \symbol_counter_reg[8]_i_1_n_13 ;
  wire \symbol_counter_reg[8]_i_1_n_14 ;
  wire \symbol_counter_reg[8]_i_1_n_15 ;
  wire \symbol_counter_reg[8]_i_1_n_2 ;
  wire \symbol_counter_reg[8]_i_1_n_3 ;
  wire \symbol_counter_reg[8]_i_1_n_4 ;
  wire \symbol_counter_reg[8]_i_1_n_5 ;
  wire \symbol_counter_reg[8]_i_1_n_6 ;
  wire \symbol_counter_reg[8]_i_1_n_7 ;
  wire \symbol_counter_reg[8]_i_1_n_8 ;
  wire \symbol_counter_reg[8]_i_1_n_9 ;
  wire [7:7]\NLW_buff_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:0]NLW_data_out_valid0_carry_O_UNCONNECTED;
  wire [7:0]NLW_data_out_valid0_carry__0_O_UNCONNECTED;
  wire [7:0]NLW_data_out_valid4_carry_O_UNCONNECTED;
  wire [7:0]NLW_data_out_valid4_carry__0_O_UNCONNECTED;
  wire [7:2]\NLW_k_reg[0]_i_2_CO_UNCONNECTED ;
  wire [7:3]\NLW_k_reg[0]_i_2_O_UNCONNECTED ;
  wire [7:7]\NLW_symbol_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:6]\NLW_symbol_counter_reg[24]_i_10_CO_UNCONNECTED ;
  wire [7:7]\NLW_symbol_counter_reg[24]_i_10_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h0038)) 
    \buff_counter[0]_i_1 
       (.I0(data_out_valid4_carry__0_n_0),
        .I1(data_in_ready),
        .I2(data_in_valid),
        .I3(pilot_insertion),
        .O(\buff_counter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buff_counter[0]_i_10 
       (.I0(buff_counter_reg[0]),
        .O(\buff_counter[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[0]_i_3 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[7]),
        .O(\buff_counter[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[0]_i_4 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[6]),
        .O(\buff_counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[0]_i_5 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[5]),
        .O(\buff_counter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[0]_i_6 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[4]),
        .O(\buff_counter[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[0]_i_7 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[3]),
        .O(\buff_counter[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[0]_i_8 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[2]),
        .O(\buff_counter[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[0]_i_9 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[1]),
        .O(\buff_counter[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[16]_i_2 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[23]),
        .O(\buff_counter[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[16]_i_3 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[22]),
        .O(\buff_counter[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[16]_i_4 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[21]),
        .O(\buff_counter[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[16]_i_5 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[20]),
        .O(\buff_counter[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[16]_i_6 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[19]),
        .O(\buff_counter[16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[16]_i_7 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[18]),
        .O(\buff_counter[16]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[16]_i_8 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[17]),
        .O(\buff_counter[16]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[16]_i_9 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[16]),
        .O(\buff_counter[16]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[24]_i_2 
       (.I0(buff_counter_reg[31]),
        .I1(data_out_valid122_out),
        .O(\buff_counter[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[24]_i_3 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[30]),
        .O(\buff_counter[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[24]_i_4 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[29]),
        .O(\buff_counter[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[24]_i_5 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[28]),
        .O(\buff_counter[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[24]_i_6 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[27]),
        .O(\buff_counter[24]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[24]_i_7 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[26]),
        .O(\buff_counter[24]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[24]_i_8 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[25]),
        .O(\buff_counter[24]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[24]_i_9 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[24]),
        .O(\buff_counter[24]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[8]_i_2 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[15]),
        .O(\buff_counter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[8]_i_3 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[14]),
        .O(\buff_counter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[8]_i_4 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[13]),
        .O(\buff_counter[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[8]_i_5 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[12]),
        .O(\buff_counter[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[8]_i_6 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[11]),
        .O(\buff_counter[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[8]_i_7 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[10]),
        .O(\buff_counter[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[8]_i_8 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[9]),
        .O(\buff_counter[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff_counter[8]_i_9 
       (.I0(data_out_valid122_out),
        .I1(buff_counter_reg[8]),
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
        .DI({data_out_valid122_out,data_out_valid122_out,data_out_valid122_out,data_out_valid122_out,data_out_valid122_out,data_out_valid122_out,data_out_valid122_out,1'b1}),
        .O({\buff_counter_reg[0]_i_2_n_8 ,\buff_counter_reg[0]_i_2_n_9 ,\buff_counter_reg[0]_i_2_n_10 ,\buff_counter_reg[0]_i_2_n_11 ,\buff_counter_reg[0]_i_2_n_12 ,\buff_counter_reg[0]_i_2_n_13 ,\buff_counter_reg[0]_i_2_n_14 ,\buff_counter_reg[0]_i_2_n_15 }),
        .S({\buff_counter[0]_i_3_n_0 ,\buff_counter[0]_i_4_n_0 ,\buff_counter[0]_i_5_n_0 ,\buff_counter[0]_i_6_n_0 ,\buff_counter[0]_i_7_n_0 ,\buff_counter[0]_i_8_n_0 ,\buff_counter[0]_i_9_n_0 ,\buff_counter[0]_i_10_n_0 }));
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
        .DI({data_out_valid122_out,data_out_valid122_out,data_out_valid122_out,data_out_valid122_out,data_out_valid122_out,data_out_valid122_out,data_out_valid122_out,data_out_valid122_out}),
        .O({\buff_counter_reg[16]_i_1_n_8 ,\buff_counter_reg[16]_i_1_n_9 ,\buff_counter_reg[16]_i_1_n_10 ,\buff_counter_reg[16]_i_1_n_11 ,\buff_counter_reg[16]_i_1_n_12 ,\buff_counter_reg[16]_i_1_n_13 ,\buff_counter_reg[16]_i_1_n_14 ,\buff_counter_reg[16]_i_1_n_15 }),
        .S({\buff_counter[16]_i_2_n_0 ,\buff_counter[16]_i_3_n_0 ,\buff_counter[16]_i_4_n_0 ,\buff_counter[16]_i_5_n_0 ,\buff_counter[16]_i_6_n_0 ,\buff_counter[16]_i_7_n_0 ,\buff_counter[16]_i_8_n_0 ,\buff_counter[16]_i_9_n_0 }));
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
        .DI({1'b0,data_out_valid122_out,data_out_valid122_out,data_out_valid122_out,data_out_valid122_out,data_out_valid122_out,data_out_valid122_out,data_out_valid122_out}),
        .O({\buff_counter_reg[24]_i_1_n_8 ,\buff_counter_reg[24]_i_1_n_9 ,\buff_counter_reg[24]_i_1_n_10 ,\buff_counter_reg[24]_i_1_n_11 ,\buff_counter_reg[24]_i_1_n_12 ,\buff_counter_reg[24]_i_1_n_13 ,\buff_counter_reg[24]_i_1_n_14 ,\buff_counter_reg[24]_i_1_n_15 }),
        .S({\buff_counter[24]_i_2_n_0 ,\buff_counter[24]_i_3_n_0 ,\buff_counter[24]_i_4_n_0 ,\buff_counter[24]_i_5_n_0 ,\buff_counter[24]_i_6_n_0 ,\buff_counter[24]_i_7_n_0 ,\buff_counter[24]_i_8_n_0 ,\buff_counter[24]_i_9_n_0 }));
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
        .DI({data_out_valid122_out,data_out_valid122_out,data_out_valid122_out,data_out_valid122_out,data_out_valid122_out,data_out_valid122_out,data_out_valid122_out,data_out_valid122_out}),
        .O({\buff_counter_reg[8]_i_1_n_8 ,\buff_counter_reg[8]_i_1_n_9 ,\buff_counter_reg[8]_i_1_n_10 ,\buff_counter_reg[8]_i_1_n_11 ,\buff_counter_reg[8]_i_1_n_12 ,\buff_counter_reg[8]_i_1_n_13 ,\buff_counter_reg[8]_i_1_n_14 ,\buff_counter_reg[8]_i_1_n_15 }),
        .S({\buff_counter[8]_i_2_n_0 ,\buff_counter[8]_i_3_n_0 ,\buff_counter[8]_i_4_n_0 ,\buff_counter[8]_i_5_n_0 ,\buff_counter[8]_i_6_n_0 ,\buff_counter[8]_i_7_n_0 ,\buff_counter[8]_i_8_n_0 ,\buff_counter[8]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \buff_counter_reg[9] 
       (.C(clk),
        .CE(\buff_counter[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\buff_counter_reg[8]_i_1_n_14 ),
        .Q(buff_counter_reg[9]));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \buff_reg[0][5]_i_1 
       (.I0(\buff_reg[3][5]_i_2_n_0 ),
        .I1(buff_counter_reg[19]),
        .I2(buff_counter_reg[20]),
        .I3(buff_counter_reg[2]),
        .I4(\buff_reg[0][5]_i_2_n_0 ),
        .I5(\buff_reg[3][5]_i_4_n_0 ),
        .O(\buff_reg[0]_3 ));
  LUT2 #(
    .INIT(4'h1)) 
    \buff_reg[0][5]_i_2 
       (.I0(buff_counter_reg[0]),
        .I1(buff_counter_reg[1]),
        .O(\buff_reg[0][5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \buff_reg[1][5]_i_1 
       (.I0(\buff_reg[1][5]_i_2_n_0 ),
        .I1(\buff_reg[1][5]_i_3_n_0 ),
        .I2(\buff_reg[1][5]_i_4_n_0 ),
        .O(\buff_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \buff_reg[1][5]_i_2 
       (.I0(\buff_reg[3][5]_i_5_n_0 ),
        .I1(\buff_reg[3][5]_i_7_n_0 ),
        .I2(buff_counter_reg[21]),
        .I3(buff_counter_reg[20]),
        .I4(buff_counter_reg[18]),
        .I5(buff_counter_reg[19]),
        .O(\buff_reg[1][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \buff_reg[1][5]_i_3 
       (.I0(\buff_reg[3][5]_i_6_n_0 ),
        .I1(buff_counter_reg[1]),
        .I2(buff_counter_reg[0]),
        .I3(buff_counter_reg[3]),
        .I4(buff_counter_reg[2]),
        .I5(data_out_last_i_3_n_0),
        .O(\buff_reg[1][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \buff_reg[1][5]_i_4 
       (.I0(buff_counter_reg[17]),
        .I1(buff_counter_reg[16]),
        .I2(buff_counter_reg[14]),
        .I3(buff_counter_reg[15]),
        .I4(buff_counter_reg[12]),
        .I5(buff_counter_reg[13]),
        .O(\buff_reg[1][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \buff_reg[2][5]_i_1 
       (.I0(\buff_reg[5][5]_i_2_n_0 ),
        .I1(\buff_reg[4][5]_i_2_n_0 ),
        .I2(buff_counter_reg[2]),
        .I3(buff_counter_reg[1]),
        .I4(data_out_last_i_3_n_0),
        .I5(\buff_reg[4][5]_i_3_n_0 ),
        .O(\buff_reg[2]_1 ));
  LUT5 #(
    .INIT(32'h00002000)) 
    \buff_reg[3][5]_i_1 
       (.I0(\buff_reg[3][5]_i_2_n_0 ),
        .I1(\buff_reg[3][5]_i_3_n_0 ),
        .I2(buff_counter_reg[1]),
        .I3(buff_counter_reg[0]),
        .I4(\buff_reg[3][5]_i_4_n_0 ),
        .O(\buff_reg[3]_4 ));
  LUT6 #(
    .INIT(64'h0000000000004500)) 
    \buff_reg[3][5]_i_2 
       (.I0(buff_counter_reg[20]),
        .I1(buff_counter_reg[19]),
        .I2(buff_counter_reg[18]),
        .I3(\buff_reg[3][5]_i_5_n_0 ),
        .I4(\buff_reg[3][5]_i_6_n_0 ),
        .I5(\buff_reg[1][5]_i_4_n_0 ),
        .O(\buff_reg[3][5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \buff_reg[3][5]_i_3 
       (.I0(buff_counter_reg[2]),
        .I1(buff_counter_reg[20]),
        .I2(buff_counter_reg[19]),
        .O(\buff_reg[3][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFEFE)) 
    \buff_reg[3][5]_i_4 
       (.I0(\buff_reg[3][5]_i_7_n_0 ),
        .I1(buff_counter_reg[21]),
        .I2(buff_counter_reg[5]),
        .I3(buff_counter_reg[4]),
        .I4(buff_counter_reg[3]),
        .I5(data_out_last_i_3_n_0),
        .O(\buff_reg[3][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \buff_reg[3][5]_i_5 
       (.I0(buff_counter_reg[24]),
        .I1(buff_counter_reg[25]),
        .I2(\buff_reg[3][5]_i_8_n_0 ),
        .I3(\buff_reg[3][5]_i_9_n_0 ),
        .I4(buff_counter_reg[31]),
        .I5(buff_counter_reg[30]),
        .O(\buff_reg[3][5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \buff_reg[3][5]_i_6 
       (.I0(buff_counter_reg[8]),
        .I1(buff_counter_reg[9]),
        .I2(buff_counter_reg[10]),
        .I3(buff_counter_reg[11]),
        .I4(\buff_reg[5][5]_i_4_n_0 ),
        .O(\buff_reg[3][5]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \buff_reg[3][5]_i_7 
       (.I0(buff_counter_reg[22]),
        .I1(buff_counter_reg[23]),
        .O(\buff_reg[3][5]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \buff_reg[3][5]_i_8 
       (.I0(buff_counter_reg[28]),
        .I1(buff_counter_reg[29]),
        .O(\buff_reg[3][5]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \buff_reg[3][5]_i_9 
       (.I0(buff_counter_reg[26]),
        .I1(buff_counter_reg[27]),
        .O(\buff_reg[3][5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \buff_reg[4][5]_i_1 
       (.I0(\buff_reg[5][5]_i_2_n_0 ),
        .I1(data_out_last_i_3_n_0),
        .I2(\buff_reg[4][5]_i_2_n_0 ),
        .I3(\buff_reg[4][5]_i_3_n_0 ),
        .I4(buff_counter_reg[2]),
        .I5(buff_counter_reg[1]),
        .O(\buff_reg[4]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \buff_reg[4][5]_i_2 
       (.I0(buff_counter_reg[6]),
        .I1(buff_counter_reg[7]),
        .I2(buff_counter_reg[4]),
        .I3(buff_counter_reg[5]),
        .I4(buff_counter_reg[3]),
        .I5(buff_counter_reg[0]),
        .O(\buff_reg[4][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \buff_reg[4][5]_i_3 
       (.I0(buff_counter_reg[14]),
        .I1(buff_counter_reg[15]),
        .I2(buff_counter_reg[12]),
        .I3(buff_counter_reg[13]),
        .I4(\buff_reg[5][5]_i_6_n_0 ),
        .O(\buff_reg[4][5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \buff_reg[5][5]_i_1 
       (.I0(\buff_reg[5][5]_i_2_n_0 ),
        .I1(\buff_reg[5][5]_i_3_n_0 ),
        .I2(buff_counter_reg[0]),
        .I3(\buff_reg[5][5]_i_4_n_0 ),
        .I4(\buff_reg[5][5]_i_5_n_0 ),
        .O(\buff_reg[5][5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \buff_reg[5][5]_i_2 
       (.I0(\buff_reg[1][5]_i_2_n_0 ),
        .I1(buff_counter_reg[17]),
        .I2(buff_counter_reg[16]),
        .O(\buff_reg[5][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFBFFFB)) 
    \buff_reg[5][5]_i_3 
       (.I0(data_in_ready),
        .I1(data_in_valid),
        .I2(pilot_insertion),
        .I3(buff_counter_reg[3]),
        .I4(buff_counter_reg[4]),
        .I5(buff_counter_reg[5]),
        .O(\buff_reg[5][5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \buff_reg[5][5]_i_4 
       (.I0(buff_counter_reg[5]),
        .I1(buff_counter_reg[4]),
        .I2(buff_counter_reg[7]),
        .I3(buff_counter_reg[6]),
        .O(\buff_reg[5][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \buff_reg[5][5]_i_5 
       (.I0(\buff_reg[5][5]_i_6_n_0 ),
        .I1(buff_counter_reg[13]),
        .I2(buff_counter_reg[12]),
        .I3(\buff_reg[5][5]_i_7_n_0 ),
        .I4(buff_counter_reg[2]),
        .I5(buff_counter_reg[1]),
        .O(\buff_reg[5][5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \buff_reg[5][5]_i_6 
       (.I0(buff_counter_reg[11]),
        .I1(buff_counter_reg[10]),
        .I2(buff_counter_reg[9]),
        .I3(buff_counter_reg[8]),
        .O(\buff_reg[5][5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \buff_reg[5][5]_i_7 
       (.I0(buff_counter_reg[14]),
        .I1(buff_counter_reg[15]),
        .O(\buff_reg[5][5]_i_7_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[0][0] 
       (.C(clk),
        .CE(\buff_reg[0]_3 ),
        .CLR(reset),
        .D(data_in[0]),
        .Q(\buff_reg_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[0][1] 
       (.C(clk),
        .CE(\buff_reg[0]_3 ),
        .CLR(reset),
        .D(data_in[1]),
        .Q(\buff_reg_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[0][2] 
       (.C(clk),
        .CE(\buff_reg[0]_3 ),
        .CLR(reset),
        .D(data_in[2]),
        .Q(\buff_reg_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[0][3] 
       (.C(clk),
        .CE(\buff_reg[0]_3 ),
        .CLR(reset),
        .D(data_in[3]),
        .Q(\buff_reg_reg[0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[0][4] 
       (.C(clk),
        .CE(\buff_reg[0]_3 ),
        .CLR(reset),
        .D(data_in[4]),
        .Q(\buff_reg_reg[0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[0][5] 
       (.C(clk),
        .CE(\buff_reg[0]_3 ),
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
        .CE(\buff_reg[3]_4 ),
        .CLR(reset),
        .D(data_in[0]),
        .Q(\buff_reg_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[3][1] 
       (.C(clk),
        .CE(\buff_reg[3]_4 ),
        .CLR(reset),
        .D(data_in[1]),
        .Q(\buff_reg_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[3][2] 
       (.C(clk),
        .CE(\buff_reg[3]_4 ),
        .CLR(reset),
        .D(data_in[2]),
        .Q(\buff_reg_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[3][3] 
       (.C(clk),
        .CE(\buff_reg[3]_4 ),
        .CLR(reset),
        .D(data_in[3]),
        .Q(\buff_reg_reg[3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[3][4] 
       (.C(clk),
        .CE(\buff_reg[3]_4 ),
        .CLR(reset),
        .D(data_in[4]),
        .Q(\buff_reg_reg[3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg_reg[3][5] 
       (.C(clk),
        .CE(\buff_reg[3]_4 ),
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
    .INIT(64'hBBB8B8B8B8B8B8B8)) 
    data_out_last_i_1
       (.I0(data_out_last),
        .I1(reset),
        .I2(data_out_last_i_2_n_0),
        .I3(data_out_last_i_3_n_0),
        .I4(data_out_last15_out),
        .I5(data_out_last_i_5_n_0),
        .O(data_out_last_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h02)) 
    data_out_last_i_2
       (.I0(data_out_valid122_out),
        .I1(signal_field_en),
        .I2(data_out_valid0),
        .O(data_out_last_i_2_n_0));
  LUT3 #(
    .INIT(8'hFB)) 
    data_out_last_i_3
       (.I0(pilot_insertion),
        .I1(data_in_valid),
        .I2(data_in_ready),
        .O(data_out_last_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    data_out_last_i_4
       (.I0(end_of_frame),
        .I1(data_out_valid0),
        .O(data_out_last15_out));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h01)) 
    data_out_last_i_5
       (.I0(pilot_insertion),
        .I1(\symbol_counter[0]_i_3_n_0 ),
        .I2(data_out_valid122_out),
        .O(data_out_last_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_out_last_reg
       (.C(clk),
        .CE(1'b1),
        .D(data_out_last_i_1_n_0),
        .Q(data_out_last),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAA8B880000)) 
    data_out_ready_i_1
       (.I0(data_out_ready),
        .I1(data_out_valid122_out),
        .I2(end_of_frame),
        .I3(\i_out[11]_i_4_n_0 ),
        .I4(data_out_ready_i_2_n_0),
        .I5(reset),
        .O(data_out_ready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFBFB00FBFBFBFB)) 
    data_out_ready_i_2
       (.I0(data_in_ready),
        .I1(data_in_valid),
        .I2(pilot_insertion),
        .I3(data_out_valid0),
        .I4(signal_field_en),
        .I5(data_out_valid122_out),
        .O(data_out_ready_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_out_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(data_out_ready_i_1_n_0),
        .Q(data_out_ready),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 data_out_valid0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({data_out_valid0_carry_n_0,data_out_valid0_carry_n_1,data_out_valid0_carry_n_2,data_out_valid0_carry_n_3,data_out_valid0_carry_n_4,data_out_valid0_carry_n_5,data_out_valid0_carry_n_6,data_out_valid0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,data_out_valid0_carry_i_1_n_0,data_out_valid0_carry_i_2_n_0,data_out_valid0_carry_i_3_n_0,data_out_valid0_carry_i_4_n_0,data_out_valid0_carry_i_5_n_0}),
        .O(NLW_data_out_valid0_carry_O_UNCONNECTED[7:0]),
        .S({data_out_valid0_carry_i_6_n_0,data_out_valid0_carry_i_7_n_0,data_out_valid0_carry_i_8_n_0,data_out_valid0_carry_i_9_n_0,data_out_valid0_carry_i_10_n_0,data_out_valid0_carry_i_11_n_0,data_out_valid0_carry_i_12_n_0,data_out_valid0_carry_i_13_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 data_out_valid0_carry__0
       (.CI(data_out_valid0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({data_out_valid0,data_out_valid0_carry__0_n_1,data_out_valid0_carry__0_n_2,data_out_valid0_carry__0_n_3,data_out_valid0_carry__0_n_4,data_out_valid0_carry__0_n_5,data_out_valid0_carry__0_n_6,data_out_valid0_carry__0_n_7}),
        .DI({symbol_counter_reg[31],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_data_out_valid0_carry__0_O_UNCONNECTED[7:0]),
        .S({data_out_valid0_carry__0_i_1_n_0,data_out_valid0_carry__0_i_2_n_0,data_out_valid0_carry__0_i_3_n_0,data_out_valid0_carry__0_i_4_n_0,data_out_valid0_carry__0_i_5_n_0,data_out_valid0_carry__0_i_6_n_0,data_out_valid0_carry__0_i_7_n_0,data_out_valid0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid0_carry__0_i_1
       (.I0(symbol_counter_reg[30]),
        .I1(symbol_counter_reg[31]),
        .O(data_out_valid0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid0_carry__0_i_2
       (.I0(symbol_counter_reg[28]),
        .I1(symbol_counter_reg[29]),
        .O(data_out_valid0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid0_carry__0_i_3
       (.I0(symbol_counter_reg[26]),
        .I1(symbol_counter_reg[27]),
        .O(data_out_valid0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid0_carry__0_i_4
       (.I0(symbol_counter_reg[24]),
        .I1(symbol_counter_reg[25]),
        .O(data_out_valid0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid0_carry__0_i_5
       (.I0(symbol_counter_reg[22]),
        .I1(symbol_counter_reg[23]),
        .O(data_out_valid0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid0_carry__0_i_6
       (.I0(symbol_counter_reg[20]),
        .I1(symbol_counter_reg[21]),
        .O(data_out_valid0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid0_carry__0_i_7
       (.I0(symbol_counter_reg[18]),
        .I1(symbol_counter_reg[19]),
        .O(data_out_valid0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid0_carry__0_i_8
       (.I0(symbol_counter_reg[16]),
        .I1(symbol_counter_reg[17]),
        .O(data_out_valid0_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    data_out_valid0_carry_i_1
       (.I0(symbol_counter_reg[9]),
        .I1(symbol_counter_reg[8]),
        .O(data_out_valid0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    data_out_valid0_carry_i_10
       (.I0(symbol_counter_reg[6]),
        .I1(symbol_counter_reg[7]),
        .O(data_out_valid0_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    data_out_valid0_carry_i_11
       (.I0(symbol_counter_reg[4]),
        .I1(symbol_counter_reg[5]),
        .O(data_out_valid0_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    data_out_valid0_carry_i_12
       (.I0(symbol_counter_reg[2]),
        .I1(symbol_counter_reg[3]),
        .O(data_out_valid0_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    data_out_valid0_carry_i_13
       (.I0(symbol_counter_reg[0]),
        .I1(symbol_counter_reg[1]),
        .O(data_out_valid0_carry_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid0_carry_i_2
       (.I0(symbol_counter_reg[6]),
        .I1(symbol_counter_reg[7]),
        .O(data_out_valid0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    data_out_valid0_carry_i_3
       (.I0(symbol_counter_reg[5]),
        .I1(symbol_counter_reg[4]),
        .O(data_out_valid0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    data_out_valid0_carry_i_4
       (.I0(symbol_counter_reg[3]),
        .I1(symbol_counter_reg[2]),
        .O(data_out_valid0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    data_out_valid0_carry_i_5
       (.I0(symbol_counter_reg[1]),
        .I1(symbol_counter_reg[0]),
        .O(data_out_valid0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid0_carry_i_6
       (.I0(symbol_counter_reg[14]),
        .I1(symbol_counter_reg[15]),
        .O(data_out_valid0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid0_carry_i_7
       (.I0(symbol_counter_reg[12]),
        .I1(symbol_counter_reg[13]),
        .O(data_out_valid0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid0_carry_i_8
       (.I0(symbol_counter_reg[10]),
        .I1(symbol_counter_reg[11]),
        .O(data_out_valid0_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    data_out_valid0_carry_i_9
       (.I0(symbol_counter_reg[8]),
        .I1(symbol_counter_reg[9]),
        .O(data_out_valid0_carry_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 data_out_valid4_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({data_out_valid4_carry_n_0,data_out_valid4_carry_n_1,data_out_valid4_carry_n_2,data_out_valid4_carry_n_3,data_out_valid4_carry_n_4,data_out_valid4_carry_n_5,data_out_valid4_carry_n_6,data_out_valid4_carry_n_7}),
        .DI({data_out_valid4_carry_i_1_n_0,data_out_valid4_carry_i_2_n_0,data_out_valid4_carry_i_3_n_0,data_out_valid4_carry_i_4_n_0,data_out_valid4_carry_i_5_n_0,data_out_valid4_carry_i_6_n_0,data_out_valid4_carry_i_7_n_0,data_out_valid4_carry_i_8_n_0}),
        .O(NLW_data_out_valid4_carry_O_UNCONNECTED[7:0]),
        .S({data_out_valid4_carry_i_9_n_0,data_out_valid4_carry_i_10_n_0,data_out_valid4_carry_i_11_n_0,data_out_valid4_carry_i_12_n_0,data_out_valid4_carry_i_13_n_0,data_out_valid4_carry_i_14_n_0,data_out_valid4_carry_i_15_n_0,data_out_valid4_carry_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 data_out_valid4_carry__0
       (.CI(data_out_valid4_carry_n_0),
        .CI_TOP(1'b0),
        .CO({data_out_valid4_carry__0_n_0,data_out_valid4_carry__0_n_1,data_out_valid4_carry__0_n_2,data_out_valid4_carry__0_n_3,data_out_valid4_carry__0_n_4,data_out_valid4_carry__0_n_5,data_out_valid4_carry__0_n_6,data_out_valid4_carry__0_n_7}),
        .DI({data_out_valid4_carry__0_i_1_n_0,data_out_valid4_carry__0_i_2_n_0,data_out_valid4_carry__0_i_3_n_0,data_out_valid4_carry__0_i_4_n_0,data_out_valid4_carry__0_i_5_n_0,data_out_valid4_carry__0_i_6_n_0,data_out_valid4_carry__0_i_7_n_0,data_out_valid4_carry__0_i_8_n_0}),
        .O(NLW_data_out_valid4_carry__0_O_UNCONNECTED[7:0]),
        .S({data_out_valid4_carry__0_i_9_n_0,data_out_valid4_carry__0_i_10_n_0,data_out_valid4_carry__0_i_11_n_0,data_out_valid4_carry__0_i_12_n_0,data_out_valid4_carry__0_i_13_n_0,data_out_valid4_carry__0_i_14_n_0,data_out_valid4_carry__0_i_15_n_0,data_out_valid4_carry__0_i_16_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    data_out_valid4_carry__0_i_1
       (.I0(buff_counter_reg[30]),
        .I1(buff_counter_reg[31]),
        .O(data_out_valid4_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid4_carry__0_i_10
       (.I0(buff_counter_reg[28]),
        .I1(buff_counter_reg[29]),
        .O(data_out_valid4_carry__0_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid4_carry__0_i_11
       (.I0(buff_counter_reg[26]),
        .I1(buff_counter_reg[27]),
        .O(data_out_valid4_carry__0_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid4_carry__0_i_12
       (.I0(buff_counter_reg[24]),
        .I1(buff_counter_reg[25]),
        .O(data_out_valid4_carry__0_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid4_carry__0_i_13
       (.I0(buff_counter_reg[23]),
        .I1(buff_counter_reg[22]),
        .O(data_out_valid4_carry__0_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid4_carry__0_i_14
       (.I0(buff_counter_reg[20]),
        .I1(buff_counter_reg[21]),
        .O(data_out_valid4_carry__0_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid4_carry__0_i_15
       (.I0(buff_counter_reg[19]),
        .I1(buff_counter_reg[18]),
        .O(data_out_valid4_carry__0_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid4_carry__0_i_16
       (.I0(buff_counter_reg[17]),
        .I1(buff_counter_reg[16]),
        .O(data_out_valid4_carry__0_i_16_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid4_carry__0_i_2
       (.I0(buff_counter_reg[29]),
        .I1(buff_counter_reg[28]),
        .O(data_out_valid4_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid4_carry__0_i_3
       (.I0(buff_counter_reg[27]),
        .I1(buff_counter_reg[26]),
        .O(data_out_valid4_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid4_carry__0_i_4
       (.I0(buff_counter_reg[25]),
        .I1(buff_counter_reg[24]),
        .O(data_out_valid4_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid4_carry__0_i_5
       (.I0(buff_counter_reg[22]),
        .I1(buff_counter_reg[23]),
        .O(data_out_valid4_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid4_carry__0_i_6
       (.I0(buff_counter_reg[21]),
        .I1(buff_counter_reg[20]),
        .O(data_out_valid4_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid4_carry__0_i_7
       (.I0(buff_counter_reg[18]),
        .I1(buff_counter_reg[19]),
        .O(data_out_valid4_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid4_carry__0_i_8
       (.I0(buff_counter_reg[16]),
        .I1(buff_counter_reg[17]),
        .O(data_out_valid4_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid4_carry__0_i_9
       (.I0(buff_counter_reg[31]),
        .I1(buff_counter_reg[30]),
        .O(data_out_valid4_carry__0_i_9_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid4_carry_i_1
       (.I0(buff_counter_reg[14]),
        .I1(buff_counter_reg[15]),
        .O(data_out_valid4_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid4_carry_i_10
       (.I0(buff_counter_reg[13]),
        .I1(buff_counter_reg[12]),
        .O(data_out_valid4_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid4_carry_i_11
       (.I0(buff_counter_reg[11]),
        .I1(buff_counter_reg[10]),
        .O(data_out_valid4_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid4_carry_i_12
       (.I0(buff_counter_reg[9]),
        .I1(buff_counter_reg[8]),
        .O(data_out_valid4_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid4_carry_i_13
       (.I0(buff_counter_reg[6]),
        .I1(buff_counter_reg[7]),
        .O(data_out_valid4_carry_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid4_carry_i_14
       (.I0(buff_counter_reg[5]),
        .I1(buff_counter_reg[4]),
        .O(data_out_valid4_carry_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid4_carry_i_15
       (.I0(buff_counter_reg[2]),
        .I1(buff_counter_reg[3]),
        .O(data_out_valid4_carry_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid4_carry_i_16
       (.I0(buff_counter_reg[0]),
        .I1(buff_counter_reg[1]),
        .O(data_out_valid4_carry_i_16_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid4_carry_i_2
       (.I0(buff_counter_reg[12]),
        .I1(buff_counter_reg[13]),
        .O(data_out_valid4_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid4_carry_i_3
       (.I0(buff_counter_reg[10]),
        .I1(buff_counter_reg[11]),
        .O(data_out_valid4_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid4_carry_i_4
       (.I0(buff_counter_reg[8]),
        .I1(buff_counter_reg[9]),
        .O(data_out_valid4_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid4_carry_i_5
       (.I0(buff_counter_reg[7]),
        .I1(buff_counter_reg[6]),
        .O(data_out_valid4_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid4_carry_i_6
       (.I0(buff_counter_reg[4]),
        .I1(buff_counter_reg[5]),
        .O(data_out_valid4_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid4_carry_i_7
       (.I0(buff_counter_reg[3]),
        .I1(buff_counter_reg[2]),
        .O(data_out_valid4_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out_valid4_carry_i_8
       (.I0(buff_counter_reg[1]),
        .I1(buff_counter_reg[0]),
        .O(data_out_valid4_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid4_carry_i_9
       (.I0(buff_counter_reg[15]),
        .I1(buff_counter_reg[14]),
        .O(data_out_valid4_carry_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    data_out_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\i_out[11]_i_1_n_0 ),
        .Q(data_out_valid));
  LUT3 #(
    .INIT(8'h6E)) 
    g0_b0
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[4]_i_1_n_0 ),
        .O(g0_b0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    g0_b0__0
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .O(g0_b0__0_n_0));
  LUT3 #(
    .INIT(8'h9E)) 
    g0_b0__1
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[4]_i_1_n_0 ),
        .O(g0_b0__1_n_0));
  LUT4 #(
    .INIT(16'hD8EC)) 
    g0_b0__2
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[4]_i_1_n_0 ),
        .I3(\input_data[5]_i_2_n_0 ),
        .O(g0_b0__2_n_0));
  LUT4 #(
    .INIT(16'h8DBA)) 
    g0_b0__3
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[4]_i_1_n_0 ),
        .I3(\input_data[5]_i_2_n_0 ),
        .O(g0_b0__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hB)) 
    g0_b0__4
       (.I0(g0_b5_i_1_n_0),
        .I1(\input_data[0]_i_1_n_0 ),
        .O(g0_b0__4_n_0));
  LUT5 #(
    .INIT(32'h1D1D0C3F)) 
    g0_b0_i_1
       (.I0(g0_b0_i_3_n_0),
        .I1(data_in_valid),
        .I2(data_in[2]),
        .I3(input_data[2]),
        .I4(data_out_valid4_carry__0_n_0),
        .O(g0_b0_i_1_n_0));
  LUT5 #(
    .INIT(32'h0053FF53)) 
    g0_b0_i_2
       (.I0(g0_b0_i_4_n_0),
        .I1(input_data[3]),
        .I2(data_out_valid4_carry__0_n_0),
        .I3(data_in_valid),
        .I4(data_in[3]),
        .O(g0_b0_i_2_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    g0_b0_i_3
       (.I0(\buff_reg_reg[5] [2]),
        .I1(k_reg[0]),
        .I2(\buff_reg_reg[4] [2]),
        .I3(k_reg[2]),
        .I4(g0_b0_i_5_n_0),
        .O(g0_b0_i_3_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    g0_b0_i_4
       (.I0(\buff_reg_reg[5] [3]),
        .I1(k_reg[0]),
        .I2(\buff_reg_reg[4] [3]),
        .I3(k_reg[2]),
        .I4(g0_b0_i_6_n_0),
        .O(g0_b0_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    g0_b0_i_5
       (.I0(\buff_reg_reg[3] [2]),
        .I1(\buff_reg_reg[2] [2]),
        .I2(k_reg[1]),
        .I3(\buff_reg_reg[1] [2]),
        .I4(k_reg[0]),
        .I5(\buff_reg_reg[0] [2]),
        .O(g0_b0_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    g0_b0_i_6
       (.I0(\buff_reg_reg[3] [3]),
        .I1(\buff_reg_reg[2] [3]),
        .I2(k_reg[1]),
        .I3(\buff_reg_reg[1] [3]),
        .I4(k_reg[0]),
        .I5(\buff_reg_reg[0] [3]),
        .O(g0_b0_i_6_n_0));
  LUT4 #(
    .INIT(16'h6F86)) 
    g0_b1
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b1_n_0));
  LUT4 #(
    .INIT(16'h87B4)) 
    g0_b10
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b10_n_0));
  LUT5 #(
    .INIT(32'h0FD2C3F0)) 
    g0_b10__0
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b10__0_n_0));
  LUT5 #(
    .INIT(32'h59AAA555)) 
    g0_b10__1
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b10__1_n_0));
  LUT6 #(
    .INIT(64'h999B999999999D99)) 
    g0_b10__2
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[0]_i_1_n_0 ),
        .I4(\input_data[4]_i_1_n_0 ),
        .I5(\input_data[5]_i_2_n_0 ),
        .O(g0_b10__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h95AA)) 
    g0_b10__3
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[0]_i_1_n_0 ),
        .O(g0_b10__3_n_0));
  LUT4 #(
    .INIT(16'hA659)) 
    g0_b10__4
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b10__4_n_0));
  LUT6 #(
    .INIT(64'h3331333333333733)) 
    g0_b11
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[0]_i_1_n_0 ),
        .I4(\input_data[4]_i_1_n_0 ),
        .I5(\input_data[5]_i_2_n_0 ),
        .O(g0_b11_n_0));
  LUT5 #(
    .INIT(32'hD0F7B50C)) 
    g0_b1__0
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b1__0_n_0));
  LUT5 #(
    .INIT(32'h7F517688)) 
    g0_b1__1
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b1__1_n_0));
  LUT6 #(
    .INIT(64'hDD9BDD99DD99DD99)) 
    g0_b1__2
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[0]_i_1_n_0 ),
        .I4(\input_data[4]_i_1_n_0 ),
        .I5(\input_data[5]_i_2_n_0 ),
        .O(g0_b1__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hBF95)) 
    g0_b1__3
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[0]_i_1_n_0 ),
        .O(g0_b1__3_n_0));
  LUT4 #(
    .INIT(16'hEB68)) 
    g0_b1__4
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b1__4_n_0));
  LUT4 #(
    .INIT(16'h5A97)) 
    g0_b2
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b2_n_0));
  LUT5 #(
    .INIT(32'h1CF0697B)) 
    g0_b2__0
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h55A169B7)) 
    g0_b2__1
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b2__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h996B)) 
    g0_b2__2
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b2__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h3CD2)) 
    g0_b3
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA75A4B69)) 
    g0_b3__0
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h996EA996)) 
    g0_b3__1
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b3__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h5A65)) 
    g0_b3__2
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b3__2_n_0));
  LUT4 #(
    .INIT(16'h96D2)) 
    g0_b4
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b4_n_0));
  LUT5 #(
    .INIT(32'h78B40FB4)) 
    g0_b4__0
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b4__0_n_0));
  LUT5 #(
    .INIT(32'h6595AA59)) 
    g0_b4__1
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b4__1_n_0));
  LUT4 #(
    .INIT(16'h9665)) 
    g0_b4__2
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b4__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h1EF0A5C3)) 
    g0_b5
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h93)) 
    g0_b5__0
       (.I0(g0_b0_i_1_n_0),
        .I1(\input_data[0]_i_1_n_0 ),
        .I2(\input_data[4]_i_1_n_0 ),
        .O(g0_b5__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    g0_b5__1
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(\input_data[4]_i_1_n_0 ),
        .O(g0_b5__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h55A96666)) 
    g0_b5__2
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b5__2_n_0));
  LUT5 #(
    .INIT(32'h1D1D0C3F)) 
    g0_b5_i_1
       (.I0(g0_b5_i_2_n_0),
        .I1(data_in_valid),
        .I2(data_in[1]),
        .I3(input_data[1]),
        .I4(data_out_valid4_carry__0_n_0),
        .O(g0_b5_i_1_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    g0_b5_i_2
       (.I0(\buff_reg_reg[5] [1]),
        .I1(k_reg[0]),
        .I2(\buff_reg_reg[4] [1]),
        .I3(k_reg[2]),
        .I4(g0_b5_i_3_n_0),
        .O(g0_b5_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    g0_b5_i_3
       (.I0(\buff_reg_reg[3] [1]),
        .I1(\buff_reg_reg[2] [1]),
        .I2(k_reg[1]),
        .I3(\buff_reg_reg[1] [1]),
        .I4(k_reg[0]),
        .I5(\buff_reg_reg[0] [1]),
        .O(g0_b5_i_3_n_0));
  LUT4 #(
    .INIT(16'h96E1)) 
    g0_b6
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b6_n_0));
  LUT5 #(
    .INIT(32'h782DF00F)) 
    g0_b6__0
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b6__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hA69555AA)) 
    g0_b6__1
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b6__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h9656)) 
    g0_b6__2
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b6__2_n_0));
  LUT4 #(
    .INIT(16'h4BB4)) 
    g0_b7
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b7_n_0));
  LUT5 #(
    .INIT(32'h3C69C35A)) 
    g0_b7__0
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b7__0_n_0));
  LUT5 #(
    .INIT(32'h96A5A5A5)) 
    g0_b7__1
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b7__1_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    g0_b7__2
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b7__2_n_0));
  LUT4 #(
    .INIT(16'h5A4B)) 
    g0_b8
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b8_n_0));
  LUT5 #(
    .INIT(32'h2DC31EB4)) 
    g0_b8__0
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b8__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h5AA69A59)) 
    g0_b8__1
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b8__1_n_0));
  LUT6 #(
    .INIT(64'hCCCECCCCCCCCC8CC)) 
    g0_b8__2
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[0]_i_1_n_0 ),
        .I4(\input_data[4]_i_1_n_0 ),
        .I5(\input_data[5]_i_2_n_0 ),
        .O(g0_b8__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hAA95)) 
    g0_b8__3
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[0]_i_1_n_0 ),
        .O(g0_b8__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h99A6)) 
    g0_b8__4
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b8__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC3E1)) 
    g0_b9
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0FA5B4A5)) 
    g0_b9__0
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b9__0_n_0));
  LUT5 #(
    .INIT(32'h66AA565A)) 
    g0_b9__1
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .O(g0_b9__1_n_0));
  LUT6 #(
    .INIT(64'h669B669966996299)) 
    g0_b9__2
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[0]_i_1_n_0 ),
        .I4(\input_data[4]_i_1_n_0 ),
        .I5(\input_data[5]_i_2_n_0 ),
        .O(g0_b9__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h95)) 
    g0_b9__3
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .O(g0_b9__3_n_0));
  LUT4 #(
    .INIT(16'hA556)) 
    g0_b9__4
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[4]_i_1_n_0 ),
        .O(g0_b9__4_n_0));
  LUT6 #(
    .INIT(64'hAFCFA0FFAFFFAFFF)) 
    \i_out[0]_i_1 
       (.I0(\i_out[0]_i_2_n_0 ),
        .I1(\i_out[0]_i_3_n_0 ),
        .I2(data_out_valid122_out),
        .I3(mod_type[2]),
        .I4(mod_type[1]),
        .I5(mod_type[0]),
        .O(\i_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB8B8)) 
    \i_out[0]_i_2 
       (.I0(\i_out_reg[0]_i_4_n_0 ),
        .I1(mod_type[1]),
        .I2(\i_out[0]_i_5_n_0 ),
        .I3(\i_out[0]_i_6_n_0 ),
        .I4(\input_data[5]_i_2_n_0 ),
        .I5(\i_out[11]_i_7_n_0 ),
        .O(\i_out[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \i_out[0]_i_3 
       (.I0(\input_data[0]_i_1_n_0 ),
        .I1(g0_b0_i_2_n_0),
        .I2(g0_b0_i_1_n_0),
        .O(\i_out[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \i_out[0]_i_5 
       (.I0(g0_b0_i_2_n_0),
        .I1(mod_type[0]),
        .I2(g0_b0_i_1_n_0),
        .O(\i_out[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \i_out[0]_i_6 
       (.I0(mod_type[0]),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[4]_i_1_n_0 ),
        .O(\i_out[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0C0C0CFC0)) 
    \i_out[10]_i_1 
       (.I0(\i_out[10]_i_2_n_0 ),
        .I1(\i_out[10]_i_3_n_0 ),
        .I2(data_out_valid122_out),
        .I3(mod_type[0]),
        .I4(mod_type[1]),
        .I5(mod_type[2]),
        .O(\i_out[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BBB8B8B8B8)) 
    \i_out[10]_i_2 
       (.I0(\i_out_reg[10]_i_4_n_0 ),
        .I1(mod_type[1]),
        .I2(\i_out[10]_i_5_n_0 ),
        .I3(\input_data[0]_i_1_n_0 ),
        .I4(g0_b0_i_1_n_0),
        .I5(mod_type[0]),
        .O(\i_out[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hABBABABA)) 
    \i_out[10]_i_3 
       (.I0(\i_out[6]_i_3_n_0 ),
        .I1(mod_type[1]),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(mod_type[0]),
        .I4(g0_b5_i_1_n_0),
        .O(\i_out[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \i_out[10]_i_5 
       (.I0(\input_data[4]_i_1_n_0 ),
        .I1(\input_data[5]_i_2_n_0 ),
        .I2(mod_type[0]),
        .O(\i_out[10]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \i_out[11]_i_1 
       (.I0(data_out_valid122_out),
        .I1(\i_out[11]_i_4_n_0 ),
        .I2(data_out_valid0),
        .I3(end_of_frame),
        .O(\i_out[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0CFA0C0A0CFAFCF)) 
    \i_out[11]_i_2 
       (.I0(\i_out[11]_i_5_n_0 ),
        .I1(\i_out[11]_i_6_n_0 ),
        .I2(data_out_valid122_out),
        .I3(mod_type[2]),
        .I4(mod_type[1]),
        .I5(mod_type[0]),
        .O(\i_out[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4440)) 
    \i_out[11]_i_3 
       (.I0(pilot_insertion),
        .I1(data_in_ready),
        .I2(data_out_valid4_carry__0_n_0),
        .I3(data_in_valid),
        .O(data_out_valid122_out));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \i_out[11]_i_4 
       (.I0(pilot_insertion),
        .I1(\symbol_counter[0]_i_3_n_0 ),
        .O(\i_out[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000BBBA1110)) 
    \i_out[11]_i_5 
       (.I0(mod_type[1]),
        .I1(\input_data[5]_i_2_n_0 ),
        .I2(\input_data[4]_i_1_n_0 ),
        .I3(\i_out[11]_i_7_n_0 ),
        .I4(\input_data[0]_i_1_n_0 ),
        .I5(mod_type[0]),
        .O(\i_out[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h09F5F9F50905F905)) 
    \i_out[11]_i_6 
       (.I0(\input_data[0]_i_1_n_0 ),
        .I1(g0_b5_i_1_n_0),
        .I2(mod_type[1]),
        .I3(mod_type[0]),
        .I4(\input_data[4]_i_1_n_0 ),
        .I5(g0_b0_i_2_n_0),
        .O(\i_out[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \i_out[11]_i_7 
       (.I0(g0_b5_i_1_n_0),
        .I1(\input_data[0]_i_1_n_0 ),
        .I2(g0_b0_i_2_n_0),
        .I3(g0_b0_i_1_n_0),
        .O(\i_out[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFFFFFF80000)) 
    \i_out[1]_i_1 
       (.I0(mod_type[2]),
        .I1(\i_out[1]_i_2_n_0 ),
        .I2(\i_out[1]_i_3_n_0 ),
        .I3(\i_out[5]_i_3_n_0 ),
        .I4(data_out_valid122_out),
        .I5(mod_type[0]),
        .O(\i_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8B8B8BBB8BB)) 
    \i_out[1]_i_2 
       (.I0(\i_out_reg[1]_i_4_n_0 ),
        .I1(mod_type[1]),
        .I2(\i_out[1]_i_5_n_0 ),
        .I3(\i_out[1]_i_6_n_0 ),
        .I4(\i_out[1]_i_7_n_0 ),
        .I5(\i_out[11]_i_7_n_0 ),
        .O(\i_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0C04000C00000000)) 
    \i_out[1]_i_3 
       (.I0(\i_out[0]_i_3_n_0 ),
        .I1(mod_type[1]),
        .I2(mod_type[2]),
        .I3(\i_out[9]_i_4_n_0 ),
        .I4(\input_data[4]_i_1_n_0 ),
        .I5(mod_type[0]),
        .O(\i_out[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h888A)) 
    \i_out[1]_i_5 
       (.I0(mod_type[0]),
        .I1(g0_b0_i_2_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(g0_b0_i_1_n_0),
        .O(\i_out[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \i_out[1]_i_6 
       (.I0(mod_type[0]),
        .I1(\input_data[4]_i_1_n_0 ),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[5]_i_2_n_0 ),
        .O(\i_out[1]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \i_out[1]_i_7 
       (.I0(\input_data[5]_i_2_n_0 ),
        .I1(\input_data[4]_i_1_n_0 ),
        .O(\i_out[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0C0CFA0A0C0C0)) 
    \i_out[2]_i_1 
       (.I0(\i_out[2]_i_2_n_0 ),
        .I1(\i_out[10]_i_3_n_0 ),
        .I2(data_out_valid122_out),
        .I3(mod_type[1]),
        .I4(mod_type[2]),
        .I5(mod_type[0]),
        .O(\i_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00F4000000F4)) 
    \i_out[2]_i_2 
       (.I0(g0_b0_i_2_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(\i_out[2]_i_3_n_0 ),
        .I3(\i_out[8]_i_5_n_0 ),
        .I4(mod_type[1]),
        .I5(\i_out_reg[2]_i_4_n_0 ),
        .O(\i_out[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h9F)) 
    \i_out[2]_i_3 
       (.I0(g0_b0_i_2_n_0),
        .I1(\input_data[0]_i_1_n_0 ),
        .I2(mod_type[0]),
        .O(\i_out[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFC0A0C0A0C0A0C0)) 
    \i_out[3]_i_1 
       (.I0(\i_out[3]_i_2_n_0 ),
        .I1(\i_out[3]_i_3_n_0 ),
        .I2(data_out_valid122_out),
        .I3(mod_type[2]),
        .I4(mod_type[0]),
        .I5(mod_type[1]),
        .O(\i_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCFFFFF000)) 
    \i_out[3]_i_2 
       (.I0(g0_b3__0_n_0),
        .I1(g0_b3_n_0),
        .I2(\input_data[0]_i_1_n_0 ),
        .I3(mod_type[0]),
        .I4(\i_out[6]_i_6_n_0 ),
        .I5(mod_type[1]),
        .O(\i_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA3A3A3A3FF0F00F0)) 
    \i_out[3]_i_3 
       (.I0(\input_data[4]_i_1_n_0 ),
        .I1(g0_b0_i_2_n_0),
        .I2(mod_type[0]),
        .I3(g0_b5_i_1_n_0),
        .I4(\input_data[0]_i_1_n_0 ),
        .I5(mod_type[1]),
        .O(\i_out[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBABBBABBBA)) 
    \i_out[4]_i_1 
       (.I0(\i_out[4]_i_2_n_0 ),
        .I1(\i_out[4]_i_3_n_0 ),
        .I2(\i_out[6]_i_4_n_0 ),
        .I3(mod_type[2]),
        .I4(mod_type[1]),
        .I5(\i_out[4]_i_4_n_0 ),
        .O(\i_out[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \i_out[4]_i_2 
       (.I0(mod_type[2]),
        .I1(mod_type[0]),
        .I2(mod_type[1]),
        .I3(data_out_valid122_out),
        .O(\i_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44470000FFFFFFFF)) 
    \i_out[4]_i_3 
       (.I0(\i_out_reg[4]_i_5_n_0 ),
        .I1(mod_type[1]),
        .I2(\i_out[10]_i_5_n_0 ),
        .I3(\i_out[4]_i_6_n_0 ),
        .I4(mod_type[2]),
        .I5(data_out_valid122_out),
        .O(\i_out[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h90AFAF50)) 
    \i_out[4]_i_4 
       (.I0(\input_data[4]_i_1_n_0 ),
        .I1(\input_data[0]_i_1_n_0 ),
        .I2(mod_type[0]),
        .I3(g0_b0_i_1_n_0),
        .I4(g0_b0_i_2_n_0),
        .O(\i_out[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hA208)) 
    \i_out[4]_i_6 
       (.I0(mod_type[0]),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(\input_data[0]_i_1_n_0 ),
        .O(\i_out[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCACACAFAFACAFAFA)) 
    \i_out[5]_i_1 
       (.I0(\i_out[5]_i_2_n_0 ),
        .I1(\i_out[5]_i_3_n_0 ),
        .I2(data_out_valid122_out),
        .I3(mod_type[2]),
        .I4(\i_out[5]_i_4_n_0 ),
        .I5(\i_out[5]_i_5_n_0 ),
        .O(\i_out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_out[5]_i_2 
       (.I0(mod_type[0]),
        .I1(mod_type[1]),
        .I2(mod_type[2]),
        .O(\i_out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0015051505100010)) 
    \i_out[5]_i_3 
       (.I0(mod_type[2]),
        .I1(g0_b0_i_2_n_0),
        .I2(mod_type[1]),
        .I3(mod_type[0]),
        .I4(g0_b5_i_1_n_0),
        .I5(\input_data[0]_i_1_n_0 ),
        .O(\i_out[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7DFF)) 
    \i_out[5]_i_4 
       (.I0(mod_type[0]),
        .I1(\input_data[4]_i_1_n_0 ),
        .I2(\i_out[9]_i_4_n_0 ),
        .I3(mod_type[1]),
        .O(\i_out[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0EFE0E0E0EFEFEFE)) 
    \i_out[5]_i_5 
       (.I0(\i_out[8]_i_5_n_0 ),
        .I1(\i_out[5]_i_6_n_0 ),
        .I2(mod_type[1]),
        .I3(g0_b5_n_0),
        .I4(mod_type[0]),
        .I5(g0_b5__0_n_0),
        .O(\i_out[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8228)) 
    \i_out[5]_i_6 
       (.I0(mod_type[0]),
        .I1(\input_data[0]_i_1_n_0 ),
        .I2(g0_b0_i_1_n_0),
        .I3(g0_b0_i_2_n_0),
        .O(\i_out[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA00FC00FC00)) 
    \i_out[6]_i_1 
       (.I0(\i_out[6]_i_2_n_0 ),
        .I1(\i_out[6]_i_3_n_0 ),
        .I2(\i_out[6]_i_4_n_0 ),
        .I3(data_out_valid122_out),
        .I4(mod_type[0]),
        .I5(mod_type[2]),
        .O(\i_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8BBB8BBB8B8B8)) 
    \i_out[6]_i_2 
       (.I0(\i_out_reg[6]_i_5_n_0 ),
        .I1(mod_type[1]),
        .I2(\i_out[6]_i_6_n_0 ),
        .I3(mod_type[0]),
        .I4(\input_data[0]_i_1_n_0 ),
        .I5(g0_b0_i_2_n_0),
        .O(\i_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h36B6C64600000000)) 
    \i_out[6]_i_3 
       (.I0(g0_b0_i_2_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(mod_type[0]),
        .I3(\input_data[0]_i_1_n_0 ),
        .I4(\input_data[4]_i_1_n_0 ),
        .I5(mod_type[1]),
        .O(\i_out[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4144)) 
    \i_out[6]_i_4 
       (.I0(mod_type[1]),
        .I1(\input_data[0]_i_1_n_0 ),
        .I2(g0_b5_i_1_n_0),
        .I3(mod_type[0]),
        .O(\i_out[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h1221)) 
    \i_out[6]_i_6 
       (.I0(g0_b0_i_2_n_0),
        .I1(mod_type[0]),
        .I2(\input_data[4]_i_1_n_0 ),
        .I3(\input_data[5]_i_2_n_0 ),
        .O(\i_out[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCFC05050CFC05F50)) 
    \i_out[7]_i_1 
       (.I0(\i_out[11]_i_6_n_0 ),
        .I1(\i_out[7]_i_2_n_0 ),
        .I2(data_out_valid122_out),
        .I3(mod_type[0]),
        .I4(mod_type[2]),
        .I5(mod_type[1]),
        .O(\i_out[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF455445544554)) 
    \i_out[7]_i_2 
       (.I0(\i_out[7]_i_3_n_0 ),
        .I1(mod_type[0]),
        .I2(\input_data[4]_i_1_n_0 ),
        .I3(\input_data[5]_i_2_n_0 ),
        .I4(\i_out_reg[7]_i_4_n_0 ),
        .I5(mod_type[1]),
        .O(\i_out[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hEBEEAAAA)) 
    \i_out[7]_i_3 
       (.I0(mod_type[1]),
        .I1(\input_data[0]_i_1_n_0 ),
        .I2(g0_b0_i_2_n_0),
        .I3(g0_b0_i_1_n_0),
        .I4(mod_type[0]),
        .O(\i_out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFAFA0CFC0CFC0)) 
    \i_out[8]_i_1 
       (.I0(\i_out[8]_i_2_n_0 ),
        .I1(\i_out[8]_i_3_n_0 ),
        .I2(data_out_valid122_out),
        .I3(mod_type[0]),
        .I4(mod_type[1]),
        .I5(mod_type[2]),
        .O(\i_out[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF009F0000009F)) 
    \i_out[8]_i_2 
       (.I0(\input_data[0]_i_1_n_0 ),
        .I1(\i_out[8]_i_4_n_0 ),
        .I2(mod_type[0]),
        .I3(\i_out[8]_i_5_n_0 ),
        .I4(mod_type[1]),
        .I5(\i_out_reg[8]_i_6_n_0 ),
        .O(\i_out[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h8BB8BB88)) 
    \i_out[8]_i_3 
       (.I0(\i_out[4]_i_4_n_0 ),
        .I1(mod_type[1]),
        .I2(g0_b5_i_1_n_0),
        .I3(\input_data[0]_i_1_n_0 ),
        .I4(mod_type[0]),
        .O(\i_out[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i_out[8]_i_4 
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .O(\i_out[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFBFF)) 
    \i_out[8]_i_5 
       (.I0(g0_b5_i_1_n_0),
        .I1(\input_data[0]_i_1_n_0 ),
        .I2(g0_b0_i_2_n_0),
        .I3(g0_b0_i_1_n_0),
        .I4(\input_data[4]_i_1_n_0 ),
        .I5(\i_out[8]_i_7_n_0 ),
        .O(\i_out[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFEEEBBABBAAA)) 
    \i_out[8]_i_7 
       (.I0(mod_type[0]),
        .I1(data_in_valid),
        .I2(data_out_valid4_carry__0_n_0),
        .I3(\input_data[5]_i_3_n_0 ),
        .I4(input_data[5]),
        .I5(data_in[5]),
        .O(\i_out[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00FF080800000808)) 
    \i_out[9]_i_1 
       (.I0(mod_type[1]),
        .I1(mod_type[0]),
        .I2(mod_type[2]),
        .I3(\i_out[9]_i_2_n_0 ),
        .I4(data_out_valid122_out),
        .I5(\i_out[9]_i_3_n_0 ),
        .O(\i_out[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h06060F0F0F000F0F)) 
    \i_out[9]_i_2 
       (.I0(\i_out[9]_i_4_n_0 ),
        .I1(\input_data[4]_i_1_n_0 ),
        .I2(\i_out[9]_i_5_n_0 ),
        .I3(g0_b0_i_2_n_0),
        .I4(mod_type[1]),
        .I5(mod_type[0]),
        .O(\i_out[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF535FFFFC505FFFF)) 
    \i_out[9]_i_3 
       (.I0(\i_out[9]_i_6_n_0 ),
        .I1(mod_type[0]),
        .I2(mod_type[1]),
        .I3(g0_b9__0_n_0),
        .I4(mod_type[2]),
        .I5(g0_b9_n_0),
        .O(\i_out[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i_out[9]_i_4 
       (.I0(g0_b0_i_2_n_0),
        .I1(g0_b0_i_1_n_0),
        .O(\i_out[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hAAAAFBAE)) 
    \i_out[9]_i_5 
       (.I0(mod_type[2]),
        .I1(mod_type[0]),
        .I2(g0_b5_i_1_n_0),
        .I3(\input_data[0]_i_1_n_0 ),
        .I4(mod_type[1]),
        .O(\i_out[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6666F00F99990FF0)) 
    \i_out[9]_i_6 
       (.I0(g0_b0_i_1_n_0),
        .I1(\input_data[0]_i_1_n_0 ),
        .I2(\input_data[5]_i_2_n_0 ),
        .I3(\input_data[4]_i_1_n_0 ),
        .I4(mod_type[0]),
        .I5(g0_b0_i_2_n_0),
        .O(\i_out[9]_i_6_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[0] 
       (.C(clk),
        .CE(\i_out[11]_i_1_n_0 ),
        .CLR(reset),
        .D(\i_out[0]_i_1_n_0 ),
        .Q(i_out[0]));
  MUXF7 \i_out_reg[0]_i_4 
       (.I0(g0_b0__1_n_0),
        .I1(g0_b0__2_n_0),
        .O(\i_out_reg[0]_i_4_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[10] 
       (.C(clk),
        .CE(\i_out[11]_i_1_n_0 ),
        .CLR(reset),
        .D(\i_out[10]_i_1_n_0 ),
        .Q(i_out[10]));
  MUXF7 \i_out_reg[10]_i_4 
       (.I0(g0_b10_n_0),
        .I1(g0_b10__0_n_0),
        .O(\i_out_reg[10]_i_4_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[11] 
       (.C(clk),
        .CE(\i_out[11]_i_1_n_0 ),
        .CLR(reset),
        .D(\i_out[11]_i_2_n_0 ),
        .Q(i_out[11]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[1] 
       (.C(clk),
        .CE(\i_out[11]_i_1_n_0 ),
        .CLR(reset),
        .D(\i_out[1]_i_1_n_0 ),
        .Q(i_out[1]));
  MUXF7 \i_out_reg[1]_i_4 
       (.I0(g0_b1_n_0),
        .I1(g0_b1__0_n_0),
        .O(\i_out_reg[1]_i_4_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[2] 
       (.C(clk),
        .CE(\i_out[11]_i_1_n_0 ),
        .CLR(reset),
        .D(\i_out[2]_i_1_n_0 ),
        .Q(i_out[2]));
  MUXF7 \i_out_reg[2]_i_4 
       (.I0(g0_b2_n_0),
        .I1(g0_b2__0_n_0),
        .O(\i_out_reg[2]_i_4_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[3] 
       (.C(clk),
        .CE(\i_out[11]_i_1_n_0 ),
        .CLR(reset),
        .D(\i_out[3]_i_1_n_0 ),
        .Q(i_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[4] 
       (.C(clk),
        .CE(\i_out[11]_i_1_n_0 ),
        .CLR(reset),
        .D(\i_out[4]_i_1_n_0 ),
        .Q(i_out[4]));
  MUXF7 \i_out_reg[4]_i_5 
       (.I0(g0_b4_n_0),
        .I1(g0_b4__0_n_0),
        .O(\i_out_reg[4]_i_5_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[5] 
       (.C(clk),
        .CE(\i_out[11]_i_1_n_0 ),
        .CLR(reset),
        .D(\i_out[5]_i_1_n_0 ),
        .Q(i_out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[6] 
       (.C(clk),
        .CE(\i_out[11]_i_1_n_0 ),
        .CLR(reset),
        .D(\i_out[6]_i_1_n_0 ),
        .Q(i_out[6]));
  MUXF7 \i_out_reg[6]_i_5 
       (.I0(g0_b6_n_0),
        .I1(g0_b6__0_n_0),
        .O(\i_out_reg[6]_i_5_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[7] 
       (.C(clk),
        .CE(\i_out[11]_i_1_n_0 ),
        .CLR(reset),
        .D(\i_out[7]_i_1_n_0 ),
        .Q(i_out[7]));
  MUXF7 \i_out_reg[7]_i_4 
       (.I0(g0_b7_n_0),
        .I1(g0_b7__0_n_0),
        .O(\i_out_reg[7]_i_4_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[8] 
       (.C(clk),
        .CE(\i_out[11]_i_1_n_0 ),
        .CLR(reset),
        .D(\i_out[8]_i_1_n_0 ),
        .Q(i_out[8]));
  MUXF7 \i_out_reg[8]_i_6 
       (.I0(g0_b8_n_0),
        .I1(g0_b8__0_n_0),
        .O(\i_out_reg[8]_i_6_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_out_reg[9] 
       (.C(clk),
        .CE(\i_out[11]_i_1_n_0 ),
        .CLR(reset),
        .D(\i_out[9]_i_1_n_0 ),
        .Q(i_out[9]));
  LUT5 #(
    .INIT(32'hCCCCF0AA)) 
    \input_data[0]_i_1 
       (.I0(input_data[0]),
        .I1(data_in[0]),
        .I2(\input_data[0]_i_2_n_0 ),
        .I3(data_out_valid4_carry__0_n_0),
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
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \input_data[1]_i_1 
       (.I0(g0_b5_i_1_n_0),
        .O(\input_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \input_data[2]_i_1 
       (.I0(g0_b0_i_1_n_0),
        .O(\input_data[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \input_data[3]_i_1 
       (.I0(g0_b0_i_2_n_0),
        .O(\input_data[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAF0CC)) 
    \input_data[4]_i_1 
       (.I0(data_in[4]),
        .I1(input_data[4]),
        .I2(\input_data[4]_i_2_n_0 ),
        .I3(data_out_valid4_carry__0_n_0),
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
  LUT2 #(
    .INIT(4'h2)) 
    \input_data[5]_i_1 
       (.I0(data_out_valid122_out),
        .I1(reset),
        .O(input_data0));
  LUT5 #(
    .INIT(32'hAAAAF0CC)) 
    \input_data[5]_i_2 
       (.I0(data_in[5]),
        .I1(input_data[5]),
        .I2(\input_data[5]_i_3_n_0 ),
        .I3(data_out_valid4_carry__0_n_0),
        .I4(data_in_valid),
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
  LUT6 #(
    .INIT(64'h1111111111F11111)) 
    \k[0]_i_1 
       (.I0(data_out_valid122_out),
        .I1(\symbol_counter[0]_i_3_n_0 ),
        .I2(data_in_ready),
        .I3(pilot_insertion),
        .I4(data_out_valid4_carry__0_n_0),
        .I5(data_in_valid),
        .O(\k[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[0]_i_3 
       (.I0(data_out_valid122_out),
        .I1(k_reg[2]),
        .O(\k[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \k[0]_i_4 
       (.I0(data_out_valid122_out),
        .I1(k_reg[1]),
        .O(\k[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \k[0]_i_5 
       (.I0(k_reg[0]),
        .I1(data_out_valid122_out),
        .O(\k[0]_i_5_n_0 ));
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
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,data_out_valid122_out}),
        .O({\NLW_k_reg[0]_i_2_O_UNCONNECTED [7:3],\k_reg[0]_i_2_n_13 ,\k_reg[0]_i_2_n_14 ,\k_reg[0]_i_2_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\k[0]_i_3_n_0 ,\k[0]_i_4_n_0 ,\k[0]_i_5_n_0 }));
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
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFF2F0020)) 
    last_frame_i_1
       (.I0(end_of_frame),
        .I1(data_out_valid0),
        .I2(data_out_last_i_5_n_0),
        .I3(reset),
        .I4(last_frame),
        .O(last_frame_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    last_frame_reg
       (.C(clk),
        .CE(1'b1),
        .D(last_frame_i_1_n_0),
        .Q(last_frame),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFAFCFC0)) 
    \q_out[0]_i_1 
       (.I0(\q_out[0]_i_2_n_0 ),
        .I1(\q_out[0]_i_3_n_0 ),
        .I2(data_out_valid122_out),
        .I3(mod_type[1]),
        .I4(mod_type[2]),
        .I5(mod_type[0]),
        .O(\q_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888BBBBB888B8888)) 
    \q_out[0]_i_2 
       (.I0(\q_out_reg[0]_i_4_n_0 ),
        .I1(mod_type[1]),
        .I2(g0_b0_i_1_n_0),
        .I3(g0_b0_i_2_n_0),
        .I4(mod_type[0]),
        .I5(g0_b0__4_n_0),
        .O(\q_out[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFD0DF0F0)) 
    \q_out[0]_i_3 
       (.I0(g0_b5_i_1_n_0),
        .I1(\q_out[11]_i_3_n_0 ),
        .I2(mod_type[0]),
        .I3(g0_b0__0_n_0),
        .I4(mod_type[1]),
        .O(\q_out[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF101FEFEF1010E0E)) 
    \q_out[10]_i_1 
       (.I0(mod_type[1]),
        .I1(mod_type[0]),
        .I2(data_out_valid122_out),
        .I3(\q_out[10]_i_2_n_0 ),
        .I4(mod_type[2]),
        .I5(\q_out[10]_i_3_n_0 ),
        .O(\q_out[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF6F6FFF006060F00)) 
    \q_out[10]_i_2 
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(mod_type[1]),
        .I3(g0_b10__2_n_0),
        .I4(mod_type[0]),
        .I5(\q_out_reg[10]_i_4_n_0 ),
        .O(\q_out[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB0B08C80BCB08080)) 
    \q_out[10]_i_3 
       (.I0(g0_b10__3_n_0),
        .I1(mod_type[1]),
        .I2(mod_type[0]),
        .I3(\q_out[11]_i_3_n_0 ),
        .I4(g0_b5_i_1_n_0),
        .I5(\input_data[0]_i_1_n_0 ),
        .O(\q_out[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q_out[11]_i_1 
       (.I0(data_out_valid122_out),
        .I1(\q_out[11]_i_2_n_0 ),
        .O(\q_out[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FC770077)) 
    \q_out[11]_i_2 
       (.I0(g0_b11_n_0),
        .I1(mod_type[2]),
        .I2(\q_out[11]_i_3_n_0 ),
        .I3(mod_type[1]),
        .I4(g0_b5_i_1_n_0),
        .I5(mod_type[0]),
        .O(\q_out[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \q_out[11]_i_3 
       (.I0(g0_b0_i_1_n_0),
        .I1(\input_data[0]_i_1_n_0 ),
        .I2(g0_b0_i_2_n_0),
        .O(\q_out[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55555444FFFFFFFF)) 
    \q_out[1]_i_1 
       (.I0(\q_out[1]_i_2_n_0 ),
        .I1(\q_out[5]_i_4_n_0 ),
        .I2(g0_b1__3_n_0),
        .I3(\q_out[5]_i_3_n_0 ),
        .I4(\q_out[8]_i_3_n_0 ),
        .I5(\q_out[7]_i_4_n_0 ),
        .O(\q_out[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4700FFFF)) 
    \q_out[1]_i_2 
       (.I0(\q_out_reg[1]_i_3_n_0 ),
        .I1(mod_type[1]),
        .I2(\q_out[1]_i_4_n_0 ),
        .I3(mod_type[2]),
        .I4(data_out_valid122_out),
        .O(\q_out[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \q_out[1]_i_4 
       (.I0(g0_b0_i_1_n_0),
        .I1(g0_b0_i_2_n_0),
        .I2(g0_b5_i_1_n_0),
        .I3(mod_type[0]),
        .I4(g0_b1__2_n_0),
        .O(\q_out[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFA0AFCFC0)) 
    \q_out[2]_i_1 
       (.I0(\q_out[2]_i_2_n_0 ),
        .I1(\q_out[10]_i_3_n_0 ),
        .I2(data_out_valid122_out),
        .I3(mod_type[0]),
        .I4(mod_type[2]),
        .I5(mod_type[1]),
        .O(\q_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00007600)) 
    \q_out[2]_i_2 
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .I2(g0_b0_i_2_n_0),
        .I3(mod_type[0]),
        .I4(mod_type[1]),
        .I5(\q_out[2]_i_3_n_0 ),
        .O(\q_out[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hC0AFC0A0)) 
    \q_out[2]_i_3 
       (.I0(g0_b2__2_n_0),
        .I1(g0_b2__1_n_0),
        .I2(mod_type[1]),
        .I3(mod_type[0]),
        .I4(g0_b8__2_n_0),
        .O(\q_out[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h74774744)) 
    \q_out[3]_i_1 
       (.I0(\q_out[3]_i_2_n_0 ),
        .I1(data_out_valid122_out),
        .I2(mod_type[0]),
        .I3(mod_type[2]),
        .I4(mod_type[1]),
        .O(\q_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB88BBB8BB8BBBB)) 
    \q_out[3]_i_2 
       (.I0(\q_out[3]_i_3_n_0 ),
        .I1(mod_type[2]),
        .I2(g0_b5_i_1_n_0),
        .I3(mod_type[1]),
        .I4(mod_type[0]),
        .I5(\q_out[11]_i_3_n_0 ),
        .O(\q_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC05050CFCF5F5)) 
    \q_out[3]_i_3 
       (.I0(g0_b9__2_n_0),
        .I1(g0_b5_i_1_n_0),
        .I2(mod_type[1]),
        .I3(g0_b3__1_n_0),
        .I4(mod_type[0]),
        .I5(g0_b3__2_n_0),
        .O(\q_out[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8FFFFBBB80000)) 
    \q_out[4]_i_1 
       (.I0(\q_out[4]_i_2_n_0 ),
        .I1(mod_type[2]),
        .I2(\q_out[9]_i_3_n_0 ),
        .I3(\q_out[8]_i_4_n_0 ),
        .I4(data_out_valid122_out),
        .I5(\q_out[9]_i_5_n_0 ),
        .O(\q_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB88BBBBBB88B8888)) 
    \q_out[4]_i_2 
       (.I0(\q_out_reg[4]_i_3_n_0 ),
        .I1(mod_type[1]),
        .I2(g0_b5_i_1_n_0),
        .I3(\i_out[9]_i_4_n_0 ),
        .I4(mod_type[0]),
        .I5(g0_b10__2_n_0),
        .O(\q_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBAAA)) 
    \q_out[5]_i_1 
       (.I0(\q_out[8]_i_2_n_0 ),
        .I1(\q_out[5]_i_2_n_0 ),
        .I2(g0_b9__3_n_0),
        .I3(\q_out[5]_i_3_n_0 ),
        .I4(\q_out[5]_i_4_n_0 ),
        .I5(\q_out[8]_i_3_n_0 ),
        .O(\q_out[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55145555FFFFFFFF)) 
    \q_out[5]_i_2 
       (.I0(\q_out[5]_i_5_n_0 ),
        .I1(\q_out[9]_i_6_n_0 ),
        .I2(g0_b0_i_2_n_0),
        .I3(mod_type[1]),
        .I4(mod_type[0]),
        .I5(data_out_valid122_out),
        .O(\q_out[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q_out[5]_i_3 
       (.I0(mod_type[0]),
        .I1(mod_type[1]),
        .O(\q_out[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \q_out[5]_i_4 
       (.I0(mod_type[0]),
        .I1(mod_type[1]),
        .I2(\q_out[11]_i_3_n_0 ),
        .I3(g0_b5_i_1_n_0),
        .O(\q_out[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDD55F5FFDD55F555)) 
    \q_out[5]_i_5 
       (.I0(mod_type[2]),
        .I1(g0_b5__2_n_0),
        .I2(g0_b5__1_n_0),
        .I3(mod_type[1]),
        .I4(mod_type[0]),
        .I5(g0_b8__2_n_0),
        .O(\q_out[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF000DADAFF0FDADA)) 
    \q_out[6]_i_1 
       (.I0(mod_type[1]),
        .I1(mod_type[0]),
        .I2(mod_type[2]),
        .I3(\q_out[6]_i_2_n_0 ),
        .I4(data_out_valid122_out),
        .I5(\q_out[6]_i_3_n_0 ),
        .O(\q_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q_out[6]_i_2 
       (.I0(g0_b6__1_n_0),
        .I1(g0_b6__2_n_0),
        .I2(mod_type[1]),
        .I3(\q_out[9]_i_6_n_0 ),
        .I4(mod_type[0]),
        .I5(g0_b9__2_n_0),
        .O(\q_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F434F737F4F4F)) 
    \q_out[6]_i_3 
       (.I0(g0_b10__3_n_0),
        .I1(mod_type[1]),
        .I2(mod_type[0]),
        .I3(\q_out[11]_i_3_n_0 ),
        .I4(g0_b5_i_1_n_0),
        .I5(\input_data[0]_i_1_n_0 ),
        .O(\q_out[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE000E0E0FFFFFFFF)) 
    \q_out[7]_i_1 
       (.I0(\q_out[7]_i_2_n_0 ),
        .I1(\q_out[8]_i_3_n_0 ),
        .I2(data_out_valid122_out),
        .I3(\q_out[7]_i_3_n_0 ),
        .I4(mod_type[2]),
        .I5(\q_out[7]_i_4_n_0 ),
        .O(\q_out[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \q_out[7]_i_2 
       (.I0(\q_out[11]_i_3_n_0 ),
        .I1(mod_type[0]),
        .I2(mod_type[1]),
        .I3(g0_b5_i_1_n_0),
        .O(\q_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF6F6FFF006060F00)) 
    \q_out[7]_i_3 
       (.I0(g0_b5_i_1_n_0),
        .I1(\i_out[9]_i_4_n_0 ),
        .I2(mod_type[1]),
        .I3(g0_b10__2_n_0),
        .I4(mod_type[0]),
        .I5(\q_out_reg[7]_i_5_n_0 ),
        .O(\q_out[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hBAAB)) 
    \q_out[7]_i_4 
       (.I0(data_out_valid122_out),
        .I1(mod_type[0]),
        .I2(mod_type[2]),
        .I3(mod_type[1]),
        .O(\q_out[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFEAAFEAAFEAA)) 
    \q_out[8]_i_1 
       (.I0(\q_out[8]_i_2_n_0 ),
        .I1(\q_out[8]_i_3_n_0 ),
        .I2(\q_out[8]_i_4_n_0 ),
        .I3(data_out_valid122_out),
        .I4(\q_out[8]_i_5_n_0 ),
        .I5(\q_out[8]_i_6_n_0 ),
        .O(\q_out[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1554)) 
    \q_out[8]_i_2 
       (.I0(data_out_valid122_out),
        .I1(mod_type[0]),
        .I2(mod_type[1]),
        .I3(mod_type[2]),
        .O(\q_out[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hAEAA)) 
    \q_out[8]_i_3 
       (.I0(mod_type[2]),
        .I1(mod_type[0]),
        .I2(mod_type[1]),
        .I3(g0_b5_i_1_n_0),
        .O(\q_out[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF60000000600000)) 
    \q_out[8]_i_4 
       (.I0(\input_data[0]_i_1_n_0 ),
        .I1(g0_b5_i_1_n_0),
        .I2(\q_out[11]_i_3_n_0 ),
        .I3(mod_type[0]),
        .I4(mod_type[1]),
        .I5(g0_b8__3_n_0),
        .O(\q_out[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hF9FF)) 
    \q_out[8]_i_5 
       (.I0(\i_out[9]_i_4_n_0 ),
        .I1(g0_b5_i_1_n_0),
        .I2(mod_type[1]),
        .I3(mod_type[0]),
        .O(\q_out[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2020A0AA2A2AA0AA)) 
    \q_out[8]_i_6 
       (.I0(mod_type[2]),
        .I1(g0_b8__1_n_0),
        .I2(mod_type[0]),
        .I3(g0_b8__2_n_0),
        .I4(mod_type[1]),
        .I5(g0_b8__4_n_0),
        .O(\q_out[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8FFFFBBB80000)) 
    \q_out[9]_i_1 
       (.I0(\q_out[9]_i_2_n_0 ),
        .I1(mod_type[2]),
        .I2(\q_out[9]_i_3_n_0 ),
        .I3(\q_out[9]_i_4_n_0 ),
        .I4(data_out_valid122_out),
        .I5(\q_out[9]_i_5_n_0 ),
        .O(\q_out[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF2EE200002EE2)) 
    \q_out[9]_i_2 
       (.I0(g0_b9__2_n_0),
        .I1(mod_type[0]),
        .I2(\q_out[9]_i_6_n_0 ),
        .I3(g0_b0_i_2_n_0),
        .I4(mod_type[1]),
        .I5(\q_out_reg[9]_i_7_n_0 ),
        .O(\q_out[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \q_out[9]_i_3 
       (.I0(mod_type[1]),
        .I1(mod_type[0]),
        .I2(g0_b5_i_1_n_0),
        .O(\q_out[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hF8000800)) 
    \q_out[9]_i_4 
       (.I0(g0_b5_i_1_n_0),
        .I1(\q_out[11]_i_3_n_0 ),
        .I2(mod_type[0]),
        .I3(mod_type[1]),
        .I4(g0_b9__3_n_0),
        .O(\q_out[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \q_out[9]_i_5 
       (.I0(mod_type[1]),
        .I1(mod_type[2]),
        .I2(mod_type[0]),
        .O(\q_out[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \q_out[9]_i_6 
       (.I0(g0_b5_i_1_n_0),
        .I1(g0_b0_i_1_n_0),
        .O(\q_out[9]_i_6_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[0] 
       (.C(clk),
        .CE(\i_out[11]_i_1_n_0 ),
        .CLR(reset),
        .D(\q_out[0]_i_1_n_0 ),
        .Q(q_out[0]));
  MUXF7 \q_out_reg[0]_i_4 
       (.I0(g0_b0_n_0),
        .I1(g0_b0__3_n_0),
        .O(\q_out_reg[0]_i_4_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[10] 
       (.C(clk),
        .CE(\i_out[11]_i_1_n_0 ),
        .CLR(reset),
        .D(\q_out[10]_i_1_n_0 ),
        .Q(q_out[10]));
  MUXF7 \q_out_reg[10]_i_4 
       (.I0(g0_b10__4_n_0),
        .I1(g0_b10__1_n_0),
        .O(\q_out_reg[10]_i_4_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[11] 
       (.C(clk),
        .CE(\i_out[11]_i_1_n_0 ),
        .CLR(reset),
        .D(\q_out[11]_i_1_n_0 ),
        .Q(q_out[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[1] 
       (.C(clk),
        .CE(\i_out[11]_i_1_n_0 ),
        .CLR(reset),
        .D(\q_out[1]_i_1_n_0 ),
        .Q(q_out[1]));
  MUXF7 \q_out_reg[1]_i_3 
       (.I0(g0_b1__4_n_0),
        .I1(g0_b1__1_n_0),
        .O(\q_out_reg[1]_i_3_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[2] 
       (.C(clk),
        .CE(\i_out[11]_i_1_n_0 ),
        .CLR(reset),
        .D(\q_out[2]_i_1_n_0 ),
        .Q(q_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[3] 
       (.C(clk),
        .CE(\i_out[11]_i_1_n_0 ),
        .CLR(reset),
        .D(\q_out[3]_i_1_n_0 ),
        .Q(q_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[4] 
       (.C(clk),
        .CE(\i_out[11]_i_1_n_0 ),
        .CLR(reset),
        .D(\q_out[4]_i_1_n_0 ),
        .Q(q_out[4]));
  MUXF7 \q_out_reg[4]_i_3 
       (.I0(g0_b4__2_n_0),
        .I1(g0_b4__1_n_0),
        .O(\q_out_reg[4]_i_3_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[5] 
       (.C(clk),
        .CE(\i_out[11]_i_1_n_0 ),
        .CLR(reset),
        .D(\q_out[5]_i_1_n_0 ),
        .Q(q_out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[6] 
       (.C(clk),
        .CE(\i_out[11]_i_1_n_0 ),
        .CLR(reset),
        .D(\q_out[6]_i_1_n_0 ),
        .Q(q_out[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[7] 
       (.C(clk),
        .CE(\i_out[11]_i_1_n_0 ),
        .CLR(reset),
        .D(\q_out[7]_i_1_n_0 ),
        .Q(q_out[7]));
  MUXF7 \q_out_reg[7]_i_5 
       (.I0(g0_b7__2_n_0),
        .I1(g0_b7__1_n_0),
        .O(\q_out_reg[7]_i_5_n_0 ),
        .S(mod_type[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[8] 
       (.C(clk),
        .CE(\i_out[11]_i_1_n_0 ),
        .CLR(reset),
        .D(\q_out[8]_i_1_n_0 ),
        .Q(q_out[8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_out_reg[9] 
       (.C(clk),
        .CE(\i_out[11]_i_1_n_0 ),
        .CLR(reset),
        .D(\q_out[9]_i_1_n_0 ),
        .Q(q_out[9]));
  MUXF7 \q_out_reg[9]_i_7 
       (.I0(g0_b9__4_n_0),
        .I1(g0_b9__1_n_0),
        .O(\q_out_reg[9]_i_7_n_0 ),
        .S(mod_type[0]));
  LUT6 #(
    .INIT(64'h00000000F3F2F2F2)) 
    \symbol_counter[0]_i_1 
       (.I0(pilot_insertion),
        .I1(\symbol_counter[0]_i_3_n_0 ),
        .I2(data_out_valid122_out),
        .I3(data_out_valid0),
        .I4(end_of_frame),
        .I5(\symbol_counter[0]_i_4_n_0 ),
        .O(symbol_counter0_5));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[0]_i_10 
       (.I0(symbol_counter_reg[2]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[2]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[0]_i_11 
       (.I0(symbol_counter_reg[1]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[1]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \symbol_counter[0]_i_12 
       (.I0(data_out_last_i_5_n_0),
        .I1(symbol_counter_reg[0]),
        .I2(data_out_valid122_out),
        .O(\symbol_counter[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \symbol_counter[0]_i_13 
       (.I0(data_in_ready),
        .I1(data_in_valid),
        .I2(buff_counter_reg[2]),
        .I3(buff_counter_reg[3]),
        .I4(buff_counter_reg[1]),
        .I5(buff_counter_reg[0]),
        .O(\symbol_counter[0]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \symbol_counter[0]_i_15 
       (.I0(pilot_insertion),
        .I1(data_in_valid),
        .I2(\symbol_counter[0]_i_16_n_0 ),
        .I3(\symbol_counter[0]_i_17_n_0 ),
        .I4(data_in_ready),
        .O(\symbol_counter[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \symbol_counter[0]_i_16 
       (.I0(buff_counter_reg[28]),
        .I1(buff_counter_reg[29]),
        .I2(buff_counter_reg[27]),
        .I3(buff_counter_reg[25]),
        .I4(buff_counter_reg[26]),
        .I5(buff_counter_reg[24]),
        .O(\symbol_counter[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \symbol_counter[0]_i_17 
       (.I0(\buff_reg[5][5]_i_6_n_0 ),
        .I1(\symbol_counter[0]_i_18_n_0 ),
        .I2(\symbol_counter[0]_i_19_n_0 ),
        .I3(\buff_reg[1][5]_i_4_n_0 ),
        .I4(\symbol_counter[0]_i_20_n_0 ),
        .I5(\symbol_counter[0]_i_21_n_0 ),
        .O(\symbol_counter[0]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \symbol_counter[0]_i_18 
       (.I0(buff_counter_reg[6]),
        .I1(buff_counter_reg[7]),
        .O(\symbol_counter[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \symbol_counter[0]_i_19 
       (.I0(buff_counter_reg[19]),
        .I1(buff_counter_reg[18]),
        .I2(buff_counter_reg[20]),
        .I3(buff_counter_reg[21]),
        .I4(buff_counter_reg[22]),
        .I5(buff_counter_reg[23]),
        .O(\symbol_counter[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \symbol_counter[0]_i_20 
       (.I0(buff_counter_reg[1]),
        .I1(buff_counter_reg[2]),
        .I2(buff_counter_reg[0]),
        .I3(buff_counter_reg[4]),
        .I4(buff_counter_reg[5]),
        .I5(buff_counter_reg[3]),
        .O(\symbol_counter[0]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \symbol_counter[0]_i_21 
       (.I0(buff_counter_reg[31]),
        .I1(buff_counter_reg[30]),
        .O(\symbol_counter[0]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \symbol_counter[0]_i_3 
       (.I0(\buff_reg[3][5]_i_6_n_0 ),
        .I1(\symbol_counter[0]_i_13_n_0 ),
        .I2(\buff_reg[1][5]_i_4_n_0 ),
        .I3(\buff_reg[1][5]_i_2_n_0 ),
        .O(\symbol_counter[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFBAA)) 
    \symbol_counter[0]_i_4 
       (.I0(reset),
        .I1(data_out_valid0),
        .I2(signal_field_en),
        .I3(data_out_valid122_out),
        .O(\symbol_counter[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[0]_i_5 
       (.I0(symbol_counter_reg[7]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[7]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[0]_i_6 
       (.I0(symbol_counter_reg[6]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[6]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[0]_i_7 
       (.I0(symbol_counter_reg[5]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[5]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[0]_i_8 
       (.I0(symbol_counter_reg[4]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[4]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[0]_i_9 
       (.I0(symbol_counter_reg[3]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[3]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[16]_i_2 
       (.I0(symbol_counter_reg[23]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[23]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[16]_i_3 
       (.I0(symbol_counter_reg[22]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[22]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[16]_i_4 
       (.I0(symbol_counter_reg[21]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[21]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[16]_i_5 
       (.I0(symbol_counter_reg[20]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[20]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[16]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[16]_i_6 
       (.I0(symbol_counter_reg[19]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[19]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[16]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[16]_i_7 
       (.I0(symbol_counter_reg[18]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[18]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[16]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[16]_i_8 
       (.I0(symbol_counter_reg[17]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[17]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[16]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[16]_i_9 
       (.I0(symbol_counter_reg[16]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[16]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[16]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[24]_i_2 
       (.I0(symbol_counter_reg[31]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[31]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[24]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[24]_i_3 
       (.I0(symbol_counter_reg[30]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[30]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[24]_i_4 
       (.I0(symbol_counter_reg[29]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[29]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[24]_i_5 
       (.I0(symbol_counter_reg[28]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[28]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[24]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[24]_i_6 
       (.I0(symbol_counter_reg[27]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[27]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[24]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[24]_i_7 
       (.I0(symbol_counter_reg[26]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[26]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[24]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[24]_i_8 
       (.I0(symbol_counter_reg[25]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[25]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[24]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[24]_i_9 
       (.I0(symbol_counter_reg[24]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[24]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[24]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[8]_i_2 
       (.I0(symbol_counter_reg[15]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[15]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[8]_i_3 
       (.I0(symbol_counter_reg[14]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[14]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[8]_i_4 
       (.I0(symbol_counter_reg[13]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[13]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[8]_i_5 
       (.I0(symbol_counter_reg[12]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[12]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[8]_i_6 
       (.I0(symbol_counter_reg[11]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[11]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[8]_i_7 
       (.I0(symbol_counter_reg[10]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[10]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[8]_i_8 
       (.I0(symbol_counter_reg[9]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[9]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[8]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \symbol_counter[8]_i_9 
       (.I0(symbol_counter_reg[8]),
        .I1(data_out_valid122_out),
        .I2(symbol_counter0[8]),
        .I3(\symbol_counter[0]_i_15_n_0 ),
        .O(\symbol_counter[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[0] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[0]_i_2_n_15 ),
        .Q(symbol_counter_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \symbol_counter_reg[0]_i_14 
       (.CI(symbol_counter_reg[0]),
        .CI_TOP(1'b0),
        .CO({\symbol_counter_reg[0]_i_14_n_0 ,\symbol_counter_reg[0]_i_14_n_1 ,\symbol_counter_reg[0]_i_14_n_2 ,\symbol_counter_reg[0]_i_14_n_3 ,\symbol_counter_reg[0]_i_14_n_4 ,\symbol_counter_reg[0]_i_14_n_5 ,\symbol_counter_reg[0]_i_14_n_6 ,\symbol_counter_reg[0]_i_14_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(symbol_counter0[8:1]),
        .S(symbol_counter_reg[8:1]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \symbol_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\symbol_counter_reg[0]_i_2_n_0 ,\symbol_counter_reg[0]_i_2_n_1 ,\symbol_counter_reg[0]_i_2_n_2 ,\symbol_counter_reg[0]_i_2_n_3 ,\symbol_counter_reg[0]_i_2_n_4 ,\symbol_counter_reg[0]_i_2_n_5 ,\symbol_counter_reg[0]_i_2_n_6 ,\symbol_counter_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,data_out_valid122_out}),
        .O({\symbol_counter_reg[0]_i_2_n_8 ,\symbol_counter_reg[0]_i_2_n_9 ,\symbol_counter_reg[0]_i_2_n_10 ,\symbol_counter_reg[0]_i_2_n_11 ,\symbol_counter_reg[0]_i_2_n_12 ,\symbol_counter_reg[0]_i_2_n_13 ,\symbol_counter_reg[0]_i_2_n_14 ,\symbol_counter_reg[0]_i_2_n_15 }),
        .S({\symbol_counter[0]_i_5_n_0 ,\symbol_counter[0]_i_6_n_0 ,\symbol_counter[0]_i_7_n_0 ,\symbol_counter[0]_i_8_n_0 ,\symbol_counter[0]_i_9_n_0 ,\symbol_counter[0]_i_10_n_0 ,\symbol_counter[0]_i_11_n_0 ,\symbol_counter[0]_i_12_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[10] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[8]_i_1_n_13 ),
        .Q(symbol_counter_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[11] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[8]_i_1_n_12 ),
        .Q(symbol_counter_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[12] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[8]_i_1_n_11 ),
        .Q(symbol_counter_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[13] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[8]_i_1_n_10 ),
        .Q(symbol_counter_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[14] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[8]_i_1_n_9 ),
        .Q(symbol_counter_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[15] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[8]_i_1_n_8 ),
        .Q(symbol_counter_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[16] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[16]_i_1_n_15 ),
        .Q(symbol_counter_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \symbol_counter_reg[16]_i_1 
       (.CI(\symbol_counter_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\symbol_counter_reg[16]_i_1_n_0 ,\symbol_counter_reg[16]_i_1_n_1 ,\symbol_counter_reg[16]_i_1_n_2 ,\symbol_counter_reg[16]_i_1_n_3 ,\symbol_counter_reg[16]_i_1_n_4 ,\symbol_counter_reg[16]_i_1_n_5 ,\symbol_counter_reg[16]_i_1_n_6 ,\symbol_counter_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\symbol_counter_reg[16]_i_1_n_8 ,\symbol_counter_reg[16]_i_1_n_9 ,\symbol_counter_reg[16]_i_1_n_10 ,\symbol_counter_reg[16]_i_1_n_11 ,\symbol_counter_reg[16]_i_1_n_12 ,\symbol_counter_reg[16]_i_1_n_13 ,\symbol_counter_reg[16]_i_1_n_14 ,\symbol_counter_reg[16]_i_1_n_15 }),
        .S({\symbol_counter[16]_i_2_n_0 ,\symbol_counter[16]_i_3_n_0 ,\symbol_counter[16]_i_4_n_0 ,\symbol_counter[16]_i_5_n_0 ,\symbol_counter[16]_i_6_n_0 ,\symbol_counter[16]_i_7_n_0 ,\symbol_counter[16]_i_8_n_0 ,\symbol_counter[16]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \symbol_counter_reg[16]_i_10 
       (.CI(\symbol_counter_reg[8]_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\symbol_counter_reg[16]_i_10_n_0 ,\symbol_counter_reg[16]_i_10_n_1 ,\symbol_counter_reg[16]_i_10_n_2 ,\symbol_counter_reg[16]_i_10_n_3 ,\symbol_counter_reg[16]_i_10_n_4 ,\symbol_counter_reg[16]_i_10_n_5 ,\symbol_counter_reg[16]_i_10_n_6 ,\symbol_counter_reg[16]_i_10_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(symbol_counter0[24:17]),
        .S(symbol_counter_reg[24:17]));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[17] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[16]_i_1_n_14 ),
        .Q(symbol_counter_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[18] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[16]_i_1_n_13 ),
        .Q(symbol_counter_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[19] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[16]_i_1_n_12 ),
        .Q(symbol_counter_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[1] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[0]_i_2_n_14 ),
        .Q(symbol_counter_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[20] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[16]_i_1_n_11 ),
        .Q(symbol_counter_reg[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[21] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[16]_i_1_n_10 ),
        .Q(symbol_counter_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[22] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[16]_i_1_n_9 ),
        .Q(symbol_counter_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[23] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[16]_i_1_n_8 ),
        .Q(symbol_counter_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[24] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[24]_i_1_n_15 ),
        .Q(symbol_counter_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \symbol_counter_reg[24]_i_1 
       (.CI(\symbol_counter_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_symbol_counter_reg[24]_i_1_CO_UNCONNECTED [7],\symbol_counter_reg[24]_i_1_n_1 ,\symbol_counter_reg[24]_i_1_n_2 ,\symbol_counter_reg[24]_i_1_n_3 ,\symbol_counter_reg[24]_i_1_n_4 ,\symbol_counter_reg[24]_i_1_n_5 ,\symbol_counter_reg[24]_i_1_n_6 ,\symbol_counter_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\symbol_counter_reg[24]_i_1_n_8 ,\symbol_counter_reg[24]_i_1_n_9 ,\symbol_counter_reg[24]_i_1_n_10 ,\symbol_counter_reg[24]_i_1_n_11 ,\symbol_counter_reg[24]_i_1_n_12 ,\symbol_counter_reg[24]_i_1_n_13 ,\symbol_counter_reg[24]_i_1_n_14 ,\symbol_counter_reg[24]_i_1_n_15 }),
        .S({\symbol_counter[24]_i_2_n_0 ,\symbol_counter[24]_i_3_n_0 ,\symbol_counter[24]_i_4_n_0 ,\symbol_counter[24]_i_5_n_0 ,\symbol_counter[24]_i_6_n_0 ,\symbol_counter[24]_i_7_n_0 ,\symbol_counter[24]_i_8_n_0 ,\symbol_counter[24]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \symbol_counter_reg[24]_i_10 
       (.CI(\symbol_counter_reg[16]_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_symbol_counter_reg[24]_i_10_CO_UNCONNECTED [7:6],\symbol_counter_reg[24]_i_10_n_2 ,\symbol_counter_reg[24]_i_10_n_3 ,\symbol_counter_reg[24]_i_10_n_4 ,\symbol_counter_reg[24]_i_10_n_5 ,\symbol_counter_reg[24]_i_10_n_6 ,\symbol_counter_reg[24]_i_10_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_symbol_counter_reg[24]_i_10_O_UNCONNECTED [7],symbol_counter0[31:25]}),
        .S({1'b0,symbol_counter_reg[31:25]}));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[25] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[24]_i_1_n_14 ),
        .Q(symbol_counter_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[26] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[24]_i_1_n_13 ),
        .Q(symbol_counter_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[27] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[24]_i_1_n_12 ),
        .Q(symbol_counter_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[28] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[24]_i_1_n_11 ),
        .Q(symbol_counter_reg[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[29] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[24]_i_1_n_10 ),
        .Q(symbol_counter_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[2] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[0]_i_2_n_13 ),
        .Q(symbol_counter_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[30] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[24]_i_1_n_9 ),
        .Q(symbol_counter_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[31] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[24]_i_1_n_8 ),
        .Q(symbol_counter_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[3] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[0]_i_2_n_12 ),
        .Q(symbol_counter_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[4] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[0]_i_2_n_11 ),
        .Q(symbol_counter_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[5] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[0]_i_2_n_10 ),
        .Q(symbol_counter_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[6] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[0]_i_2_n_9 ),
        .Q(symbol_counter_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[7] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[0]_i_2_n_8 ),
        .Q(symbol_counter_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[8] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[8]_i_1_n_15 ),
        .Q(symbol_counter_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \symbol_counter_reg[8]_i_1 
       (.CI(\symbol_counter_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\symbol_counter_reg[8]_i_1_n_0 ,\symbol_counter_reg[8]_i_1_n_1 ,\symbol_counter_reg[8]_i_1_n_2 ,\symbol_counter_reg[8]_i_1_n_3 ,\symbol_counter_reg[8]_i_1_n_4 ,\symbol_counter_reg[8]_i_1_n_5 ,\symbol_counter_reg[8]_i_1_n_6 ,\symbol_counter_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\symbol_counter_reg[8]_i_1_n_8 ,\symbol_counter_reg[8]_i_1_n_9 ,\symbol_counter_reg[8]_i_1_n_10 ,\symbol_counter_reg[8]_i_1_n_11 ,\symbol_counter_reg[8]_i_1_n_12 ,\symbol_counter_reg[8]_i_1_n_13 ,\symbol_counter_reg[8]_i_1_n_14 ,\symbol_counter_reg[8]_i_1_n_15 }),
        .S({\symbol_counter[8]_i_2_n_0 ,\symbol_counter[8]_i_3_n_0 ,\symbol_counter[8]_i_4_n_0 ,\symbol_counter[8]_i_5_n_0 ,\symbol_counter[8]_i_6_n_0 ,\symbol_counter[8]_i_7_n_0 ,\symbol_counter[8]_i_8_n_0 ,\symbol_counter[8]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \symbol_counter_reg[8]_i_10 
       (.CI(\symbol_counter_reg[0]_i_14_n_0 ),
        .CI_TOP(1'b0),
        .CO({\symbol_counter_reg[8]_i_10_n_0 ,\symbol_counter_reg[8]_i_10_n_1 ,\symbol_counter_reg[8]_i_10_n_2 ,\symbol_counter_reg[8]_i_10_n_3 ,\symbol_counter_reg[8]_i_10_n_4 ,\symbol_counter_reg[8]_i_10_n_5 ,\symbol_counter_reg[8]_i_10_n_6 ,\symbol_counter_reg[8]_i_10_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(symbol_counter0[16:9]),
        .S(symbol_counter_reg[16:9]));
  FDRE #(
    .INIT(1'b0)) 
    \symbol_counter_reg[9] 
       (.C(clk),
        .CE(symbol_counter0_5),
        .D(\symbol_counter_reg[8]_i_1_n_14 ),
        .Q(symbol_counter_reg[9]),
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
