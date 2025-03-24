// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Wed Mar 12 17:29:41 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_Pipelined_Polyphase_0_0_sim_netlist.v
// Design      : Design_2_Pipelined_Polyphase_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Design_2_Pipelined_Polyphase_0_0,Pipelined_Polyphase_Filter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "Pipelined_Polyphase_Filter,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset,
    input_I,
    input_Q,
    data_in_ready,
    data_in_valid,
    data_out_ready,
    data_out_valid,
    data_out_I,
    data_out_Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Design_2_clk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [31:0]input_I;
  input [31:0]input_Q;
  input data_in_ready;
  input data_in_valid;
  output data_out_ready;
  output data_out_valid;
  output [51:0]data_out_I;
  output [51:0]data_out_Q;

  wire clk;
  wire data_in_ready;
  wire data_in_valid;
  wire [51:0]data_out_I;
  wire [51:0]data_out_Q;
  wire data_out_ready;
  wire data_out_ready1;
  wire data_out_valid;
  wire [31:0]input_I;
  wire [31:0]input_Q;
  wire \mul_reg_I_reg[14][51]_i_2_n_0 ;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Pipelined_Polyphase_Filter U0
       (.clk(clk),
        .data_in_ready(data_in_ready),
        .data_in_valid(data_in_valid),
        .data_out_I(data_out_I),
        .data_out_Q(data_out_Q),
        .data_out_ready(data_out_ready),
        .data_out_ready1(data_out_ready1),
        .data_out_valid(data_out_valid),
        .input_I(input_I),
        .input_Q(input_Q),
        .\mul_reg_I_reg[14][21]_0 (\mul_reg_I_reg[14][51]_i_2_n_0 ),
        .reset(reset));
  FDCE \mul_reg_I_reg[14][51]_i_2 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(1'b1),
        .Q(\mul_reg_I_reg[14][51]_i_2_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Pipelined_Polyphase_Filter
   (data_out_Q,
    data_out_ready1,
    data_out_ready,
    data_out_valid,
    data_out_I,
    clk,
    reset,
    \mul_reg_I_reg[14][21]_0 ,
    data_in_ready,
    data_in_valid,
    input_I,
    input_Q);
  output [51:0]data_out_Q;
  output data_out_ready1;
  output data_out_ready;
  output data_out_valid;
  output [51:0]data_out_I;
  input clk;
  input reset;
  input \mul_reg_I_reg[14][21]_0 ;
  input data_in_ready;
  input data_in_valid;
  input [31:0]input_I;
  input [31:0]input_Q;

  wire clk;
  wire [14:10]\coeff[8] ;
  wire \coeff_reg[0][10]_i_1_n_0 ;
  wire \coeff_reg[0][11]_i_1_n_0 ;
  wire \coeff_reg[0][12]_i_1_n_0 ;
  wire \coeff_reg[0][13]_i_1_n_0 ;
  wire \coeff_reg[0][14]_i_1_n_0 ;
  wire \coeff_reg[0][9]_i_1_n_0 ;
  wire \coeff_reg[1][0]_i_1_n_0 ;
  wire \coeff_reg[2][0]_i_1_n_0 ;
  wire \coeff_reg[2][11]_i_1_n_0 ;
  wire \coeff_reg[2][12]_i_1_n_0 ;
  wire \coeff_reg[3][12]_i_1_n_0 ;
  wire \coeff_reg[3][13]_i_1_n_0 ;
  wire \coeff_reg[3][14]_i_1_n_0 ;
  wire \coeff_reg[3][9]_i_1_n_0 ;
  wire [14:9]\coeff_reg_reg[0] ;
  wire [14:0]\coeff_reg_reg[1] ;
  wire [12:0]\coeff_reg_reg[2] ;
  wire [14:9]\coeff_reg_reg[3] ;
  wire data_in_ready;
  wire data_in_valid;
  wire [51:0]data_out_I;
  wire \data_out_I[51]_i_1_n_0 ;
  wire [51:0]data_out_Q;
  wire data_out_ready;
  wire data_out_ready1;
  wire data_out_ready_i_1_n_0;
  wire data_out_valid;
  wire [31:0]input_I;
  wire [31:0]input_Q;
  wire [51:0]\mul_reg_I_reg[0] ;
  wire \mul_reg_I_reg[10][0]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][10]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ;
  wire \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ;
  wire \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ;
  wire \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ;
  wire \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ;
  wire \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ;
  wire \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ;
  wire \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ;
  wire \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ;
  wire \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ;
  wire \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ;
  wire \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ;
  wire \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ;
  wire \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 ;
  wire \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ;
  wire \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ;
  wire \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ;
  wire \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ;
  wire \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ;
  wire \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ;
  wire \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ;
  wire \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ;
  wire \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ;
  wire \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ;
  wire \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][12]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][13]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][14]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][15]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][16]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][17]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][18]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ;
  wire \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ;
  wire \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ;
  wire \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ;
  wire \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ;
  wire \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ;
  wire \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ;
  wire \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ;
  wire \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ;
  wire \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ;
  wire \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ;
  wire \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ;
  wire \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ;
  wire \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 ;
  wire \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ;
  wire \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ;
  wire \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ;
  wire \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ;
  wire \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ;
  wire \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ;
  wire \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ;
  wire \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ;
  wire \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ;
  wire \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ;
  wire \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][1]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][20]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][21]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][22]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][23]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][24]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][25]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][26]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ;
  wire \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ;
  wire \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ;
  wire \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ;
  wire \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ;
  wire \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ;
  wire \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ;
  wire \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ;
  wire \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ;
  wire \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ;
  wire \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ;
  wire \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ;
  wire \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ;
  wire \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 ;
  wire \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ;
  wire \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ;
  wire \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ;
  wire \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ;
  wire \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ;
  wire \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ;
  wire \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ;
  wire \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ;
  wire \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ;
  wire \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ;
  wire \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][28]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][29]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][2]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][30]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][31]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][32]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][33]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][34]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ;
  wire \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ;
  wire \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ;
  wire \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ;
  wire \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ;
  wire \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ;
  wire \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ;
  wire \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ;
  wire \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ;
  wire \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ;
  wire \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ;
  wire \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ;
  wire \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ;
  wire \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 ;
  wire \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ;
  wire \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ;
  wire \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ;
  wire \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ;
  wire \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ;
  wire \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ;
  wire \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ;
  wire \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ;
  wire \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ;
  wire \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ;
  wire \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][36]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][37]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][38]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][39]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][3]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][40]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][41]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][42]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ;
  wire \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ;
  wire \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ;
  wire \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ;
  wire \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ;
  wire \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ;
  wire \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ;
  wire \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ;
  wire \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ;
  wire \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ;
  wire \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ;
  wire \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ;
  wire \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ;
  wire \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 ;
  wire \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ;
  wire \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ;
  wire \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ;
  wire \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ;
  wire \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ;
  wire \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ;
  wire \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ;
  wire \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ;
  wire \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ;
  wire \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ;
  wire \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][44]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][45]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][46]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][47]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][48]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][49]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][4]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][50]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_10_n_0 ;
  wire \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ;
  wire \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ;
  wire \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ;
  wire \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ;
  wire \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ;
  wire \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ;
  wire \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ;
  wire \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ;
  wire \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ;
  wire \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ;
  wire \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ;
  wire \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ;
  wire \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 ;
  wire \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ;
  wire \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ;
  wire \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ;
  wire \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ;
  wire \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ;
  wire \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ;
  wire \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ;
  wire \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ;
  wire \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ;
  wire \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ;
  wire \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][5]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][6]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][7]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][8]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[10][9]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[11]1__0_n_100 ;
  wire \mul_reg_I_reg[11]1__0_n_101 ;
  wire \mul_reg_I_reg[11]1__0_n_102 ;
  wire \mul_reg_I_reg[11]1__0_n_103 ;
  wire \mul_reg_I_reg[11]1__0_n_104 ;
  wire \mul_reg_I_reg[11]1__0_n_105 ;
  wire \mul_reg_I_reg[11]1__0_n_58 ;
  wire \mul_reg_I_reg[11]1__0_n_59 ;
  wire \mul_reg_I_reg[11]1__0_n_60 ;
  wire \mul_reg_I_reg[11]1__0_n_61 ;
  wire \mul_reg_I_reg[11]1__0_n_62 ;
  wire \mul_reg_I_reg[11]1__0_n_63 ;
  wire \mul_reg_I_reg[11]1__0_n_64 ;
  wire \mul_reg_I_reg[11]1__0_n_65 ;
  wire \mul_reg_I_reg[11]1__0_n_66 ;
  wire \mul_reg_I_reg[11]1__0_n_67 ;
  wire \mul_reg_I_reg[11]1__0_n_68 ;
  wire \mul_reg_I_reg[11]1__0_n_69 ;
  wire \mul_reg_I_reg[11]1__0_n_70 ;
  wire \mul_reg_I_reg[11]1__0_n_71 ;
  wire \mul_reg_I_reg[11]1__0_n_72 ;
  wire \mul_reg_I_reg[11]1__0_n_73 ;
  wire \mul_reg_I_reg[11]1__0_n_74 ;
  wire \mul_reg_I_reg[11]1__0_n_75 ;
  wire \mul_reg_I_reg[11]1__0_n_76 ;
  wire \mul_reg_I_reg[11]1__0_n_77 ;
  wire \mul_reg_I_reg[11]1__0_n_78 ;
  wire \mul_reg_I_reg[11]1__0_n_79 ;
  wire \mul_reg_I_reg[11]1__0_n_80 ;
  wire \mul_reg_I_reg[11]1__0_n_81 ;
  wire \mul_reg_I_reg[11]1__0_n_82 ;
  wire \mul_reg_I_reg[11]1__0_n_83 ;
  wire \mul_reg_I_reg[11]1__0_n_84 ;
  wire \mul_reg_I_reg[11]1__0_n_85 ;
  wire \mul_reg_I_reg[11]1__0_n_86 ;
  wire \mul_reg_I_reg[11]1__0_n_87 ;
  wire \mul_reg_I_reg[11]1__0_n_88 ;
  wire \mul_reg_I_reg[11]1__0_n_89 ;
  wire \mul_reg_I_reg[11]1__0_n_90 ;
  wire \mul_reg_I_reg[11]1__0_n_91 ;
  wire \mul_reg_I_reg[11]1__0_n_92 ;
  wire \mul_reg_I_reg[11]1__0_n_93 ;
  wire \mul_reg_I_reg[11]1__0_n_94 ;
  wire \mul_reg_I_reg[11]1__0_n_95 ;
  wire \mul_reg_I_reg[11]1__0_n_96 ;
  wire \mul_reg_I_reg[11]1__0_n_97 ;
  wire \mul_reg_I_reg[11]1__0_n_98 ;
  wire \mul_reg_I_reg[11]1__0_n_99 ;
  wire \mul_reg_I_reg[11]1_n_100 ;
  wire \mul_reg_I_reg[11]1_n_101 ;
  wire \mul_reg_I_reg[11]1_n_102 ;
  wire \mul_reg_I_reg[11]1_n_103 ;
  wire \mul_reg_I_reg[11]1_n_104 ;
  wire \mul_reg_I_reg[11]1_n_105 ;
  wire \mul_reg_I_reg[11]1_n_106 ;
  wire \mul_reg_I_reg[11]1_n_107 ;
  wire \mul_reg_I_reg[11]1_n_108 ;
  wire \mul_reg_I_reg[11]1_n_109 ;
  wire \mul_reg_I_reg[11]1_n_110 ;
  wire \mul_reg_I_reg[11]1_n_111 ;
  wire \mul_reg_I_reg[11]1_n_112 ;
  wire \mul_reg_I_reg[11]1_n_113 ;
  wire \mul_reg_I_reg[11]1_n_114 ;
  wire \mul_reg_I_reg[11]1_n_115 ;
  wire \mul_reg_I_reg[11]1_n_116 ;
  wire \mul_reg_I_reg[11]1_n_117 ;
  wire \mul_reg_I_reg[11]1_n_118 ;
  wire \mul_reg_I_reg[11]1_n_119 ;
  wire \mul_reg_I_reg[11]1_n_120 ;
  wire \mul_reg_I_reg[11]1_n_121 ;
  wire \mul_reg_I_reg[11]1_n_122 ;
  wire \mul_reg_I_reg[11]1_n_123 ;
  wire \mul_reg_I_reg[11]1_n_124 ;
  wire \mul_reg_I_reg[11]1_n_125 ;
  wire \mul_reg_I_reg[11]1_n_126 ;
  wire \mul_reg_I_reg[11]1_n_127 ;
  wire \mul_reg_I_reg[11]1_n_128 ;
  wire \mul_reg_I_reg[11]1_n_129 ;
  wire \mul_reg_I_reg[11]1_n_130 ;
  wire \mul_reg_I_reg[11]1_n_131 ;
  wire \mul_reg_I_reg[11]1_n_132 ;
  wire \mul_reg_I_reg[11]1_n_133 ;
  wire \mul_reg_I_reg[11]1_n_134 ;
  wire \mul_reg_I_reg[11]1_n_135 ;
  wire \mul_reg_I_reg[11]1_n_136 ;
  wire \mul_reg_I_reg[11]1_n_137 ;
  wire \mul_reg_I_reg[11]1_n_138 ;
  wire \mul_reg_I_reg[11]1_n_139 ;
  wire \mul_reg_I_reg[11]1_n_140 ;
  wire \mul_reg_I_reg[11]1_n_141 ;
  wire \mul_reg_I_reg[11]1_n_142 ;
  wire \mul_reg_I_reg[11]1_n_143 ;
  wire \mul_reg_I_reg[11]1_n_144 ;
  wire \mul_reg_I_reg[11]1_n_145 ;
  wire \mul_reg_I_reg[11]1_n_146 ;
  wire \mul_reg_I_reg[11]1_n_147 ;
  wire \mul_reg_I_reg[11]1_n_148 ;
  wire \mul_reg_I_reg[11]1_n_149 ;
  wire \mul_reg_I_reg[11]1_n_150 ;
  wire \mul_reg_I_reg[11]1_n_151 ;
  wire \mul_reg_I_reg[11]1_n_152 ;
  wire \mul_reg_I_reg[11]1_n_153 ;
  wire \mul_reg_I_reg[11]1_n_58 ;
  wire \mul_reg_I_reg[11]1_n_59 ;
  wire \mul_reg_I_reg[11]1_n_60 ;
  wire \mul_reg_I_reg[11]1_n_61 ;
  wire \mul_reg_I_reg[11]1_n_62 ;
  wire \mul_reg_I_reg[11]1_n_63 ;
  wire \mul_reg_I_reg[11]1_n_64 ;
  wire \mul_reg_I_reg[11]1_n_65 ;
  wire \mul_reg_I_reg[11]1_n_66 ;
  wire \mul_reg_I_reg[11]1_n_67 ;
  wire \mul_reg_I_reg[11]1_n_68 ;
  wire \mul_reg_I_reg[11]1_n_69 ;
  wire \mul_reg_I_reg[11]1_n_70 ;
  wire \mul_reg_I_reg[11]1_n_71 ;
  wire \mul_reg_I_reg[11]1_n_72 ;
  wire \mul_reg_I_reg[11]1_n_73 ;
  wire \mul_reg_I_reg[11]1_n_74 ;
  wire \mul_reg_I_reg[11]1_n_75 ;
  wire \mul_reg_I_reg[11]1_n_76 ;
  wire \mul_reg_I_reg[11]1_n_77 ;
  wire \mul_reg_I_reg[11]1_n_78 ;
  wire \mul_reg_I_reg[11]1_n_79 ;
  wire \mul_reg_I_reg[11]1_n_80 ;
  wire \mul_reg_I_reg[11]1_n_81 ;
  wire \mul_reg_I_reg[11]1_n_82 ;
  wire \mul_reg_I_reg[11]1_n_83 ;
  wire \mul_reg_I_reg[11]1_n_84 ;
  wire \mul_reg_I_reg[11]1_n_85 ;
  wire \mul_reg_I_reg[11]1_n_86 ;
  wire \mul_reg_I_reg[11]1_n_87 ;
  wire \mul_reg_I_reg[11]1_n_88 ;
  wire \mul_reg_I_reg[11]1_n_89 ;
  wire \mul_reg_I_reg[11]1_n_90 ;
  wire \mul_reg_I_reg[11]1_n_91 ;
  wire \mul_reg_I_reg[11]1_n_92 ;
  wire \mul_reg_I_reg[11]1_n_93 ;
  wire \mul_reg_I_reg[11]1_n_94 ;
  wire \mul_reg_I_reg[11]1_n_95 ;
  wire \mul_reg_I_reg[11]1_n_96 ;
  wire \mul_reg_I_reg[11]1_n_97 ;
  wire \mul_reg_I_reg[11]1_n_98 ;
  wire \mul_reg_I_reg[11]1_n_99 ;
  wire [51:4]\mul_reg_I_reg[12] ;
  wire [51:21]\mul_reg_I_reg[13] ;
  wire \mul_reg_I_reg[13][10]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[13][11]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[13][12]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[13][13]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[13][14]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[13][15]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[13][16]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[13][17]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[13][18]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[13][19]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[13][20]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[13][4]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[13][5]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[13][6]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[13][7]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[13][8]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[13][9]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire [51:21]\mul_reg_I_reg[14] ;
  wire \mul_reg_I_reg[14][10]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[14][11]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[14][12]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[14][13]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[14][14]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[14][15]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[14][16]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[14][17]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[14][18]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[14][19]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[14][20]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[14][21]_0 ;
  wire \mul_reg_I_reg[14][4]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[14][5]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[14][6]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[14][7]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[14][8]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[14][9]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire [51:21]\mul_reg_I_reg[15] ;
  wire \mul_reg_I_reg[15]0__0_n_58 ;
  wire \mul_reg_I_reg[15]0__0_n_59 ;
  wire \mul_reg_I_reg[15]0__0_n_60 ;
  wire \mul_reg_I_reg[15]0__0_n_61 ;
  wire \mul_reg_I_reg[15]0__0_n_62 ;
  wire \mul_reg_I_reg[15]0__0_n_63 ;
  wire \mul_reg_I_reg[15]0__0_n_64 ;
  wire \mul_reg_I_reg[15]0__0_n_65 ;
  wire \mul_reg_I_reg[15]0__0_n_66 ;
  wire \mul_reg_I_reg[15]0__0_n_67 ;
  wire \mul_reg_I_reg[15]0__0_n_68 ;
  wire \mul_reg_I_reg[15]0__0_n_69 ;
  wire \mul_reg_I_reg[15]0__0_n_70 ;
  wire \mul_reg_I_reg[15]0__0_n_71 ;
  wire \mul_reg_I_reg[15]0__0_n_72 ;
  wire \mul_reg_I_reg[15]0__0_n_73 ;
  wire \mul_reg_I_reg[15]0__0_n_74 ;
  wire \mul_reg_I_reg[15]0_i_1_n_0 ;
  wire \mul_reg_I_reg[15]0_n_106 ;
  wire \mul_reg_I_reg[15]0_n_107 ;
  wire \mul_reg_I_reg[15]0_n_108 ;
  wire \mul_reg_I_reg[15]0_n_109 ;
  wire \mul_reg_I_reg[15]0_n_110 ;
  wire \mul_reg_I_reg[15]0_n_111 ;
  wire \mul_reg_I_reg[15]0_n_112 ;
  wire \mul_reg_I_reg[15]0_n_113 ;
  wire \mul_reg_I_reg[15]0_n_114 ;
  wire \mul_reg_I_reg[15]0_n_115 ;
  wire \mul_reg_I_reg[15]0_n_116 ;
  wire \mul_reg_I_reg[15]0_n_117 ;
  wire \mul_reg_I_reg[15]0_n_118 ;
  wire \mul_reg_I_reg[15]0_n_119 ;
  wire \mul_reg_I_reg[15]0_n_120 ;
  wire \mul_reg_I_reg[15]0_n_121 ;
  wire \mul_reg_I_reg[15]0_n_122 ;
  wire \mul_reg_I_reg[15]0_n_123 ;
  wire \mul_reg_I_reg[15]0_n_124 ;
  wire \mul_reg_I_reg[15]0_n_125 ;
  wire \mul_reg_I_reg[15]0_n_126 ;
  wire \mul_reg_I_reg[15]0_n_127 ;
  wire \mul_reg_I_reg[15]0_n_128 ;
  wire \mul_reg_I_reg[15]0_n_129 ;
  wire \mul_reg_I_reg[15]0_n_130 ;
  wire \mul_reg_I_reg[15]0_n_131 ;
  wire \mul_reg_I_reg[15]0_n_132 ;
  wire \mul_reg_I_reg[15]0_n_133 ;
  wire \mul_reg_I_reg[15]0_n_134 ;
  wire \mul_reg_I_reg[15]0_n_135 ;
  wire \mul_reg_I_reg[15]0_n_136 ;
  wire \mul_reg_I_reg[15]0_n_137 ;
  wire \mul_reg_I_reg[15]0_n_138 ;
  wire \mul_reg_I_reg[15]0_n_139 ;
  wire \mul_reg_I_reg[15]0_n_140 ;
  wire \mul_reg_I_reg[15]0_n_141 ;
  wire \mul_reg_I_reg[15]0_n_142 ;
  wire \mul_reg_I_reg[15]0_n_143 ;
  wire \mul_reg_I_reg[15]0_n_144 ;
  wire \mul_reg_I_reg[15]0_n_145 ;
  wire \mul_reg_I_reg[15]0_n_146 ;
  wire \mul_reg_I_reg[15]0_n_147 ;
  wire \mul_reg_I_reg[15]0_n_148 ;
  wire \mul_reg_I_reg[15]0_n_149 ;
  wire \mul_reg_I_reg[15]0_n_150 ;
  wire \mul_reg_I_reg[15]0_n_151 ;
  wire \mul_reg_I_reg[15]0_n_152 ;
  wire \mul_reg_I_reg[15]0_n_153 ;
  wire \mul_reg_I_reg[15]0_n_58 ;
  wire \mul_reg_I_reg[15]0_n_59 ;
  wire \mul_reg_I_reg[15]0_n_60 ;
  wire \mul_reg_I_reg[15]0_n_61 ;
  wire \mul_reg_I_reg[15]0_n_62 ;
  wire \mul_reg_I_reg[15]0_n_63 ;
  wire \mul_reg_I_reg[15]0_n_64 ;
  wire \mul_reg_I_reg[15]0_n_65 ;
  wire \mul_reg_I_reg[15]0_n_66 ;
  wire \mul_reg_I_reg[15]0_n_67 ;
  wire \mul_reg_I_reg[15]0_n_68 ;
  wire \mul_reg_I_reg[15]0_n_69 ;
  wire \mul_reg_I_reg[15]0_n_70 ;
  wire \mul_reg_I_reg[15]0_n_71 ;
  wire \mul_reg_I_reg[15]0_n_72 ;
  wire \mul_reg_I_reg[15]0_n_73 ;
  wire \mul_reg_I_reg[15]0_n_74 ;
  wire \mul_reg_I_reg[15]0_n_75 ;
  wire \mul_reg_I_reg[15]0_n_76 ;
  wire \mul_reg_I_reg[15]0_n_77 ;
  wire \mul_reg_I_reg[15]0_n_78 ;
  wire \mul_reg_I_reg[15]0_n_79 ;
  wire \mul_reg_I_reg[15]0_n_80 ;
  wire \mul_reg_I_reg[15]0_n_81 ;
  wire \mul_reg_I_reg[15]0_n_82 ;
  wire \mul_reg_I_reg[15]0_n_83 ;
  wire \mul_reg_I_reg[15]0_n_84 ;
  wire \mul_reg_I_reg[15]0_n_85 ;
  wire \mul_reg_I_reg[15]0_n_86 ;
  wire \mul_reg_I_reg[15]0_n_87 ;
  wire \mul_reg_I_reg[15]0_n_88 ;
  wire \mul_reg_I_reg[1][0]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][10]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][11]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][12]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][13]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][14]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][15]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][16]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][17]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][18]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][19]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][1]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][20]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][21]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][22]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][23]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][24]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][25]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][26]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][27]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][28]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][29]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][2]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][30]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][31]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][32]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][33]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][34]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][35]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][36]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][37]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][38]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][39]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][3]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][40]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][41]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][42]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][43]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][44]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][45]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][46]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][47]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][48]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][49]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][4]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][50]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][51]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][5]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][6]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][7]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][8]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[1][9]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[2][0]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][10]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][11]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][12]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][13]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][14]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ;
  wire \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ;
  wire \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ;
  wire \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ;
  wire \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ;
  wire \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ;
  wire \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ;
  wire \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ;
  wire \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ;
  wire \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ;
  wire \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ;
  wire \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ;
  wire \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ;
  wire \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 ;
  wire \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ;
  wire \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ;
  wire \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ;
  wire \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ;
  wire \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ;
  wire \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ;
  wire \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ;
  wire \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ;
  wire \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ;
  wire \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ;
  wire \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][16]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][17]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][18]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][19]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][1]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][20]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][21]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][22]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ;
  wire \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ;
  wire \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ;
  wire \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ;
  wire \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ;
  wire \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ;
  wire \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ;
  wire \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ;
  wire \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ;
  wire \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ;
  wire \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ;
  wire \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ;
  wire \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ;
  wire \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 ;
  wire \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ;
  wire \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ;
  wire \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ;
  wire \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ;
  wire \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ;
  wire \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ;
  wire \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ;
  wire \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ;
  wire \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ;
  wire \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ;
  wire \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][24]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][25]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][26]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][27]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][28]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][29]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][2]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][30]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ;
  wire \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ;
  wire \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ;
  wire \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ;
  wire \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ;
  wire \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ;
  wire \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ;
  wire \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ;
  wire \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ;
  wire \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ;
  wire \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ;
  wire \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ;
  wire \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ;
  wire \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 ;
  wire \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ;
  wire \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ;
  wire \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ;
  wire \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ;
  wire \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ;
  wire \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ;
  wire \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ;
  wire \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ;
  wire \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ;
  wire \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ;
  wire \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][32]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][33]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][34]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][35]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][36]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][37]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][38]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ;
  wire \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ;
  wire \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ;
  wire \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ;
  wire \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ;
  wire \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ;
  wire \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ;
  wire \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ;
  wire \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ;
  wire \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ;
  wire \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ;
  wire \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ;
  wire \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ;
  wire \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 ;
  wire \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ;
  wire \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ;
  wire \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ;
  wire \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ;
  wire \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ;
  wire \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ;
  wire \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ;
  wire \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ;
  wire \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ;
  wire \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ;
  wire \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][3]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][40]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][41]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][42]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][43]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][44]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][45]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][46]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_10_n_0 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ;
  wire \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][48]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][49]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][4]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][50]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ;
  wire \mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ;
  wire \mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ;
  wire \mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ;
  wire \mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ;
  wire \mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ;
  wire \mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 ;
  wire \mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ;
  wire \mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ;
  wire \mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ;
  wire \mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ;
  wire \mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][5]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][6]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ;
  wire \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ;
  wire \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ;
  wire \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ;
  wire \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ;
  wire \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ;
  wire \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ;
  wire \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ;
  wire \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ;
  wire \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ;
  wire \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ;
  wire \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ;
  wire \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ;
  wire \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 ;
  wire \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ;
  wire \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ;
  wire \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ;
  wire \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ;
  wire \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ;
  wire \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ;
  wire \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ;
  wire \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ;
  wire \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ;
  wire \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ;
  wire \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][8]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[2][9]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[3]1__0_n_100 ;
  wire \mul_reg_I_reg[3]1__0_n_101 ;
  wire \mul_reg_I_reg[3]1__0_n_102 ;
  wire \mul_reg_I_reg[3]1__0_n_103 ;
  wire \mul_reg_I_reg[3]1__0_n_104 ;
  wire \mul_reg_I_reg[3]1__0_n_105 ;
  wire \mul_reg_I_reg[3]1__0_n_58 ;
  wire \mul_reg_I_reg[3]1__0_n_59 ;
  wire \mul_reg_I_reg[3]1__0_n_60 ;
  wire \mul_reg_I_reg[3]1__0_n_61 ;
  wire \mul_reg_I_reg[3]1__0_n_62 ;
  wire \mul_reg_I_reg[3]1__0_n_63 ;
  wire \mul_reg_I_reg[3]1__0_n_64 ;
  wire \mul_reg_I_reg[3]1__0_n_65 ;
  wire \mul_reg_I_reg[3]1__0_n_66 ;
  wire \mul_reg_I_reg[3]1__0_n_67 ;
  wire \mul_reg_I_reg[3]1__0_n_68 ;
  wire \mul_reg_I_reg[3]1__0_n_69 ;
  wire \mul_reg_I_reg[3]1__0_n_70 ;
  wire \mul_reg_I_reg[3]1__0_n_71 ;
  wire \mul_reg_I_reg[3]1__0_n_72 ;
  wire \mul_reg_I_reg[3]1__0_n_73 ;
  wire \mul_reg_I_reg[3]1__0_n_74 ;
  wire \mul_reg_I_reg[3]1__0_n_75 ;
  wire \mul_reg_I_reg[3]1__0_n_76 ;
  wire \mul_reg_I_reg[3]1__0_n_77 ;
  wire \mul_reg_I_reg[3]1__0_n_78 ;
  wire \mul_reg_I_reg[3]1__0_n_79 ;
  wire \mul_reg_I_reg[3]1__0_n_80 ;
  wire \mul_reg_I_reg[3]1__0_n_81 ;
  wire \mul_reg_I_reg[3]1__0_n_82 ;
  wire \mul_reg_I_reg[3]1__0_n_83 ;
  wire \mul_reg_I_reg[3]1__0_n_84 ;
  wire \mul_reg_I_reg[3]1__0_n_85 ;
  wire \mul_reg_I_reg[3]1__0_n_86 ;
  wire \mul_reg_I_reg[3]1__0_n_87 ;
  wire \mul_reg_I_reg[3]1__0_n_88 ;
  wire \mul_reg_I_reg[3]1__0_n_89 ;
  wire \mul_reg_I_reg[3]1__0_n_90 ;
  wire \mul_reg_I_reg[3]1__0_n_91 ;
  wire \mul_reg_I_reg[3]1__0_n_92 ;
  wire \mul_reg_I_reg[3]1__0_n_93 ;
  wire \mul_reg_I_reg[3]1__0_n_94 ;
  wire \mul_reg_I_reg[3]1__0_n_95 ;
  wire \mul_reg_I_reg[3]1__0_n_96 ;
  wire \mul_reg_I_reg[3]1__0_n_97 ;
  wire \mul_reg_I_reg[3]1__0_n_98 ;
  wire \mul_reg_I_reg[3]1__0_n_99 ;
  wire \mul_reg_I_reg[3]1_n_100 ;
  wire \mul_reg_I_reg[3]1_n_101 ;
  wire \mul_reg_I_reg[3]1_n_102 ;
  wire \mul_reg_I_reg[3]1_n_103 ;
  wire \mul_reg_I_reg[3]1_n_104 ;
  wire \mul_reg_I_reg[3]1_n_105 ;
  wire \mul_reg_I_reg[3]1_n_106 ;
  wire \mul_reg_I_reg[3]1_n_107 ;
  wire \mul_reg_I_reg[3]1_n_108 ;
  wire \mul_reg_I_reg[3]1_n_109 ;
  wire \mul_reg_I_reg[3]1_n_110 ;
  wire \mul_reg_I_reg[3]1_n_111 ;
  wire \mul_reg_I_reg[3]1_n_112 ;
  wire \mul_reg_I_reg[3]1_n_113 ;
  wire \mul_reg_I_reg[3]1_n_114 ;
  wire \mul_reg_I_reg[3]1_n_115 ;
  wire \mul_reg_I_reg[3]1_n_116 ;
  wire \mul_reg_I_reg[3]1_n_117 ;
  wire \mul_reg_I_reg[3]1_n_118 ;
  wire \mul_reg_I_reg[3]1_n_119 ;
  wire \mul_reg_I_reg[3]1_n_120 ;
  wire \mul_reg_I_reg[3]1_n_121 ;
  wire \mul_reg_I_reg[3]1_n_122 ;
  wire \mul_reg_I_reg[3]1_n_123 ;
  wire \mul_reg_I_reg[3]1_n_124 ;
  wire \mul_reg_I_reg[3]1_n_125 ;
  wire \mul_reg_I_reg[3]1_n_126 ;
  wire \mul_reg_I_reg[3]1_n_127 ;
  wire \mul_reg_I_reg[3]1_n_128 ;
  wire \mul_reg_I_reg[3]1_n_129 ;
  wire \mul_reg_I_reg[3]1_n_130 ;
  wire \mul_reg_I_reg[3]1_n_131 ;
  wire \mul_reg_I_reg[3]1_n_132 ;
  wire \mul_reg_I_reg[3]1_n_133 ;
  wire \mul_reg_I_reg[3]1_n_134 ;
  wire \mul_reg_I_reg[3]1_n_135 ;
  wire \mul_reg_I_reg[3]1_n_136 ;
  wire \mul_reg_I_reg[3]1_n_137 ;
  wire \mul_reg_I_reg[3]1_n_138 ;
  wire \mul_reg_I_reg[3]1_n_139 ;
  wire \mul_reg_I_reg[3]1_n_140 ;
  wire \mul_reg_I_reg[3]1_n_141 ;
  wire \mul_reg_I_reg[3]1_n_142 ;
  wire \mul_reg_I_reg[3]1_n_143 ;
  wire \mul_reg_I_reg[3]1_n_144 ;
  wire \mul_reg_I_reg[3]1_n_145 ;
  wire \mul_reg_I_reg[3]1_n_146 ;
  wire \mul_reg_I_reg[3]1_n_147 ;
  wire \mul_reg_I_reg[3]1_n_148 ;
  wire \mul_reg_I_reg[3]1_n_149 ;
  wire \mul_reg_I_reg[3]1_n_150 ;
  wire \mul_reg_I_reg[3]1_n_151 ;
  wire \mul_reg_I_reg[3]1_n_152 ;
  wire \mul_reg_I_reg[3]1_n_153 ;
  wire \mul_reg_I_reg[3]1_n_58 ;
  wire \mul_reg_I_reg[3]1_n_59 ;
  wire \mul_reg_I_reg[3]1_n_60 ;
  wire \mul_reg_I_reg[3]1_n_61 ;
  wire \mul_reg_I_reg[3]1_n_62 ;
  wire \mul_reg_I_reg[3]1_n_63 ;
  wire \mul_reg_I_reg[3]1_n_64 ;
  wire \mul_reg_I_reg[3]1_n_65 ;
  wire \mul_reg_I_reg[3]1_n_66 ;
  wire \mul_reg_I_reg[3]1_n_67 ;
  wire \mul_reg_I_reg[3]1_n_68 ;
  wire \mul_reg_I_reg[3]1_n_69 ;
  wire \mul_reg_I_reg[3]1_n_70 ;
  wire \mul_reg_I_reg[3]1_n_71 ;
  wire \mul_reg_I_reg[3]1_n_72 ;
  wire \mul_reg_I_reg[3]1_n_73 ;
  wire \mul_reg_I_reg[3]1_n_74 ;
  wire \mul_reg_I_reg[3]1_n_75 ;
  wire \mul_reg_I_reg[3]1_n_76 ;
  wire \mul_reg_I_reg[3]1_n_77 ;
  wire \mul_reg_I_reg[3]1_n_78 ;
  wire \mul_reg_I_reg[3]1_n_79 ;
  wire \mul_reg_I_reg[3]1_n_80 ;
  wire \mul_reg_I_reg[3]1_n_81 ;
  wire \mul_reg_I_reg[3]1_n_82 ;
  wire \mul_reg_I_reg[3]1_n_83 ;
  wire \mul_reg_I_reg[3]1_n_84 ;
  wire \mul_reg_I_reg[3]1_n_85 ;
  wire \mul_reg_I_reg[3]1_n_86 ;
  wire \mul_reg_I_reg[3]1_n_87 ;
  wire \mul_reg_I_reg[3]1_n_88 ;
  wire \mul_reg_I_reg[3]1_n_89 ;
  wire \mul_reg_I_reg[3]1_n_90 ;
  wire \mul_reg_I_reg[3]1_n_91 ;
  wire \mul_reg_I_reg[3]1_n_92 ;
  wire \mul_reg_I_reg[3]1_n_93 ;
  wire \mul_reg_I_reg[3]1_n_94 ;
  wire \mul_reg_I_reg[3]1_n_95 ;
  wire \mul_reg_I_reg[3]1_n_96 ;
  wire \mul_reg_I_reg[3]1_n_97 ;
  wire \mul_reg_I_reg[3]1_n_98 ;
  wire \mul_reg_I_reg[3]1_n_99 ;
  wire [51:0]\mul_reg_I_reg[4] ;
  wire \mul_reg_I_reg[5][0]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][10]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][11]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][12]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][13]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][14]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][15]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][16]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][17]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][18]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][19]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][1]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][20]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][21]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][22]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][23]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][24]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][25]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][26]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][27]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][28]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][29]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][2]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][30]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][31]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][32]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][33]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][34]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][35]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][36]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][37]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][38]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][39]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][3]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][40]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][41]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][42]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][43]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][44]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][45]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][46]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][47]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][48]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][49]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][4]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][50]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][51]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][5]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][6]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][7]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][8]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[5][9]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[6][0]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][10]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][11]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][12]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][13]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][14]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ;
  wire \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ;
  wire \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ;
  wire \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ;
  wire \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ;
  wire \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ;
  wire \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ;
  wire \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ;
  wire \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ;
  wire \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ;
  wire \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ;
  wire \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ;
  wire \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ;
  wire \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 ;
  wire \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ;
  wire \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ;
  wire \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ;
  wire \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ;
  wire \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ;
  wire \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ;
  wire \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ;
  wire \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ;
  wire \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ;
  wire \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ;
  wire \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][16]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][17]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][18]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][19]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][1]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][20]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][21]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][22]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ;
  wire \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ;
  wire \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ;
  wire \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ;
  wire \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ;
  wire \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ;
  wire \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ;
  wire \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ;
  wire \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ;
  wire \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ;
  wire \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ;
  wire \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ;
  wire \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ;
  wire \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 ;
  wire \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ;
  wire \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ;
  wire \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ;
  wire \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ;
  wire \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ;
  wire \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ;
  wire \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ;
  wire \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ;
  wire \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ;
  wire \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ;
  wire \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][24]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][25]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][26]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][27]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][28]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][29]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][2]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][30]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ;
  wire \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ;
  wire \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ;
  wire \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ;
  wire \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ;
  wire \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ;
  wire \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ;
  wire \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ;
  wire \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ;
  wire \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ;
  wire \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ;
  wire \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ;
  wire \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ;
  wire \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 ;
  wire \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ;
  wire \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ;
  wire \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ;
  wire \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ;
  wire \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ;
  wire \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ;
  wire \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ;
  wire \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ;
  wire \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ;
  wire \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ;
  wire \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][32]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][33]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][34]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][35]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][36]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][37]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][38]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ;
  wire \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ;
  wire \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ;
  wire \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ;
  wire \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ;
  wire \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ;
  wire \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ;
  wire \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ;
  wire \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ;
  wire \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ;
  wire \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ;
  wire \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ;
  wire \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ;
  wire \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 ;
  wire \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ;
  wire \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ;
  wire \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ;
  wire \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ;
  wire \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ;
  wire \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ;
  wire \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ;
  wire \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ;
  wire \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ;
  wire \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ;
  wire \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][3]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][40]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][41]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][42]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][43]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][44]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][45]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][46]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_10_n_0 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ;
  wire \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][48]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][49]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][4]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][50]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ;
  wire \mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ;
  wire \mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ;
  wire \mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ;
  wire \mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ;
  wire \mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ;
  wire \mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 ;
  wire \mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ;
  wire \mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ;
  wire \mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ;
  wire \mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ;
  wire \mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][5]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][6]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ;
  wire \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ;
  wire \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ;
  wire \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ;
  wire \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ;
  wire \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ;
  wire \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ;
  wire \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ;
  wire \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ;
  wire \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ;
  wire \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ;
  wire \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ;
  wire \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ;
  wire \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 ;
  wire \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ;
  wire \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ;
  wire \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ;
  wire \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ;
  wire \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ;
  wire \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ;
  wire \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ;
  wire \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ;
  wire \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ;
  wire \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ;
  wire \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][8]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[6][9]_srl2_U0_mul_reg_I_reg_c_0_n_0 ;
  wire \mul_reg_I_reg[7]1__0_n_100 ;
  wire \mul_reg_I_reg[7]1__0_n_101 ;
  wire \mul_reg_I_reg[7]1__0_n_102 ;
  wire \mul_reg_I_reg[7]1__0_n_103 ;
  wire \mul_reg_I_reg[7]1__0_n_104 ;
  wire \mul_reg_I_reg[7]1__0_n_105 ;
  wire \mul_reg_I_reg[7]1__0_n_58 ;
  wire \mul_reg_I_reg[7]1__0_n_59 ;
  wire \mul_reg_I_reg[7]1__0_n_60 ;
  wire \mul_reg_I_reg[7]1__0_n_61 ;
  wire \mul_reg_I_reg[7]1__0_n_62 ;
  wire \mul_reg_I_reg[7]1__0_n_63 ;
  wire \mul_reg_I_reg[7]1__0_n_64 ;
  wire \mul_reg_I_reg[7]1__0_n_65 ;
  wire \mul_reg_I_reg[7]1__0_n_66 ;
  wire \mul_reg_I_reg[7]1__0_n_67 ;
  wire \mul_reg_I_reg[7]1__0_n_68 ;
  wire \mul_reg_I_reg[7]1__0_n_69 ;
  wire \mul_reg_I_reg[7]1__0_n_70 ;
  wire \mul_reg_I_reg[7]1__0_n_71 ;
  wire \mul_reg_I_reg[7]1__0_n_72 ;
  wire \mul_reg_I_reg[7]1__0_n_73 ;
  wire \mul_reg_I_reg[7]1__0_n_74 ;
  wire \mul_reg_I_reg[7]1__0_n_75 ;
  wire \mul_reg_I_reg[7]1__0_n_76 ;
  wire \mul_reg_I_reg[7]1__0_n_77 ;
  wire \mul_reg_I_reg[7]1__0_n_78 ;
  wire \mul_reg_I_reg[7]1__0_n_79 ;
  wire \mul_reg_I_reg[7]1__0_n_80 ;
  wire \mul_reg_I_reg[7]1__0_n_81 ;
  wire \mul_reg_I_reg[7]1__0_n_82 ;
  wire \mul_reg_I_reg[7]1__0_n_83 ;
  wire \mul_reg_I_reg[7]1__0_n_84 ;
  wire \mul_reg_I_reg[7]1__0_n_85 ;
  wire \mul_reg_I_reg[7]1__0_n_86 ;
  wire \mul_reg_I_reg[7]1__0_n_87 ;
  wire \mul_reg_I_reg[7]1__0_n_88 ;
  wire \mul_reg_I_reg[7]1__0_n_89 ;
  wire \mul_reg_I_reg[7]1__0_n_90 ;
  wire \mul_reg_I_reg[7]1__0_n_91 ;
  wire \mul_reg_I_reg[7]1__0_n_92 ;
  wire \mul_reg_I_reg[7]1__0_n_93 ;
  wire \mul_reg_I_reg[7]1__0_n_94 ;
  wire \mul_reg_I_reg[7]1__0_n_95 ;
  wire \mul_reg_I_reg[7]1__0_n_96 ;
  wire \mul_reg_I_reg[7]1__0_n_97 ;
  wire \mul_reg_I_reg[7]1__0_n_98 ;
  wire \mul_reg_I_reg[7]1__0_n_99 ;
  wire \mul_reg_I_reg[7]1_n_100 ;
  wire \mul_reg_I_reg[7]1_n_101 ;
  wire \mul_reg_I_reg[7]1_n_102 ;
  wire \mul_reg_I_reg[7]1_n_103 ;
  wire \mul_reg_I_reg[7]1_n_104 ;
  wire \mul_reg_I_reg[7]1_n_105 ;
  wire \mul_reg_I_reg[7]1_n_106 ;
  wire \mul_reg_I_reg[7]1_n_107 ;
  wire \mul_reg_I_reg[7]1_n_108 ;
  wire \mul_reg_I_reg[7]1_n_109 ;
  wire \mul_reg_I_reg[7]1_n_110 ;
  wire \mul_reg_I_reg[7]1_n_111 ;
  wire \mul_reg_I_reg[7]1_n_112 ;
  wire \mul_reg_I_reg[7]1_n_113 ;
  wire \mul_reg_I_reg[7]1_n_114 ;
  wire \mul_reg_I_reg[7]1_n_115 ;
  wire \mul_reg_I_reg[7]1_n_116 ;
  wire \mul_reg_I_reg[7]1_n_117 ;
  wire \mul_reg_I_reg[7]1_n_118 ;
  wire \mul_reg_I_reg[7]1_n_119 ;
  wire \mul_reg_I_reg[7]1_n_120 ;
  wire \mul_reg_I_reg[7]1_n_121 ;
  wire \mul_reg_I_reg[7]1_n_122 ;
  wire \mul_reg_I_reg[7]1_n_123 ;
  wire \mul_reg_I_reg[7]1_n_124 ;
  wire \mul_reg_I_reg[7]1_n_125 ;
  wire \mul_reg_I_reg[7]1_n_126 ;
  wire \mul_reg_I_reg[7]1_n_127 ;
  wire \mul_reg_I_reg[7]1_n_128 ;
  wire \mul_reg_I_reg[7]1_n_129 ;
  wire \mul_reg_I_reg[7]1_n_130 ;
  wire \mul_reg_I_reg[7]1_n_131 ;
  wire \mul_reg_I_reg[7]1_n_132 ;
  wire \mul_reg_I_reg[7]1_n_133 ;
  wire \mul_reg_I_reg[7]1_n_134 ;
  wire \mul_reg_I_reg[7]1_n_135 ;
  wire \mul_reg_I_reg[7]1_n_136 ;
  wire \mul_reg_I_reg[7]1_n_137 ;
  wire \mul_reg_I_reg[7]1_n_138 ;
  wire \mul_reg_I_reg[7]1_n_139 ;
  wire \mul_reg_I_reg[7]1_n_140 ;
  wire \mul_reg_I_reg[7]1_n_141 ;
  wire \mul_reg_I_reg[7]1_n_142 ;
  wire \mul_reg_I_reg[7]1_n_143 ;
  wire \mul_reg_I_reg[7]1_n_144 ;
  wire \mul_reg_I_reg[7]1_n_145 ;
  wire \mul_reg_I_reg[7]1_n_146 ;
  wire \mul_reg_I_reg[7]1_n_147 ;
  wire \mul_reg_I_reg[7]1_n_148 ;
  wire \mul_reg_I_reg[7]1_n_149 ;
  wire \mul_reg_I_reg[7]1_n_150 ;
  wire \mul_reg_I_reg[7]1_n_151 ;
  wire \mul_reg_I_reg[7]1_n_152 ;
  wire \mul_reg_I_reg[7]1_n_153 ;
  wire \mul_reg_I_reg[7]1_n_58 ;
  wire \mul_reg_I_reg[7]1_n_59 ;
  wire \mul_reg_I_reg[7]1_n_60 ;
  wire \mul_reg_I_reg[7]1_n_61 ;
  wire \mul_reg_I_reg[7]1_n_62 ;
  wire \mul_reg_I_reg[7]1_n_63 ;
  wire \mul_reg_I_reg[7]1_n_64 ;
  wire \mul_reg_I_reg[7]1_n_65 ;
  wire \mul_reg_I_reg[7]1_n_66 ;
  wire \mul_reg_I_reg[7]1_n_67 ;
  wire \mul_reg_I_reg[7]1_n_68 ;
  wire \mul_reg_I_reg[7]1_n_69 ;
  wire \mul_reg_I_reg[7]1_n_70 ;
  wire \mul_reg_I_reg[7]1_n_71 ;
  wire \mul_reg_I_reg[7]1_n_72 ;
  wire \mul_reg_I_reg[7]1_n_73 ;
  wire \mul_reg_I_reg[7]1_n_74 ;
  wire \mul_reg_I_reg[7]1_n_75 ;
  wire \mul_reg_I_reg[7]1_n_76 ;
  wire \mul_reg_I_reg[7]1_n_77 ;
  wire \mul_reg_I_reg[7]1_n_78 ;
  wire \mul_reg_I_reg[7]1_n_79 ;
  wire \mul_reg_I_reg[7]1_n_80 ;
  wire \mul_reg_I_reg[7]1_n_81 ;
  wire \mul_reg_I_reg[7]1_n_82 ;
  wire \mul_reg_I_reg[7]1_n_83 ;
  wire \mul_reg_I_reg[7]1_n_84 ;
  wire \mul_reg_I_reg[7]1_n_85 ;
  wire \mul_reg_I_reg[7]1_n_86 ;
  wire \mul_reg_I_reg[7]1_n_87 ;
  wire \mul_reg_I_reg[7]1_n_88 ;
  wire \mul_reg_I_reg[7]1_n_89 ;
  wire \mul_reg_I_reg[7]1_n_90 ;
  wire \mul_reg_I_reg[7]1_n_91 ;
  wire \mul_reg_I_reg[7]1_n_92 ;
  wire \mul_reg_I_reg[7]1_n_93 ;
  wire \mul_reg_I_reg[7]1_n_94 ;
  wire \mul_reg_I_reg[7]1_n_95 ;
  wire \mul_reg_I_reg[7]1_n_96 ;
  wire \mul_reg_I_reg[7]1_n_97 ;
  wire \mul_reg_I_reg[7]1_n_98 ;
  wire \mul_reg_I_reg[7]1_n_99 ;
  wire [51:0]\mul_reg_I_reg[8] ;
  wire \mul_reg_I_reg[9][0]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][10]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][11]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][12]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][13]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][14]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][15]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][16]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][17]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][18]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][19]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][1]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][20]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][21]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][22]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][23]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][24]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][25]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][26]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][27]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][28]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][29]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][2]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][30]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][31]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][32]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][33]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][34]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][35]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][36]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][37]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][38]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][39]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][3]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][40]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][41]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][42]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][43]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][44]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][45]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][46]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][47]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][48]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][49]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][4]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][50]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][51]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][5]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][6]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][7]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][8]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire \mul_reg_I_reg[9][9]_U0_mul_reg_I_reg_c_1_n_0 ;
  wire mul_reg_I_reg_c_0_n_0;
  wire mul_reg_I_reg_c_1_n_0;
  wire mul_reg_I_reg_c_n_0;
  wire mul_reg_I_reg_gate__0_n_0;
  wire mul_reg_I_reg_gate__100_n_0;
  wire mul_reg_I_reg_gate__101_n_0;
  wire mul_reg_I_reg_gate__102_n_0;
  wire mul_reg_I_reg_gate__103_n_0;
  wire mul_reg_I_reg_gate__104_n_0;
  wire mul_reg_I_reg_gate__105_n_0;
  wire mul_reg_I_reg_gate__106_n_0;
  wire mul_reg_I_reg_gate__107_n_0;
  wire mul_reg_I_reg_gate__108_n_0;
  wire mul_reg_I_reg_gate__109_n_0;
  wire mul_reg_I_reg_gate__10_n_0;
  wire mul_reg_I_reg_gate__110_n_0;
  wire mul_reg_I_reg_gate__111_n_0;
  wire mul_reg_I_reg_gate__112_n_0;
  wire mul_reg_I_reg_gate__113_n_0;
  wire mul_reg_I_reg_gate__114_n_0;
  wire mul_reg_I_reg_gate__115_n_0;
  wire mul_reg_I_reg_gate__116_n_0;
  wire mul_reg_I_reg_gate__117_n_0;
  wire mul_reg_I_reg_gate__118_n_0;
  wire mul_reg_I_reg_gate__119_n_0;
  wire mul_reg_I_reg_gate__11_n_0;
  wire mul_reg_I_reg_gate__120_n_0;
  wire mul_reg_I_reg_gate__121_n_0;
  wire mul_reg_I_reg_gate__122_n_0;
  wire mul_reg_I_reg_gate__123_n_0;
  wire mul_reg_I_reg_gate__124_n_0;
  wire mul_reg_I_reg_gate__125_n_0;
  wire mul_reg_I_reg_gate__126_n_0;
  wire mul_reg_I_reg_gate__127_n_0;
  wire mul_reg_I_reg_gate__128_n_0;
  wire mul_reg_I_reg_gate__129_n_0;
  wire mul_reg_I_reg_gate__12_n_0;
  wire mul_reg_I_reg_gate__130_n_0;
  wire mul_reg_I_reg_gate__131_n_0;
  wire mul_reg_I_reg_gate__132_n_0;
  wire mul_reg_I_reg_gate__133_n_0;
  wire mul_reg_I_reg_gate__134_n_0;
  wire mul_reg_I_reg_gate__135_n_0;
  wire mul_reg_I_reg_gate__136_n_0;
  wire mul_reg_I_reg_gate__137_n_0;
  wire mul_reg_I_reg_gate__138_n_0;
  wire mul_reg_I_reg_gate__139_n_0;
  wire mul_reg_I_reg_gate__13_n_0;
  wire mul_reg_I_reg_gate__140_n_0;
  wire mul_reg_I_reg_gate__141_n_0;
  wire mul_reg_I_reg_gate__142_n_0;
  wire mul_reg_I_reg_gate__143_n_0;
  wire mul_reg_I_reg_gate__144_n_0;
  wire mul_reg_I_reg_gate__145_n_0;
  wire mul_reg_I_reg_gate__146_n_0;
  wire mul_reg_I_reg_gate__147_n_0;
  wire mul_reg_I_reg_gate__148_n_0;
  wire mul_reg_I_reg_gate__149_n_0;
  wire mul_reg_I_reg_gate__14_n_0;
  wire mul_reg_I_reg_gate__150_n_0;
  wire mul_reg_I_reg_gate__151_n_0;
  wire mul_reg_I_reg_gate__152_n_0;
  wire mul_reg_I_reg_gate__153_n_0;
  wire mul_reg_I_reg_gate__154_n_0;
  wire mul_reg_I_reg_gate__155_n_0;
  wire mul_reg_I_reg_gate__156_n_0;
  wire mul_reg_I_reg_gate__157_n_0;
  wire mul_reg_I_reg_gate__158_n_0;
  wire mul_reg_I_reg_gate__159_n_0;
  wire mul_reg_I_reg_gate__15_n_0;
  wire mul_reg_I_reg_gate__160_n_0;
  wire mul_reg_I_reg_gate__161_n_0;
  wire mul_reg_I_reg_gate__162_n_0;
  wire mul_reg_I_reg_gate__163_n_0;
  wire mul_reg_I_reg_gate__164_n_0;
  wire mul_reg_I_reg_gate__165_n_0;
  wire mul_reg_I_reg_gate__166_n_0;
  wire mul_reg_I_reg_gate__167_n_0;
  wire mul_reg_I_reg_gate__168_n_0;
  wire mul_reg_I_reg_gate__169_n_0;
  wire mul_reg_I_reg_gate__16_n_0;
  wire mul_reg_I_reg_gate__170_n_0;
  wire mul_reg_I_reg_gate__171_n_0;
  wire mul_reg_I_reg_gate__17_n_0;
  wire mul_reg_I_reg_gate__18_n_0;
  wire mul_reg_I_reg_gate__19_n_0;
  wire mul_reg_I_reg_gate__1_n_0;
  wire mul_reg_I_reg_gate__20_n_0;
  wire mul_reg_I_reg_gate__21_n_0;
  wire mul_reg_I_reg_gate__22_n_0;
  wire mul_reg_I_reg_gate__23_n_0;
  wire mul_reg_I_reg_gate__24_n_0;
  wire mul_reg_I_reg_gate__25_n_0;
  wire mul_reg_I_reg_gate__26_n_0;
  wire mul_reg_I_reg_gate__27_n_0;
  wire mul_reg_I_reg_gate__28_n_0;
  wire mul_reg_I_reg_gate__29_n_0;
  wire mul_reg_I_reg_gate__2_n_0;
  wire mul_reg_I_reg_gate__30_n_0;
  wire mul_reg_I_reg_gate__31_n_0;
  wire mul_reg_I_reg_gate__32_n_0;
  wire mul_reg_I_reg_gate__33_n_0;
  wire mul_reg_I_reg_gate__34_n_0;
  wire mul_reg_I_reg_gate__35_n_0;
  wire mul_reg_I_reg_gate__36_n_0;
  wire mul_reg_I_reg_gate__37_n_0;
  wire mul_reg_I_reg_gate__38_n_0;
  wire mul_reg_I_reg_gate__39_n_0;
  wire mul_reg_I_reg_gate__3_n_0;
  wire mul_reg_I_reg_gate__40_n_0;
  wire mul_reg_I_reg_gate__41_n_0;
  wire mul_reg_I_reg_gate__42_n_0;
  wire mul_reg_I_reg_gate__43_n_0;
  wire mul_reg_I_reg_gate__44_n_0;
  wire mul_reg_I_reg_gate__45_n_0;
  wire mul_reg_I_reg_gate__46_n_0;
  wire mul_reg_I_reg_gate__47_n_0;
  wire mul_reg_I_reg_gate__48_n_0;
  wire mul_reg_I_reg_gate__49_n_0;
  wire mul_reg_I_reg_gate__4_n_0;
  wire mul_reg_I_reg_gate__50_n_0;
  wire mul_reg_I_reg_gate__51_n_0;
  wire mul_reg_I_reg_gate__52_n_0;
  wire mul_reg_I_reg_gate__53_n_0;
  wire mul_reg_I_reg_gate__54_n_0;
  wire mul_reg_I_reg_gate__55_n_0;
  wire mul_reg_I_reg_gate__56_n_0;
  wire mul_reg_I_reg_gate__57_n_0;
  wire mul_reg_I_reg_gate__58_n_0;
  wire mul_reg_I_reg_gate__59_n_0;
  wire mul_reg_I_reg_gate__5_n_0;
  wire mul_reg_I_reg_gate__60_n_0;
  wire mul_reg_I_reg_gate__61_n_0;
  wire mul_reg_I_reg_gate__62_n_0;
  wire mul_reg_I_reg_gate__63_n_0;
  wire mul_reg_I_reg_gate__64_n_0;
  wire mul_reg_I_reg_gate__65_n_0;
  wire mul_reg_I_reg_gate__66_n_0;
  wire mul_reg_I_reg_gate__67_n_0;
  wire mul_reg_I_reg_gate__68_n_0;
  wire mul_reg_I_reg_gate__69_n_0;
  wire mul_reg_I_reg_gate__6_n_0;
  wire mul_reg_I_reg_gate__70_n_0;
  wire mul_reg_I_reg_gate__71_n_0;
  wire mul_reg_I_reg_gate__72_n_0;
  wire mul_reg_I_reg_gate__73_n_0;
  wire mul_reg_I_reg_gate__74_n_0;
  wire mul_reg_I_reg_gate__75_n_0;
  wire mul_reg_I_reg_gate__76_n_0;
  wire mul_reg_I_reg_gate__77_n_0;
  wire mul_reg_I_reg_gate__78_n_0;
  wire mul_reg_I_reg_gate__79_n_0;
  wire mul_reg_I_reg_gate__7_n_0;
  wire mul_reg_I_reg_gate__80_n_0;
  wire mul_reg_I_reg_gate__81_n_0;
  wire mul_reg_I_reg_gate__82_n_0;
  wire mul_reg_I_reg_gate__83_n_0;
  wire mul_reg_I_reg_gate__84_n_0;
  wire mul_reg_I_reg_gate__85_n_0;
  wire mul_reg_I_reg_gate__86_n_0;
  wire mul_reg_I_reg_gate__87_n_0;
  wire mul_reg_I_reg_gate__88_n_0;
  wire mul_reg_I_reg_gate__89_n_0;
  wire mul_reg_I_reg_gate__8_n_0;
  wire mul_reg_I_reg_gate__90_n_0;
  wire mul_reg_I_reg_gate__91_n_0;
  wire mul_reg_I_reg_gate__92_n_0;
  wire mul_reg_I_reg_gate__93_n_0;
  wire mul_reg_I_reg_gate__94_n_0;
  wire mul_reg_I_reg_gate__95_n_0;
  wire mul_reg_I_reg_gate__96_n_0;
  wire mul_reg_I_reg_gate__97_n_0;
  wire mul_reg_I_reg_gate__98_n_0;
  wire mul_reg_I_reg_gate__99_n_0;
  wire mul_reg_I_reg_gate__9_n_0;
  wire mul_reg_I_reg_gate_n_0;
  wire \mul_reg_Q[11][11]_i_2_n_0 ;
  wire \mul_reg_Q[11][11]_i_3_n_0 ;
  wire \mul_reg_Q[11][11]_i_4_n_0 ;
  wire \mul_reg_Q[11][11]_i_5_n_0 ;
  wire \mul_reg_Q[11][11]_i_6_n_0 ;
  wire \mul_reg_Q[11][11]_i_7_n_0 ;
  wire \mul_reg_Q[11][11]_i_8_n_0 ;
  wire \mul_reg_Q[11][11]_i_9_n_0 ;
  wire \mul_reg_Q[11][19]_i_2_n_0 ;
  wire \mul_reg_Q[11][19]_i_3_n_0 ;
  wire \mul_reg_Q[11][19]_i_4_n_0 ;
  wire \mul_reg_Q[11][19]_i_5_n_0 ;
  wire \mul_reg_Q[11][19]_i_6_n_0 ;
  wire \mul_reg_Q[11][19]_i_7_n_0 ;
  wire \mul_reg_Q[11][19]_i_8_n_0 ;
  wire \mul_reg_Q[11][19]_i_9_n_0 ;
  wire \mul_reg_Q[11][27]_i_2_n_0 ;
  wire \mul_reg_Q[11][27]_i_3_n_0 ;
  wire \mul_reg_Q[11][27]_i_4_n_0 ;
  wire \mul_reg_Q[11][27]_i_5_n_0 ;
  wire \mul_reg_Q[11][27]_i_6_n_0 ;
  wire \mul_reg_Q[11][27]_i_7_n_0 ;
  wire \mul_reg_Q[11][27]_i_8_n_0 ;
  wire \mul_reg_Q[11][27]_i_9_n_0 ;
  wire \mul_reg_Q[11][35]_i_2_n_0 ;
  wire \mul_reg_Q[11][35]_i_3_n_0 ;
  wire \mul_reg_Q[11][35]_i_4_n_0 ;
  wire \mul_reg_Q[11][35]_i_5_n_0 ;
  wire \mul_reg_Q[11][35]_i_6_n_0 ;
  wire \mul_reg_Q[11][35]_i_7_n_0 ;
  wire \mul_reg_Q[11][35]_i_8_n_0 ;
  wire \mul_reg_Q[11][35]_i_9_n_0 ;
  wire \mul_reg_Q[11][43]_i_2_n_0 ;
  wire \mul_reg_Q[11][43]_i_3_n_0 ;
  wire \mul_reg_Q[11][43]_i_4_n_0 ;
  wire \mul_reg_Q[11][43]_i_5_n_0 ;
  wire \mul_reg_Q[11][43]_i_6_n_0 ;
  wire \mul_reg_Q[11][43]_i_7_n_0 ;
  wire \mul_reg_Q[11][43]_i_8_n_0 ;
  wire \mul_reg_Q[11][43]_i_9_n_0 ;
  wire \mul_reg_Q[11][51]_i_10_n_0 ;
  wire \mul_reg_Q[11][51]_i_2_n_0 ;
  wire \mul_reg_Q[11][51]_i_3_n_0 ;
  wire \mul_reg_Q[11][51]_i_4_n_0 ;
  wire \mul_reg_Q[11][51]_i_5_n_0 ;
  wire \mul_reg_Q[11][51]_i_6_n_0 ;
  wire \mul_reg_Q[11][51]_i_7_n_0 ;
  wire \mul_reg_Q[11][51]_i_8_n_0 ;
  wire \mul_reg_Q[11][51]_i_9_n_0 ;
  wire \mul_reg_Q[3][15]_i_2_n_0 ;
  wire \mul_reg_Q[3][15]_i_3_n_0 ;
  wire \mul_reg_Q[3][15]_i_4_n_0 ;
  wire \mul_reg_Q[3][15]_i_5_n_0 ;
  wire \mul_reg_Q[3][15]_i_6_n_0 ;
  wire \mul_reg_Q[3][15]_i_7_n_0 ;
  wire \mul_reg_Q[3][15]_i_8_n_0 ;
  wire \mul_reg_Q[3][15]_i_9_n_0 ;
  wire \mul_reg_Q[3][23]_i_2_n_0 ;
  wire \mul_reg_Q[3][23]_i_3_n_0 ;
  wire \mul_reg_Q[3][23]_i_4_n_0 ;
  wire \mul_reg_Q[3][23]_i_5_n_0 ;
  wire \mul_reg_Q[3][23]_i_6_n_0 ;
  wire \mul_reg_Q[3][23]_i_7_n_0 ;
  wire \mul_reg_Q[3][23]_i_8_n_0 ;
  wire \mul_reg_Q[3][23]_i_9_n_0 ;
  wire \mul_reg_Q[3][31]_i_2_n_0 ;
  wire \mul_reg_Q[3][31]_i_3_n_0 ;
  wire \mul_reg_Q[3][31]_i_4_n_0 ;
  wire \mul_reg_Q[3][31]_i_5_n_0 ;
  wire \mul_reg_Q[3][31]_i_6_n_0 ;
  wire \mul_reg_Q[3][31]_i_7_n_0 ;
  wire \mul_reg_Q[3][31]_i_8_n_0 ;
  wire \mul_reg_Q[3][31]_i_9_n_0 ;
  wire \mul_reg_Q[3][39]_i_2_n_0 ;
  wire \mul_reg_Q[3][39]_i_3_n_0 ;
  wire \mul_reg_Q[3][39]_i_4_n_0 ;
  wire \mul_reg_Q[3][39]_i_5_n_0 ;
  wire \mul_reg_Q[3][39]_i_6_n_0 ;
  wire \mul_reg_Q[3][39]_i_7_n_0 ;
  wire \mul_reg_Q[3][39]_i_8_n_0 ;
  wire \mul_reg_Q[3][39]_i_9_n_0 ;
  wire \mul_reg_Q[3][47]_i_10_n_0 ;
  wire \mul_reg_Q[3][47]_i_2_n_0 ;
  wire \mul_reg_Q[3][47]_i_3_n_0 ;
  wire \mul_reg_Q[3][47]_i_4_n_0 ;
  wire \mul_reg_Q[3][47]_i_5_n_0 ;
  wire \mul_reg_Q[3][47]_i_6_n_0 ;
  wire \mul_reg_Q[3][47]_i_7_n_0 ;
  wire \mul_reg_Q[3][47]_i_8_n_0 ;
  wire \mul_reg_Q[3][47]_i_9_n_0 ;
  wire \mul_reg_Q[3][51]_i_2_n_0 ;
  wire \mul_reg_Q[3][51]_i_3_n_0 ;
  wire \mul_reg_Q[3][51]_i_4_n_0 ;
  wire \mul_reg_Q[3][51]_i_5_n_0 ;
  wire \mul_reg_Q[3][7]_i_2_n_0 ;
  wire \mul_reg_Q[3][7]_i_3_n_0 ;
  wire \mul_reg_Q[3][7]_i_4_n_0 ;
  wire \mul_reg_Q[3][7]_i_5_n_0 ;
  wire \mul_reg_Q[3][7]_i_6_n_0 ;
  wire \mul_reg_Q[3][7]_i_7_n_0 ;
  wire \mul_reg_Q[3][7]_i_8_n_0 ;
  wire \mul_reg_Q[3][7]_i_9_n_0 ;
  wire \mul_reg_Q[7][15]_i_2_n_0 ;
  wire \mul_reg_Q[7][15]_i_3_n_0 ;
  wire \mul_reg_Q[7][15]_i_4_n_0 ;
  wire \mul_reg_Q[7][15]_i_5_n_0 ;
  wire \mul_reg_Q[7][15]_i_6_n_0 ;
  wire \mul_reg_Q[7][15]_i_7_n_0 ;
  wire \mul_reg_Q[7][15]_i_8_n_0 ;
  wire \mul_reg_Q[7][15]_i_9_n_0 ;
  wire \mul_reg_Q[7][23]_i_2_n_0 ;
  wire \mul_reg_Q[7][23]_i_3_n_0 ;
  wire \mul_reg_Q[7][23]_i_4_n_0 ;
  wire \mul_reg_Q[7][23]_i_5_n_0 ;
  wire \mul_reg_Q[7][23]_i_6_n_0 ;
  wire \mul_reg_Q[7][23]_i_7_n_0 ;
  wire \mul_reg_Q[7][23]_i_8_n_0 ;
  wire \mul_reg_Q[7][23]_i_9_n_0 ;
  wire \mul_reg_Q[7][31]_i_2_n_0 ;
  wire \mul_reg_Q[7][31]_i_3_n_0 ;
  wire \mul_reg_Q[7][31]_i_4_n_0 ;
  wire \mul_reg_Q[7][31]_i_5_n_0 ;
  wire \mul_reg_Q[7][31]_i_6_n_0 ;
  wire \mul_reg_Q[7][31]_i_7_n_0 ;
  wire \mul_reg_Q[7][31]_i_8_n_0 ;
  wire \mul_reg_Q[7][31]_i_9_n_0 ;
  wire \mul_reg_Q[7][39]_i_2_n_0 ;
  wire \mul_reg_Q[7][39]_i_3_n_0 ;
  wire \mul_reg_Q[7][39]_i_4_n_0 ;
  wire \mul_reg_Q[7][39]_i_5_n_0 ;
  wire \mul_reg_Q[7][39]_i_6_n_0 ;
  wire \mul_reg_Q[7][39]_i_7_n_0 ;
  wire \mul_reg_Q[7][39]_i_8_n_0 ;
  wire \mul_reg_Q[7][39]_i_9_n_0 ;
  wire \mul_reg_Q[7][47]_i_10_n_0 ;
  wire \mul_reg_Q[7][47]_i_2_n_0 ;
  wire \mul_reg_Q[7][47]_i_3_n_0 ;
  wire \mul_reg_Q[7][47]_i_4_n_0 ;
  wire \mul_reg_Q[7][47]_i_5_n_0 ;
  wire \mul_reg_Q[7][47]_i_6_n_0 ;
  wire \mul_reg_Q[7][47]_i_7_n_0 ;
  wire \mul_reg_Q[7][47]_i_8_n_0 ;
  wire \mul_reg_Q[7][47]_i_9_n_0 ;
  wire \mul_reg_Q[7][51]_i_2_n_0 ;
  wire \mul_reg_Q[7][51]_i_3_n_0 ;
  wire \mul_reg_Q[7][51]_i_4_n_0 ;
  wire \mul_reg_Q[7][51]_i_5_n_0 ;
  wire \mul_reg_Q[7][7]_i_2_n_0 ;
  wire \mul_reg_Q[7][7]_i_3_n_0 ;
  wire \mul_reg_Q[7][7]_i_4_n_0 ;
  wire \mul_reg_Q[7][7]_i_5_n_0 ;
  wire \mul_reg_Q[7][7]_i_6_n_0 ;
  wire \mul_reg_Q[7][7]_i_7_n_0 ;
  wire \mul_reg_Q[7][7]_i_8_n_0 ;
  wire \mul_reg_Q[7][7]_i_9_n_0 ;
  wire \mul_reg_Q_reg[0][0]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][10]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][11]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][12]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][13]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][14]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][15]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][16]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][17]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][18]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][19]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][1]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][20]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][21]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][22]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][23]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][24]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][25]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][26]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][27]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][28]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][29]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][2]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][30]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][31]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][32]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][33]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][34]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][35]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][36]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][37]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][38]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][39]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][3]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][40]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][41]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][42]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][43]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][44]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][45]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][46]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][47]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][48]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][49]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][4]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][50]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][51]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][5]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][6]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][7]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][8]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][9]_srl3_n_0 ;
  wire \mul_reg_Q_reg[11]1__0_n_100 ;
  wire \mul_reg_Q_reg[11]1__0_n_101 ;
  wire \mul_reg_Q_reg[11]1__0_n_102 ;
  wire \mul_reg_Q_reg[11]1__0_n_103 ;
  wire \mul_reg_Q_reg[11]1__0_n_104 ;
  wire \mul_reg_Q_reg[11]1__0_n_105 ;
  wire \mul_reg_Q_reg[11]1__0_n_58 ;
  wire \mul_reg_Q_reg[11]1__0_n_59 ;
  wire \mul_reg_Q_reg[11]1__0_n_60 ;
  wire \mul_reg_Q_reg[11]1__0_n_61 ;
  wire \mul_reg_Q_reg[11]1__0_n_62 ;
  wire \mul_reg_Q_reg[11]1__0_n_63 ;
  wire \mul_reg_Q_reg[11]1__0_n_64 ;
  wire \mul_reg_Q_reg[11]1__0_n_65 ;
  wire \mul_reg_Q_reg[11]1__0_n_66 ;
  wire \mul_reg_Q_reg[11]1__0_n_67 ;
  wire \mul_reg_Q_reg[11]1__0_n_68 ;
  wire \mul_reg_Q_reg[11]1__0_n_69 ;
  wire \mul_reg_Q_reg[11]1__0_n_70 ;
  wire \mul_reg_Q_reg[11]1__0_n_71 ;
  wire \mul_reg_Q_reg[11]1__0_n_72 ;
  wire \mul_reg_Q_reg[11]1__0_n_73 ;
  wire \mul_reg_Q_reg[11]1__0_n_74 ;
  wire \mul_reg_Q_reg[11]1__0_n_75 ;
  wire \mul_reg_Q_reg[11]1__0_n_76 ;
  wire \mul_reg_Q_reg[11]1__0_n_77 ;
  wire \mul_reg_Q_reg[11]1__0_n_78 ;
  wire \mul_reg_Q_reg[11]1__0_n_79 ;
  wire \mul_reg_Q_reg[11]1__0_n_80 ;
  wire \mul_reg_Q_reg[11]1__0_n_81 ;
  wire \mul_reg_Q_reg[11]1__0_n_82 ;
  wire \mul_reg_Q_reg[11]1__0_n_83 ;
  wire \mul_reg_Q_reg[11]1__0_n_84 ;
  wire \mul_reg_Q_reg[11]1__0_n_85 ;
  wire \mul_reg_Q_reg[11]1__0_n_86 ;
  wire \mul_reg_Q_reg[11]1__0_n_87 ;
  wire \mul_reg_Q_reg[11]1__0_n_88 ;
  wire \mul_reg_Q_reg[11]1__0_n_89 ;
  wire \mul_reg_Q_reg[11]1__0_n_90 ;
  wire \mul_reg_Q_reg[11]1__0_n_91 ;
  wire \mul_reg_Q_reg[11]1__0_n_92 ;
  wire \mul_reg_Q_reg[11]1__0_n_93 ;
  wire \mul_reg_Q_reg[11]1__0_n_94 ;
  wire \mul_reg_Q_reg[11]1__0_n_95 ;
  wire \mul_reg_Q_reg[11]1__0_n_96 ;
  wire \mul_reg_Q_reg[11]1__0_n_97 ;
  wire \mul_reg_Q_reg[11]1__0_n_98 ;
  wire \mul_reg_Q_reg[11]1__0_n_99 ;
  wire \mul_reg_Q_reg[11]1_n_100 ;
  wire \mul_reg_Q_reg[11]1_n_101 ;
  wire \mul_reg_Q_reg[11]1_n_102 ;
  wire \mul_reg_Q_reg[11]1_n_103 ;
  wire \mul_reg_Q_reg[11]1_n_104 ;
  wire \mul_reg_Q_reg[11]1_n_105 ;
  wire \mul_reg_Q_reg[11]1_n_106 ;
  wire \mul_reg_Q_reg[11]1_n_107 ;
  wire \mul_reg_Q_reg[11]1_n_108 ;
  wire \mul_reg_Q_reg[11]1_n_109 ;
  wire \mul_reg_Q_reg[11]1_n_110 ;
  wire \mul_reg_Q_reg[11]1_n_111 ;
  wire \mul_reg_Q_reg[11]1_n_112 ;
  wire \mul_reg_Q_reg[11]1_n_113 ;
  wire \mul_reg_Q_reg[11]1_n_114 ;
  wire \mul_reg_Q_reg[11]1_n_115 ;
  wire \mul_reg_Q_reg[11]1_n_116 ;
  wire \mul_reg_Q_reg[11]1_n_117 ;
  wire \mul_reg_Q_reg[11]1_n_118 ;
  wire \mul_reg_Q_reg[11]1_n_119 ;
  wire \mul_reg_Q_reg[11]1_n_120 ;
  wire \mul_reg_Q_reg[11]1_n_121 ;
  wire \mul_reg_Q_reg[11]1_n_122 ;
  wire \mul_reg_Q_reg[11]1_n_123 ;
  wire \mul_reg_Q_reg[11]1_n_124 ;
  wire \mul_reg_Q_reg[11]1_n_125 ;
  wire \mul_reg_Q_reg[11]1_n_126 ;
  wire \mul_reg_Q_reg[11]1_n_127 ;
  wire \mul_reg_Q_reg[11]1_n_128 ;
  wire \mul_reg_Q_reg[11]1_n_129 ;
  wire \mul_reg_Q_reg[11]1_n_130 ;
  wire \mul_reg_Q_reg[11]1_n_131 ;
  wire \mul_reg_Q_reg[11]1_n_132 ;
  wire \mul_reg_Q_reg[11]1_n_133 ;
  wire \mul_reg_Q_reg[11]1_n_134 ;
  wire \mul_reg_Q_reg[11]1_n_135 ;
  wire \mul_reg_Q_reg[11]1_n_136 ;
  wire \mul_reg_Q_reg[11]1_n_137 ;
  wire \mul_reg_Q_reg[11]1_n_138 ;
  wire \mul_reg_Q_reg[11]1_n_139 ;
  wire \mul_reg_Q_reg[11]1_n_140 ;
  wire \mul_reg_Q_reg[11]1_n_141 ;
  wire \mul_reg_Q_reg[11]1_n_142 ;
  wire \mul_reg_Q_reg[11]1_n_143 ;
  wire \mul_reg_Q_reg[11]1_n_144 ;
  wire \mul_reg_Q_reg[11]1_n_145 ;
  wire \mul_reg_Q_reg[11]1_n_146 ;
  wire \mul_reg_Q_reg[11]1_n_147 ;
  wire \mul_reg_Q_reg[11]1_n_148 ;
  wire \mul_reg_Q_reg[11]1_n_149 ;
  wire \mul_reg_Q_reg[11]1_n_150 ;
  wire \mul_reg_Q_reg[11]1_n_151 ;
  wire \mul_reg_Q_reg[11]1_n_152 ;
  wire \mul_reg_Q_reg[11]1_n_153 ;
  wire \mul_reg_Q_reg[11]1_n_58 ;
  wire \mul_reg_Q_reg[11]1_n_59 ;
  wire \mul_reg_Q_reg[11]1_n_60 ;
  wire \mul_reg_Q_reg[11]1_n_61 ;
  wire \mul_reg_Q_reg[11]1_n_62 ;
  wire \mul_reg_Q_reg[11]1_n_63 ;
  wire \mul_reg_Q_reg[11]1_n_64 ;
  wire \mul_reg_Q_reg[11]1_n_65 ;
  wire \mul_reg_Q_reg[11]1_n_66 ;
  wire \mul_reg_Q_reg[11]1_n_67 ;
  wire \mul_reg_Q_reg[11]1_n_68 ;
  wire \mul_reg_Q_reg[11]1_n_69 ;
  wire \mul_reg_Q_reg[11]1_n_70 ;
  wire \mul_reg_Q_reg[11]1_n_71 ;
  wire \mul_reg_Q_reg[11]1_n_72 ;
  wire \mul_reg_Q_reg[11]1_n_73 ;
  wire \mul_reg_Q_reg[11]1_n_74 ;
  wire \mul_reg_Q_reg[11]1_n_75 ;
  wire \mul_reg_Q_reg[11]1_n_76 ;
  wire \mul_reg_Q_reg[11]1_n_77 ;
  wire \mul_reg_Q_reg[11]1_n_78 ;
  wire \mul_reg_Q_reg[11]1_n_79 ;
  wire \mul_reg_Q_reg[11]1_n_80 ;
  wire \mul_reg_Q_reg[11]1_n_81 ;
  wire \mul_reg_Q_reg[11]1_n_82 ;
  wire \mul_reg_Q_reg[11]1_n_83 ;
  wire \mul_reg_Q_reg[11]1_n_84 ;
  wire \mul_reg_Q_reg[11]1_n_85 ;
  wire \mul_reg_Q_reg[11]1_n_86 ;
  wire \mul_reg_Q_reg[11]1_n_87 ;
  wire \mul_reg_Q_reg[11]1_n_88 ;
  wire \mul_reg_Q_reg[11]1_n_89 ;
  wire \mul_reg_Q_reg[11]1_n_90 ;
  wire \mul_reg_Q_reg[11]1_n_91 ;
  wire \mul_reg_Q_reg[11]1_n_92 ;
  wire \mul_reg_Q_reg[11]1_n_93 ;
  wire \mul_reg_Q_reg[11]1_n_94 ;
  wire \mul_reg_Q_reg[11]1_n_95 ;
  wire \mul_reg_Q_reg[11]1_n_96 ;
  wire \mul_reg_Q_reg[11]1_n_97 ;
  wire \mul_reg_Q_reg[11]1_n_98 ;
  wire \mul_reg_Q_reg[11]1_n_99 ;
  wire \mul_reg_Q_reg[11][11]_i_1_n_0 ;
  wire \mul_reg_Q_reg[11][11]_i_1_n_1 ;
  wire \mul_reg_Q_reg[11][11]_i_1_n_10 ;
  wire \mul_reg_Q_reg[11][11]_i_1_n_11 ;
  wire \mul_reg_Q_reg[11][11]_i_1_n_12 ;
  wire \mul_reg_Q_reg[11][11]_i_1_n_13 ;
  wire \mul_reg_Q_reg[11][11]_i_1_n_14 ;
  wire \mul_reg_Q_reg[11][11]_i_1_n_15 ;
  wire \mul_reg_Q_reg[11][11]_i_1_n_2 ;
  wire \mul_reg_Q_reg[11][11]_i_1_n_3 ;
  wire \mul_reg_Q_reg[11][11]_i_1_n_4 ;
  wire \mul_reg_Q_reg[11][11]_i_1_n_5 ;
  wire \mul_reg_Q_reg[11][11]_i_1_n_6 ;
  wire \mul_reg_Q_reg[11][11]_i_1_n_7 ;
  wire \mul_reg_Q_reg[11][11]_i_1_n_8 ;
  wire \mul_reg_Q_reg[11][11]_i_1_n_9 ;
  wire \mul_reg_Q_reg[11][19]_i_1_n_0 ;
  wire \mul_reg_Q_reg[11][19]_i_1_n_1 ;
  wire \mul_reg_Q_reg[11][19]_i_1_n_10 ;
  wire \mul_reg_Q_reg[11][19]_i_1_n_11 ;
  wire \mul_reg_Q_reg[11][19]_i_1_n_12 ;
  wire \mul_reg_Q_reg[11][19]_i_1_n_13 ;
  wire \mul_reg_Q_reg[11][19]_i_1_n_14 ;
  wire \mul_reg_Q_reg[11][19]_i_1_n_15 ;
  wire \mul_reg_Q_reg[11][19]_i_1_n_2 ;
  wire \mul_reg_Q_reg[11][19]_i_1_n_3 ;
  wire \mul_reg_Q_reg[11][19]_i_1_n_4 ;
  wire \mul_reg_Q_reg[11][19]_i_1_n_5 ;
  wire \mul_reg_Q_reg[11][19]_i_1_n_6 ;
  wire \mul_reg_Q_reg[11][19]_i_1_n_7 ;
  wire \mul_reg_Q_reg[11][19]_i_1_n_8 ;
  wire \mul_reg_Q_reg[11][19]_i_1_n_9 ;
  wire \mul_reg_Q_reg[11][27]_i_1_n_0 ;
  wire \mul_reg_Q_reg[11][27]_i_1_n_1 ;
  wire \mul_reg_Q_reg[11][27]_i_1_n_10 ;
  wire \mul_reg_Q_reg[11][27]_i_1_n_11 ;
  wire \mul_reg_Q_reg[11][27]_i_1_n_12 ;
  wire \mul_reg_Q_reg[11][27]_i_1_n_13 ;
  wire \mul_reg_Q_reg[11][27]_i_1_n_14 ;
  wire \mul_reg_Q_reg[11][27]_i_1_n_15 ;
  wire \mul_reg_Q_reg[11][27]_i_1_n_2 ;
  wire \mul_reg_Q_reg[11][27]_i_1_n_3 ;
  wire \mul_reg_Q_reg[11][27]_i_1_n_4 ;
  wire \mul_reg_Q_reg[11][27]_i_1_n_5 ;
  wire \mul_reg_Q_reg[11][27]_i_1_n_6 ;
  wire \mul_reg_Q_reg[11][27]_i_1_n_7 ;
  wire \mul_reg_Q_reg[11][27]_i_1_n_8 ;
  wire \mul_reg_Q_reg[11][27]_i_1_n_9 ;
  wire \mul_reg_Q_reg[11][35]_i_1_n_0 ;
  wire \mul_reg_Q_reg[11][35]_i_1_n_1 ;
  wire \mul_reg_Q_reg[11][35]_i_1_n_10 ;
  wire \mul_reg_Q_reg[11][35]_i_1_n_11 ;
  wire \mul_reg_Q_reg[11][35]_i_1_n_12 ;
  wire \mul_reg_Q_reg[11][35]_i_1_n_13 ;
  wire \mul_reg_Q_reg[11][35]_i_1_n_14 ;
  wire \mul_reg_Q_reg[11][35]_i_1_n_15 ;
  wire \mul_reg_Q_reg[11][35]_i_1_n_2 ;
  wire \mul_reg_Q_reg[11][35]_i_1_n_3 ;
  wire \mul_reg_Q_reg[11][35]_i_1_n_4 ;
  wire \mul_reg_Q_reg[11][35]_i_1_n_5 ;
  wire \mul_reg_Q_reg[11][35]_i_1_n_6 ;
  wire \mul_reg_Q_reg[11][35]_i_1_n_7 ;
  wire \mul_reg_Q_reg[11][35]_i_1_n_8 ;
  wire \mul_reg_Q_reg[11][35]_i_1_n_9 ;
  wire \mul_reg_Q_reg[11][43]_i_1_n_0 ;
  wire \mul_reg_Q_reg[11][43]_i_1_n_1 ;
  wire \mul_reg_Q_reg[11][43]_i_1_n_10 ;
  wire \mul_reg_Q_reg[11][43]_i_1_n_11 ;
  wire \mul_reg_Q_reg[11][43]_i_1_n_12 ;
  wire \mul_reg_Q_reg[11][43]_i_1_n_13 ;
  wire \mul_reg_Q_reg[11][43]_i_1_n_14 ;
  wire \mul_reg_Q_reg[11][43]_i_1_n_15 ;
  wire \mul_reg_Q_reg[11][43]_i_1_n_2 ;
  wire \mul_reg_Q_reg[11][43]_i_1_n_3 ;
  wire \mul_reg_Q_reg[11][43]_i_1_n_4 ;
  wire \mul_reg_Q_reg[11][43]_i_1_n_5 ;
  wire \mul_reg_Q_reg[11][43]_i_1_n_6 ;
  wire \mul_reg_Q_reg[11][43]_i_1_n_7 ;
  wire \mul_reg_Q_reg[11][43]_i_1_n_8 ;
  wire \mul_reg_Q_reg[11][43]_i_1_n_9 ;
  wire \mul_reg_Q_reg[11][51]_i_1_n_1 ;
  wire \mul_reg_Q_reg[11][51]_i_1_n_10 ;
  wire \mul_reg_Q_reg[11][51]_i_1_n_11 ;
  wire \mul_reg_Q_reg[11][51]_i_1_n_12 ;
  wire \mul_reg_Q_reg[11][51]_i_1_n_13 ;
  wire \mul_reg_Q_reg[11][51]_i_1_n_14 ;
  wire \mul_reg_Q_reg[11][51]_i_1_n_15 ;
  wire \mul_reg_Q_reg[11][51]_i_1_n_2 ;
  wire \mul_reg_Q_reg[11][51]_i_1_n_3 ;
  wire \mul_reg_Q_reg[11][51]_i_1_n_4 ;
  wire \mul_reg_Q_reg[11][51]_i_1_n_5 ;
  wire \mul_reg_Q_reg[11][51]_i_1_n_6 ;
  wire \mul_reg_Q_reg[11][51]_i_1_n_7 ;
  wire \mul_reg_Q_reg[11][51]_i_1_n_8 ;
  wire \mul_reg_Q_reg[11][51]_i_1_n_9 ;
  wire [51:4]\mul_reg_Q_reg[12] ;
  wire \mul_reg_Q_reg[13][10]_srl3_n_0 ;
  wire \mul_reg_Q_reg[13][11]_srl3_n_0 ;
  wire \mul_reg_Q_reg[13][12]_srl3_n_0 ;
  wire \mul_reg_Q_reg[13][13]_srl3_n_0 ;
  wire \mul_reg_Q_reg[13][14]_srl3_n_0 ;
  wire \mul_reg_Q_reg[13][15]_srl3_n_0 ;
  wire \mul_reg_Q_reg[13][16]_srl3_n_0 ;
  wire \mul_reg_Q_reg[13][17]_srl3_n_0 ;
  wire \mul_reg_Q_reg[13][18]_srl3_n_0 ;
  wire \mul_reg_Q_reg[13][19]_srl3_n_0 ;
  wire \mul_reg_Q_reg[13][20]_srl3_n_0 ;
  wire \mul_reg_Q_reg[13][21]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][22]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][23]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][24]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][25]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][26]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][27]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][28]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][29]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][30]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][31]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][32]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][33]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][34]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][35]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][36]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][37]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][38]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][39]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][40]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][41]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][42]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][43]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][44]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][45]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][46]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][47]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][48]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][49]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][4]_srl3_n_0 ;
  wire \mul_reg_Q_reg[13][50]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][51]_srl2_n_0 ;
  wire \mul_reg_Q_reg[13][5]_srl3_n_0 ;
  wire \mul_reg_Q_reg[13][6]_srl3_n_0 ;
  wire \mul_reg_Q_reg[13][7]_srl3_n_0 ;
  wire \mul_reg_Q_reg[13][8]_srl3_n_0 ;
  wire \mul_reg_Q_reg[13][9]_srl3_n_0 ;
  wire [51:21]\mul_reg_Q_reg[15] ;
  wire \mul_reg_Q_reg[15]0__0_n_58 ;
  wire \mul_reg_Q_reg[15]0__0_n_59 ;
  wire \mul_reg_Q_reg[15]0__0_n_60 ;
  wire \mul_reg_Q_reg[15]0__0_n_61 ;
  wire \mul_reg_Q_reg[15]0__0_n_62 ;
  wire \mul_reg_Q_reg[15]0__0_n_63 ;
  wire \mul_reg_Q_reg[15]0__0_n_64 ;
  wire \mul_reg_Q_reg[15]0__0_n_65 ;
  wire \mul_reg_Q_reg[15]0__0_n_66 ;
  wire \mul_reg_Q_reg[15]0__0_n_67 ;
  wire \mul_reg_Q_reg[15]0__0_n_68 ;
  wire \mul_reg_Q_reg[15]0__0_n_69 ;
  wire \mul_reg_Q_reg[15]0__0_n_70 ;
  wire \mul_reg_Q_reg[15]0__0_n_71 ;
  wire \mul_reg_Q_reg[15]0__0_n_72 ;
  wire \mul_reg_Q_reg[15]0__0_n_73 ;
  wire \mul_reg_Q_reg[15]0__0_n_74 ;
  wire \mul_reg_Q_reg[15]0_n_106 ;
  wire \mul_reg_Q_reg[15]0_n_107 ;
  wire \mul_reg_Q_reg[15]0_n_108 ;
  wire \mul_reg_Q_reg[15]0_n_109 ;
  wire \mul_reg_Q_reg[15]0_n_110 ;
  wire \mul_reg_Q_reg[15]0_n_111 ;
  wire \mul_reg_Q_reg[15]0_n_112 ;
  wire \mul_reg_Q_reg[15]0_n_113 ;
  wire \mul_reg_Q_reg[15]0_n_114 ;
  wire \mul_reg_Q_reg[15]0_n_115 ;
  wire \mul_reg_Q_reg[15]0_n_116 ;
  wire \mul_reg_Q_reg[15]0_n_117 ;
  wire \mul_reg_Q_reg[15]0_n_118 ;
  wire \mul_reg_Q_reg[15]0_n_119 ;
  wire \mul_reg_Q_reg[15]0_n_120 ;
  wire \mul_reg_Q_reg[15]0_n_121 ;
  wire \mul_reg_Q_reg[15]0_n_122 ;
  wire \mul_reg_Q_reg[15]0_n_123 ;
  wire \mul_reg_Q_reg[15]0_n_124 ;
  wire \mul_reg_Q_reg[15]0_n_125 ;
  wire \mul_reg_Q_reg[15]0_n_126 ;
  wire \mul_reg_Q_reg[15]0_n_127 ;
  wire \mul_reg_Q_reg[15]0_n_128 ;
  wire \mul_reg_Q_reg[15]0_n_129 ;
  wire \mul_reg_Q_reg[15]0_n_130 ;
  wire \mul_reg_Q_reg[15]0_n_131 ;
  wire \mul_reg_Q_reg[15]0_n_132 ;
  wire \mul_reg_Q_reg[15]0_n_133 ;
  wire \mul_reg_Q_reg[15]0_n_134 ;
  wire \mul_reg_Q_reg[15]0_n_135 ;
  wire \mul_reg_Q_reg[15]0_n_136 ;
  wire \mul_reg_Q_reg[15]0_n_137 ;
  wire \mul_reg_Q_reg[15]0_n_138 ;
  wire \mul_reg_Q_reg[15]0_n_139 ;
  wire \mul_reg_Q_reg[15]0_n_140 ;
  wire \mul_reg_Q_reg[15]0_n_141 ;
  wire \mul_reg_Q_reg[15]0_n_142 ;
  wire \mul_reg_Q_reg[15]0_n_143 ;
  wire \mul_reg_Q_reg[15]0_n_144 ;
  wire \mul_reg_Q_reg[15]0_n_145 ;
  wire \mul_reg_Q_reg[15]0_n_146 ;
  wire \mul_reg_Q_reg[15]0_n_147 ;
  wire \mul_reg_Q_reg[15]0_n_148 ;
  wire \mul_reg_Q_reg[15]0_n_149 ;
  wire \mul_reg_Q_reg[15]0_n_150 ;
  wire \mul_reg_Q_reg[15]0_n_151 ;
  wire \mul_reg_Q_reg[15]0_n_152 ;
  wire \mul_reg_Q_reg[15]0_n_153 ;
  wire \mul_reg_Q_reg[15]0_n_58 ;
  wire \mul_reg_Q_reg[15]0_n_59 ;
  wire \mul_reg_Q_reg[15]0_n_60 ;
  wire \mul_reg_Q_reg[15]0_n_61 ;
  wire \mul_reg_Q_reg[15]0_n_62 ;
  wire \mul_reg_Q_reg[15]0_n_63 ;
  wire \mul_reg_Q_reg[15]0_n_64 ;
  wire \mul_reg_Q_reg[15]0_n_65 ;
  wire \mul_reg_Q_reg[15]0_n_66 ;
  wire \mul_reg_Q_reg[15]0_n_67 ;
  wire \mul_reg_Q_reg[15]0_n_68 ;
  wire \mul_reg_Q_reg[15]0_n_69 ;
  wire \mul_reg_Q_reg[15]0_n_70 ;
  wire \mul_reg_Q_reg[15]0_n_71 ;
  wire \mul_reg_Q_reg[15]0_n_72 ;
  wire \mul_reg_Q_reg[15]0_n_73 ;
  wire \mul_reg_Q_reg[15]0_n_74 ;
  wire \mul_reg_Q_reg[15]0_n_75 ;
  wire \mul_reg_Q_reg[15]0_n_76 ;
  wire \mul_reg_Q_reg[15]0_n_77 ;
  wire \mul_reg_Q_reg[15]0_n_78 ;
  wire \mul_reg_Q_reg[15]0_n_79 ;
  wire \mul_reg_Q_reg[15]0_n_80 ;
  wire \mul_reg_Q_reg[15]0_n_81 ;
  wire \mul_reg_Q_reg[15]0_n_82 ;
  wire \mul_reg_Q_reg[15]0_n_83 ;
  wire \mul_reg_Q_reg[15]0_n_84 ;
  wire \mul_reg_Q_reg[15]0_n_85 ;
  wire \mul_reg_Q_reg[15]0_n_86 ;
  wire \mul_reg_Q_reg[15]0_n_87 ;
  wire \mul_reg_Q_reg[15]0_n_88 ;
  wire \mul_reg_Q_reg[3]1__0_n_100 ;
  wire \mul_reg_Q_reg[3]1__0_n_101 ;
  wire \mul_reg_Q_reg[3]1__0_n_102 ;
  wire \mul_reg_Q_reg[3]1__0_n_103 ;
  wire \mul_reg_Q_reg[3]1__0_n_104 ;
  wire \mul_reg_Q_reg[3]1__0_n_105 ;
  wire \mul_reg_Q_reg[3]1__0_n_58 ;
  wire \mul_reg_Q_reg[3]1__0_n_59 ;
  wire \mul_reg_Q_reg[3]1__0_n_60 ;
  wire \mul_reg_Q_reg[3]1__0_n_61 ;
  wire \mul_reg_Q_reg[3]1__0_n_62 ;
  wire \mul_reg_Q_reg[3]1__0_n_63 ;
  wire \mul_reg_Q_reg[3]1__0_n_64 ;
  wire \mul_reg_Q_reg[3]1__0_n_65 ;
  wire \mul_reg_Q_reg[3]1__0_n_66 ;
  wire \mul_reg_Q_reg[3]1__0_n_67 ;
  wire \mul_reg_Q_reg[3]1__0_n_68 ;
  wire \mul_reg_Q_reg[3]1__0_n_69 ;
  wire \mul_reg_Q_reg[3]1__0_n_70 ;
  wire \mul_reg_Q_reg[3]1__0_n_71 ;
  wire \mul_reg_Q_reg[3]1__0_n_72 ;
  wire \mul_reg_Q_reg[3]1__0_n_73 ;
  wire \mul_reg_Q_reg[3]1__0_n_74 ;
  wire \mul_reg_Q_reg[3]1__0_n_75 ;
  wire \mul_reg_Q_reg[3]1__0_n_76 ;
  wire \mul_reg_Q_reg[3]1__0_n_77 ;
  wire \mul_reg_Q_reg[3]1__0_n_78 ;
  wire \mul_reg_Q_reg[3]1__0_n_79 ;
  wire \mul_reg_Q_reg[3]1__0_n_80 ;
  wire \mul_reg_Q_reg[3]1__0_n_81 ;
  wire \mul_reg_Q_reg[3]1__0_n_82 ;
  wire \mul_reg_Q_reg[3]1__0_n_83 ;
  wire \mul_reg_Q_reg[3]1__0_n_84 ;
  wire \mul_reg_Q_reg[3]1__0_n_85 ;
  wire \mul_reg_Q_reg[3]1__0_n_86 ;
  wire \mul_reg_Q_reg[3]1__0_n_87 ;
  wire \mul_reg_Q_reg[3]1__0_n_88 ;
  wire \mul_reg_Q_reg[3]1__0_n_89 ;
  wire \mul_reg_Q_reg[3]1__0_n_90 ;
  wire \mul_reg_Q_reg[3]1__0_n_91 ;
  wire \mul_reg_Q_reg[3]1__0_n_92 ;
  wire \mul_reg_Q_reg[3]1__0_n_93 ;
  wire \mul_reg_Q_reg[3]1__0_n_94 ;
  wire \mul_reg_Q_reg[3]1__0_n_95 ;
  wire \mul_reg_Q_reg[3]1__0_n_96 ;
  wire \mul_reg_Q_reg[3]1__0_n_97 ;
  wire \mul_reg_Q_reg[3]1__0_n_98 ;
  wire \mul_reg_Q_reg[3]1__0_n_99 ;
  wire \mul_reg_Q_reg[3]1_n_100 ;
  wire \mul_reg_Q_reg[3]1_n_101 ;
  wire \mul_reg_Q_reg[3]1_n_102 ;
  wire \mul_reg_Q_reg[3]1_n_103 ;
  wire \mul_reg_Q_reg[3]1_n_104 ;
  wire \mul_reg_Q_reg[3]1_n_105 ;
  wire \mul_reg_Q_reg[3]1_n_106 ;
  wire \mul_reg_Q_reg[3]1_n_107 ;
  wire \mul_reg_Q_reg[3]1_n_108 ;
  wire \mul_reg_Q_reg[3]1_n_109 ;
  wire \mul_reg_Q_reg[3]1_n_110 ;
  wire \mul_reg_Q_reg[3]1_n_111 ;
  wire \mul_reg_Q_reg[3]1_n_112 ;
  wire \mul_reg_Q_reg[3]1_n_113 ;
  wire \mul_reg_Q_reg[3]1_n_114 ;
  wire \mul_reg_Q_reg[3]1_n_115 ;
  wire \mul_reg_Q_reg[3]1_n_116 ;
  wire \mul_reg_Q_reg[3]1_n_117 ;
  wire \mul_reg_Q_reg[3]1_n_118 ;
  wire \mul_reg_Q_reg[3]1_n_119 ;
  wire \mul_reg_Q_reg[3]1_n_120 ;
  wire \mul_reg_Q_reg[3]1_n_121 ;
  wire \mul_reg_Q_reg[3]1_n_122 ;
  wire \mul_reg_Q_reg[3]1_n_123 ;
  wire \mul_reg_Q_reg[3]1_n_124 ;
  wire \mul_reg_Q_reg[3]1_n_125 ;
  wire \mul_reg_Q_reg[3]1_n_126 ;
  wire \mul_reg_Q_reg[3]1_n_127 ;
  wire \mul_reg_Q_reg[3]1_n_128 ;
  wire \mul_reg_Q_reg[3]1_n_129 ;
  wire \mul_reg_Q_reg[3]1_n_130 ;
  wire \mul_reg_Q_reg[3]1_n_131 ;
  wire \mul_reg_Q_reg[3]1_n_132 ;
  wire \mul_reg_Q_reg[3]1_n_133 ;
  wire \mul_reg_Q_reg[3]1_n_134 ;
  wire \mul_reg_Q_reg[3]1_n_135 ;
  wire \mul_reg_Q_reg[3]1_n_136 ;
  wire \mul_reg_Q_reg[3]1_n_137 ;
  wire \mul_reg_Q_reg[3]1_n_138 ;
  wire \mul_reg_Q_reg[3]1_n_139 ;
  wire \mul_reg_Q_reg[3]1_n_140 ;
  wire \mul_reg_Q_reg[3]1_n_141 ;
  wire \mul_reg_Q_reg[3]1_n_142 ;
  wire \mul_reg_Q_reg[3]1_n_143 ;
  wire \mul_reg_Q_reg[3]1_n_144 ;
  wire \mul_reg_Q_reg[3]1_n_145 ;
  wire \mul_reg_Q_reg[3]1_n_146 ;
  wire \mul_reg_Q_reg[3]1_n_147 ;
  wire \mul_reg_Q_reg[3]1_n_148 ;
  wire \mul_reg_Q_reg[3]1_n_149 ;
  wire \mul_reg_Q_reg[3]1_n_150 ;
  wire \mul_reg_Q_reg[3]1_n_151 ;
  wire \mul_reg_Q_reg[3]1_n_152 ;
  wire \mul_reg_Q_reg[3]1_n_153 ;
  wire \mul_reg_Q_reg[3]1_n_58 ;
  wire \mul_reg_Q_reg[3]1_n_59 ;
  wire \mul_reg_Q_reg[3]1_n_60 ;
  wire \mul_reg_Q_reg[3]1_n_61 ;
  wire \mul_reg_Q_reg[3]1_n_62 ;
  wire \mul_reg_Q_reg[3]1_n_63 ;
  wire \mul_reg_Q_reg[3]1_n_64 ;
  wire \mul_reg_Q_reg[3]1_n_65 ;
  wire \mul_reg_Q_reg[3]1_n_66 ;
  wire \mul_reg_Q_reg[3]1_n_67 ;
  wire \mul_reg_Q_reg[3]1_n_68 ;
  wire \mul_reg_Q_reg[3]1_n_69 ;
  wire \mul_reg_Q_reg[3]1_n_70 ;
  wire \mul_reg_Q_reg[3]1_n_71 ;
  wire \mul_reg_Q_reg[3]1_n_72 ;
  wire \mul_reg_Q_reg[3]1_n_73 ;
  wire \mul_reg_Q_reg[3]1_n_74 ;
  wire \mul_reg_Q_reg[3]1_n_75 ;
  wire \mul_reg_Q_reg[3]1_n_76 ;
  wire \mul_reg_Q_reg[3]1_n_77 ;
  wire \mul_reg_Q_reg[3]1_n_78 ;
  wire \mul_reg_Q_reg[3]1_n_79 ;
  wire \mul_reg_Q_reg[3]1_n_80 ;
  wire \mul_reg_Q_reg[3]1_n_81 ;
  wire \mul_reg_Q_reg[3]1_n_82 ;
  wire \mul_reg_Q_reg[3]1_n_83 ;
  wire \mul_reg_Q_reg[3]1_n_84 ;
  wire \mul_reg_Q_reg[3]1_n_85 ;
  wire \mul_reg_Q_reg[3]1_n_86 ;
  wire \mul_reg_Q_reg[3]1_n_87 ;
  wire \mul_reg_Q_reg[3]1_n_88 ;
  wire \mul_reg_Q_reg[3]1_n_89 ;
  wire \mul_reg_Q_reg[3]1_n_90 ;
  wire \mul_reg_Q_reg[3]1_n_91 ;
  wire \mul_reg_Q_reg[3]1_n_92 ;
  wire \mul_reg_Q_reg[3]1_n_93 ;
  wire \mul_reg_Q_reg[3]1_n_94 ;
  wire \mul_reg_Q_reg[3]1_n_95 ;
  wire \mul_reg_Q_reg[3]1_n_96 ;
  wire \mul_reg_Q_reg[3]1_n_97 ;
  wire \mul_reg_Q_reg[3]1_n_98 ;
  wire \mul_reg_Q_reg[3]1_n_99 ;
  wire \mul_reg_Q_reg[3][15]_i_1_n_0 ;
  wire \mul_reg_Q_reg[3][15]_i_1_n_1 ;
  wire \mul_reg_Q_reg[3][15]_i_1_n_10 ;
  wire \mul_reg_Q_reg[3][15]_i_1_n_11 ;
  wire \mul_reg_Q_reg[3][15]_i_1_n_12 ;
  wire \mul_reg_Q_reg[3][15]_i_1_n_13 ;
  wire \mul_reg_Q_reg[3][15]_i_1_n_14 ;
  wire \mul_reg_Q_reg[3][15]_i_1_n_15 ;
  wire \mul_reg_Q_reg[3][15]_i_1_n_2 ;
  wire \mul_reg_Q_reg[3][15]_i_1_n_3 ;
  wire \mul_reg_Q_reg[3][15]_i_1_n_4 ;
  wire \mul_reg_Q_reg[3][15]_i_1_n_5 ;
  wire \mul_reg_Q_reg[3][15]_i_1_n_6 ;
  wire \mul_reg_Q_reg[3][15]_i_1_n_7 ;
  wire \mul_reg_Q_reg[3][15]_i_1_n_8 ;
  wire \mul_reg_Q_reg[3][15]_i_1_n_9 ;
  wire \mul_reg_Q_reg[3][23]_i_1_n_0 ;
  wire \mul_reg_Q_reg[3][23]_i_1_n_1 ;
  wire \mul_reg_Q_reg[3][23]_i_1_n_10 ;
  wire \mul_reg_Q_reg[3][23]_i_1_n_11 ;
  wire \mul_reg_Q_reg[3][23]_i_1_n_12 ;
  wire \mul_reg_Q_reg[3][23]_i_1_n_13 ;
  wire \mul_reg_Q_reg[3][23]_i_1_n_14 ;
  wire \mul_reg_Q_reg[3][23]_i_1_n_15 ;
  wire \mul_reg_Q_reg[3][23]_i_1_n_2 ;
  wire \mul_reg_Q_reg[3][23]_i_1_n_3 ;
  wire \mul_reg_Q_reg[3][23]_i_1_n_4 ;
  wire \mul_reg_Q_reg[3][23]_i_1_n_5 ;
  wire \mul_reg_Q_reg[3][23]_i_1_n_6 ;
  wire \mul_reg_Q_reg[3][23]_i_1_n_7 ;
  wire \mul_reg_Q_reg[3][23]_i_1_n_8 ;
  wire \mul_reg_Q_reg[3][23]_i_1_n_9 ;
  wire \mul_reg_Q_reg[3][31]_i_1_n_0 ;
  wire \mul_reg_Q_reg[3][31]_i_1_n_1 ;
  wire \mul_reg_Q_reg[3][31]_i_1_n_10 ;
  wire \mul_reg_Q_reg[3][31]_i_1_n_11 ;
  wire \mul_reg_Q_reg[3][31]_i_1_n_12 ;
  wire \mul_reg_Q_reg[3][31]_i_1_n_13 ;
  wire \mul_reg_Q_reg[3][31]_i_1_n_14 ;
  wire \mul_reg_Q_reg[3][31]_i_1_n_15 ;
  wire \mul_reg_Q_reg[3][31]_i_1_n_2 ;
  wire \mul_reg_Q_reg[3][31]_i_1_n_3 ;
  wire \mul_reg_Q_reg[3][31]_i_1_n_4 ;
  wire \mul_reg_Q_reg[3][31]_i_1_n_5 ;
  wire \mul_reg_Q_reg[3][31]_i_1_n_6 ;
  wire \mul_reg_Q_reg[3][31]_i_1_n_7 ;
  wire \mul_reg_Q_reg[3][31]_i_1_n_8 ;
  wire \mul_reg_Q_reg[3][31]_i_1_n_9 ;
  wire \mul_reg_Q_reg[3][39]_i_1_n_0 ;
  wire \mul_reg_Q_reg[3][39]_i_1_n_1 ;
  wire \mul_reg_Q_reg[3][39]_i_1_n_10 ;
  wire \mul_reg_Q_reg[3][39]_i_1_n_11 ;
  wire \mul_reg_Q_reg[3][39]_i_1_n_12 ;
  wire \mul_reg_Q_reg[3][39]_i_1_n_13 ;
  wire \mul_reg_Q_reg[3][39]_i_1_n_14 ;
  wire \mul_reg_Q_reg[3][39]_i_1_n_15 ;
  wire \mul_reg_Q_reg[3][39]_i_1_n_2 ;
  wire \mul_reg_Q_reg[3][39]_i_1_n_3 ;
  wire \mul_reg_Q_reg[3][39]_i_1_n_4 ;
  wire \mul_reg_Q_reg[3][39]_i_1_n_5 ;
  wire \mul_reg_Q_reg[3][39]_i_1_n_6 ;
  wire \mul_reg_Q_reg[3][39]_i_1_n_7 ;
  wire \mul_reg_Q_reg[3][39]_i_1_n_8 ;
  wire \mul_reg_Q_reg[3][39]_i_1_n_9 ;
  wire \mul_reg_Q_reg[3][47]_i_1_n_0 ;
  wire \mul_reg_Q_reg[3][47]_i_1_n_1 ;
  wire \mul_reg_Q_reg[3][47]_i_1_n_10 ;
  wire \mul_reg_Q_reg[3][47]_i_1_n_11 ;
  wire \mul_reg_Q_reg[3][47]_i_1_n_12 ;
  wire \mul_reg_Q_reg[3][47]_i_1_n_13 ;
  wire \mul_reg_Q_reg[3][47]_i_1_n_14 ;
  wire \mul_reg_Q_reg[3][47]_i_1_n_15 ;
  wire \mul_reg_Q_reg[3][47]_i_1_n_2 ;
  wire \mul_reg_Q_reg[3][47]_i_1_n_3 ;
  wire \mul_reg_Q_reg[3][47]_i_1_n_4 ;
  wire \mul_reg_Q_reg[3][47]_i_1_n_5 ;
  wire \mul_reg_Q_reg[3][47]_i_1_n_6 ;
  wire \mul_reg_Q_reg[3][47]_i_1_n_7 ;
  wire \mul_reg_Q_reg[3][47]_i_1_n_8 ;
  wire \mul_reg_Q_reg[3][47]_i_1_n_9 ;
  wire \mul_reg_Q_reg[3][51]_i_1_n_12 ;
  wire \mul_reg_Q_reg[3][51]_i_1_n_13 ;
  wire \mul_reg_Q_reg[3][51]_i_1_n_14 ;
  wire \mul_reg_Q_reg[3][51]_i_1_n_15 ;
  wire \mul_reg_Q_reg[3][51]_i_1_n_5 ;
  wire \mul_reg_Q_reg[3][51]_i_1_n_6 ;
  wire \mul_reg_Q_reg[3][51]_i_1_n_7 ;
  wire \mul_reg_Q_reg[3][7]_i_1_n_0 ;
  wire \mul_reg_Q_reg[3][7]_i_1_n_1 ;
  wire \mul_reg_Q_reg[3][7]_i_1_n_10 ;
  wire \mul_reg_Q_reg[3][7]_i_1_n_11 ;
  wire \mul_reg_Q_reg[3][7]_i_1_n_12 ;
  wire \mul_reg_Q_reg[3][7]_i_1_n_13 ;
  wire \mul_reg_Q_reg[3][7]_i_1_n_14 ;
  wire \mul_reg_Q_reg[3][7]_i_1_n_15 ;
  wire \mul_reg_Q_reg[3][7]_i_1_n_2 ;
  wire \mul_reg_Q_reg[3][7]_i_1_n_3 ;
  wire \mul_reg_Q_reg[3][7]_i_1_n_4 ;
  wire \mul_reg_Q_reg[3][7]_i_1_n_5 ;
  wire \mul_reg_Q_reg[3][7]_i_1_n_6 ;
  wire \mul_reg_Q_reg[3][7]_i_1_n_7 ;
  wire \mul_reg_Q_reg[3][7]_i_1_n_8 ;
  wire \mul_reg_Q_reg[3][7]_i_1_n_9 ;
  wire [51:0]\mul_reg_Q_reg[4] ;
  wire \mul_reg_Q_reg[5][0]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][10]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][11]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][12]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][13]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][14]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][15]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][16]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][17]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][18]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][19]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][1]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][20]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][21]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][22]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][23]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][24]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][25]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][26]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][27]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][28]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][29]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][2]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][30]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][31]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][32]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][33]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][34]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][35]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][36]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][37]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][38]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][39]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][3]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][40]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][41]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][42]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][43]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][44]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][45]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][46]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][47]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][48]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][49]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][4]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][50]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][51]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][5]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][6]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][7]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][8]_srl2_n_0 ;
  wire \mul_reg_Q_reg[5][9]_srl2_n_0 ;
  wire \mul_reg_Q_reg[7]1__0_n_100 ;
  wire \mul_reg_Q_reg[7]1__0_n_101 ;
  wire \mul_reg_Q_reg[7]1__0_n_102 ;
  wire \mul_reg_Q_reg[7]1__0_n_103 ;
  wire \mul_reg_Q_reg[7]1__0_n_104 ;
  wire \mul_reg_Q_reg[7]1__0_n_105 ;
  wire \mul_reg_Q_reg[7]1__0_n_58 ;
  wire \mul_reg_Q_reg[7]1__0_n_59 ;
  wire \mul_reg_Q_reg[7]1__0_n_60 ;
  wire \mul_reg_Q_reg[7]1__0_n_61 ;
  wire \mul_reg_Q_reg[7]1__0_n_62 ;
  wire \mul_reg_Q_reg[7]1__0_n_63 ;
  wire \mul_reg_Q_reg[7]1__0_n_64 ;
  wire \mul_reg_Q_reg[7]1__0_n_65 ;
  wire \mul_reg_Q_reg[7]1__0_n_66 ;
  wire \mul_reg_Q_reg[7]1__0_n_67 ;
  wire \mul_reg_Q_reg[7]1__0_n_68 ;
  wire \mul_reg_Q_reg[7]1__0_n_69 ;
  wire \mul_reg_Q_reg[7]1__0_n_70 ;
  wire \mul_reg_Q_reg[7]1__0_n_71 ;
  wire \mul_reg_Q_reg[7]1__0_n_72 ;
  wire \mul_reg_Q_reg[7]1__0_n_73 ;
  wire \mul_reg_Q_reg[7]1__0_n_74 ;
  wire \mul_reg_Q_reg[7]1__0_n_75 ;
  wire \mul_reg_Q_reg[7]1__0_n_76 ;
  wire \mul_reg_Q_reg[7]1__0_n_77 ;
  wire \mul_reg_Q_reg[7]1__0_n_78 ;
  wire \mul_reg_Q_reg[7]1__0_n_79 ;
  wire \mul_reg_Q_reg[7]1__0_n_80 ;
  wire \mul_reg_Q_reg[7]1__0_n_81 ;
  wire \mul_reg_Q_reg[7]1__0_n_82 ;
  wire \mul_reg_Q_reg[7]1__0_n_83 ;
  wire \mul_reg_Q_reg[7]1__0_n_84 ;
  wire \mul_reg_Q_reg[7]1__0_n_85 ;
  wire \mul_reg_Q_reg[7]1__0_n_86 ;
  wire \mul_reg_Q_reg[7]1__0_n_87 ;
  wire \mul_reg_Q_reg[7]1__0_n_88 ;
  wire \mul_reg_Q_reg[7]1__0_n_89 ;
  wire \mul_reg_Q_reg[7]1__0_n_90 ;
  wire \mul_reg_Q_reg[7]1__0_n_91 ;
  wire \mul_reg_Q_reg[7]1__0_n_92 ;
  wire \mul_reg_Q_reg[7]1__0_n_93 ;
  wire \mul_reg_Q_reg[7]1__0_n_94 ;
  wire \mul_reg_Q_reg[7]1__0_n_95 ;
  wire \mul_reg_Q_reg[7]1__0_n_96 ;
  wire \mul_reg_Q_reg[7]1__0_n_97 ;
  wire \mul_reg_Q_reg[7]1__0_n_98 ;
  wire \mul_reg_Q_reg[7]1__0_n_99 ;
  wire \mul_reg_Q_reg[7]1_n_100 ;
  wire \mul_reg_Q_reg[7]1_n_101 ;
  wire \mul_reg_Q_reg[7]1_n_102 ;
  wire \mul_reg_Q_reg[7]1_n_103 ;
  wire \mul_reg_Q_reg[7]1_n_104 ;
  wire \mul_reg_Q_reg[7]1_n_105 ;
  wire \mul_reg_Q_reg[7]1_n_106 ;
  wire \mul_reg_Q_reg[7]1_n_107 ;
  wire \mul_reg_Q_reg[7]1_n_108 ;
  wire \mul_reg_Q_reg[7]1_n_109 ;
  wire \mul_reg_Q_reg[7]1_n_110 ;
  wire \mul_reg_Q_reg[7]1_n_111 ;
  wire \mul_reg_Q_reg[7]1_n_112 ;
  wire \mul_reg_Q_reg[7]1_n_113 ;
  wire \mul_reg_Q_reg[7]1_n_114 ;
  wire \mul_reg_Q_reg[7]1_n_115 ;
  wire \mul_reg_Q_reg[7]1_n_116 ;
  wire \mul_reg_Q_reg[7]1_n_117 ;
  wire \mul_reg_Q_reg[7]1_n_118 ;
  wire \mul_reg_Q_reg[7]1_n_119 ;
  wire \mul_reg_Q_reg[7]1_n_120 ;
  wire \mul_reg_Q_reg[7]1_n_121 ;
  wire \mul_reg_Q_reg[7]1_n_122 ;
  wire \mul_reg_Q_reg[7]1_n_123 ;
  wire \mul_reg_Q_reg[7]1_n_124 ;
  wire \mul_reg_Q_reg[7]1_n_125 ;
  wire \mul_reg_Q_reg[7]1_n_126 ;
  wire \mul_reg_Q_reg[7]1_n_127 ;
  wire \mul_reg_Q_reg[7]1_n_128 ;
  wire \mul_reg_Q_reg[7]1_n_129 ;
  wire \mul_reg_Q_reg[7]1_n_130 ;
  wire \mul_reg_Q_reg[7]1_n_131 ;
  wire \mul_reg_Q_reg[7]1_n_132 ;
  wire \mul_reg_Q_reg[7]1_n_133 ;
  wire \mul_reg_Q_reg[7]1_n_134 ;
  wire \mul_reg_Q_reg[7]1_n_135 ;
  wire \mul_reg_Q_reg[7]1_n_136 ;
  wire \mul_reg_Q_reg[7]1_n_137 ;
  wire \mul_reg_Q_reg[7]1_n_138 ;
  wire \mul_reg_Q_reg[7]1_n_139 ;
  wire \mul_reg_Q_reg[7]1_n_140 ;
  wire \mul_reg_Q_reg[7]1_n_141 ;
  wire \mul_reg_Q_reg[7]1_n_142 ;
  wire \mul_reg_Q_reg[7]1_n_143 ;
  wire \mul_reg_Q_reg[7]1_n_144 ;
  wire \mul_reg_Q_reg[7]1_n_145 ;
  wire \mul_reg_Q_reg[7]1_n_146 ;
  wire \mul_reg_Q_reg[7]1_n_147 ;
  wire \mul_reg_Q_reg[7]1_n_148 ;
  wire \mul_reg_Q_reg[7]1_n_149 ;
  wire \mul_reg_Q_reg[7]1_n_150 ;
  wire \mul_reg_Q_reg[7]1_n_151 ;
  wire \mul_reg_Q_reg[7]1_n_152 ;
  wire \mul_reg_Q_reg[7]1_n_153 ;
  wire \mul_reg_Q_reg[7]1_n_58 ;
  wire \mul_reg_Q_reg[7]1_n_59 ;
  wire \mul_reg_Q_reg[7]1_n_60 ;
  wire \mul_reg_Q_reg[7]1_n_61 ;
  wire \mul_reg_Q_reg[7]1_n_62 ;
  wire \mul_reg_Q_reg[7]1_n_63 ;
  wire \mul_reg_Q_reg[7]1_n_64 ;
  wire \mul_reg_Q_reg[7]1_n_65 ;
  wire \mul_reg_Q_reg[7]1_n_66 ;
  wire \mul_reg_Q_reg[7]1_n_67 ;
  wire \mul_reg_Q_reg[7]1_n_68 ;
  wire \mul_reg_Q_reg[7]1_n_69 ;
  wire \mul_reg_Q_reg[7]1_n_70 ;
  wire \mul_reg_Q_reg[7]1_n_71 ;
  wire \mul_reg_Q_reg[7]1_n_72 ;
  wire \mul_reg_Q_reg[7]1_n_73 ;
  wire \mul_reg_Q_reg[7]1_n_74 ;
  wire \mul_reg_Q_reg[7]1_n_75 ;
  wire \mul_reg_Q_reg[7]1_n_76 ;
  wire \mul_reg_Q_reg[7]1_n_77 ;
  wire \mul_reg_Q_reg[7]1_n_78 ;
  wire \mul_reg_Q_reg[7]1_n_79 ;
  wire \mul_reg_Q_reg[7]1_n_80 ;
  wire \mul_reg_Q_reg[7]1_n_81 ;
  wire \mul_reg_Q_reg[7]1_n_82 ;
  wire \mul_reg_Q_reg[7]1_n_83 ;
  wire \mul_reg_Q_reg[7]1_n_84 ;
  wire \mul_reg_Q_reg[7]1_n_85 ;
  wire \mul_reg_Q_reg[7]1_n_86 ;
  wire \mul_reg_Q_reg[7]1_n_87 ;
  wire \mul_reg_Q_reg[7]1_n_88 ;
  wire \mul_reg_Q_reg[7]1_n_89 ;
  wire \mul_reg_Q_reg[7]1_n_90 ;
  wire \mul_reg_Q_reg[7]1_n_91 ;
  wire \mul_reg_Q_reg[7]1_n_92 ;
  wire \mul_reg_Q_reg[7]1_n_93 ;
  wire \mul_reg_Q_reg[7]1_n_94 ;
  wire \mul_reg_Q_reg[7]1_n_95 ;
  wire \mul_reg_Q_reg[7]1_n_96 ;
  wire \mul_reg_Q_reg[7]1_n_97 ;
  wire \mul_reg_Q_reg[7]1_n_98 ;
  wire \mul_reg_Q_reg[7]1_n_99 ;
  wire \mul_reg_Q_reg[7][15]_i_1_n_0 ;
  wire \mul_reg_Q_reg[7][15]_i_1_n_1 ;
  wire \mul_reg_Q_reg[7][15]_i_1_n_10 ;
  wire \mul_reg_Q_reg[7][15]_i_1_n_11 ;
  wire \mul_reg_Q_reg[7][15]_i_1_n_12 ;
  wire \mul_reg_Q_reg[7][15]_i_1_n_13 ;
  wire \mul_reg_Q_reg[7][15]_i_1_n_14 ;
  wire \mul_reg_Q_reg[7][15]_i_1_n_15 ;
  wire \mul_reg_Q_reg[7][15]_i_1_n_2 ;
  wire \mul_reg_Q_reg[7][15]_i_1_n_3 ;
  wire \mul_reg_Q_reg[7][15]_i_1_n_4 ;
  wire \mul_reg_Q_reg[7][15]_i_1_n_5 ;
  wire \mul_reg_Q_reg[7][15]_i_1_n_6 ;
  wire \mul_reg_Q_reg[7][15]_i_1_n_7 ;
  wire \mul_reg_Q_reg[7][15]_i_1_n_8 ;
  wire \mul_reg_Q_reg[7][15]_i_1_n_9 ;
  wire \mul_reg_Q_reg[7][23]_i_1_n_0 ;
  wire \mul_reg_Q_reg[7][23]_i_1_n_1 ;
  wire \mul_reg_Q_reg[7][23]_i_1_n_10 ;
  wire \mul_reg_Q_reg[7][23]_i_1_n_11 ;
  wire \mul_reg_Q_reg[7][23]_i_1_n_12 ;
  wire \mul_reg_Q_reg[7][23]_i_1_n_13 ;
  wire \mul_reg_Q_reg[7][23]_i_1_n_14 ;
  wire \mul_reg_Q_reg[7][23]_i_1_n_15 ;
  wire \mul_reg_Q_reg[7][23]_i_1_n_2 ;
  wire \mul_reg_Q_reg[7][23]_i_1_n_3 ;
  wire \mul_reg_Q_reg[7][23]_i_1_n_4 ;
  wire \mul_reg_Q_reg[7][23]_i_1_n_5 ;
  wire \mul_reg_Q_reg[7][23]_i_1_n_6 ;
  wire \mul_reg_Q_reg[7][23]_i_1_n_7 ;
  wire \mul_reg_Q_reg[7][23]_i_1_n_8 ;
  wire \mul_reg_Q_reg[7][23]_i_1_n_9 ;
  wire \mul_reg_Q_reg[7][31]_i_1_n_0 ;
  wire \mul_reg_Q_reg[7][31]_i_1_n_1 ;
  wire \mul_reg_Q_reg[7][31]_i_1_n_10 ;
  wire \mul_reg_Q_reg[7][31]_i_1_n_11 ;
  wire \mul_reg_Q_reg[7][31]_i_1_n_12 ;
  wire \mul_reg_Q_reg[7][31]_i_1_n_13 ;
  wire \mul_reg_Q_reg[7][31]_i_1_n_14 ;
  wire \mul_reg_Q_reg[7][31]_i_1_n_15 ;
  wire \mul_reg_Q_reg[7][31]_i_1_n_2 ;
  wire \mul_reg_Q_reg[7][31]_i_1_n_3 ;
  wire \mul_reg_Q_reg[7][31]_i_1_n_4 ;
  wire \mul_reg_Q_reg[7][31]_i_1_n_5 ;
  wire \mul_reg_Q_reg[7][31]_i_1_n_6 ;
  wire \mul_reg_Q_reg[7][31]_i_1_n_7 ;
  wire \mul_reg_Q_reg[7][31]_i_1_n_8 ;
  wire \mul_reg_Q_reg[7][31]_i_1_n_9 ;
  wire \mul_reg_Q_reg[7][39]_i_1_n_0 ;
  wire \mul_reg_Q_reg[7][39]_i_1_n_1 ;
  wire \mul_reg_Q_reg[7][39]_i_1_n_10 ;
  wire \mul_reg_Q_reg[7][39]_i_1_n_11 ;
  wire \mul_reg_Q_reg[7][39]_i_1_n_12 ;
  wire \mul_reg_Q_reg[7][39]_i_1_n_13 ;
  wire \mul_reg_Q_reg[7][39]_i_1_n_14 ;
  wire \mul_reg_Q_reg[7][39]_i_1_n_15 ;
  wire \mul_reg_Q_reg[7][39]_i_1_n_2 ;
  wire \mul_reg_Q_reg[7][39]_i_1_n_3 ;
  wire \mul_reg_Q_reg[7][39]_i_1_n_4 ;
  wire \mul_reg_Q_reg[7][39]_i_1_n_5 ;
  wire \mul_reg_Q_reg[7][39]_i_1_n_6 ;
  wire \mul_reg_Q_reg[7][39]_i_1_n_7 ;
  wire \mul_reg_Q_reg[7][39]_i_1_n_8 ;
  wire \mul_reg_Q_reg[7][39]_i_1_n_9 ;
  wire \mul_reg_Q_reg[7][47]_i_1_n_0 ;
  wire \mul_reg_Q_reg[7][47]_i_1_n_1 ;
  wire \mul_reg_Q_reg[7][47]_i_1_n_10 ;
  wire \mul_reg_Q_reg[7][47]_i_1_n_11 ;
  wire \mul_reg_Q_reg[7][47]_i_1_n_12 ;
  wire \mul_reg_Q_reg[7][47]_i_1_n_13 ;
  wire \mul_reg_Q_reg[7][47]_i_1_n_14 ;
  wire \mul_reg_Q_reg[7][47]_i_1_n_15 ;
  wire \mul_reg_Q_reg[7][47]_i_1_n_2 ;
  wire \mul_reg_Q_reg[7][47]_i_1_n_3 ;
  wire \mul_reg_Q_reg[7][47]_i_1_n_4 ;
  wire \mul_reg_Q_reg[7][47]_i_1_n_5 ;
  wire \mul_reg_Q_reg[7][47]_i_1_n_6 ;
  wire \mul_reg_Q_reg[7][47]_i_1_n_7 ;
  wire \mul_reg_Q_reg[7][47]_i_1_n_8 ;
  wire \mul_reg_Q_reg[7][47]_i_1_n_9 ;
  wire \mul_reg_Q_reg[7][51]_i_1_n_12 ;
  wire \mul_reg_Q_reg[7][51]_i_1_n_13 ;
  wire \mul_reg_Q_reg[7][51]_i_1_n_14 ;
  wire \mul_reg_Q_reg[7][51]_i_1_n_15 ;
  wire \mul_reg_Q_reg[7][51]_i_1_n_5 ;
  wire \mul_reg_Q_reg[7][51]_i_1_n_6 ;
  wire \mul_reg_Q_reg[7][51]_i_1_n_7 ;
  wire \mul_reg_Q_reg[7][7]_i_1_n_0 ;
  wire \mul_reg_Q_reg[7][7]_i_1_n_1 ;
  wire \mul_reg_Q_reg[7][7]_i_1_n_10 ;
  wire \mul_reg_Q_reg[7][7]_i_1_n_11 ;
  wire \mul_reg_Q_reg[7][7]_i_1_n_12 ;
  wire \mul_reg_Q_reg[7][7]_i_1_n_13 ;
  wire \mul_reg_Q_reg[7][7]_i_1_n_14 ;
  wire \mul_reg_Q_reg[7][7]_i_1_n_15 ;
  wire \mul_reg_Q_reg[7][7]_i_1_n_2 ;
  wire \mul_reg_Q_reg[7][7]_i_1_n_3 ;
  wire \mul_reg_Q_reg[7][7]_i_1_n_4 ;
  wire \mul_reg_Q_reg[7][7]_i_1_n_5 ;
  wire \mul_reg_Q_reg[7][7]_i_1_n_6 ;
  wire \mul_reg_Q_reg[7][7]_i_1_n_7 ;
  wire \mul_reg_Q_reg[7][7]_i_1_n_8 ;
  wire \mul_reg_Q_reg[7][7]_i_1_n_9 ;
  wire [51:0]\mul_reg_Q_reg[8] ;
  wire \mul_reg_Q_reg[9][0]_srl3_n_0 ;
  wire \mul_reg_Q_reg[9][10]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][11]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][12]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][13]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][14]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][15]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][16]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][17]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][18]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][19]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][1]_srl3_n_0 ;
  wire \mul_reg_Q_reg[9][20]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][21]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][22]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][23]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][24]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][25]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][26]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][27]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][28]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][29]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][2]_srl3_n_0 ;
  wire \mul_reg_Q_reg[9][30]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][31]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][32]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][33]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][34]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][35]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][36]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][37]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][38]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][39]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][3]_srl3_n_0 ;
  wire \mul_reg_Q_reg[9][40]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][41]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][42]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][43]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][44]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][45]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][46]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][47]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][48]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][49]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][4]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][50]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][51]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][5]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][6]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][7]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][8]_srl2_n_0 ;
  wire \mul_reg_Q_reg[9][9]_srl2_n_0 ;
  wire \mul_reg_Q_reg_n_0_[11][10] ;
  wire \mul_reg_Q_reg_n_0_[11][11] ;
  wire \mul_reg_Q_reg_n_0_[11][12] ;
  wire \mul_reg_Q_reg_n_0_[11][13] ;
  wire \mul_reg_Q_reg_n_0_[11][14] ;
  wire \mul_reg_Q_reg_n_0_[11][15] ;
  wire \mul_reg_Q_reg_n_0_[11][16] ;
  wire \mul_reg_Q_reg_n_0_[11][17] ;
  wire \mul_reg_Q_reg_n_0_[11][18] ;
  wire \mul_reg_Q_reg_n_0_[11][19] ;
  wire \mul_reg_Q_reg_n_0_[11][20] ;
  wire \mul_reg_Q_reg_n_0_[11][21] ;
  wire \mul_reg_Q_reg_n_0_[11][22] ;
  wire \mul_reg_Q_reg_n_0_[11][23] ;
  wire \mul_reg_Q_reg_n_0_[11][24] ;
  wire \mul_reg_Q_reg_n_0_[11][25] ;
  wire \mul_reg_Q_reg_n_0_[11][26] ;
  wire \mul_reg_Q_reg_n_0_[11][27] ;
  wire \mul_reg_Q_reg_n_0_[11][28] ;
  wire \mul_reg_Q_reg_n_0_[11][29] ;
  wire \mul_reg_Q_reg_n_0_[11][30] ;
  wire \mul_reg_Q_reg_n_0_[11][31] ;
  wire \mul_reg_Q_reg_n_0_[11][32] ;
  wire \mul_reg_Q_reg_n_0_[11][33] ;
  wire \mul_reg_Q_reg_n_0_[11][34] ;
  wire \mul_reg_Q_reg_n_0_[11][35] ;
  wire \mul_reg_Q_reg_n_0_[11][36] ;
  wire \mul_reg_Q_reg_n_0_[11][37] ;
  wire \mul_reg_Q_reg_n_0_[11][38] ;
  wire \mul_reg_Q_reg_n_0_[11][39] ;
  wire \mul_reg_Q_reg_n_0_[11][40] ;
  wire \mul_reg_Q_reg_n_0_[11][41] ;
  wire \mul_reg_Q_reg_n_0_[11][42] ;
  wire \mul_reg_Q_reg_n_0_[11][43] ;
  wire \mul_reg_Q_reg_n_0_[11][44] ;
  wire \mul_reg_Q_reg_n_0_[11][45] ;
  wire \mul_reg_Q_reg_n_0_[11][46] ;
  wire \mul_reg_Q_reg_n_0_[11][47] ;
  wire \mul_reg_Q_reg_n_0_[11][48] ;
  wire \mul_reg_Q_reg_n_0_[11][49] ;
  wire \mul_reg_Q_reg_n_0_[11][4] ;
  wire \mul_reg_Q_reg_n_0_[11][50] ;
  wire \mul_reg_Q_reg_n_0_[11][51] ;
  wire \mul_reg_Q_reg_n_0_[11][5] ;
  wire \mul_reg_Q_reg_n_0_[11][6] ;
  wire \mul_reg_Q_reg_n_0_[11][7] ;
  wire \mul_reg_Q_reg_n_0_[11][8] ;
  wire \mul_reg_Q_reg_n_0_[11][9] ;
  wire \mul_reg_Q_reg_n_0_[3][0] ;
  wire \mul_reg_Q_reg_n_0_[3][10] ;
  wire \mul_reg_Q_reg_n_0_[3][11] ;
  wire \mul_reg_Q_reg_n_0_[3][12] ;
  wire \mul_reg_Q_reg_n_0_[3][13] ;
  wire \mul_reg_Q_reg_n_0_[3][14] ;
  wire \mul_reg_Q_reg_n_0_[3][15] ;
  wire \mul_reg_Q_reg_n_0_[3][16] ;
  wire \mul_reg_Q_reg_n_0_[3][17] ;
  wire \mul_reg_Q_reg_n_0_[3][18] ;
  wire \mul_reg_Q_reg_n_0_[3][19] ;
  wire \mul_reg_Q_reg_n_0_[3][1] ;
  wire \mul_reg_Q_reg_n_0_[3][20] ;
  wire \mul_reg_Q_reg_n_0_[3][21] ;
  wire \mul_reg_Q_reg_n_0_[3][22] ;
  wire \mul_reg_Q_reg_n_0_[3][23] ;
  wire \mul_reg_Q_reg_n_0_[3][24] ;
  wire \mul_reg_Q_reg_n_0_[3][25] ;
  wire \mul_reg_Q_reg_n_0_[3][26] ;
  wire \mul_reg_Q_reg_n_0_[3][27] ;
  wire \mul_reg_Q_reg_n_0_[3][28] ;
  wire \mul_reg_Q_reg_n_0_[3][29] ;
  wire \mul_reg_Q_reg_n_0_[3][2] ;
  wire \mul_reg_Q_reg_n_0_[3][30] ;
  wire \mul_reg_Q_reg_n_0_[3][31] ;
  wire \mul_reg_Q_reg_n_0_[3][32] ;
  wire \mul_reg_Q_reg_n_0_[3][33] ;
  wire \mul_reg_Q_reg_n_0_[3][34] ;
  wire \mul_reg_Q_reg_n_0_[3][35] ;
  wire \mul_reg_Q_reg_n_0_[3][36] ;
  wire \mul_reg_Q_reg_n_0_[3][37] ;
  wire \mul_reg_Q_reg_n_0_[3][38] ;
  wire \mul_reg_Q_reg_n_0_[3][39] ;
  wire \mul_reg_Q_reg_n_0_[3][3] ;
  wire \mul_reg_Q_reg_n_0_[3][40] ;
  wire \mul_reg_Q_reg_n_0_[3][41] ;
  wire \mul_reg_Q_reg_n_0_[3][42] ;
  wire \mul_reg_Q_reg_n_0_[3][43] ;
  wire \mul_reg_Q_reg_n_0_[3][44] ;
  wire \mul_reg_Q_reg_n_0_[3][45] ;
  wire \mul_reg_Q_reg_n_0_[3][46] ;
  wire \mul_reg_Q_reg_n_0_[3][47] ;
  wire \mul_reg_Q_reg_n_0_[3][48] ;
  wire \mul_reg_Q_reg_n_0_[3][49] ;
  wire \mul_reg_Q_reg_n_0_[3][4] ;
  wire \mul_reg_Q_reg_n_0_[3][50] ;
  wire \mul_reg_Q_reg_n_0_[3][51] ;
  wire \mul_reg_Q_reg_n_0_[3][5] ;
  wire \mul_reg_Q_reg_n_0_[3][6] ;
  wire \mul_reg_Q_reg_n_0_[3][7] ;
  wire \mul_reg_Q_reg_n_0_[3][8] ;
  wire \mul_reg_Q_reg_n_0_[3][9] ;
  wire \mul_reg_Q_reg_n_0_[7][0] ;
  wire \mul_reg_Q_reg_n_0_[7][10] ;
  wire \mul_reg_Q_reg_n_0_[7][11] ;
  wire \mul_reg_Q_reg_n_0_[7][12] ;
  wire \mul_reg_Q_reg_n_0_[7][13] ;
  wire \mul_reg_Q_reg_n_0_[7][14] ;
  wire \mul_reg_Q_reg_n_0_[7][15] ;
  wire \mul_reg_Q_reg_n_0_[7][16] ;
  wire \mul_reg_Q_reg_n_0_[7][17] ;
  wire \mul_reg_Q_reg_n_0_[7][18] ;
  wire \mul_reg_Q_reg_n_0_[7][19] ;
  wire \mul_reg_Q_reg_n_0_[7][1] ;
  wire \mul_reg_Q_reg_n_0_[7][20] ;
  wire \mul_reg_Q_reg_n_0_[7][21] ;
  wire \mul_reg_Q_reg_n_0_[7][22] ;
  wire \mul_reg_Q_reg_n_0_[7][23] ;
  wire \mul_reg_Q_reg_n_0_[7][24] ;
  wire \mul_reg_Q_reg_n_0_[7][25] ;
  wire \mul_reg_Q_reg_n_0_[7][26] ;
  wire \mul_reg_Q_reg_n_0_[7][27] ;
  wire \mul_reg_Q_reg_n_0_[7][28] ;
  wire \mul_reg_Q_reg_n_0_[7][29] ;
  wire \mul_reg_Q_reg_n_0_[7][2] ;
  wire \mul_reg_Q_reg_n_0_[7][30] ;
  wire \mul_reg_Q_reg_n_0_[7][31] ;
  wire \mul_reg_Q_reg_n_0_[7][32] ;
  wire \mul_reg_Q_reg_n_0_[7][33] ;
  wire \mul_reg_Q_reg_n_0_[7][34] ;
  wire \mul_reg_Q_reg_n_0_[7][35] ;
  wire \mul_reg_Q_reg_n_0_[7][36] ;
  wire \mul_reg_Q_reg_n_0_[7][37] ;
  wire \mul_reg_Q_reg_n_0_[7][38] ;
  wire \mul_reg_Q_reg_n_0_[7][39] ;
  wire \mul_reg_Q_reg_n_0_[7][3] ;
  wire \mul_reg_Q_reg_n_0_[7][40] ;
  wire \mul_reg_Q_reg_n_0_[7][41] ;
  wire \mul_reg_Q_reg_n_0_[7][42] ;
  wire \mul_reg_Q_reg_n_0_[7][43] ;
  wire \mul_reg_Q_reg_n_0_[7][44] ;
  wire \mul_reg_Q_reg_n_0_[7][45] ;
  wire \mul_reg_Q_reg_n_0_[7][46] ;
  wire \mul_reg_Q_reg_n_0_[7][47] ;
  wire \mul_reg_Q_reg_n_0_[7][48] ;
  wire \mul_reg_Q_reg_n_0_[7][49] ;
  wire \mul_reg_Q_reg_n_0_[7][4] ;
  wire \mul_reg_Q_reg_n_0_[7][50] ;
  wire \mul_reg_Q_reg_n_0_[7][51] ;
  wire \mul_reg_Q_reg_n_0_[7][5] ;
  wire \mul_reg_Q_reg_n_0_[7][6] ;
  wire \mul_reg_Q_reg_n_0_[7][7] ;
  wire \mul_reg_Q_reg_n_0_[7][8] ;
  wire \mul_reg_Q_reg_n_0_[7][9] ;
  wire [2:0]p_0_in;
  wire [20:4]p_0_out;
  wire [51:4]p_1_out;
  wire [2:0]phase_counter;
  wire reset;
  wire [7:7]\NLW_mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_CO_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[11]1_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[11]1_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[11]1_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[11]1_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[11]1_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[11]1_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_I_reg[11]1_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_I_reg[11]1_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_I_reg[11]1_CARRYOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_I_reg[11]1_XOROUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[11]1__0_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[11]1__0_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[11]1__0_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[11]1__0_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[11]1__0_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[11]1__0_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_I_reg[11]1__0_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_I_reg[11]1__0_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_I_reg[11]1__0_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_mul_reg_I_reg[11]1__0_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_I_reg[11]1__0_XOROUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[15]0_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[15]0_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[15]0_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[15]0_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[15]0_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[15]0_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_I_reg[15]0_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_I_reg[15]0_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_I_reg[15]0_CARRYOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_I_reg[15]0_XOROUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[15]0__0_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[15]0__0_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[15]0__0_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[15]0__0_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[15]0__0_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[15]0__0_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_I_reg[15]0__0_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_I_reg[15]0__0_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_I_reg[15]0__0_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_mul_reg_I_reg[15]0__0_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_I_reg[15]0__0_XOROUT_UNCONNECTED ;
  wire [7:3]\NLW_mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_O_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[3]1_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[3]1_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[3]1_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[3]1_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[3]1_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[3]1_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_I_reg[3]1_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_I_reg[3]1_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_I_reg[3]1_CARRYOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_I_reg[3]1_XOROUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[3]1__0_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[3]1__0_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[3]1__0_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[3]1__0_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[3]1__0_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[3]1__0_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_I_reg[3]1__0_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_I_reg[3]1__0_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_I_reg[3]1__0_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_mul_reg_I_reg[3]1__0_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_I_reg[3]1__0_XOROUT_UNCONNECTED ;
  wire [7:3]\NLW_mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_O_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[7]1_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[7]1_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[7]1_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[7]1_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[7]1_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[7]1_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_I_reg[7]1_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_I_reg[7]1_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_I_reg[7]1_CARRYOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_I_reg[7]1_XOROUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[7]1__0_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[7]1__0_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[7]1__0_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[7]1__0_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[7]1__0_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[7]1__0_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_I_reg[7]1__0_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_I_reg[7]1__0_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_I_reg[7]1__0_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_mul_reg_I_reg[7]1__0_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_I_reg[7]1__0_XOROUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[11]1_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[11]1_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[11]1_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[11]1_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[11]1_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[11]1_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_Q_reg[11]1_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_Q_reg[11]1_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_Q_reg[11]1_CARRYOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_Q_reg[11]1_XOROUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[11]1__0_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[11]1__0_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[11]1__0_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[11]1__0_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[11]1__0_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[11]1__0_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_Q_reg[11]1__0_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_Q_reg[11]1__0_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_Q_reg[11]1__0_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_mul_reg_Q_reg[11]1__0_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_Q_reg[11]1__0_XOROUT_UNCONNECTED ;
  wire [7:7]\NLW_mul_reg_Q_reg[11][51]_i_1_CO_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[15]0_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[15]0_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[15]0_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[15]0_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[15]0_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[15]0_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_Q_reg[15]0_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_Q_reg[15]0_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_Q_reg[15]0_CARRYOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_Q_reg[15]0_XOROUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[15]0__0_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[15]0__0_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[15]0__0_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[15]0__0_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[15]0__0_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[15]0__0_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_Q_reg[15]0__0_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_Q_reg[15]0__0_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_Q_reg[15]0__0_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_mul_reg_Q_reg[15]0__0_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_Q_reg[15]0__0_XOROUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[3]1_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[3]1_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[3]1_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[3]1_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[3]1_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[3]1_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_Q_reg[3]1_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_Q_reg[3]1_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_Q_reg[3]1_CARRYOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_Q_reg[3]1_XOROUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[3]1__0_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[3]1__0_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[3]1__0_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[3]1__0_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[3]1__0_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[3]1__0_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_Q_reg[3]1__0_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_Q_reg[3]1__0_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_Q_reg[3]1__0_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_mul_reg_Q_reg[3]1__0_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_Q_reg[3]1__0_XOROUT_UNCONNECTED ;
  wire [7:3]\NLW_mul_reg_Q_reg[3][51]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_mul_reg_Q_reg[3][51]_i_1_O_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[7]1_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[7]1_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[7]1_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[7]1_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[7]1_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[7]1_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_Q_reg[7]1_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_Q_reg[7]1_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_Q_reg[7]1_CARRYOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_Q_reg[7]1_XOROUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[7]1__0_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[7]1__0_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[7]1__0_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[7]1__0_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[7]1__0_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[7]1__0_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_Q_reg[7]1__0_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_Q_reg[7]1__0_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_Q_reg[7]1__0_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_mul_reg_Q_reg[7]1__0_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_Q_reg[7]1__0_XOROUT_UNCONNECTED ;
  wire [7:3]\NLW_mul_reg_Q_reg[7][51]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_mul_reg_Q_reg[7][51]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \coeff_reg[0][10]_i_1 
       (.I0(phase_counter[2]),
        .I1(phase_counter[1]),
        .I2(phase_counter[0]),
        .O(\coeff_reg[0][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \coeff_reg[0][11]_i_1 
       (.I0(phase_counter[1]),
        .I1(phase_counter[0]),
        .O(\coeff_reg[0][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \coeff_reg[0][12]_i_1 
       (.I0(phase_counter[2]),
        .I1(phase_counter[1]),
        .I2(phase_counter[0]),
        .O(\coeff_reg[0][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \coeff_reg[0][13]_i_1 
       (.I0(phase_counter[2]),
        .I1(phase_counter[1]),
        .I2(phase_counter[0]),
        .O(\coeff_reg[0][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h13)) 
    \coeff_reg[0][14]_i_1 
       (.I0(phase_counter[2]),
        .I1(phase_counter[1]),
        .I2(phase_counter[0]),
        .O(\coeff_reg[0][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \coeff_reg[0][9]_i_1 
       (.I0(phase_counter[2]),
        .I1(phase_counter[1]),
        .I2(phase_counter[0]),
        .O(\coeff_reg[0][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h17)) 
    \coeff_reg[1][0]_i_1 
       (.I0(phase_counter[2]),
        .I1(phase_counter[1]),
        .I2(phase_counter[0]),
        .O(\coeff_reg[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \coeff_reg[1][10]_i_1 
       (.I0(phase_counter[2]),
        .I1(phase_counter[1]),
        .I2(phase_counter[0]),
        .O(\coeff[8] [10]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \coeff_reg[1][14]_i_1 
       (.I0(phase_counter[0]),
        .I1(phase_counter[1]),
        .I2(phase_counter[2]),
        .O(\coeff[8] [14]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \coeff_reg[2][0]_i_1 
       (.I0(phase_counter[2]),
        .I1(phase_counter[1]),
        .I2(phase_counter[0]),
        .O(\coeff_reg[2][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \coeff_reg[2][11]_i_1 
       (.I0(phase_counter[2]),
        .I1(phase_counter[0]),
        .O(\coeff_reg[2][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \coeff_reg[2][12]_i_1 
       (.I0(phase_counter[2]),
        .I1(phase_counter[1]),
        .O(\coeff_reg[2][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h24)) 
    \coeff_reg[3][12]_i_1 
       (.I0(phase_counter[0]),
        .I1(phase_counter[1]),
        .I2(phase_counter[2]),
        .O(\coeff_reg[3][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hDB)) 
    \coeff_reg[3][13]_i_1 
       (.I0(phase_counter[0]),
        .I1(phase_counter[1]),
        .I2(phase_counter[2]),
        .O(\coeff_reg[3][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h64)) 
    \coeff_reg[3][14]_i_1 
       (.I0(phase_counter[2]),
        .I1(phase_counter[1]),
        .I2(phase_counter[0]),
        .O(\coeff_reg[3][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h58)) 
    \coeff_reg[3][9]_i_1 
       (.I0(phase_counter[2]),
        .I1(phase_counter[1]),
        .I2(phase_counter[0]),
        .O(\coeff_reg[3][9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[0][10] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\coeff_reg[0][10]_i_1_n_0 ),
        .Q(\coeff_reg_reg[0] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[0][11] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\coeff_reg[0][11]_i_1_n_0 ),
        .Q(\coeff_reg_reg[0] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[0][12] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\coeff_reg[0][12]_i_1_n_0 ),
        .Q(\coeff_reg_reg[0] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[0][13] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\coeff_reg[0][13]_i_1_n_0 ),
        .Q(\coeff_reg_reg[0] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[0][14] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\coeff_reg[0][14]_i_1_n_0 ),
        .Q(\coeff_reg_reg[0] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[0][9] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\coeff_reg[0][9]_i_1_n_0 ),
        .Q(\coeff_reg_reg[0] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[1][0] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\coeff_reg[1][0]_i_1_n_0 ),
        .Q(\coeff_reg_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[1][10] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\coeff[8] [10]),
        .Q(\coeff_reg_reg[1] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[1][14] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\coeff[8] [14]),
        .Q(\coeff_reg_reg[1] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[2][0] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\coeff_reg[2][0]_i_1_n_0 ),
        .Q(\coeff_reg_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[2][11] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\coeff_reg[2][11]_i_1_n_0 ),
        .Q(\coeff_reg_reg[2] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[2][12] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\coeff_reg[2][12]_i_1_n_0 ),
        .Q(\coeff_reg_reg[2] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[3][12] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\coeff_reg[3][12]_i_1_n_0 ),
        .Q(\coeff_reg_reg[3] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[3][13] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\coeff_reg[3][13]_i_1_n_0 ),
        .Q(\coeff_reg_reg[3] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[3][14] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\coeff_reg[3][14]_i_1_n_0 ),
        .Q(\coeff_reg_reg[3] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[3][9] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\coeff_reg[3][9]_i_1_n_0 ),
        .Q(\coeff_reg_reg[3] [9]));
  LUT3 #(
    .INIT(8'h08)) 
    \data_out_I[51]_i_1 
       (.I0(data_in_ready),
        .I1(data_in_valid),
        .I2(reset),
        .O(\data_out_I[51]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[0] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [0]),
        .Q(data_out_I[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[10] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [10]),
        .Q(data_out_I[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[11] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [11]),
        .Q(data_out_I[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[12] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [12]),
        .Q(data_out_I[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[13] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [13]),
        .Q(data_out_I[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[14] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [14]),
        .Q(data_out_I[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[15] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [15]),
        .Q(data_out_I[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[16] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [16]),
        .Q(data_out_I[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[17] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [17]),
        .Q(data_out_I[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[18] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [18]),
        .Q(data_out_I[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[19] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [19]),
        .Q(data_out_I[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[1] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [1]),
        .Q(data_out_I[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[20] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [20]),
        .Q(data_out_I[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[21] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [21]),
        .Q(data_out_I[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[22] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [22]),
        .Q(data_out_I[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[23] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [23]),
        .Q(data_out_I[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[24] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [24]),
        .Q(data_out_I[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[25] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [25]),
        .Q(data_out_I[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[26] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [26]),
        .Q(data_out_I[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[27] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [27]),
        .Q(data_out_I[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[28] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [28]),
        .Q(data_out_I[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[29] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [29]),
        .Q(data_out_I[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[2] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [2]),
        .Q(data_out_I[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[30] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [30]),
        .Q(data_out_I[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[31] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [31]),
        .Q(data_out_I[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[32] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [32]),
        .Q(data_out_I[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[33] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [33]),
        .Q(data_out_I[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[34] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [34]),
        .Q(data_out_I[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[35] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [35]),
        .Q(data_out_I[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[36] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [36]),
        .Q(data_out_I[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[37] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [37]),
        .Q(data_out_I[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[38] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [38]),
        .Q(data_out_I[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[39] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [39]),
        .Q(data_out_I[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[3] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [3]),
        .Q(data_out_I[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[40] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [40]),
        .Q(data_out_I[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[41] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [41]),
        .Q(data_out_I[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[42] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [42]),
        .Q(data_out_I[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[43] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [43]),
        .Q(data_out_I[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[44] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [44]),
        .Q(data_out_I[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[45] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [45]),
        .Q(data_out_I[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[46] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [46]),
        .Q(data_out_I[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[47] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [47]),
        .Q(data_out_I[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[48] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [48]),
        .Q(data_out_I[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[49] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [49]),
        .Q(data_out_I[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[4] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [4]),
        .Q(data_out_I[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[50] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [50]),
        .Q(data_out_I[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[51] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [51]),
        .Q(data_out_I[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[5] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [5]),
        .Q(data_out_I[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[6] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [6]),
        .Q(data_out_I[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[7] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [7]),
        .Q(data_out_I[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[8] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [8]),
        .Q(data_out_I[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[9] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [9]),
        .Q(data_out_I[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[0] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][0]_srl3_n_0 ),
        .Q(data_out_Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[10] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][10]_srl3_n_0 ),
        .Q(data_out_Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[11] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][11]_srl3_n_0 ),
        .Q(data_out_Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[12] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][12]_srl3_n_0 ),
        .Q(data_out_Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[13] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][13]_srl3_n_0 ),
        .Q(data_out_Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[14] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][14]_srl3_n_0 ),
        .Q(data_out_Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[15] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][15]_srl3_n_0 ),
        .Q(data_out_Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[16] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][16]_srl3_n_0 ),
        .Q(data_out_Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[17] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][17]_srl3_n_0 ),
        .Q(data_out_Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[18] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][18]_srl3_n_0 ),
        .Q(data_out_Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[19] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][19]_srl3_n_0 ),
        .Q(data_out_Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[1] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][1]_srl3_n_0 ),
        .Q(data_out_Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[20] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][20]_srl3_n_0 ),
        .Q(data_out_Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[21] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][21]_srl3_n_0 ),
        .Q(data_out_Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[22] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][22]_srl3_n_0 ),
        .Q(data_out_Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[23] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][23]_srl3_n_0 ),
        .Q(data_out_Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[24] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][24]_srl3_n_0 ),
        .Q(data_out_Q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[25] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][25]_srl3_n_0 ),
        .Q(data_out_Q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[26] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][26]_srl3_n_0 ),
        .Q(data_out_Q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[27] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][27]_srl3_n_0 ),
        .Q(data_out_Q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[28] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][28]_srl3_n_0 ),
        .Q(data_out_Q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[29] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][29]_srl3_n_0 ),
        .Q(data_out_Q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[2] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][2]_srl3_n_0 ),
        .Q(data_out_Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[30] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][30]_srl3_n_0 ),
        .Q(data_out_Q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[31] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][31]_srl3_n_0 ),
        .Q(data_out_Q[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[32] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][32]_srl3_n_0 ),
        .Q(data_out_Q[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[33] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][33]_srl3_n_0 ),
        .Q(data_out_Q[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[34] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][34]_srl3_n_0 ),
        .Q(data_out_Q[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[35] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][35]_srl3_n_0 ),
        .Q(data_out_Q[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[36] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][36]_srl3_n_0 ),
        .Q(data_out_Q[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[37] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][37]_srl3_n_0 ),
        .Q(data_out_Q[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[38] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][38]_srl3_n_0 ),
        .Q(data_out_Q[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[39] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][39]_srl3_n_0 ),
        .Q(data_out_Q[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[3] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][3]_srl3_n_0 ),
        .Q(data_out_Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[40] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][40]_srl3_n_0 ),
        .Q(data_out_Q[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[41] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][41]_srl3_n_0 ),
        .Q(data_out_Q[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[42] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][42]_srl3_n_0 ),
        .Q(data_out_Q[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[43] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][43]_srl3_n_0 ),
        .Q(data_out_Q[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[44] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][44]_srl3_n_0 ),
        .Q(data_out_Q[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[45] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][45]_srl3_n_0 ),
        .Q(data_out_Q[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[46] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][46]_srl3_n_0 ),
        .Q(data_out_Q[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[47] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][47]_srl3_n_0 ),
        .Q(data_out_Q[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[48] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][48]_srl3_n_0 ),
        .Q(data_out_Q[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[49] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][49]_srl3_n_0 ),
        .Q(data_out_Q[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[4] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][4]_srl3_n_0 ),
        .Q(data_out_Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[50] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][50]_srl3_n_0 ),
        .Q(data_out_Q[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[51] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][51]_srl3_n_0 ),
        .Q(data_out_Q[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[5] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][5]_srl3_n_0 ),
        .Q(data_out_Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[6] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][6]_srl3_n_0 ),
        .Q(data_out_Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[7] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][7]_srl3_n_0 ),
        .Q(data_out_Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[8] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][8]_srl3_n_0 ),
        .Q(data_out_Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[9] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][9]_srl3_n_0 ),
        .Q(data_out_Q[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFF7F7F700000080)) 
    data_out_ready_i_1
       (.I0(data_in_ready),
        .I1(data_in_valid),
        .I2(phase_counter[2]),
        .I3(phase_counter[0]),
        .I4(phase_counter[1]),
        .I5(data_out_ready),
        .O(data_out_ready_i_1_n_0));
  FDCE data_out_ready_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(data_out_ready_i_1_n_0),
        .Q(data_out_ready));
  LUT2 #(
    .INIT(4'h8)) 
    data_out_valid_i_1
       (.I0(data_in_ready),
        .I1(data_in_valid),
        .O(data_out_ready1));
  FDCE data_out_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(data_out_ready1),
        .Q(data_out_valid));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][21]_i_1 
       (.I0(p_1_out[21]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [21]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][22]_i_1 
       (.I0(p_1_out[22]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [22]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][23]_i_1 
       (.I0(p_1_out[23]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [23]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][24]_i_1 
       (.I0(p_1_out[24]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [24]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][25]_i_1 
       (.I0(p_1_out[25]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [25]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][26]_i_1 
       (.I0(p_1_out[26]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [26]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][27]_i_1 
       (.I0(p_1_out[27]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [27]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][28]_i_1 
       (.I0(p_1_out[28]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [28]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][29]_i_1 
       (.I0(p_1_out[29]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [29]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][30]_i_1 
       (.I0(p_1_out[30]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [30]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][31]_i_1 
       (.I0(p_1_out[31]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [31]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][32]_i_1 
       (.I0(p_1_out[32]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [32]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][33]_i_1 
       (.I0(p_1_out[33]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [33]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][34]_i_1 
       (.I0(p_1_out[34]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [34]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][35]_i_1 
       (.I0(p_1_out[35]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [35]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][36]_i_1 
       (.I0(p_1_out[36]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [36]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][37]_i_1 
       (.I0(p_1_out[37]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [37]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][38]_i_1 
       (.I0(p_1_out[38]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [38]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][39]_i_1 
       (.I0(p_1_out[39]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [39]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][40]_i_1 
       (.I0(p_1_out[40]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [40]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][41]_i_1 
       (.I0(p_1_out[41]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [41]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][42]_i_1 
       (.I0(p_1_out[42]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [42]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][43]_i_1 
       (.I0(p_1_out[43]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [43]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][44]_i_1 
       (.I0(p_1_out[44]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [44]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][45]_i_1 
       (.I0(p_1_out[45]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [45]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][46]_i_1 
       (.I0(p_1_out[46]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [46]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][47]_i_1 
       (.I0(p_1_out[47]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [47]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][48]_i_1 
       (.I0(p_1_out[48]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [48]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][49]_i_1 
       (.I0(p_1_out[49]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [49]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][50]_i_1 
       (.I0(p_1_out[50]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [50]));
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][51]_i_1 
       (.I0(p_1_out[51]),
        .I1(\mul_reg_I_reg[14][21]_0 ),
        .O(\mul_reg_I_reg[15] [51]));
  FDCE \mul_reg_I_reg[0][0] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__171_n_0),
        .Q(\mul_reg_I_reg[0] [0]));
  FDCE \mul_reg_I_reg[0][10] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__161_n_0),
        .Q(\mul_reg_I_reg[0] [10]));
  FDCE \mul_reg_I_reg[0][11] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__160_n_0),
        .Q(\mul_reg_I_reg[0] [11]));
  FDCE \mul_reg_I_reg[0][12] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__159_n_0),
        .Q(\mul_reg_I_reg[0] [12]));
  FDCE \mul_reg_I_reg[0][13] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__158_n_0),
        .Q(\mul_reg_I_reg[0] [13]));
  FDCE \mul_reg_I_reg[0][14] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__157_n_0),
        .Q(\mul_reg_I_reg[0] [14]));
  FDCE \mul_reg_I_reg[0][15] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__156_n_0),
        .Q(\mul_reg_I_reg[0] [15]));
  FDCE \mul_reg_I_reg[0][16] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__155_n_0),
        .Q(\mul_reg_I_reg[0] [16]));
  FDCE \mul_reg_I_reg[0][17] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__154_n_0),
        .Q(\mul_reg_I_reg[0] [17]));
  FDCE \mul_reg_I_reg[0][18] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__153_n_0),
        .Q(\mul_reg_I_reg[0] [18]));
  FDCE \mul_reg_I_reg[0][19] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__152_n_0),
        .Q(\mul_reg_I_reg[0] [19]));
  FDCE \mul_reg_I_reg[0][1] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__170_n_0),
        .Q(\mul_reg_I_reg[0] [1]));
  FDCE \mul_reg_I_reg[0][20] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__151_n_0),
        .Q(\mul_reg_I_reg[0] [20]));
  FDCE \mul_reg_I_reg[0][21] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__150_n_0),
        .Q(\mul_reg_I_reg[0] [21]));
  FDCE \mul_reg_I_reg[0][22] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__149_n_0),
        .Q(\mul_reg_I_reg[0] [22]));
  FDCE \mul_reg_I_reg[0][23] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__148_n_0),
        .Q(\mul_reg_I_reg[0] [23]));
  FDCE \mul_reg_I_reg[0][24] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__147_n_0),
        .Q(\mul_reg_I_reg[0] [24]));
  FDCE \mul_reg_I_reg[0][25] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__146_n_0),
        .Q(\mul_reg_I_reg[0] [25]));
  FDCE \mul_reg_I_reg[0][26] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__145_n_0),
        .Q(\mul_reg_I_reg[0] [26]));
  FDCE \mul_reg_I_reg[0][27] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__144_n_0),
        .Q(\mul_reg_I_reg[0] [27]));
  FDCE \mul_reg_I_reg[0][28] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__143_n_0),
        .Q(\mul_reg_I_reg[0] [28]));
  FDCE \mul_reg_I_reg[0][29] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__142_n_0),
        .Q(\mul_reg_I_reg[0] [29]));
  FDCE \mul_reg_I_reg[0][2] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__169_n_0),
        .Q(\mul_reg_I_reg[0] [2]));
  FDCE \mul_reg_I_reg[0][30] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__141_n_0),
        .Q(\mul_reg_I_reg[0] [30]));
  FDCE \mul_reg_I_reg[0][31] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__140_n_0),
        .Q(\mul_reg_I_reg[0] [31]));
  FDCE \mul_reg_I_reg[0][32] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__139_n_0),
        .Q(\mul_reg_I_reg[0] [32]));
  FDCE \mul_reg_I_reg[0][33] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__138_n_0),
        .Q(\mul_reg_I_reg[0] [33]));
  FDCE \mul_reg_I_reg[0][34] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__137_n_0),
        .Q(\mul_reg_I_reg[0] [34]));
  FDCE \mul_reg_I_reg[0][35] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__136_n_0),
        .Q(\mul_reg_I_reg[0] [35]));
  FDCE \mul_reg_I_reg[0][36] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__135_n_0),
        .Q(\mul_reg_I_reg[0] [36]));
  FDCE \mul_reg_I_reg[0][37] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__134_n_0),
        .Q(\mul_reg_I_reg[0] [37]));
  FDCE \mul_reg_I_reg[0][38] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__133_n_0),
        .Q(\mul_reg_I_reg[0] [38]));
  FDCE \mul_reg_I_reg[0][39] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__132_n_0),
        .Q(\mul_reg_I_reg[0] [39]));
  FDCE \mul_reg_I_reg[0][3] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__168_n_0),
        .Q(\mul_reg_I_reg[0] [3]));
  FDCE \mul_reg_I_reg[0][40] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__131_n_0),
        .Q(\mul_reg_I_reg[0] [40]));
  FDCE \mul_reg_I_reg[0][41] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__130_n_0),
        .Q(\mul_reg_I_reg[0] [41]));
  FDCE \mul_reg_I_reg[0][42] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__129_n_0),
        .Q(\mul_reg_I_reg[0] [42]));
  FDCE \mul_reg_I_reg[0][43] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__128_n_0),
        .Q(\mul_reg_I_reg[0] [43]));
  FDCE \mul_reg_I_reg[0][44] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__127_n_0),
        .Q(\mul_reg_I_reg[0] [44]));
  FDCE \mul_reg_I_reg[0][45] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__126_n_0),
        .Q(\mul_reg_I_reg[0] [45]));
  FDCE \mul_reg_I_reg[0][46] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__125_n_0),
        .Q(\mul_reg_I_reg[0] [46]));
  FDCE \mul_reg_I_reg[0][47] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__124_n_0),
        .Q(\mul_reg_I_reg[0] [47]));
  FDCE \mul_reg_I_reg[0][48] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__123_n_0),
        .Q(\mul_reg_I_reg[0] [48]));
  FDCE \mul_reg_I_reg[0][49] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__122_n_0),
        .Q(\mul_reg_I_reg[0] [49]));
  FDCE \mul_reg_I_reg[0][4] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__167_n_0),
        .Q(\mul_reg_I_reg[0] [4]));
  FDCE \mul_reg_I_reg[0][50] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__121_n_0),
        .Q(\mul_reg_I_reg[0] [50]));
  FDCE \mul_reg_I_reg[0][51] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__120_n_0),
        .Q(\mul_reg_I_reg[0] [51]));
  FDCE \mul_reg_I_reg[0][5] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__166_n_0),
        .Q(\mul_reg_I_reg[0] [5]));
  FDCE \mul_reg_I_reg[0][6] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__165_n_0),
        .Q(\mul_reg_I_reg[0] [6]));
  FDCE \mul_reg_I_reg[0][7] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__164_n_0),
        .Q(\mul_reg_I_reg[0] [7]));
  FDCE \mul_reg_I_reg[0][8] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__163_n_0),
        .Q(\mul_reg_I_reg[0] [8]));
  FDCE \mul_reg_I_reg[0][9] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__162_n_0),
        .Q(\mul_reg_I_reg[0] [9]));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][0]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][0]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[11]1_n_105 ),
        .Q(\mul_reg_I_reg[10][0]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][10]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][10]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ),
        .Q(\mul_reg_I_reg[10][10]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ),
        .Q(\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ,\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ,\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ,\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ,\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ,\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ,\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ,\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 }),
        .DI({\mul_reg_I_reg[11]1_n_94 ,\mul_reg_I_reg[11]1_n_95 ,\mul_reg_I_reg[11]1_n_96 ,\mul_reg_I_reg[11]1_n_97 ,\mul_reg_I_reg[11]1_n_98 ,\mul_reg_I_reg[11]1_n_99 ,\mul_reg_I_reg[11]1_n_100 ,\mul_reg_I_reg[11]1_n_101 }),
        .O({\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ,\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ,\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ,\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ,\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ,\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ,\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ,\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 }),
        .S({\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ,\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ,\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ,\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ,\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ,\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ,\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ,\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_2 
       (.I0(\mul_reg_I_reg[11]1_n_94 ),
        .I1(\mul_reg_I_reg[12] [11]),
        .O(\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_3 
       (.I0(\mul_reg_I_reg[11]1_n_95 ),
        .I1(\mul_reg_I_reg[12] [10]),
        .O(\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_4 
       (.I0(\mul_reg_I_reg[11]1_n_96 ),
        .I1(\mul_reg_I_reg[12] [9]),
        .O(\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_5 
       (.I0(\mul_reg_I_reg[11]1_n_97 ),
        .I1(\mul_reg_I_reg[12] [8]),
        .O(\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_6 
       (.I0(\mul_reg_I_reg[11]1_n_98 ),
        .I1(\mul_reg_I_reg[12] [7]),
        .O(\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_7 
       (.I0(\mul_reg_I_reg[11]1_n_99 ),
        .I1(\mul_reg_I_reg[12] [6]),
        .O(\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_8 
       (.I0(\mul_reg_I_reg[11]1_n_100 ),
        .I1(\mul_reg_I_reg[12] [5]),
        .O(\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_9 
       (.I0(\mul_reg_I_reg[11]1_n_101 ),
        .I1(\mul_reg_I_reg[12] [4]),
        .O(\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][12]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][12]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ),
        .Q(\mul_reg_I_reg[10][12]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][13]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][13]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ),
        .Q(\mul_reg_I_reg[10][13]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][14]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][14]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ),
        .Q(\mul_reg_I_reg[10][14]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][15]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][15]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ),
        .Q(\mul_reg_I_reg[10][15]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][16]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][16]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ),
        .Q(\mul_reg_I_reg[10][16]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][17]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][17]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ),
        .Q(\mul_reg_I_reg[10][17]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][18]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][18]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ),
        .Q(\mul_reg_I_reg[10][18]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ),
        .Q(\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1 
       (.CI(\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ,\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ,\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ,\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ,\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ,\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ,\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ,\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 }),
        .DI({\mul_reg_I_reg[11]1__0_n_103 ,\mul_reg_I_reg[11]1__0_n_104 ,\mul_reg_I_reg[11]1__0_n_105 ,\mul_reg_I_reg[11]1_n_89 ,\mul_reg_I_reg[11]1_n_90 ,\mul_reg_I_reg[11]1_n_91 ,\mul_reg_I_reg[11]1_n_92 ,\mul_reg_I_reg[11]1_n_93 }),
        .O({\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ,\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ,\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ,\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ,\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ,\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ,\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ,\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 }),
        .S({\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ,\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ,\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ,\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ,\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ,\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ,\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ,\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_2 
       (.I0(\mul_reg_I_reg[11]1__0_n_103 ),
        .I1(\mul_reg_I_reg[12] [19]),
        .O(\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_3 
       (.I0(\mul_reg_I_reg[11]1__0_n_104 ),
        .I1(\mul_reg_I_reg[12] [18]),
        .O(\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_4 
       (.I0(\mul_reg_I_reg[11]1__0_n_105 ),
        .I1(\mul_reg_I_reg[12] [17]),
        .O(\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_5 
       (.I0(\mul_reg_I_reg[11]1_n_89 ),
        .I1(\mul_reg_I_reg[12] [16]),
        .O(\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_6 
       (.I0(\mul_reg_I_reg[11]1_n_90 ),
        .I1(\mul_reg_I_reg[12] [15]),
        .O(\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_7 
       (.I0(\mul_reg_I_reg[11]1_n_91 ),
        .I1(\mul_reg_I_reg[12] [14]),
        .O(\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_8 
       (.I0(\mul_reg_I_reg[11]1_n_92 ),
        .I1(\mul_reg_I_reg[12] [13]),
        .O(\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_9 
       (.I0(\mul_reg_I_reg[11]1_n_93 ),
        .I1(\mul_reg_I_reg[12] [12]),
        .O(\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][1]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][1]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[11]1_n_104 ),
        .Q(\mul_reg_I_reg[10][1]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][20]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][20]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ),
        .Q(\mul_reg_I_reg[10][20]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][21]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][21]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ),
        .Q(\mul_reg_I_reg[10][21]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][22]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][22]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ),
        .Q(\mul_reg_I_reg[10][22]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][23]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][23]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ),
        .Q(\mul_reg_I_reg[10][23]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][24]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][24]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ),
        .Q(\mul_reg_I_reg[10][24]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][25]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][25]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ),
        .Q(\mul_reg_I_reg[10][25]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][26]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][26]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ),
        .Q(\mul_reg_I_reg[10][26]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ),
        .Q(\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1 
       (.CI(\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ,\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ,\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ,\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ,\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ,\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ,\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ,\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 }),
        .DI({\mul_reg_I_reg[11]1__0_n_95 ,\mul_reg_I_reg[11]1__0_n_96 ,\mul_reg_I_reg[11]1__0_n_97 ,\mul_reg_I_reg[11]1__0_n_98 ,\mul_reg_I_reg[11]1__0_n_99 ,\mul_reg_I_reg[11]1__0_n_100 ,\mul_reg_I_reg[11]1__0_n_101 ,\mul_reg_I_reg[11]1__0_n_102 }),
        .O({\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ,\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ,\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ,\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ,\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ,\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ,\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ,\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 }),
        .S({\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ,\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ,\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ,\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ,\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ,\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ,\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ,\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_2 
       (.I0(\mul_reg_I_reg[11]1__0_n_95 ),
        .I1(\mul_reg_I_reg[12] [27]),
        .O(\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_3 
       (.I0(\mul_reg_I_reg[11]1__0_n_96 ),
        .I1(\mul_reg_I_reg[12] [26]),
        .O(\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_4 
       (.I0(\mul_reg_I_reg[11]1__0_n_97 ),
        .I1(\mul_reg_I_reg[12] [25]),
        .O(\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_5 
       (.I0(\mul_reg_I_reg[11]1__0_n_98 ),
        .I1(\mul_reg_I_reg[12] [24]),
        .O(\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_6 
       (.I0(\mul_reg_I_reg[11]1__0_n_99 ),
        .I1(\mul_reg_I_reg[12] [23]),
        .O(\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_7 
       (.I0(\mul_reg_I_reg[11]1__0_n_100 ),
        .I1(\mul_reg_I_reg[12] [22]),
        .O(\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_8 
       (.I0(\mul_reg_I_reg[11]1__0_n_101 ),
        .I1(\mul_reg_I_reg[12] [21]),
        .O(\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_9 
       (.I0(\mul_reg_I_reg[11]1__0_n_102 ),
        .I1(\mul_reg_I_reg[12] [20]),
        .O(\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][28]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][28]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ),
        .Q(\mul_reg_I_reg[10][28]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][29]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][29]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ),
        .Q(\mul_reg_I_reg[10][29]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][2]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][2]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[11]1_n_103 ),
        .Q(\mul_reg_I_reg[10][2]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][30]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][30]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ),
        .Q(\mul_reg_I_reg[10][30]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][31]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][31]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ),
        .Q(\mul_reg_I_reg[10][31]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][32]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][32]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ),
        .Q(\mul_reg_I_reg[10][32]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][33]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][33]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ),
        .Q(\mul_reg_I_reg[10][33]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][34]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][34]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ),
        .Q(\mul_reg_I_reg[10][34]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ),
        .Q(\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1 
       (.CI(\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ,\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ,\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ,\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ,\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ,\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ,\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ,\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 }),
        .DI({\mul_reg_I_reg[11]1__0_n_87 ,\mul_reg_I_reg[11]1__0_n_88 ,\mul_reg_I_reg[11]1__0_n_89 ,\mul_reg_I_reg[11]1__0_n_90 ,\mul_reg_I_reg[11]1__0_n_91 ,\mul_reg_I_reg[11]1__0_n_92 ,\mul_reg_I_reg[11]1__0_n_93 ,\mul_reg_I_reg[11]1__0_n_94 }),
        .O({\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ,\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ,\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ,\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ,\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ,\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ,\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ,\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 }),
        .S({\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ,\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ,\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ,\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ,\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ,\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ,\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ,\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_2 
       (.I0(\mul_reg_I_reg[11]1__0_n_87 ),
        .I1(\mul_reg_I_reg[12] [35]),
        .O(\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_3 
       (.I0(\mul_reg_I_reg[11]1__0_n_88 ),
        .I1(\mul_reg_I_reg[12] [34]),
        .O(\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_4 
       (.I0(\mul_reg_I_reg[11]1__0_n_89 ),
        .I1(\mul_reg_I_reg[12] [33]),
        .O(\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_5 
       (.I0(\mul_reg_I_reg[11]1__0_n_90 ),
        .I1(\mul_reg_I_reg[12] [32]),
        .O(\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_6 
       (.I0(\mul_reg_I_reg[11]1__0_n_91 ),
        .I1(\mul_reg_I_reg[12] [31]),
        .O(\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_7 
       (.I0(\mul_reg_I_reg[11]1__0_n_92 ),
        .I1(\mul_reg_I_reg[12] [30]),
        .O(\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_8 
       (.I0(\mul_reg_I_reg[11]1__0_n_93 ),
        .I1(\mul_reg_I_reg[12] [29]),
        .O(\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_9 
       (.I0(\mul_reg_I_reg[11]1__0_n_94 ),
        .I1(\mul_reg_I_reg[12] [28]),
        .O(\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][36]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][36]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ),
        .Q(\mul_reg_I_reg[10][36]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][37]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][37]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ),
        .Q(\mul_reg_I_reg[10][37]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][38]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][38]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ),
        .Q(\mul_reg_I_reg[10][38]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][39]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][39]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ),
        .Q(\mul_reg_I_reg[10][39]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][3]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][3]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[11]1_n_102 ),
        .Q(\mul_reg_I_reg[10][3]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][40]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][40]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ),
        .Q(\mul_reg_I_reg[10][40]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][41]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][41]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ),
        .Q(\mul_reg_I_reg[10][41]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][42]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][42]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ),
        .Q(\mul_reg_I_reg[10][42]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ),
        .Q(\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1 
       (.CI(\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ,\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ,\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ,\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ,\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ,\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ,\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ,\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 }),
        .DI({\mul_reg_I_reg[11]1__0_n_79 ,\mul_reg_I_reg[11]1__0_n_80 ,\mul_reg_I_reg[11]1__0_n_81 ,\mul_reg_I_reg[11]1__0_n_82 ,\mul_reg_I_reg[11]1__0_n_83 ,\mul_reg_I_reg[11]1__0_n_84 ,\mul_reg_I_reg[11]1__0_n_85 ,\mul_reg_I_reg[11]1__0_n_86 }),
        .O({\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ,\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ,\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ,\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ,\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ,\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ,\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ,\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 }),
        .S({\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ,\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ,\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ,\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ,\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ,\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ,\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ,\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_2 
       (.I0(\mul_reg_I_reg[11]1__0_n_79 ),
        .I1(\mul_reg_I_reg[12] [43]),
        .O(\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_3 
       (.I0(\mul_reg_I_reg[11]1__0_n_80 ),
        .I1(\mul_reg_I_reg[12] [42]),
        .O(\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_4 
       (.I0(\mul_reg_I_reg[11]1__0_n_81 ),
        .I1(\mul_reg_I_reg[12] [41]),
        .O(\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_5 
       (.I0(\mul_reg_I_reg[11]1__0_n_82 ),
        .I1(\mul_reg_I_reg[12] [40]),
        .O(\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_6 
       (.I0(\mul_reg_I_reg[11]1__0_n_83 ),
        .I1(\mul_reg_I_reg[12] [39]),
        .O(\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_7 
       (.I0(\mul_reg_I_reg[11]1__0_n_84 ),
        .I1(\mul_reg_I_reg[12] [38]),
        .O(\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_8 
       (.I0(\mul_reg_I_reg[11]1__0_n_85 ),
        .I1(\mul_reg_I_reg[12] [37]),
        .O(\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_9 
       (.I0(\mul_reg_I_reg[11]1__0_n_86 ),
        .I1(\mul_reg_I_reg[12] [36]),
        .O(\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][44]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][44]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ),
        .Q(\mul_reg_I_reg[10][44]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][45]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][45]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ),
        .Q(\mul_reg_I_reg[10][45]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][46]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][46]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ),
        .Q(\mul_reg_I_reg[10][46]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][47]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][47]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ),
        .Q(\mul_reg_I_reg[10][47]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][48]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][48]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ),
        .Q(\mul_reg_I_reg[10][48]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][49]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][49]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ),
        .Q(\mul_reg_I_reg[10][49]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][4]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][4]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ),
        .Q(\mul_reg_I_reg[10][4]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][50]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][50]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ),
        .Q(\mul_reg_I_reg[10][50]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ),
        .Q(\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1 
       (.CI(\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_CO_UNCONNECTED [7],\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ,\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ,\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ,\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ,\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ,\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ,\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 }),
        .DI({1'b0,\mul_reg_I_reg[12] [49:47],\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ,\mul_reg_I_reg[11]1__0_n_76 ,\mul_reg_I_reg[11]1__0_n_77 ,\mul_reg_I_reg[11]1__0_n_78 }),
        .O({\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ,\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ,\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ,\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ,\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ,\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ,\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ,\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 }),
        .S({\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ,\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ,\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ,\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ,\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ,\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ,\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ,\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_10_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_10 
       (.I0(\mul_reg_I_reg[11]1__0_n_78 ),
        .I1(\mul_reg_I_reg[12] [44]),
        .O(\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_2 
       (.I0(\mul_reg_I_reg[12] [47]),
        .O(\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_3 
       (.I0(\mul_reg_I_reg[12] [50]),
        .I1(\mul_reg_I_reg[12] [51]),
        .O(\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_4 
       (.I0(\mul_reg_I_reg[12] [49]),
        .I1(\mul_reg_I_reg[12] [50]),
        .O(\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_5 
       (.I0(\mul_reg_I_reg[12] [48]),
        .I1(\mul_reg_I_reg[12] [49]),
        .O(\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_6 
       (.I0(\mul_reg_I_reg[12] [47]),
        .I1(\mul_reg_I_reg[12] [48]),
        .O(\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_7 
       (.I0(\mul_reg_I_reg[12] [47]),
        .I1(\mul_reg_I_reg[11]1__0_n_75 ),
        .O(\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_8 
       (.I0(\mul_reg_I_reg[11]1__0_n_76 ),
        .I1(\mul_reg_I_reg[12] [46]),
        .O(\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_9 
       (.I0(\mul_reg_I_reg[11]1__0_n_77 ),
        .I1(\mul_reg_I_reg[12] [45]),
        .O(\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][5]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][5]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ),
        .Q(\mul_reg_I_reg[10][5]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][6]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][6]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ),
        .Q(\mul_reg_I_reg[10][6]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][7]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][7]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ),
        .Q(\mul_reg_I_reg[10][7]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][8]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][8]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ),
        .Q(\mul_reg_I_reg[10][8]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[10] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[10][9]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[10][9]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ),
        .Q(\mul_reg_I_reg[10][9]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \mul_reg_I_reg[11]1 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,input_I[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_I_reg[11]1_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\coeff_reg_reg[0] [11],1'b0,\coeff_reg_reg[2] [12:11],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [10],\coeff_reg_reg[2] [12:11],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [10],\coeff_reg_reg[2] [12:11],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [10],\coeff_reg_reg[2] [0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_I_reg[11]1_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_I_reg[11]1_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_I_reg[11]1_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(\mul_reg_I_reg[15]0_i_1_n_0 ),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_I_reg[11]1_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_I_reg[11]1_OVERFLOW_UNCONNECTED ),
        .P({\mul_reg_I_reg[11]1_n_58 ,\mul_reg_I_reg[11]1_n_59 ,\mul_reg_I_reg[11]1_n_60 ,\mul_reg_I_reg[11]1_n_61 ,\mul_reg_I_reg[11]1_n_62 ,\mul_reg_I_reg[11]1_n_63 ,\mul_reg_I_reg[11]1_n_64 ,\mul_reg_I_reg[11]1_n_65 ,\mul_reg_I_reg[11]1_n_66 ,\mul_reg_I_reg[11]1_n_67 ,\mul_reg_I_reg[11]1_n_68 ,\mul_reg_I_reg[11]1_n_69 ,\mul_reg_I_reg[11]1_n_70 ,\mul_reg_I_reg[11]1_n_71 ,\mul_reg_I_reg[11]1_n_72 ,\mul_reg_I_reg[11]1_n_73 ,\mul_reg_I_reg[11]1_n_74 ,\mul_reg_I_reg[11]1_n_75 ,\mul_reg_I_reg[11]1_n_76 ,\mul_reg_I_reg[11]1_n_77 ,\mul_reg_I_reg[11]1_n_78 ,\mul_reg_I_reg[11]1_n_79 ,\mul_reg_I_reg[11]1_n_80 ,\mul_reg_I_reg[11]1_n_81 ,\mul_reg_I_reg[11]1_n_82 ,\mul_reg_I_reg[11]1_n_83 ,\mul_reg_I_reg[11]1_n_84 ,\mul_reg_I_reg[11]1_n_85 ,\mul_reg_I_reg[11]1_n_86 ,\mul_reg_I_reg[11]1_n_87 ,\mul_reg_I_reg[11]1_n_88 ,\mul_reg_I_reg[11]1_n_89 ,\mul_reg_I_reg[11]1_n_90 ,\mul_reg_I_reg[11]1_n_91 ,\mul_reg_I_reg[11]1_n_92 ,\mul_reg_I_reg[11]1_n_93 ,\mul_reg_I_reg[11]1_n_94 ,\mul_reg_I_reg[11]1_n_95 ,\mul_reg_I_reg[11]1_n_96 ,\mul_reg_I_reg[11]1_n_97 ,\mul_reg_I_reg[11]1_n_98 ,\mul_reg_I_reg[11]1_n_99 ,\mul_reg_I_reg[11]1_n_100 ,\mul_reg_I_reg[11]1_n_101 ,\mul_reg_I_reg[11]1_n_102 ,\mul_reg_I_reg[11]1_n_103 ,\mul_reg_I_reg[11]1_n_104 ,\mul_reg_I_reg[11]1_n_105 }),
        .PATTERNBDETECT(\NLW_mul_reg_I_reg[11]1_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_I_reg[11]1_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({\mul_reg_I_reg[11]1_n_106 ,\mul_reg_I_reg[11]1_n_107 ,\mul_reg_I_reg[11]1_n_108 ,\mul_reg_I_reg[11]1_n_109 ,\mul_reg_I_reg[11]1_n_110 ,\mul_reg_I_reg[11]1_n_111 ,\mul_reg_I_reg[11]1_n_112 ,\mul_reg_I_reg[11]1_n_113 ,\mul_reg_I_reg[11]1_n_114 ,\mul_reg_I_reg[11]1_n_115 ,\mul_reg_I_reg[11]1_n_116 ,\mul_reg_I_reg[11]1_n_117 ,\mul_reg_I_reg[11]1_n_118 ,\mul_reg_I_reg[11]1_n_119 ,\mul_reg_I_reg[11]1_n_120 ,\mul_reg_I_reg[11]1_n_121 ,\mul_reg_I_reg[11]1_n_122 ,\mul_reg_I_reg[11]1_n_123 ,\mul_reg_I_reg[11]1_n_124 ,\mul_reg_I_reg[11]1_n_125 ,\mul_reg_I_reg[11]1_n_126 ,\mul_reg_I_reg[11]1_n_127 ,\mul_reg_I_reg[11]1_n_128 ,\mul_reg_I_reg[11]1_n_129 ,\mul_reg_I_reg[11]1_n_130 ,\mul_reg_I_reg[11]1_n_131 ,\mul_reg_I_reg[11]1_n_132 ,\mul_reg_I_reg[11]1_n_133 ,\mul_reg_I_reg[11]1_n_134 ,\mul_reg_I_reg[11]1_n_135 ,\mul_reg_I_reg[11]1_n_136 ,\mul_reg_I_reg[11]1_n_137 ,\mul_reg_I_reg[11]1_n_138 ,\mul_reg_I_reg[11]1_n_139 ,\mul_reg_I_reg[11]1_n_140 ,\mul_reg_I_reg[11]1_n_141 ,\mul_reg_I_reg[11]1_n_142 ,\mul_reg_I_reg[11]1_n_143 ,\mul_reg_I_reg[11]1_n_144 ,\mul_reg_I_reg[11]1_n_145 ,\mul_reg_I_reg[11]1_n_146 ,\mul_reg_I_reg[11]1_n_147 ,\mul_reg_I_reg[11]1_n_148 ,\mul_reg_I_reg[11]1_n_149 ,\mul_reg_I_reg[11]1_n_150 ,\mul_reg_I_reg[11]1_n_151 ,\mul_reg_I_reg[11]1_n_152 ,\mul_reg_I_reg[11]1_n_153 }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_mul_reg_I_reg[11]1_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_mul_reg_I_reg[11]1_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \mul_reg_I_reg[11]1__0 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\coeff_reg_reg[0] [11],1'b0,\coeff_reg_reg[2] [12:11],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [10],\coeff_reg_reg[2] [12:11],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [10],\coeff_reg_reg[2] [12:11],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [10],\coeff_reg_reg[2] [0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_I_reg[11]1__0_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({input_I[31],input_I[31],input_I[31],input_I[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_I_reg[11]1__0_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_I_reg[11]1__0_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_I_reg[11]1__0_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(\mul_reg_I_reg[15]0_i_1_n_0 ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_I_reg[11]1__0_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_I_reg[11]1__0_OVERFLOW_UNCONNECTED ),
        .P({\mul_reg_I_reg[11]1__0_n_58 ,\mul_reg_I_reg[11]1__0_n_59 ,\mul_reg_I_reg[11]1__0_n_60 ,\mul_reg_I_reg[11]1__0_n_61 ,\mul_reg_I_reg[11]1__0_n_62 ,\mul_reg_I_reg[11]1__0_n_63 ,\mul_reg_I_reg[11]1__0_n_64 ,\mul_reg_I_reg[11]1__0_n_65 ,\mul_reg_I_reg[11]1__0_n_66 ,\mul_reg_I_reg[11]1__0_n_67 ,\mul_reg_I_reg[11]1__0_n_68 ,\mul_reg_I_reg[11]1__0_n_69 ,\mul_reg_I_reg[11]1__0_n_70 ,\mul_reg_I_reg[11]1__0_n_71 ,\mul_reg_I_reg[11]1__0_n_72 ,\mul_reg_I_reg[11]1__0_n_73 ,\mul_reg_I_reg[11]1__0_n_74 ,\mul_reg_I_reg[11]1__0_n_75 ,\mul_reg_I_reg[11]1__0_n_76 ,\mul_reg_I_reg[11]1__0_n_77 ,\mul_reg_I_reg[11]1__0_n_78 ,\mul_reg_I_reg[11]1__0_n_79 ,\mul_reg_I_reg[11]1__0_n_80 ,\mul_reg_I_reg[11]1__0_n_81 ,\mul_reg_I_reg[11]1__0_n_82 ,\mul_reg_I_reg[11]1__0_n_83 ,\mul_reg_I_reg[11]1__0_n_84 ,\mul_reg_I_reg[11]1__0_n_85 ,\mul_reg_I_reg[11]1__0_n_86 ,\mul_reg_I_reg[11]1__0_n_87 ,\mul_reg_I_reg[11]1__0_n_88 ,\mul_reg_I_reg[11]1__0_n_89 ,\mul_reg_I_reg[11]1__0_n_90 ,\mul_reg_I_reg[11]1__0_n_91 ,\mul_reg_I_reg[11]1__0_n_92 ,\mul_reg_I_reg[11]1__0_n_93 ,\mul_reg_I_reg[11]1__0_n_94 ,\mul_reg_I_reg[11]1__0_n_95 ,\mul_reg_I_reg[11]1__0_n_96 ,\mul_reg_I_reg[11]1__0_n_97 ,\mul_reg_I_reg[11]1__0_n_98 ,\mul_reg_I_reg[11]1__0_n_99 ,\mul_reg_I_reg[11]1__0_n_100 ,\mul_reg_I_reg[11]1__0_n_101 ,\mul_reg_I_reg[11]1__0_n_102 ,\mul_reg_I_reg[11]1__0_n_103 ,\mul_reg_I_reg[11]1__0_n_104 ,\mul_reg_I_reg[11]1__0_n_105 }),
        .PATTERNBDETECT(\NLW_mul_reg_I_reg[11]1__0_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_I_reg[11]1__0_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\mul_reg_I_reg[11]1_n_106 ,\mul_reg_I_reg[11]1_n_107 ,\mul_reg_I_reg[11]1_n_108 ,\mul_reg_I_reg[11]1_n_109 ,\mul_reg_I_reg[11]1_n_110 ,\mul_reg_I_reg[11]1_n_111 ,\mul_reg_I_reg[11]1_n_112 ,\mul_reg_I_reg[11]1_n_113 ,\mul_reg_I_reg[11]1_n_114 ,\mul_reg_I_reg[11]1_n_115 ,\mul_reg_I_reg[11]1_n_116 ,\mul_reg_I_reg[11]1_n_117 ,\mul_reg_I_reg[11]1_n_118 ,\mul_reg_I_reg[11]1_n_119 ,\mul_reg_I_reg[11]1_n_120 ,\mul_reg_I_reg[11]1_n_121 ,\mul_reg_I_reg[11]1_n_122 ,\mul_reg_I_reg[11]1_n_123 ,\mul_reg_I_reg[11]1_n_124 ,\mul_reg_I_reg[11]1_n_125 ,\mul_reg_I_reg[11]1_n_126 ,\mul_reg_I_reg[11]1_n_127 ,\mul_reg_I_reg[11]1_n_128 ,\mul_reg_I_reg[11]1_n_129 ,\mul_reg_I_reg[11]1_n_130 ,\mul_reg_I_reg[11]1_n_131 ,\mul_reg_I_reg[11]1_n_132 ,\mul_reg_I_reg[11]1_n_133 ,\mul_reg_I_reg[11]1_n_134 ,\mul_reg_I_reg[11]1_n_135 ,\mul_reg_I_reg[11]1_n_136 ,\mul_reg_I_reg[11]1_n_137 ,\mul_reg_I_reg[11]1_n_138 ,\mul_reg_I_reg[11]1_n_139 ,\mul_reg_I_reg[11]1_n_140 ,\mul_reg_I_reg[11]1_n_141 ,\mul_reg_I_reg[11]1_n_142 ,\mul_reg_I_reg[11]1_n_143 ,\mul_reg_I_reg[11]1_n_144 ,\mul_reg_I_reg[11]1_n_145 ,\mul_reg_I_reg[11]1_n_146 ,\mul_reg_I_reg[11]1_n_147 ,\mul_reg_I_reg[11]1_n_148 ,\mul_reg_I_reg[11]1_n_149 ,\mul_reg_I_reg[11]1_n_150 ,\mul_reg_I_reg[11]1_n_151 ,\mul_reg_I_reg[11]1_n_152 ,\mul_reg_I_reg[11]1_n_153 }),
        .PCOUT(\NLW_mul_reg_I_reg[11]1__0_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_mul_reg_I_reg[11]1__0_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_mul_reg_I_reg[11]1__0_XOROUT_UNCONNECTED [7:0]));
  FDCE \mul_reg_I_reg[12][10] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__9_n_0),
        .Q(\mul_reg_I_reg[12] [10]));
  FDCE \mul_reg_I_reg[12][11] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__8_n_0),
        .Q(\mul_reg_I_reg[12] [11]));
  FDCE \mul_reg_I_reg[12][12] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__7_n_0),
        .Q(\mul_reg_I_reg[12] [12]));
  FDCE \mul_reg_I_reg[12][13] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__6_n_0),
        .Q(\mul_reg_I_reg[12] [13]));
  FDCE \mul_reg_I_reg[12][14] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__5_n_0),
        .Q(\mul_reg_I_reg[12] [14]));
  FDCE \mul_reg_I_reg[12][15] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__4_n_0),
        .Q(\mul_reg_I_reg[12] [15]));
  FDCE \mul_reg_I_reg[12][16] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__3_n_0),
        .Q(\mul_reg_I_reg[12] [16]));
  FDCE \mul_reg_I_reg[12][17] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__2_n_0),
        .Q(\mul_reg_I_reg[12] [17]));
  FDCE \mul_reg_I_reg[12][18] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__1_n_0),
        .Q(\mul_reg_I_reg[12] [18]));
  FDCE \mul_reg_I_reg[12][19] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__0_n_0),
        .Q(\mul_reg_I_reg[12] [19]));
  FDCE \mul_reg_I_reg[12][20] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate_n_0),
        .Q(\mul_reg_I_reg[12] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][21] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [21]),
        .Q(\mul_reg_I_reg[12] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][22] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [22]),
        .Q(\mul_reg_I_reg[12] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][23] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [23]),
        .Q(\mul_reg_I_reg[12] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][24] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [24]),
        .Q(\mul_reg_I_reg[12] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][25] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [25]),
        .Q(\mul_reg_I_reg[12] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][26] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [26]),
        .Q(\mul_reg_I_reg[12] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][27] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [27]),
        .Q(\mul_reg_I_reg[12] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][28] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [28]),
        .Q(\mul_reg_I_reg[12] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][29] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [29]),
        .Q(\mul_reg_I_reg[12] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][30] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [30]),
        .Q(\mul_reg_I_reg[12] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][31] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [31]),
        .Q(\mul_reg_I_reg[12] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][32] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [32]),
        .Q(\mul_reg_I_reg[12] [32]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][33] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [33]),
        .Q(\mul_reg_I_reg[12] [33]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][34] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [34]),
        .Q(\mul_reg_I_reg[12] [34]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][35] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [35]),
        .Q(\mul_reg_I_reg[12] [35]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][36] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [36]),
        .Q(\mul_reg_I_reg[12] [36]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][37] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [37]),
        .Q(\mul_reg_I_reg[12] [37]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][38] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [38]),
        .Q(\mul_reg_I_reg[12] [38]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][39] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [39]),
        .Q(\mul_reg_I_reg[12] [39]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][40] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [40]),
        .Q(\mul_reg_I_reg[12] [40]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][41] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [41]),
        .Q(\mul_reg_I_reg[12] [41]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][42] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [42]),
        .Q(\mul_reg_I_reg[12] [42]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][43] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [43]),
        .Q(\mul_reg_I_reg[12] [43]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][44] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [44]),
        .Q(\mul_reg_I_reg[12] [44]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][45] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [45]),
        .Q(\mul_reg_I_reg[12] [45]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][46] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [46]),
        .Q(\mul_reg_I_reg[12] [46]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][47] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [47]),
        .Q(\mul_reg_I_reg[12] [47]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][48] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [48]),
        .Q(\mul_reg_I_reg[12] [48]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][49] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [49]),
        .Q(\mul_reg_I_reg[12] [49]));
  FDCE \mul_reg_I_reg[12][4] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__15_n_0),
        .Q(\mul_reg_I_reg[12] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][50] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [50]),
        .Q(\mul_reg_I_reg[12] [50]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][51] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [51]),
        .Q(\mul_reg_I_reg[12] [51]));
  FDCE \mul_reg_I_reg[12][5] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__14_n_0),
        .Q(\mul_reg_I_reg[12] [5]));
  FDCE \mul_reg_I_reg[12][6] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__13_n_0),
        .Q(\mul_reg_I_reg[12] [6]));
  FDCE \mul_reg_I_reg[12][7] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__12_n_0),
        .Q(\mul_reg_I_reg[12] [7]));
  FDCE \mul_reg_I_reg[12][8] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__11_n_0),
        .Q(\mul_reg_I_reg[12] [8]));
  FDCE \mul_reg_I_reg[12][9] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__10_n_0),
        .Q(\mul_reg_I_reg[12] [9]));
  FDRE \mul_reg_I_reg[13][10]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[14][10]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[13][10]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[13][11]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[14][11]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[13][11]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[13][12]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[14][12]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[13][12]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[13][13]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[14][13]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[13][13]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[13][14]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[14][14]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[13][14]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[13][15]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[14][15]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[13][15]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[13][16]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[14][16]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[13][16]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[13][17]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[14][17]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[13][17]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[13][18]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[14][18]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[13][18]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[13][19]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[14][19]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[13][19]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[13][20]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[14][20]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[13][20]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][21] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [21]),
        .Q(\mul_reg_I_reg[13] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][22] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [22]),
        .Q(\mul_reg_I_reg[13] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][23] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [23]),
        .Q(\mul_reg_I_reg[13] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][24] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [24]),
        .Q(\mul_reg_I_reg[13] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][25] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [25]),
        .Q(\mul_reg_I_reg[13] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][26] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [26]),
        .Q(\mul_reg_I_reg[13] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][27] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [27]),
        .Q(\mul_reg_I_reg[13] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][28] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [28]),
        .Q(\mul_reg_I_reg[13] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][29] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [29]),
        .Q(\mul_reg_I_reg[13] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][30] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [30]),
        .Q(\mul_reg_I_reg[13] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][31] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [31]),
        .Q(\mul_reg_I_reg[13] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][32] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [32]),
        .Q(\mul_reg_I_reg[13] [32]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][33] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [33]),
        .Q(\mul_reg_I_reg[13] [33]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][34] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [34]),
        .Q(\mul_reg_I_reg[13] [34]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][35] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [35]),
        .Q(\mul_reg_I_reg[13] [35]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][36] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [36]),
        .Q(\mul_reg_I_reg[13] [36]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][37] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [37]),
        .Q(\mul_reg_I_reg[13] [37]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][38] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [38]),
        .Q(\mul_reg_I_reg[13] [38]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][39] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [39]),
        .Q(\mul_reg_I_reg[13] [39]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][40] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [40]),
        .Q(\mul_reg_I_reg[13] [40]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][41] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [41]),
        .Q(\mul_reg_I_reg[13] [41]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][42] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [42]),
        .Q(\mul_reg_I_reg[13] [42]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][43] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [43]),
        .Q(\mul_reg_I_reg[13] [43]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][44] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [44]),
        .Q(\mul_reg_I_reg[13] [44]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][45] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [45]),
        .Q(\mul_reg_I_reg[13] [45]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][46] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [46]),
        .Q(\mul_reg_I_reg[13] [46]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][47] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [47]),
        .Q(\mul_reg_I_reg[13] [47]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][48] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [48]),
        .Q(\mul_reg_I_reg[13] [48]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][49] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [49]),
        .Q(\mul_reg_I_reg[13] [49]));
  FDRE \mul_reg_I_reg[13][4]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[14][4]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[13][4]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][50] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [50]),
        .Q(\mul_reg_I_reg[13] [50]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][51] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [51]),
        .Q(\mul_reg_I_reg[13] [51]));
  FDRE \mul_reg_I_reg[13][5]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[14][5]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[13][5]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[13][6]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[14][6]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[13][6]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[13][7]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[14][7]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[13][7]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[13][8]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[14][8]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[13][8]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[13][9]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[14][9]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[13][9]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "\U0/mul_reg_I_reg[14] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[14][10]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[14][10]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(p_1_out[10]),
        .Q(\mul_reg_I_reg[14][10]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[14] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[14][11]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[14][11]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(p_1_out[11]),
        .Q(\mul_reg_I_reg[14][11]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[14] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[14][12]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[14][12]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(p_1_out[12]),
        .Q(\mul_reg_I_reg[14][12]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[14] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[14][13]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[14][13]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(p_1_out[13]),
        .Q(\mul_reg_I_reg[14][13]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[14] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[14][14]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[14][14]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(p_1_out[14]),
        .Q(\mul_reg_I_reg[14][14]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[14] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[14][15]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[14][15]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(p_1_out[15]),
        .Q(\mul_reg_I_reg[14][15]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[14] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[14][16]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[14][16]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(p_1_out[16]),
        .Q(\mul_reg_I_reg[14][16]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[14] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[14][17]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[14][17]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(p_1_out[17]),
        .Q(\mul_reg_I_reg[14][17]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[14] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[14][18]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[14][18]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(p_1_out[18]),
        .Q(\mul_reg_I_reg[14][18]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[14] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[14][19]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[14][19]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(p_1_out[19]),
        .Q(\mul_reg_I_reg[14][19]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[14] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[14][20]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[14][20]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(p_1_out[20]),
        .Q(\mul_reg_I_reg[14][20]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][21] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [21]),
        .Q(\mul_reg_I_reg[14] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][22] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [22]),
        .Q(\mul_reg_I_reg[14] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][23] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [23]),
        .Q(\mul_reg_I_reg[14] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][24] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [24]),
        .Q(\mul_reg_I_reg[14] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][25] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [25]),
        .Q(\mul_reg_I_reg[14] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][26] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [26]),
        .Q(\mul_reg_I_reg[14] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][27] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [27]),
        .Q(\mul_reg_I_reg[14] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][28] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [28]),
        .Q(\mul_reg_I_reg[14] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][29] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [29]),
        .Q(\mul_reg_I_reg[14] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][30] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [30]),
        .Q(\mul_reg_I_reg[14] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][31] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [31]),
        .Q(\mul_reg_I_reg[14] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][32] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [32]),
        .Q(\mul_reg_I_reg[14] [32]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][33] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [33]),
        .Q(\mul_reg_I_reg[14] [33]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][34] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [34]),
        .Q(\mul_reg_I_reg[14] [34]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][35] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [35]),
        .Q(\mul_reg_I_reg[14] [35]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][36] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [36]),
        .Q(\mul_reg_I_reg[14] [36]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][37] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [37]),
        .Q(\mul_reg_I_reg[14] [37]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][38] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [38]),
        .Q(\mul_reg_I_reg[14] [38]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][39] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [39]),
        .Q(\mul_reg_I_reg[14] [39]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][40] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [40]),
        .Q(\mul_reg_I_reg[14] [40]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][41] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [41]),
        .Q(\mul_reg_I_reg[14] [41]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][42] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [42]),
        .Q(\mul_reg_I_reg[14] [42]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][43] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [43]),
        .Q(\mul_reg_I_reg[14] [43]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][44] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [44]),
        .Q(\mul_reg_I_reg[14] [44]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][45] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [45]),
        .Q(\mul_reg_I_reg[14] [45]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][46] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [46]),
        .Q(\mul_reg_I_reg[14] [46]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][47] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [47]),
        .Q(\mul_reg_I_reg[14] [47]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][48] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [48]),
        .Q(\mul_reg_I_reg[14] [48]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][49] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [49]),
        .Q(\mul_reg_I_reg[14] [49]));
  (* srl_bus_name = "\U0/mul_reg_I_reg[14] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[14][4]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[14][4]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(p_1_out[4]),
        .Q(\mul_reg_I_reg[14][4]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][50] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [50]),
        .Q(\mul_reg_I_reg[14] [50]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][51] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [51]),
        .Q(\mul_reg_I_reg[14] [51]));
  (* srl_bus_name = "\U0/mul_reg_I_reg[14] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[14][5]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[14][5]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(p_1_out[5]),
        .Q(\mul_reg_I_reg[14][5]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[14] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[14][6]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[14][6]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(p_1_out[6]),
        .Q(\mul_reg_I_reg[14][6]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[14] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[14][7]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[14][7]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(p_1_out[7]),
        .Q(\mul_reg_I_reg[14][7]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[14] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[14][8]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[14][8]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(p_1_out[8]),
        .Q(\mul_reg_I_reg[14][8]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[14] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[14][9]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[14][9]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(p_1_out[9]),
        .Q(\mul_reg_I_reg[14][9]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \mul_reg_I_reg[15]0 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,input_I[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_I_reg[15]0_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\coeff_reg_reg[3] [14:12],\coeff_reg_reg[1] [14],phase_counter[1],\coeff_reg_reg[3] [9],\coeff_reg_reg[3] [12],\coeff_reg_reg[1] [14],phase_counter[1],\coeff_reg_reg[3] [9],\coeff_reg_reg[3] [12],\coeff_reg_reg[1] [14],phase_counter[1],\coeff_reg_reg[3] [9],\coeff_reg_reg[3] [12]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_I_reg[15]0_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_I_reg[15]0_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_I_reg[15]0_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(\mul_reg_I_reg[15]0_i_1_n_0 ),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_I_reg[15]0_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_I_reg[15]0_OVERFLOW_UNCONNECTED ),
        .P({\mul_reg_I_reg[15]0_n_58 ,\mul_reg_I_reg[15]0_n_59 ,\mul_reg_I_reg[15]0_n_60 ,\mul_reg_I_reg[15]0_n_61 ,\mul_reg_I_reg[15]0_n_62 ,\mul_reg_I_reg[15]0_n_63 ,\mul_reg_I_reg[15]0_n_64 ,\mul_reg_I_reg[15]0_n_65 ,\mul_reg_I_reg[15]0_n_66 ,\mul_reg_I_reg[15]0_n_67 ,\mul_reg_I_reg[15]0_n_68 ,\mul_reg_I_reg[15]0_n_69 ,\mul_reg_I_reg[15]0_n_70 ,\mul_reg_I_reg[15]0_n_71 ,\mul_reg_I_reg[15]0_n_72 ,\mul_reg_I_reg[15]0_n_73 ,\mul_reg_I_reg[15]0_n_74 ,\mul_reg_I_reg[15]0_n_75 ,\mul_reg_I_reg[15]0_n_76 ,\mul_reg_I_reg[15]0_n_77 ,\mul_reg_I_reg[15]0_n_78 ,\mul_reg_I_reg[15]0_n_79 ,\mul_reg_I_reg[15]0_n_80 ,\mul_reg_I_reg[15]0_n_81 ,\mul_reg_I_reg[15]0_n_82 ,\mul_reg_I_reg[15]0_n_83 ,\mul_reg_I_reg[15]0_n_84 ,\mul_reg_I_reg[15]0_n_85 ,\mul_reg_I_reg[15]0_n_86 ,\mul_reg_I_reg[15]0_n_87 ,\mul_reg_I_reg[15]0_n_88 ,p_1_out[20:4]}),
        .PATTERNBDETECT(\NLW_mul_reg_I_reg[15]0_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_I_reg[15]0_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({\mul_reg_I_reg[15]0_n_106 ,\mul_reg_I_reg[15]0_n_107 ,\mul_reg_I_reg[15]0_n_108 ,\mul_reg_I_reg[15]0_n_109 ,\mul_reg_I_reg[15]0_n_110 ,\mul_reg_I_reg[15]0_n_111 ,\mul_reg_I_reg[15]0_n_112 ,\mul_reg_I_reg[15]0_n_113 ,\mul_reg_I_reg[15]0_n_114 ,\mul_reg_I_reg[15]0_n_115 ,\mul_reg_I_reg[15]0_n_116 ,\mul_reg_I_reg[15]0_n_117 ,\mul_reg_I_reg[15]0_n_118 ,\mul_reg_I_reg[15]0_n_119 ,\mul_reg_I_reg[15]0_n_120 ,\mul_reg_I_reg[15]0_n_121 ,\mul_reg_I_reg[15]0_n_122 ,\mul_reg_I_reg[15]0_n_123 ,\mul_reg_I_reg[15]0_n_124 ,\mul_reg_I_reg[15]0_n_125 ,\mul_reg_I_reg[15]0_n_126 ,\mul_reg_I_reg[15]0_n_127 ,\mul_reg_I_reg[15]0_n_128 ,\mul_reg_I_reg[15]0_n_129 ,\mul_reg_I_reg[15]0_n_130 ,\mul_reg_I_reg[15]0_n_131 ,\mul_reg_I_reg[15]0_n_132 ,\mul_reg_I_reg[15]0_n_133 ,\mul_reg_I_reg[15]0_n_134 ,\mul_reg_I_reg[15]0_n_135 ,\mul_reg_I_reg[15]0_n_136 ,\mul_reg_I_reg[15]0_n_137 ,\mul_reg_I_reg[15]0_n_138 ,\mul_reg_I_reg[15]0_n_139 ,\mul_reg_I_reg[15]0_n_140 ,\mul_reg_I_reg[15]0_n_141 ,\mul_reg_I_reg[15]0_n_142 ,\mul_reg_I_reg[15]0_n_143 ,\mul_reg_I_reg[15]0_n_144 ,\mul_reg_I_reg[15]0_n_145 ,\mul_reg_I_reg[15]0_n_146 ,\mul_reg_I_reg[15]0_n_147 ,\mul_reg_I_reg[15]0_n_148 ,\mul_reg_I_reg[15]0_n_149 ,\mul_reg_I_reg[15]0_n_150 ,\mul_reg_I_reg[15]0_n_151 ,\mul_reg_I_reg[15]0_n_152 ,\mul_reg_I_reg[15]0_n_153 }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_mul_reg_I_reg[15]0_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_mul_reg_I_reg[15]0_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \mul_reg_I_reg[15]0__0 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\coeff_reg_reg[3] [14:12],\coeff_reg_reg[1] [14],phase_counter[1],\coeff_reg_reg[3] [9],\coeff_reg_reg[3] [12],\coeff_reg_reg[1] [14],phase_counter[1],\coeff_reg_reg[3] [9],\coeff_reg_reg[3] [12],\coeff_reg_reg[1] [14],phase_counter[1],\coeff_reg_reg[3] [9],\coeff_reg_reg[3] [12]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_I_reg[15]0__0_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({input_I[31],input_I[31],input_I[31],input_I[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_I_reg[15]0__0_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_I_reg[15]0__0_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_I_reg[15]0__0_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(\mul_reg_I_reg[15]0_i_1_n_0 ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(data_out_ready1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_I_reg[15]0__0_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_I_reg[15]0__0_OVERFLOW_UNCONNECTED ),
        .P({\mul_reg_I_reg[15]0__0_n_58 ,\mul_reg_I_reg[15]0__0_n_59 ,\mul_reg_I_reg[15]0__0_n_60 ,\mul_reg_I_reg[15]0__0_n_61 ,\mul_reg_I_reg[15]0__0_n_62 ,\mul_reg_I_reg[15]0__0_n_63 ,\mul_reg_I_reg[15]0__0_n_64 ,\mul_reg_I_reg[15]0__0_n_65 ,\mul_reg_I_reg[15]0__0_n_66 ,\mul_reg_I_reg[15]0__0_n_67 ,\mul_reg_I_reg[15]0__0_n_68 ,\mul_reg_I_reg[15]0__0_n_69 ,\mul_reg_I_reg[15]0__0_n_70 ,\mul_reg_I_reg[15]0__0_n_71 ,\mul_reg_I_reg[15]0__0_n_72 ,\mul_reg_I_reg[15]0__0_n_73 ,\mul_reg_I_reg[15]0__0_n_74 ,p_1_out[51:21]}),
        .PATTERNBDETECT(\NLW_mul_reg_I_reg[15]0__0_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_I_reg[15]0__0_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\mul_reg_I_reg[15]0_n_106 ,\mul_reg_I_reg[15]0_n_107 ,\mul_reg_I_reg[15]0_n_108 ,\mul_reg_I_reg[15]0_n_109 ,\mul_reg_I_reg[15]0_n_110 ,\mul_reg_I_reg[15]0_n_111 ,\mul_reg_I_reg[15]0_n_112 ,\mul_reg_I_reg[15]0_n_113 ,\mul_reg_I_reg[15]0_n_114 ,\mul_reg_I_reg[15]0_n_115 ,\mul_reg_I_reg[15]0_n_116 ,\mul_reg_I_reg[15]0_n_117 ,\mul_reg_I_reg[15]0_n_118 ,\mul_reg_I_reg[15]0_n_119 ,\mul_reg_I_reg[15]0_n_120 ,\mul_reg_I_reg[15]0_n_121 ,\mul_reg_I_reg[15]0_n_122 ,\mul_reg_I_reg[15]0_n_123 ,\mul_reg_I_reg[15]0_n_124 ,\mul_reg_I_reg[15]0_n_125 ,\mul_reg_I_reg[15]0_n_126 ,\mul_reg_I_reg[15]0_n_127 ,\mul_reg_I_reg[15]0_n_128 ,\mul_reg_I_reg[15]0_n_129 ,\mul_reg_I_reg[15]0_n_130 ,\mul_reg_I_reg[15]0_n_131 ,\mul_reg_I_reg[15]0_n_132 ,\mul_reg_I_reg[15]0_n_133 ,\mul_reg_I_reg[15]0_n_134 ,\mul_reg_I_reg[15]0_n_135 ,\mul_reg_I_reg[15]0_n_136 ,\mul_reg_I_reg[15]0_n_137 ,\mul_reg_I_reg[15]0_n_138 ,\mul_reg_I_reg[15]0_n_139 ,\mul_reg_I_reg[15]0_n_140 ,\mul_reg_I_reg[15]0_n_141 ,\mul_reg_I_reg[15]0_n_142 ,\mul_reg_I_reg[15]0_n_143 ,\mul_reg_I_reg[15]0_n_144 ,\mul_reg_I_reg[15]0_n_145 ,\mul_reg_I_reg[15]0_n_146 ,\mul_reg_I_reg[15]0_n_147 ,\mul_reg_I_reg[15]0_n_148 ,\mul_reg_I_reg[15]0_n_149 ,\mul_reg_I_reg[15]0_n_150 ,\mul_reg_I_reg[15]0_n_151 ,\mul_reg_I_reg[15]0_n_152 ,\mul_reg_I_reg[15]0_n_153 }),
        .PCOUT(\NLW_mul_reg_I_reg[15]0__0_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_mul_reg_I_reg[15]0__0_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_mul_reg_I_reg[15]0__0_XOROUT_UNCONNECTED [7:0]));
  LUT6 #(
    .INIT(64'h0000000000080888)) 
    \mul_reg_I_reg[15]0_i_1 
       (.I0(data_in_ready),
        .I1(data_in_valid),
        .I2(phase_counter[1]),
        .I3(phase_counter[0]),
        .I4(phase_counter[2]),
        .I5(reset),
        .O(\mul_reg_I_reg[15]0_i_1_n_0 ));
  FDRE \mul_reg_I_reg[1][0]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][0]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][0]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][10]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][10]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][10]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][11]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][11]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][11]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][12]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][12]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][12]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][13]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][13]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][13]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][14]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][14]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][14]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][15]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][15]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][16]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][16]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][16]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][17]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][17]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][17]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][18]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][18]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][18]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][19]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][19]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][19]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][1]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][1]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][1]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][20]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][20]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][20]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][21]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][21]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][21]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][22]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][22]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][22]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][23]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][23]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][24]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][24]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][24]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][25]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][25]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][25]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][26]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][26]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][26]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][27]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][27]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][27]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][28]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][28]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][28]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][29]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][29]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][29]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][2]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][2]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][2]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][30]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][30]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][30]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][31]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][31]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][32]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][32]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][32]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][33]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][33]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][33]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][34]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][34]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][34]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][35]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][35]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][35]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][36]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][36]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][36]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][37]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][37]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][37]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][38]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][38]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][38]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][39]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][39]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][3]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][3]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][3]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][40]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][40]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][40]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][41]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][41]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][41]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][42]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][42]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][42]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][43]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][43]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][43]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][44]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][44]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][44]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][45]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][45]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][45]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][46]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][46]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][46]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][47]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][47]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][48]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][48]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][48]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][49]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][49]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][49]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][4]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][4]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][4]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][50]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][50]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][50]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][51]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][51]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][5]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][5]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][5]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][6]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][6]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][6]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][7]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][7]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][8]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][8]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][8]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[1][9]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[2][9]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[1][9]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][0]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][0]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ),
        .Q(\mul_reg_I_reg[2][0]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][10]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][10]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ),
        .Q(\mul_reg_I_reg[2][10]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][11]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][11]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ),
        .Q(\mul_reg_I_reg[2][11]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][12]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][12]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ),
        .Q(\mul_reg_I_reg[2][12]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][13]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][13]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ),
        .Q(\mul_reg_I_reg[2][13]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][14]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][14]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ),
        .Q(\mul_reg_I_reg[2][14]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ),
        .Q(\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1 
       (.CI(\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ,\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ,\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ,\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ,\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ,\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ,\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ,\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 }),
        .DI({\mul_reg_I_reg[3]1_n_90 ,\mul_reg_I_reg[3]1_n_91 ,\mul_reg_I_reg[3]1_n_92 ,\mul_reg_I_reg[3]1_n_93 ,\mul_reg_I_reg[3]1_n_94 ,\mul_reg_I_reg[3]1_n_95 ,\mul_reg_I_reg[3]1_n_96 ,\mul_reg_I_reg[3]1_n_97 }),
        .O({\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ,\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ,\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ,\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ,\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ,\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ,\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ,\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 }),
        .S({\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ,\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ,\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ,\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ,\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ,\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ,\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ,\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_2 
       (.I0(\mul_reg_I_reg[3]1_n_90 ),
        .I1(\mul_reg_I_reg[4] [15]),
        .O(\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_3 
       (.I0(\mul_reg_I_reg[3]1_n_91 ),
        .I1(\mul_reg_I_reg[4] [14]),
        .O(\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_4 
       (.I0(\mul_reg_I_reg[3]1_n_92 ),
        .I1(\mul_reg_I_reg[4] [13]),
        .O(\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_5 
       (.I0(\mul_reg_I_reg[3]1_n_93 ),
        .I1(\mul_reg_I_reg[4] [12]),
        .O(\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_6 
       (.I0(\mul_reg_I_reg[3]1_n_94 ),
        .I1(\mul_reg_I_reg[4] [11]),
        .O(\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_7 
       (.I0(\mul_reg_I_reg[3]1_n_95 ),
        .I1(\mul_reg_I_reg[4] [10]),
        .O(\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_8 
       (.I0(\mul_reg_I_reg[3]1_n_96 ),
        .I1(\mul_reg_I_reg[4] [9]),
        .O(\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_9 
       (.I0(\mul_reg_I_reg[3]1_n_97 ),
        .I1(\mul_reg_I_reg[4] [8]),
        .O(\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][16]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][16]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ),
        .Q(\mul_reg_I_reg[2][16]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][17]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][17]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ),
        .Q(\mul_reg_I_reg[2][17]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][18]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][18]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ),
        .Q(\mul_reg_I_reg[2][18]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][19]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][19]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ),
        .Q(\mul_reg_I_reg[2][19]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][1]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][1]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ),
        .Q(\mul_reg_I_reg[2][1]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][20]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][20]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ),
        .Q(\mul_reg_I_reg[2][20]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][21]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][21]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ),
        .Q(\mul_reg_I_reg[2][21]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][22]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][22]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ),
        .Q(\mul_reg_I_reg[2][22]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ),
        .Q(\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1 
       (.CI(\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ,\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ,\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ,\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ,\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ,\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ,\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ,\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 }),
        .DI({\mul_reg_I_reg[3]1__0_n_99 ,\mul_reg_I_reg[3]1__0_n_100 ,\mul_reg_I_reg[3]1__0_n_101 ,\mul_reg_I_reg[3]1__0_n_102 ,\mul_reg_I_reg[3]1__0_n_103 ,\mul_reg_I_reg[3]1__0_n_104 ,\mul_reg_I_reg[3]1__0_n_105 ,\mul_reg_I_reg[3]1_n_89 }),
        .O({\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ,\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ,\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ,\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ,\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ,\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ,\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ,\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 }),
        .S({\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ,\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ,\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ,\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ,\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ,\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ,\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ,\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_2 
       (.I0(\mul_reg_I_reg[3]1__0_n_99 ),
        .I1(\mul_reg_I_reg[4] [23]),
        .O(\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_3 
       (.I0(\mul_reg_I_reg[3]1__0_n_100 ),
        .I1(\mul_reg_I_reg[4] [22]),
        .O(\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_4 
       (.I0(\mul_reg_I_reg[3]1__0_n_101 ),
        .I1(\mul_reg_I_reg[4] [21]),
        .O(\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_5 
       (.I0(\mul_reg_I_reg[3]1__0_n_102 ),
        .I1(\mul_reg_I_reg[4] [20]),
        .O(\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_6 
       (.I0(\mul_reg_I_reg[3]1__0_n_103 ),
        .I1(\mul_reg_I_reg[4] [19]),
        .O(\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_7 
       (.I0(\mul_reg_I_reg[3]1__0_n_104 ),
        .I1(\mul_reg_I_reg[4] [18]),
        .O(\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_8 
       (.I0(\mul_reg_I_reg[3]1__0_n_105 ),
        .I1(\mul_reg_I_reg[4] [17]),
        .O(\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_9 
       (.I0(\mul_reg_I_reg[3]1_n_89 ),
        .I1(\mul_reg_I_reg[4] [16]),
        .O(\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][24]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][24]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ),
        .Q(\mul_reg_I_reg[2][24]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][25]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][25]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ),
        .Q(\mul_reg_I_reg[2][25]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][26]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][26]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ),
        .Q(\mul_reg_I_reg[2][26]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][27]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][27]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ),
        .Q(\mul_reg_I_reg[2][27]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][28]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][28]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ),
        .Q(\mul_reg_I_reg[2][28]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][29]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][29]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ),
        .Q(\mul_reg_I_reg[2][29]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][2]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][2]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ),
        .Q(\mul_reg_I_reg[2][2]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][30]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][30]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ),
        .Q(\mul_reg_I_reg[2][30]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ),
        .Q(\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1 
       (.CI(\mul_reg_I_reg[2][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ,\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ,\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ,\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ,\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ,\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ,\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ,\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 }),
        .DI({\mul_reg_I_reg[3]1__0_n_91 ,\mul_reg_I_reg[3]1__0_n_92 ,\mul_reg_I_reg[3]1__0_n_93 ,\mul_reg_I_reg[3]1__0_n_94 ,\mul_reg_I_reg[3]1__0_n_95 ,\mul_reg_I_reg[3]1__0_n_96 ,\mul_reg_I_reg[3]1__0_n_97 ,\mul_reg_I_reg[3]1__0_n_98 }),
        .O({\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ,\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ,\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ,\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ,\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ,\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ,\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ,\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 }),
        .S({\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ,\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ,\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ,\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ,\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ,\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ,\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ,\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_2 
       (.I0(\mul_reg_I_reg[3]1__0_n_91 ),
        .I1(\mul_reg_I_reg[4] [31]),
        .O(\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_3 
       (.I0(\mul_reg_I_reg[3]1__0_n_92 ),
        .I1(\mul_reg_I_reg[4] [30]),
        .O(\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_4 
       (.I0(\mul_reg_I_reg[3]1__0_n_93 ),
        .I1(\mul_reg_I_reg[4] [29]),
        .O(\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_5 
       (.I0(\mul_reg_I_reg[3]1__0_n_94 ),
        .I1(\mul_reg_I_reg[4] [28]),
        .O(\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_6 
       (.I0(\mul_reg_I_reg[3]1__0_n_95 ),
        .I1(\mul_reg_I_reg[4] [27]),
        .O(\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_7 
       (.I0(\mul_reg_I_reg[3]1__0_n_96 ),
        .I1(\mul_reg_I_reg[4] [26]),
        .O(\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_8 
       (.I0(\mul_reg_I_reg[3]1__0_n_97 ),
        .I1(\mul_reg_I_reg[4] [25]),
        .O(\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_9 
       (.I0(\mul_reg_I_reg[3]1__0_n_98 ),
        .I1(\mul_reg_I_reg[4] [24]),
        .O(\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][32]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][32]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ),
        .Q(\mul_reg_I_reg[2][32]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][33]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][33]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ),
        .Q(\mul_reg_I_reg[2][33]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][34]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][34]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ),
        .Q(\mul_reg_I_reg[2][34]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][35]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][35]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ),
        .Q(\mul_reg_I_reg[2][35]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][36]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][36]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ),
        .Q(\mul_reg_I_reg[2][36]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][37]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][37]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ),
        .Q(\mul_reg_I_reg[2][37]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][38]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][38]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ),
        .Q(\mul_reg_I_reg[2][38]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ),
        .Q(\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1 
       (.CI(\mul_reg_I_reg[2][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ,\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ,\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ,\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ,\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ,\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ,\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ,\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 }),
        .DI({\mul_reg_I_reg[3]1__0_n_83 ,\mul_reg_I_reg[3]1__0_n_84 ,\mul_reg_I_reg[3]1__0_n_85 ,\mul_reg_I_reg[3]1__0_n_86 ,\mul_reg_I_reg[3]1__0_n_87 ,\mul_reg_I_reg[3]1__0_n_88 ,\mul_reg_I_reg[3]1__0_n_89 ,\mul_reg_I_reg[3]1__0_n_90 }),
        .O({\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ,\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ,\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ,\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ,\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ,\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ,\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ,\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 }),
        .S({\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ,\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ,\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ,\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ,\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ,\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ,\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ,\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_2 
       (.I0(\mul_reg_I_reg[3]1__0_n_83 ),
        .I1(\mul_reg_I_reg[4] [39]),
        .O(\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_3 
       (.I0(\mul_reg_I_reg[3]1__0_n_84 ),
        .I1(\mul_reg_I_reg[4] [38]),
        .O(\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_4 
       (.I0(\mul_reg_I_reg[3]1__0_n_85 ),
        .I1(\mul_reg_I_reg[4] [37]),
        .O(\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_5 
       (.I0(\mul_reg_I_reg[3]1__0_n_86 ),
        .I1(\mul_reg_I_reg[4] [36]),
        .O(\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_6 
       (.I0(\mul_reg_I_reg[3]1__0_n_87 ),
        .I1(\mul_reg_I_reg[4] [35]),
        .O(\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_7 
       (.I0(\mul_reg_I_reg[3]1__0_n_88 ),
        .I1(\mul_reg_I_reg[4] [34]),
        .O(\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_8 
       (.I0(\mul_reg_I_reg[3]1__0_n_89 ),
        .I1(\mul_reg_I_reg[4] [33]),
        .O(\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_9 
       (.I0(\mul_reg_I_reg[3]1__0_n_90 ),
        .I1(\mul_reg_I_reg[4] [32]),
        .O(\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][3]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][3]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ),
        .Q(\mul_reg_I_reg[2][3]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][40]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][40]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ),
        .Q(\mul_reg_I_reg[2][40]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][41]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][41]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ),
        .Q(\mul_reg_I_reg[2][41]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][42]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][42]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ),
        .Q(\mul_reg_I_reg[2][42]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][43]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][43]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ),
        .Q(\mul_reg_I_reg[2][43]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][44]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][44]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ),
        .Q(\mul_reg_I_reg[2][44]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][45]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][45]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ),
        .Q(\mul_reg_I_reg[2][45]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][46]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][46]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ),
        .Q(\mul_reg_I_reg[2][46]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ),
        .Q(\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1 
       (.CI(\mul_reg_I_reg[2][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ,\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ,\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ,\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ,\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ,\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ,\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ,\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 }),
        .DI({\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ,\mul_reg_I_reg[3]1__0_n_76 ,\mul_reg_I_reg[3]1__0_n_77 ,\mul_reg_I_reg[3]1__0_n_78 ,\mul_reg_I_reg[3]1__0_n_79 ,\mul_reg_I_reg[3]1__0_n_80 ,\mul_reg_I_reg[3]1__0_n_81 ,\mul_reg_I_reg[3]1__0_n_82 }),
        .O({\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ,\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ,\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ,\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ,\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ,\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ,\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ,\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 }),
        .S({\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ,\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ,\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ,\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ,\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ,\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ,\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ,\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_10_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_10 
       (.I0(\mul_reg_I_reg[3]1__0_n_82 ),
        .I1(\mul_reg_I_reg[4] [40]),
        .O(\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_2 
       (.I0(\mul_reg_I_reg[4] [47]),
        .O(\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_3 
       (.I0(\mul_reg_I_reg[4] [47]),
        .I1(\mul_reg_I_reg[3]1__0_n_75 ),
        .O(\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_4 
       (.I0(\mul_reg_I_reg[3]1__0_n_76 ),
        .I1(\mul_reg_I_reg[4] [46]),
        .O(\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_5 
       (.I0(\mul_reg_I_reg[3]1__0_n_77 ),
        .I1(\mul_reg_I_reg[4] [45]),
        .O(\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_6 
       (.I0(\mul_reg_I_reg[3]1__0_n_78 ),
        .I1(\mul_reg_I_reg[4] [44]),
        .O(\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_7 
       (.I0(\mul_reg_I_reg[3]1__0_n_79 ),
        .I1(\mul_reg_I_reg[4] [43]),
        .O(\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_8 
       (.I0(\mul_reg_I_reg[3]1__0_n_80 ),
        .I1(\mul_reg_I_reg[4] [42]),
        .O(\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_9 
       (.I0(\mul_reg_I_reg[3]1__0_n_81 ),
        .I1(\mul_reg_I_reg[4] [41]),
        .O(\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][48]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][48]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ),
        .Q(\mul_reg_I_reg[2][48]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][49]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][49]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ),
        .Q(\mul_reg_I_reg[2][49]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][4]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][4]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ),
        .Q(\mul_reg_I_reg[2][4]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][50]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][50]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ),
        .Q(\mul_reg_I_reg[2][50]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ),
        .Q(\mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_1 
       (.CI(\mul_reg_I_reg[2][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_CO_UNCONNECTED [7:3],\mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ,\mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ,\mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,\mul_reg_I_reg[4] [49:47]}),
        .O({\NLW_mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_O_UNCONNECTED [7:4],\mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ,\mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ,\mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ,\mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,\mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ,\mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ,\mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ,\mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_2 
       (.I0(\mul_reg_I_reg[4] [50]),
        .I1(\mul_reg_I_reg[4] [51]),
        .O(\mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_3 
       (.I0(\mul_reg_I_reg[4] [49]),
        .I1(\mul_reg_I_reg[4] [50]),
        .O(\mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_4 
       (.I0(\mul_reg_I_reg[4] [48]),
        .I1(\mul_reg_I_reg[4] [49]),
        .O(\mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_5 
       (.I0(\mul_reg_I_reg[4] [47]),
        .I1(\mul_reg_I_reg[4] [48]),
        .O(\mul_reg_I_reg[2][51]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][5]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][5]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ),
        .Q(\mul_reg_I_reg[2][5]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][6]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][6]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ),
        .Q(\mul_reg_I_reg[2][6]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ),
        .Q(\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ,\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ,\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ,\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ,\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ,\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ,\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ,\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 }),
        .DI({\mul_reg_I_reg[3]1_n_98 ,\mul_reg_I_reg[3]1_n_99 ,\mul_reg_I_reg[3]1_n_100 ,\mul_reg_I_reg[3]1_n_101 ,\mul_reg_I_reg[3]1_n_102 ,\mul_reg_I_reg[3]1_n_103 ,\mul_reg_I_reg[3]1_n_104 ,\mul_reg_I_reg[3]1_n_105 }),
        .O({\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ,\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ,\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ,\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ,\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ,\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ,\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ,\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 }),
        .S({\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ,\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ,\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ,\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ,\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ,\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ,\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ,\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_2 
       (.I0(\mul_reg_I_reg[3]1_n_98 ),
        .I1(\mul_reg_I_reg[4] [7]),
        .O(\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_3 
       (.I0(\mul_reg_I_reg[3]1_n_99 ),
        .I1(\mul_reg_I_reg[4] [6]),
        .O(\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_4 
       (.I0(\mul_reg_I_reg[3]1_n_100 ),
        .I1(\mul_reg_I_reg[4] [5]),
        .O(\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_5 
       (.I0(\mul_reg_I_reg[3]1_n_101 ),
        .I1(\mul_reg_I_reg[4] [4]),
        .O(\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_6 
       (.I0(\mul_reg_I_reg[3]1_n_102 ),
        .I1(\mul_reg_I_reg[4] [3]),
        .O(\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_7 
       (.I0(\mul_reg_I_reg[3]1_n_103 ),
        .I1(\mul_reg_I_reg[4] [2]),
        .O(\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_8 
       (.I0(\mul_reg_I_reg[3]1_n_104 ),
        .I1(\mul_reg_I_reg[4] [1]),
        .O(\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_9 
       (.I0(\mul_reg_I_reg[3]1_n_105 ),
        .I1(\mul_reg_I_reg[4] [0]),
        .O(\mul_reg_I_reg[2][7]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][8]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][8]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ),
        .Q(\mul_reg_I_reg[2][8]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[2] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[2][9]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[2][9]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[2][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ),
        .Q(\mul_reg_I_reg[2][9]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \mul_reg_I_reg[3]1 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,input_I[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_I_reg[3]1_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\coeff_reg_reg[0] ,\coeff_reg_reg[0] [12:9],\coeff_reg_reg[0] [12:9],\coeff_reg_reg[0] [12]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_I_reg[3]1_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_I_reg[3]1_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_I_reg[3]1_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(\mul_reg_I_reg[15]0_i_1_n_0 ),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_I_reg[3]1_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_I_reg[3]1_OVERFLOW_UNCONNECTED ),
        .P({\mul_reg_I_reg[3]1_n_58 ,\mul_reg_I_reg[3]1_n_59 ,\mul_reg_I_reg[3]1_n_60 ,\mul_reg_I_reg[3]1_n_61 ,\mul_reg_I_reg[3]1_n_62 ,\mul_reg_I_reg[3]1_n_63 ,\mul_reg_I_reg[3]1_n_64 ,\mul_reg_I_reg[3]1_n_65 ,\mul_reg_I_reg[3]1_n_66 ,\mul_reg_I_reg[3]1_n_67 ,\mul_reg_I_reg[3]1_n_68 ,\mul_reg_I_reg[3]1_n_69 ,\mul_reg_I_reg[3]1_n_70 ,\mul_reg_I_reg[3]1_n_71 ,\mul_reg_I_reg[3]1_n_72 ,\mul_reg_I_reg[3]1_n_73 ,\mul_reg_I_reg[3]1_n_74 ,\mul_reg_I_reg[3]1_n_75 ,\mul_reg_I_reg[3]1_n_76 ,\mul_reg_I_reg[3]1_n_77 ,\mul_reg_I_reg[3]1_n_78 ,\mul_reg_I_reg[3]1_n_79 ,\mul_reg_I_reg[3]1_n_80 ,\mul_reg_I_reg[3]1_n_81 ,\mul_reg_I_reg[3]1_n_82 ,\mul_reg_I_reg[3]1_n_83 ,\mul_reg_I_reg[3]1_n_84 ,\mul_reg_I_reg[3]1_n_85 ,\mul_reg_I_reg[3]1_n_86 ,\mul_reg_I_reg[3]1_n_87 ,\mul_reg_I_reg[3]1_n_88 ,\mul_reg_I_reg[3]1_n_89 ,\mul_reg_I_reg[3]1_n_90 ,\mul_reg_I_reg[3]1_n_91 ,\mul_reg_I_reg[3]1_n_92 ,\mul_reg_I_reg[3]1_n_93 ,\mul_reg_I_reg[3]1_n_94 ,\mul_reg_I_reg[3]1_n_95 ,\mul_reg_I_reg[3]1_n_96 ,\mul_reg_I_reg[3]1_n_97 ,\mul_reg_I_reg[3]1_n_98 ,\mul_reg_I_reg[3]1_n_99 ,\mul_reg_I_reg[3]1_n_100 ,\mul_reg_I_reg[3]1_n_101 ,\mul_reg_I_reg[3]1_n_102 ,\mul_reg_I_reg[3]1_n_103 ,\mul_reg_I_reg[3]1_n_104 ,\mul_reg_I_reg[3]1_n_105 }),
        .PATTERNBDETECT(\NLW_mul_reg_I_reg[3]1_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_I_reg[3]1_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({\mul_reg_I_reg[3]1_n_106 ,\mul_reg_I_reg[3]1_n_107 ,\mul_reg_I_reg[3]1_n_108 ,\mul_reg_I_reg[3]1_n_109 ,\mul_reg_I_reg[3]1_n_110 ,\mul_reg_I_reg[3]1_n_111 ,\mul_reg_I_reg[3]1_n_112 ,\mul_reg_I_reg[3]1_n_113 ,\mul_reg_I_reg[3]1_n_114 ,\mul_reg_I_reg[3]1_n_115 ,\mul_reg_I_reg[3]1_n_116 ,\mul_reg_I_reg[3]1_n_117 ,\mul_reg_I_reg[3]1_n_118 ,\mul_reg_I_reg[3]1_n_119 ,\mul_reg_I_reg[3]1_n_120 ,\mul_reg_I_reg[3]1_n_121 ,\mul_reg_I_reg[3]1_n_122 ,\mul_reg_I_reg[3]1_n_123 ,\mul_reg_I_reg[3]1_n_124 ,\mul_reg_I_reg[3]1_n_125 ,\mul_reg_I_reg[3]1_n_126 ,\mul_reg_I_reg[3]1_n_127 ,\mul_reg_I_reg[3]1_n_128 ,\mul_reg_I_reg[3]1_n_129 ,\mul_reg_I_reg[3]1_n_130 ,\mul_reg_I_reg[3]1_n_131 ,\mul_reg_I_reg[3]1_n_132 ,\mul_reg_I_reg[3]1_n_133 ,\mul_reg_I_reg[3]1_n_134 ,\mul_reg_I_reg[3]1_n_135 ,\mul_reg_I_reg[3]1_n_136 ,\mul_reg_I_reg[3]1_n_137 ,\mul_reg_I_reg[3]1_n_138 ,\mul_reg_I_reg[3]1_n_139 ,\mul_reg_I_reg[3]1_n_140 ,\mul_reg_I_reg[3]1_n_141 ,\mul_reg_I_reg[3]1_n_142 ,\mul_reg_I_reg[3]1_n_143 ,\mul_reg_I_reg[3]1_n_144 ,\mul_reg_I_reg[3]1_n_145 ,\mul_reg_I_reg[3]1_n_146 ,\mul_reg_I_reg[3]1_n_147 ,\mul_reg_I_reg[3]1_n_148 ,\mul_reg_I_reg[3]1_n_149 ,\mul_reg_I_reg[3]1_n_150 ,\mul_reg_I_reg[3]1_n_151 ,\mul_reg_I_reg[3]1_n_152 ,\mul_reg_I_reg[3]1_n_153 }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_mul_reg_I_reg[3]1_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_mul_reg_I_reg[3]1_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \mul_reg_I_reg[3]1__0 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\coeff_reg_reg[0] ,\coeff_reg_reg[0] [12:9],\coeff_reg_reg[0] [12:9],\coeff_reg_reg[0] [12]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_I_reg[3]1__0_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({input_I[31],input_I[31],input_I[31],input_I[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_I_reg[3]1__0_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_I_reg[3]1__0_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_I_reg[3]1__0_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(\mul_reg_I_reg[15]0_i_1_n_0 ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_I_reg[3]1__0_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_I_reg[3]1__0_OVERFLOW_UNCONNECTED ),
        .P({\mul_reg_I_reg[3]1__0_n_58 ,\mul_reg_I_reg[3]1__0_n_59 ,\mul_reg_I_reg[3]1__0_n_60 ,\mul_reg_I_reg[3]1__0_n_61 ,\mul_reg_I_reg[3]1__0_n_62 ,\mul_reg_I_reg[3]1__0_n_63 ,\mul_reg_I_reg[3]1__0_n_64 ,\mul_reg_I_reg[3]1__0_n_65 ,\mul_reg_I_reg[3]1__0_n_66 ,\mul_reg_I_reg[3]1__0_n_67 ,\mul_reg_I_reg[3]1__0_n_68 ,\mul_reg_I_reg[3]1__0_n_69 ,\mul_reg_I_reg[3]1__0_n_70 ,\mul_reg_I_reg[3]1__0_n_71 ,\mul_reg_I_reg[3]1__0_n_72 ,\mul_reg_I_reg[3]1__0_n_73 ,\mul_reg_I_reg[3]1__0_n_74 ,\mul_reg_I_reg[3]1__0_n_75 ,\mul_reg_I_reg[3]1__0_n_76 ,\mul_reg_I_reg[3]1__0_n_77 ,\mul_reg_I_reg[3]1__0_n_78 ,\mul_reg_I_reg[3]1__0_n_79 ,\mul_reg_I_reg[3]1__0_n_80 ,\mul_reg_I_reg[3]1__0_n_81 ,\mul_reg_I_reg[3]1__0_n_82 ,\mul_reg_I_reg[3]1__0_n_83 ,\mul_reg_I_reg[3]1__0_n_84 ,\mul_reg_I_reg[3]1__0_n_85 ,\mul_reg_I_reg[3]1__0_n_86 ,\mul_reg_I_reg[3]1__0_n_87 ,\mul_reg_I_reg[3]1__0_n_88 ,\mul_reg_I_reg[3]1__0_n_89 ,\mul_reg_I_reg[3]1__0_n_90 ,\mul_reg_I_reg[3]1__0_n_91 ,\mul_reg_I_reg[3]1__0_n_92 ,\mul_reg_I_reg[3]1__0_n_93 ,\mul_reg_I_reg[3]1__0_n_94 ,\mul_reg_I_reg[3]1__0_n_95 ,\mul_reg_I_reg[3]1__0_n_96 ,\mul_reg_I_reg[3]1__0_n_97 ,\mul_reg_I_reg[3]1__0_n_98 ,\mul_reg_I_reg[3]1__0_n_99 ,\mul_reg_I_reg[3]1__0_n_100 ,\mul_reg_I_reg[3]1__0_n_101 ,\mul_reg_I_reg[3]1__0_n_102 ,\mul_reg_I_reg[3]1__0_n_103 ,\mul_reg_I_reg[3]1__0_n_104 ,\mul_reg_I_reg[3]1__0_n_105 }),
        .PATTERNBDETECT(\NLW_mul_reg_I_reg[3]1__0_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_I_reg[3]1__0_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\mul_reg_I_reg[3]1_n_106 ,\mul_reg_I_reg[3]1_n_107 ,\mul_reg_I_reg[3]1_n_108 ,\mul_reg_I_reg[3]1_n_109 ,\mul_reg_I_reg[3]1_n_110 ,\mul_reg_I_reg[3]1_n_111 ,\mul_reg_I_reg[3]1_n_112 ,\mul_reg_I_reg[3]1_n_113 ,\mul_reg_I_reg[3]1_n_114 ,\mul_reg_I_reg[3]1_n_115 ,\mul_reg_I_reg[3]1_n_116 ,\mul_reg_I_reg[3]1_n_117 ,\mul_reg_I_reg[3]1_n_118 ,\mul_reg_I_reg[3]1_n_119 ,\mul_reg_I_reg[3]1_n_120 ,\mul_reg_I_reg[3]1_n_121 ,\mul_reg_I_reg[3]1_n_122 ,\mul_reg_I_reg[3]1_n_123 ,\mul_reg_I_reg[3]1_n_124 ,\mul_reg_I_reg[3]1_n_125 ,\mul_reg_I_reg[3]1_n_126 ,\mul_reg_I_reg[3]1_n_127 ,\mul_reg_I_reg[3]1_n_128 ,\mul_reg_I_reg[3]1_n_129 ,\mul_reg_I_reg[3]1_n_130 ,\mul_reg_I_reg[3]1_n_131 ,\mul_reg_I_reg[3]1_n_132 ,\mul_reg_I_reg[3]1_n_133 ,\mul_reg_I_reg[3]1_n_134 ,\mul_reg_I_reg[3]1_n_135 ,\mul_reg_I_reg[3]1_n_136 ,\mul_reg_I_reg[3]1_n_137 ,\mul_reg_I_reg[3]1_n_138 ,\mul_reg_I_reg[3]1_n_139 ,\mul_reg_I_reg[3]1_n_140 ,\mul_reg_I_reg[3]1_n_141 ,\mul_reg_I_reg[3]1_n_142 ,\mul_reg_I_reg[3]1_n_143 ,\mul_reg_I_reg[3]1_n_144 ,\mul_reg_I_reg[3]1_n_145 ,\mul_reg_I_reg[3]1_n_146 ,\mul_reg_I_reg[3]1_n_147 ,\mul_reg_I_reg[3]1_n_148 ,\mul_reg_I_reg[3]1_n_149 ,\mul_reg_I_reg[3]1_n_150 ,\mul_reg_I_reg[3]1_n_151 ,\mul_reg_I_reg[3]1_n_152 ,\mul_reg_I_reg[3]1_n_153 }),
        .PCOUT(\NLW_mul_reg_I_reg[3]1__0_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_mul_reg_I_reg[3]1__0_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_mul_reg_I_reg[3]1__0_XOROUT_UNCONNECTED [7:0]));
  FDCE \mul_reg_I_reg[4][0] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__119_n_0),
        .Q(\mul_reg_I_reg[4] [0]));
  FDCE \mul_reg_I_reg[4][10] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__109_n_0),
        .Q(\mul_reg_I_reg[4] [10]));
  FDCE \mul_reg_I_reg[4][11] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__108_n_0),
        .Q(\mul_reg_I_reg[4] [11]));
  FDCE \mul_reg_I_reg[4][12] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__107_n_0),
        .Q(\mul_reg_I_reg[4] [12]));
  FDCE \mul_reg_I_reg[4][13] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__106_n_0),
        .Q(\mul_reg_I_reg[4] [13]));
  FDCE \mul_reg_I_reg[4][14] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__105_n_0),
        .Q(\mul_reg_I_reg[4] [14]));
  FDCE \mul_reg_I_reg[4][15] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__104_n_0),
        .Q(\mul_reg_I_reg[4] [15]));
  FDCE \mul_reg_I_reg[4][16] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__103_n_0),
        .Q(\mul_reg_I_reg[4] [16]));
  FDCE \mul_reg_I_reg[4][17] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__102_n_0),
        .Q(\mul_reg_I_reg[4] [17]));
  FDCE \mul_reg_I_reg[4][18] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__101_n_0),
        .Q(\mul_reg_I_reg[4] [18]));
  FDCE \mul_reg_I_reg[4][19] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__100_n_0),
        .Q(\mul_reg_I_reg[4] [19]));
  FDCE \mul_reg_I_reg[4][1] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__118_n_0),
        .Q(\mul_reg_I_reg[4] [1]));
  FDCE \mul_reg_I_reg[4][20] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__99_n_0),
        .Q(\mul_reg_I_reg[4] [20]));
  FDCE \mul_reg_I_reg[4][21] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__98_n_0),
        .Q(\mul_reg_I_reg[4] [21]));
  FDCE \mul_reg_I_reg[4][22] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__97_n_0),
        .Q(\mul_reg_I_reg[4] [22]));
  FDCE \mul_reg_I_reg[4][23] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__96_n_0),
        .Q(\mul_reg_I_reg[4] [23]));
  FDCE \mul_reg_I_reg[4][24] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__95_n_0),
        .Q(\mul_reg_I_reg[4] [24]));
  FDCE \mul_reg_I_reg[4][25] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__94_n_0),
        .Q(\mul_reg_I_reg[4] [25]));
  FDCE \mul_reg_I_reg[4][26] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__93_n_0),
        .Q(\mul_reg_I_reg[4] [26]));
  FDCE \mul_reg_I_reg[4][27] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__92_n_0),
        .Q(\mul_reg_I_reg[4] [27]));
  FDCE \mul_reg_I_reg[4][28] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__91_n_0),
        .Q(\mul_reg_I_reg[4] [28]));
  FDCE \mul_reg_I_reg[4][29] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__90_n_0),
        .Q(\mul_reg_I_reg[4] [29]));
  FDCE \mul_reg_I_reg[4][2] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__117_n_0),
        .Q(\mul_reg_I_reg[4] [2]));
  FDCE \mul_reg_I_reg[4][30] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__89_n_0),
        .Q(\mul_reg_I_reg[4] [30]));
  FDCE \mul_reg_I_reg[4][31] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__88_n_0),
        .Q(\mul_reg_I_reg[4] [31]));
  FDCE \mul_reg_I_reg[4][32] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__87_n_0),
        .Q(\mul_reg_I_reg[4] [32]));
  FDCE \mul_reg_I_reg[4][33] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__86_n_0),
        .Q(\mul_reg_I_reg[4] [33]));
  FDCE \mul_reg_I_reg[4][34] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__85_n_0),
        .Q(\mul_reg_I_reg[4] [34]));
  FDCE \mul_reg_I_reg[4][35] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__84_n_0),
        .Q(\mul_reg_I_reg[4] [35]));
  FDCE \mul_reg_I_reg[4][36] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__83_n_0),
        .Q(\mul_reg_I_reg[4] [36]));
  FDCE \mul_reg_I_reg[4][37] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__82_n_0),
        .Q(\mul_reg_I_reg[4] [37]));
  FDCE \mul_reg_I_reg[4][38] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__81_n_0),
        .Q(\mul_reg_I_reg[4] [38]));
  FDCE \mul_reg_I_reg[4][39] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__80_n_0),
        .Q(\mul_reg_I_reg[4] [39]));
  FDCE \mul_reg_I_reg[4][3] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__116_n_0),
        .Q(\mul_reg_I_reg[4] [3]));
  FDCE \mul_reg_I_reg[4][40] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__79_n_0),
        .Q(\mul_reg_I_reg[4] [40]));
  FDCE \mul_reg_I_reg[4][41] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__78_n_0),
        .Q(\mul_reg_I_reg[4] [41]));
  FDCE \mul_reg_I_reg[4][42] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__77_n_0),
        .Q(\mul_reg_I_reg[4] [42]));
  FDCE \mul_reg_I_reg[4][43] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__76_n_0),
        .Q(\mul_reg_I_reg[4] [43]));
  FDCE \mul_reg_I_reg[4][44] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__75_n_0),
        .Q(\mul_reg_I_reg[4] [44]));
  FDCE \mul_reg_I_reg[4][45] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__74_n_0),
        .Q(\mul_reg_I_reg[4] [45]));
  FDCE \mul_reg_I_reg[4][46] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__73_n_0),
        .Q(\mul_reg_I_reg[4] [46]));
  FDCE \mul_reg_I_reg[4][47] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__72_n_0),
        .Q(\mul_reg_I_reg[4] [47]));
  FDCE \mul_reg_I_reg[4][48] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__71_n_0),
        .Q(\mul_reg_I_reg[4] [48]));
  FDCE \mul_reg_I_reg[4][49] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__70_n_0),
        .Q(\mul_reg_I_reg[4] [49]));
  FDCE \mul_reg_I_reg[4][4] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__115_n_0),
        .Q(\mul_reg_I_reg[4] [4]));
  FDCE \mul_reg_I_reg[4][50] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__69_n_0),
        .Q(\mul_reg_I_reg[4] [50]));
  FDCE \mul_reg_I_reg[4][51] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__68_n_0),
        .Q(\mul_reg_I_reg[4] [51]));
  FDCE \mul_reg_I_reg[4][5] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__114_n_0),
        .Q(\mul_reg_I_reg[4] [5]));
  FDCE \mul_reg_I_reg[4][6] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__113_n_0),
        .Q(\mul_reg_I_reg[4] [6]));
  FDCE \mul_reg_I_reg[4][7] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__112_n_0),
        .Q(\mul_reg_I_reg[4] [7]));
  FDCE \mul_reg_I_reg[4][8] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__111_n_0),
        .Q(\mul_reg_I_reg[4] [8]));
  FDCE \mul_reg_I_reg[4][9] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__110_n_0),
        .Q(\mul_reg_I_reg[4] [9]));
  FDRE \mul_reg_I_reg[5][0]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][0]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][0]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][10]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][10]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][10]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][11]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][11]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][11]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][12]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][12]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][12]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][13]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][13]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][13]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][14]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][14]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][14]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][15]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][15]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][16]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][16]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][16]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][17]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][17]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][17]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][18]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][18]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][18]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][19]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][19]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][19]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][1]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][1]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][1]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][20]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][20]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][20]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][21]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][21]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][21]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][22]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][22]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][22]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][23]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][23]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][24]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][24]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][24]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][25]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][25]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][25]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][26]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][26]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][26]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][27]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][27]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][27]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][28]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][28]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][28]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][29]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][29]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][29]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][2]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][2]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][2]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][30]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][30]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][30]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][31]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][31]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][32]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][32]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][32]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][33]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][33]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][33]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][34]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][34]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][34]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][35]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][35]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][35]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][36]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][36]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][36]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][37]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][37]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][37]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][38]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][38]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][38]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][39]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][39]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][3]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][3]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][3]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][40]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][40]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][40]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][41]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][41]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][41]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][42]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][42]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][42]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][43]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][43]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][43]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][44]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][44]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][44]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][45]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][45]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][45]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][46]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][46]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][46]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][47]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][47]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][48]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][48]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][48]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][49]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][49]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][49]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][4]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][4]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][4]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][50]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][50]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][50]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][51]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][51]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][5]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][5]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][5]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][6]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][6]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][6]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][7]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][7]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][8]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][8]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][8]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[5][9]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[6][9]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[5][9]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][0]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][0]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ),
        .Q(\mul_reg_I_reg[6][0]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][10]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][10]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ),
        .Q(\mul_reg_I_reg[6][10]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][11]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][11]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ),
        .Q(\mul_reg_I_reg[6][11]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][12]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][12]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ),
        .Q(\mul_reg_I_reg[6][12]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][13]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][13]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ),
        .Q(\mul_reg_I_reg[6][13]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][14]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][14]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ),
        .Q(\mul_reg_I_reg[6][14]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ),
        .Q(\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1 
       (.CI(\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ,\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ,\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ,\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ,\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ,\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ,\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ,\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 }),
        .DI({\mul_reg_I_reg[7]1_n_90 ,\mul_reg_I_reg[7]1_n_91 ,\mul_reg_I_reg[7]1_n_92 ,\mul_reg_I_reg[7]1_n_93 ,\mul_reg_I_reg[7]1_n_94 ,\mul_reg_I_reg[7]1_n_95 ,\mul_reg_I_reg[7]1_n_96 ,\mul_reg_I_reg[7]1_n_97 }),
        .O({\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ,\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ,\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ,\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ,\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ,\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ,\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ,\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 }),
        .S({\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ,\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ,\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ,\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ,\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ,\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ,\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ,\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_2 
       (.I0(\mul_reg_I_reg[7]1_n_90 ),
        .I1(\mul_reg_I_reg[8] [15]),
        .O(\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_3 
       (.I0(\mul_reg_I_reg[7]1_n_91 ),
        .I1(\mul_reg_I_reg[8] [14]),
        .O(\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_4 
       (.I0(\mul_reg_I_reg[7]1_n_92 ),
        .I1(\mul_reg_I_reg[8] [13]),
        .O(\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_5 
       (.I0(\mul_reg_I_reg[7]1_n_93 ),
        .I1(\mul_reg_I_reg[8] [12]),
        .O(\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_6 
       (.I0(\mul_reg_I_reg[7]1_n_94 ),
        .I1(\mul_reg_I_reg[8] [11]),
        .O(\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_7 
       (.I0(\mul_reg_I_reg[7]1_n_95 ),
        .I1(\mul_reg_I_reg[8] [10]),
        .O(\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_8 
       (.I0(\mul_reg_I_reg[7]1_n_96 ),
        .I1(\mul_reg_I_reg[8] [9]),
        .O(\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_9 
       (.I0(\mul_reg_I_reg[7]1_n_97 ),
        .I1(\mul_reg_I_reg[8] [8]),
        .O(\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][16]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][16]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ),
        .Q(\mul_reg_I_reg[6][16]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][17]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][17]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ),
        .Q(\mul_reg_I_reg[6][17]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][18]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][18]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ),
        .Q(\mul_reg_I_reg[6][18]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][19]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][19]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ),
        .Q(\mul_reg_I_reg[6][19]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][1]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][1]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ),
        .Q(\mul_reg_I_reg[6][1]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][20]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][20]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ),
        .Q(\mul_reg_I_reg[6][20]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][21]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][21]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ),
        .Q(\mul_reg_I_reg[6][21]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][22]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][22]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ),
        .Q(\mul_reg_I_reg[6][22]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ),
        .Q(\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1 
       (.CI(\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ,\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ,\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ,\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ,\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ,\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ,\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ,\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 }),
        .DI({\mul_reg_I_reg[7]1__0_n_99 ,\mul_reg_I_reg[7]1__0_n_100 ,\mul_reg_I_reg[7]1__0_n_101 ,\mul_reg_I_reg[7]1__0_n_102 ,\mul_reg_I_reg[7]1__0_n_103 ,\mul_reg_I_reg[7]1__0_n_104 ,\mul_reg_I_reg[7]1__0_n_105 ,\mul_reg_I_reg[7]1_n_89 }),
        .O({\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ,\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ,\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ,\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ,\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ,\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ,\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ,\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 }),
        .S({\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ,\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ,\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ,\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ,\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ,\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ,\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ,\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_2 
       (.I0(\mul_reg_I_reg[7]1__0_n_99 ),
        .I1(\mul_reg_I_reg[8] [23]),
        .O(\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_3 
       (.I0(\mul_reg_I_reg[7]1__0_n_100 ),
        .I1(\mul_reg_I_reg[8] [22]),
        .O(\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_4 
       (.I0(\mul_reg_I_reg[7]1__0_n_101 ),
        .I1(\mul_reg_I_reg[8] [21]),
        .O(\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_5 
       (.I0(\mul_reg_I_reg[7]1__0_n_102 ),
        .I1(\mul_reg_I_reg[8] [20]),
        .O(\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_6 
       (.I0(\mul_reg_I_reg[7]1__0_n_103 ),
        .I1(\mul_reg_I_reg[8] [19]),
        .O(\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_7 
       (.I0(\mul_reg_I_reg[7]1__0_n_104 ),
        .I1(\mul_reg_I_reg[8] [18]),
        .O(\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_8 
       (.I0(\mul_reg_I_reg[7]1__0_n_105 ),
        .I1(\mul_reg_I_reg[8] [17]),
        .O(\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_9 
       (.I0(\mul_reg_I_reg[7]1_n_89 ),
        .I1(\mul_reg_I_reg[8] [16]),
        .O(\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][24]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][24]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ),
        .Q(\mul_reg_I_reg[6][24]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][25]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][25]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ),
        .Q(\mul_reg_I_reg[6][25]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][26]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][26]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ),
        .Q(\mul_reg_I_reg[6][26]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][27]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][27]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ),
        .Q(\mul_reg_I_reg[6][27]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][28]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][28]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ),
        .Q(\mul_reg_I_reg[6][28]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][29]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][29]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ),
        .Q(\mul_reg_I_reg[6][29]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][2]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][2]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ),
        .Q(\mul_reg_I_reg[6][2]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][30]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][30]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ),
        .Q(\mul_reg_I_reg[6][30]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ),
        .Q(\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1 
       (.CI(\mul_reg_I_reg[6][23]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ,\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ,\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ,\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ,\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ,\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ,\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ,\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 }),
        .DI({\mul_reg_I_reg[7]1__0_n_91 ,\mul_reg_I_reg[7]1__0_n_92 ,\mul_reg_I_reg[7]1__0_n_93 ,\mul_reg_I_reg[7]1__0_n_94 ,\mul_reg_I_reg[7]1__0_n_95 ,\mul_reg_I_reg[7]1__0_n_96 ,\mul_reg_I_reg[7]1__0_n_97 ,\mul_reg_I_reg[7]1__0_n_98 }),
        .O({\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ,\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ,\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ,\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ,\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ,\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ,\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ,\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 }),
        .S({\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ,\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ,\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ,\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ,\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ,\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ,\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ,\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_2 
       (.I0(\mul_reg_I_reg[7]1__0_n_91 ),
        .I1(\mul_reg_I_reg[8] [31]),
        .O(\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_3 
       (.I0(\mul_reg_I_reg[7]1__0_n_92 ),
        .I1(\mul_reg_I_reg[8] [30]),
        .O(\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_4 
       (.I0(\mul_reg_I_reg[7]1__0_n_93 ),
        .I1(\mul_reg_I_reg[8] [29]),
        .O(\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_5 
       (.I0(\mul_reg_I_reg[7]1__0_n_94 ),
        .I1(\mul_reg_I_reg[8] [28]),
        .O(\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_6 
       (.I0(\mul_reg_I_reg[7]1__0_n_95 ),
        .I1(\mul_reg_I_reg[8] [27]),
        .O(\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_7 
       (.I0(\mul_reg_I_reg[7]1__0_n_96 ),
        .I1(\mul_reg_I_reg[8] [26]),
        .O(\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_8 
       (.I0(\mul_reg_I_reg[7]1__0_n_97 ),
        .I1(\mul_reg_I_reg[8] [25]),
        .O(\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_9 
       (.I0(\mul_reg_I_reg[7]1__0_n_98 ),
        .I1(\mul_reg_I_reg[8] [24]),
        .O(\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][32]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][32]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ),
        .Q(\mul_reg_I_reg[6][32]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][33]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][33]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ),
        .Q(\mul_reg_I_reg[6][33]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][34]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][34]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ),
        .Q(\mul_reg_I_reg[6][34]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][35]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][35]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ),
        .Q(\mul_reg_I_reg[6][35]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][36]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][36]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ),
        .Q(\mul_reg_I_reg[6][36]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][37]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][37]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ),
        .Q(\mul_reg_I_reg[6][37]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][38]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][38]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ),
        .Q(\mul_reg_I_reg[6][38]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ),
        .Q(\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1 
       (.CI(\mul_reg_I_reg[6][31]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ,\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ,\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ,\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ,\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ,\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ,\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ,\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 }),
        .DI({\mul_reg_I_reg[7]1__0_n_83 ,\mul_reg_I_reg[7]1__0_n_84 ,\mul_reg_I_reg[7]1__0_n_85 ,\mul_reg_I_reg[7]1__0_n_86 ,\mul_reg_I_reg[7]1__0_n_87 ,\mul_reg_I_reg[7]1__0_n_88 ,\mul_reg_I_reg[7]1__0_n_89 ,\mul_reg_I_reg[7]1__0_n_90 }),
        .O({\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ,\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ,\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ,\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ,\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ,\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ,\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ,\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 }),
        .S({\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ,\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ,\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ,\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ,\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ,\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ,\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ,\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_2 
       (.I0(\mul_reg_I_reg[7]1__0_n_83 ),
        .I1(\mul_reg_I_reg[8] [39]),
        .O(\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_3 
       (.I0(\mul_reg_I_reg[7]1__0_n_84 ),
        .I1(\mul_reg_I_reg[8] [38]),
        .O(\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_4 
       (.I0(\mul_reg_I_reg[7]1__0_n_85 ),
        .I1(\mul_reg_I_reg[8] [37]),
        .O(\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_5 
       (.I0(\mul_reg_I_reg[7]1__0_n_86 ),
        .I1(\mul_reg_I_reg[8] [36]),
        .O(\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_6 
       (.I0(\mul_reg_I_reg[7]1__0_n_87 ),
        .I1(\mul_reg_I_reg[8] [35]),
        .O(\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_7 
       (.I0(\mul_reg_I_reg[7]1__0_n_88 ),
        .I1(\mul_reg_I_reg[8] [34]),
        .O(\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_8 
       (.I0(\mul_reg_I_reg[7]1__0_n_89 ),
        .I1(\mul_reg_I_reg[8] [33]),
        .O(\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_9 
       (.I0(\mul_reg_I_reg[7]1__0_n_90 ),
        .I1(\mul_reg_I_reg[8] [32]),
        .O(\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][3]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][3]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ),
        .Q(\mul_reg_I_reg[6][3]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][40]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][40]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ),
        .Q(\mul_reg_I_reg[6][40]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][41]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][41]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ),
        .Q(\mul_reg_I_reg[6][41]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][42]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][42]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ),
        .Q(\mul_reg_I_reg[6][42]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][43]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][43]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ),
        .Q(\mul_reg_I_reg[6][43]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][44]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][44]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ),
        .Q(\mul_reg_I_reg[6][44]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][45]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][45]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ),
        .Q(\mul_reg_I_reg[6][45]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][46]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][46]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ),
        .Q(\mul_reg_I_reg[6][46]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ),
        .Q(\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1 
       (.CI(\mul_reg_I_reg[6][39]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ,\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ,\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ,\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ,\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ,\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ,\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ,\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 }),
        .DI({\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ,\mul_reg_I_reg[7]1__0_n_76 ,\mul_reg_I_reg[7]1__0_n_77 ,\mul_reg_I_reg[7]1__0_n_78 ,\mul_reg_I_reg[7]1__0_n_79 ,\mul_reg_I_reg[7]1__0_n_80 ,\mul_reg_I_reg[7]1__0_n_81 ,\mul_reg_I_reg[7]1__0_n_82 }),
        .O({\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ,\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ,\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ,\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ,\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ,\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ,\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ,\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 }),
        .S({\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ,\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ,\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ,\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ,\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ,\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ,\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ,\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_10_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_10 
       (.I0(\mul_reg_I_reg[7]1__0_n_82 ),
        .I1(\mul_reg_I_reg[8] [40]),
        .O(\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_2 
       (.I0(\mul_reg_I_reg[8] [47]),
        .O(\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_3 
       (.I0(\mul_reg_I_reg[8] [47]),
        .I1(\mul_reg_I_reg[7]1__0_n_75 ),
        .O(\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_4 
       (.I0(\mul_reg_I_reg[7]1__0_n_76 ),
        .I1(\mul_reg_I_reg[8] [46]),
        .O(\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_5 
       (.I0(\mul_reg_I_reg[7]1__0_n_77 ),
        .I1(\mul_reg_I_reg[8] [45]),
        .O(\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_6 
       (.I0(\mul_reg_I_reg[7]1__0_n_78 ),
        .I1(\mul_reg_I_reg[8] [44]),
        .O(\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_7 
       (.I0(\mul_reg_I_reg[7]1__0_n_79 ),
        .I1(\mul_reg_I_reg[8] [43]),
        .O(\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_8 
       (.I0(\mul_reg_I_reg[7]1__0_n_80 ),
        .I1(\mul_reg_I_reg[8] [42]),
        .O(\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_9 
       (.I0(\mul_reg_I_reg[7]1__0_n_81 ),
        .I1(\mul_reg_I_reg[8] [41]),
        .O(\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][48]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][48]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ),
        .Q(\mul_reg_I_reg[6][48]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][49]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][49]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ),
        .Q(\mul_reg_I_reg[6][49]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][4]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][4]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ),
        .Q(\mul_reg_I_reg[6][4]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][50]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][50]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ),
        .Q(\mul_reg_I_reg[6][50]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ),
        .Q(\mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_1 
       (.CI(\mul_reg_I_reg[6][47]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_CO_UNCONNECTED [7:3],\mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ,\mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ,\mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,\mul_reg_I_reg[8] [49:47]}),
        .O({\NLW_mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_O_UNCONNECTED [7:4],\mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ,\mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ,\mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ,\mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,\mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ,\mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ,\mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ,\mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_2 
       (.I0(\mul_reg_I_reg[8] [50]),
        .I1(\mul_reg_I_reg[8] [51]),
        .O(\mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_3 
       (.I0(\mul_reg_I_reg[8] [49]),
        .I1(\mul_reg_I_reg[8] [50]),
        .O(\mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_4 
       (.I0(\mul_reg_I_reg[8] [48]),
        .I1(\mul_reg_I_reg[8] [49]),
        .O(\mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_5 
       (.I0(\mul_reg_I_reg[8] [47]),
        .I1(\mul_reg_I_reg[8] [48]),
        .O(\mul_reg_I_reg[6][51]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][5]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][5]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ),
        .Q(\mul_reg_I_reg[6][5]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][6]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][6]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ),
        .Q(\mul_reg_I_reg[6][6]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ),
        .Q(\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_0 ,\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_1 ,\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_2 ,\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_3 ,\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_4 ,\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_5 ,\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_6 ,\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_7 }),
        .DI({\mul_reg_I_reg[7]1_n_98 ,\mul_reg_I_reg[7]1_n_99 ,\mul_reg_I_reg[7]1_n_100 ,\mul_reg_I_reg[7]1_n_101 ,\mul_reg_I_reg[7]1_n_102 ,\mul_reg_I_reg[7]1_n_103 ,\mul_reg_I_reg[7]1_n_104 ,\mul_reg_I_reg[7]1_n_105 }),
        .O({\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_8 ,\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_9 ,\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_10 ,\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_11 ,\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_12 ,\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_13 ,\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ,\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 }),
        .S({\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ,\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ,\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ,\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ,\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ,\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ,\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ,\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_2 
       (.I0(\mul_reg_I_reg[7]1_n_98 ),
        .I1(\mul_reg_I_reg[8] [7]),
        .O(\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_3 
       (.I0(\mul_reg_I_reg[7]1_n_99 ),
        .I1(\mul_reg_I_reg[8] [6]),
        .O(\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_4 
       (.I0(\mul_reg_I_reg[7]1_n_100 ),
        .I1(\mul_reg_I_reg[8] [5]),
        .O(\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_5 
       (.I0(\mul_reg_I_reg[7]1_n_101 ),
        .I1(\mul_reg_I_reg[8] [4]),
        .O(\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_6 
       (.I0(\mul_reg_I_reg[7]1_n_102 ),
        .I1(\mul_reg_I_reg[8] [3]),
        .O(\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_7 
       (.I0(\mul_reg_I_reg[7]1_n_103 ),
        .I1(\mul_reg_I_reg[8] [2]),
        .O(\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_8 
       (.I0(\mul_reg_I_reg[7]1_n_104 ),
        .I1(\mul_reg_I_reg[8] [1]),
        .O(\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_9 
       (.I0(\mul_reg_I_reg[7]1_n_105 ),
        .I1(\mul_reg_I_reg[8] [0]),
        .O(\mul_reg_I_reg[6][7]_srl2_U0_mul_reg_I_reg_c_0_i_9_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][8]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][8]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_15 ),
        .Q(\mul_reg_I_reg[6][8]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_I_reg[6] " *) 
  (* srl_name = "\U0/mul_reg_I_reg[6][9]_srl2_U0_mul_reg_I_reg_c_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_I_reg[6][9]_srl2_U0_mul_reg_I_reg_c_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(data_out_ready1),
        .CLK(clk),
        .D(\mul_reg_I_reg[6][15]_srl2_U0_mul_reg_I_reg_c_0_i_1_n_14 ),
        .Q(\mul_reg_I_reg[6][9]_srl2_U0_mul_reg_I_reg_c_0_n_0 ));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \mul_reg_I_reg[7]1 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,input_I[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_I_reg[7]1_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\coeff_reg_reg[1] [14],1'b0,\coeff_reg_reg[0] [14],\coeff_reg_reg[0] [9],\coeff_reg_reg[1] [10],\coeff_reg_reg[0] [12],\coeff_reg_reg[0] [14],\coeff_reg_reg[0] [9],\coeff_reg_reg[1] [10],\coeff_reg_reg[0] [12],\coeff_reg_reg[0] [14],\coeff_reg_reg[0] [9],\coeff_reg_reg[1] [10],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_I_reg[7]1_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_I_reg[7]1_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_I_reg[7]1_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(\mul_reg_I_reg[15]0_i_1_n_0 ),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_I_reg[7]1_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_I_reg[7]1_OVERFLOW_UNCONNECTED ),
        .P({\mul_reg_I_reg[7]1_n_58 ,\mul_reg_I_reg[7]1_n_59 ,\mul_reg_I_reg[7]1_n_60 ,\mul_reg_I_reg[7]1_n_61 ,\mul_reg_I_reg[7]1_n_62 ,\mul_reg_I_reg[7]1_n_63 ,\mul_reg_I_reg[7]1_n_64 ,\mul_reg_I_reg[7]1_n_65 ,\mul_reg_I_reg[7]1_n_66 ,\mul_reg_I_reg[7]1_n_67 ,\mul_reg_I_reg[7]1_n_68 ,\mul_reg_I_reg[7]1_n_69 ,\mul_reg_I_reg[7]1_n_70 ,\mul_reg_I_reg[7]1_n_71 ,\mul_reg_I_reg[7]1_n_72 ,\mul_reg_I_reg[7]1_n_73 ,\mul_reg_I_reg[7]1_n_74 ,\mul_reg_I_reg[7]1_n_75 ,\mul_reg_I_reg[7]1_n_76 ,\mul_reg_I_reg[7]1_n_77 ,\mul_reg_I_reg[7]1_n_78 ,\mul_reg_I_reg[7]1_n_79 ,\mul_reg_I_reg[7]1_n_80 ,\mul_reg_I_reg[7]1_n_81 ,\mul_reg_I_reg[7]1_n_82 ,\mul_reg_I_reg[7]1_n_83 ,\mul_reg_I_reg[7]1_n_84 ,\mul_reg_I_reg[7]1_n_85 ,\mul_reg_I_reg[7]1_n_86 ,\mul_reg_I_reg[7]1_n_87 ,\mul_reg_I_reg[7]1_n_88 ,\mul_reg_I_reg[7]1_n_89 ,\mul_reg_I_reg[7]1_n_90 ,\mul_reg_I_reg[7]1_n_91 ,\mul_reg_I_reg[7]1_n_92 ,\mul_reg_I_reg[7]1_n_93 ,\mul_reg_I_reg[7]1_n_94 ,\mul_reg_I_reg[7]1_n_95 ,\mul_reg_I_reg[7]1_n_96 ,\mul_reg_I_reg[7]1_n_97 ,\mul_reg_I_reg[7]1_n_98 ,\mul_reg_I_reg[7]1_n_99 ,\mul_reg_I_reg[7]1_n_100 ,\mul_reg_I_reg[7]1_n_101 ,\mul_reg_I_reg[7]1_n_102 ,\mul_reg_I_reg[7]1_n_103 ,\mul_reg_I_reg[7]1_n_104 ,\mul_reg_I_reg[7]1_n_105 }),
        .PATTERNBDETECT(\NLW_mul_reg_I_reg[7]1_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_I_reg[7]1_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({\mul_reg_I_reg[7]1_n_106 ,\mul_reg_I_reg[7]1_n_107 ,\mul_reg_I_reg[7]1_n_108 ,\mul_reg_I_reg[7]1_n_109 ,\mul_reg_I_reg[7]1_n_110 ,\mul_reg_I_reg[7]1_n_111 ,\mul_reg_I_reg[7]1_n_112 ,\mul_reg_I_reg[7]1_n_113 ,\mul_reg_I_reg[7]1_n_114 ,\mul_reg_I_reg[7]1_n_115 ,\mul_reg_I_reg[7]1_n_116 ,\mul_reg_I_reg[7]1_n_117 ,\mul_reg_I_reg[7]1_n_118 ,\mul_reg_I_reg[7]1_n_119 ,\mul_reg_I_reg[7]1_n_120 ,\mul_reg_I_reg[7]1_n_121 ,\mul_reg_I_reg[7]1_n_122 ,\mul_reg_I_reg[7]1_n_123 ,\mul_reg_I_reg[7]1_n_124 ,\mul_reg_I_reg[7]1_n_125 ,\mul_reg_I_reg[7]1_n_126 ,\mul_reg_I_reg[7]1_n_127 ,\mul_reg_I_reg[7]1_n_128 ,\mul_reg_I_reg[7]1_n_129 ,\mul_reg_I_reg[7]1_n_130 ,\mul_reg_I_reg[7]1_n_131 ,\mul_reg_I_reg[7]1_n_132 ,\mul_reg_I_reg[7]1_n_133 ,\mul_reg_I_reg[7]1_n_134 ,\mul_reg_I_reg[7]1_n_135 ,\mul_reg_I_reg[7]1_n_136 ,\mul_reg_I_reg[7]1_n_137 ,\mul_reg_I_reg[7]1_n_138 ,\mul_reg_I_reg[7]1_n_139 ,\mul_reg_I_reg[7]1_n_140 ,\mul_reg_I_reg[7]1_n_141 ,\mul_reg_I_reg[7]1_n_142 ,\mul_reg_I_reg[7]1_n_143 ,\mul_reg_I_reg[7]1_n_144 ,\mul_reg_I_reg[7]1_n_145 ,\mul_reg_I_reg[7]1_n_146 ,\mul_reg_I_reg[7]1_n_147 ,\mul_reg_I_reg[7]1_n_148 ,\mul_reg_I_reg[7]1_n_149 ,\mul_reg_I_reg[7]1_n_150 ,\mul_reg_I_reg[7]1_n_151 ,\mul_reg_I_reg[7]1_n_152 ,\mul_reg_I_reg[7]1_n_153 }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_mul_reg_I_reg[7]1_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_mul_reg_I_reg[7]1_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \mul_reg_I_reg[7]1__0 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\coeff_reg_reg[1] [14],1'b0,\coeff_reg_reg[0] [14],\coeff_reg_reg[0] [9],\coeff_reg_reg[1] [10],\coeff_reg_reg[0] [12],\coeff_reg_reg[0] [14],\coeff_reg_reg[0] [9],\coeff_reg_reg[1] [10],\coeff_reg_reg[0] [12],\coeff_reg_reg[0] [14],\coeff_reg_reg[0] [9],\coeff_reg_reg[1] [10],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_I_reg[7]1__0_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({input_I[31],input_I[31],input_I[31],input_I[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_I_reg[7]1__0_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_I_reg[7]1__0_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_I_reg[7]1__0_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(\mul_reg_I_reg[15]0_i_1_n_0 ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_I_reg[7]1__0_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_I_reg[7]1__0_OVERFLOW_UNCONNECTED ),
        .P({\mul_reg_I_reg[7]1__0_n_58 ,\mul_reg_I_reg[7]1__0_n_59 ,\mul_reg_I_reg[7]1__0_n_60 ,\mul_reg_I_reg[7]1__0_n_61 ,\mul_reg_I_reg[7]1__0_n_62 ,\mul_reg_I_reg[7]1__0_n_63 ,\mul_reg_I_reg[7]1__0_n_64 ,\mul_reg_I_reg[7]1__0_n_65 ,\mul_reg_I_reg[7]1__0_n_66 ,\mul_reg_I_reg[7]1__0_n_67 ,\mul_reg_I_reg[7]1__0_n_68 ,\mul_reg_I_reg[7]1__0_n_69 ,\mul_reg_I_reg[7]1__0_n_70 ,\mul_reg_I_reg[7]1__0_n_71 ,\mul_reg_I_reg[7]1__0_n_72 ,\mul_reg_I_reg[7]1__0_n_73 ,\mul_reg_I_reg[7]1__0_n_74 ,\mul_reg_I_reg[7]1__0_n_75 ,\mul_reg_I_reg[7]1__0_n_76 ,\mul_reg_I_reg[7]1__0_n_77 ,\mul_reg_I_reg[7]1__0_n_78 ,\mul_reg_I_reg[7]1__0_n_79 ,\mul_reg_I_reg[7]1__0_n_80 ,\mul_reg_I_reg[7]1__0_n_81 ,\mul_reg_I_reg[7]1__0_n_82 ,\mul_reg_I_reg[7]1__0_n_83 ,\mul_reg_I_reg[7]1__0_n_84 ,\mul_reg_I_reg[7]1__0_n_85 ,\mul_reg_I_reg[7]1__0_n_86 ,\mul_reg_I_reg[7]1__0_n_87 ,\mul_reg_I_reg[7]1__0_n_88 ,\mul_reg_I_reg[7]1__0_n_89 ,\mul_reg_I_reg[7]1__0_n_90 ,\mul_reg_I_reg[7]1__0_n_91 ,\mul_reg_I_reg[7]1__0_n_92 ,\mul_reg_I_reg[7]1__0_n_93 ,\mul_reg_I_reg[7]1__0_n_94 ,\mul_reg_I_reg[7]1__0_n_95 ,\mul_reg_I_reg[7]1__0_n_96 ,\mul_reg_I_reg[7]1__0_n_97 ,\mul_reg_I_reg[7]1__0_n_98 ,\mul_reg_I_reg[7]1__0_n_99 ,\mul_reg_I_reg[7]1__0_n_100 ,\mul_reg_I_reg[7]1__0_n_101 ,\mul_reg_I_reg[7]1__0_n_102 ,\mul_reg_I_reg[7]1__0_n_103 ,\mul_reg_I_reg[7]1__0_n_104 ,\mul_reg_I_reg[7]1__0_n_105 }),
        .PATTERNBDETECT(\NLW_mul_reg_I_reg[7]1__0_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_I_reg[7]1__0_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\mul_reg_I_reg[7]1_n_106 ,\mul_reg_I_reg[7]1_n_107 ,\mul_reg_I_reg[7]1_n_108 ,\mul_reg_I_reg[7]1_n_109 ,\mul_reg_I_reg[7]1_n_110 ,\mul_reg_I_reg[7]1_n_111 ,\mul_reg_I_reg[7]1_n_112 ,\mul_reg_I_reg[7]1_n_113 ,\mul_reg_I_reg[7]1_n_114 ,\mul_reg_I_reg[7]1_n_115 ,\mul_reg_I_reg[7]1_n_116 ,\mul_reg_I_reg[7]1_n_117 ,\mul_reg_I_reg[7]1_n_118 ,\mul_reg_I_reg[7]1_n_119 ,\mul_reg_I_reg[7]1_n_120 ,\mul_reg_I_reg[7]1_n_121 ,\mul_reg_I_reg[7]1_n_122 ,\mul_reg_I_reg[7]1_n_123 ,\mul_reg_I_reg[7]1_n_124 ,\mul_reg_I_reg[7]1_n_125 ,\mul_reg_I_reg[7]1_n_126 ,\mul_reg_I_reg[7]1_n_127 ,\mul_reg_I_reg[7]1_n_128 ,\mul_reg_I_reg[7]1_n_129 ,\mul_reg_I_reg[7]1_n_130 ,\mul_reg_I_reg[7]1_n_131 ,\mul_reg_I_reg[7]1_n_132 ,\mul_reg_I_reg[7]1_n_133 ,\mul_reg_I_reg[7]1_n_134 ,\mul_reg_I_reg[7]1_n_135 ,\mul_reg_I_reg[7]1_n_136 ,\mul_reg_I_reg[7]1_n_137 ,\mul_reg_I_reg[7]1_n_138 ,\mul_reg_I_reg[7]1_n_139 ,\mul_reg_I_reg[7]1_n_140 ,\mul_reg_I_reg[7]1_n_141 ,\mul_reg_I_reg[7]1_n_142 ,\mul_reg_I_reg[7]1_n_143 ,\mul_reg_I_reg[7]1_n_144 ,\mul_reg_I_reg[7]1_n_145 ,\mul_reg_I_reg[7]1_n_146 ,\mul_reg_I_reg[7]1_n_147 ,\mul_reg_I_reg[7]1_n_148 ,\mul_reg_I_reg[7]1_n_149 ,\mul_reg_I_reg[7]1_n_150 ,\mul_reg_I_reg[7]1_n_151 ,\mul_reg_I_reg[7]1_n_152 ,\mul_reg_I_reg[7]1_n_153 }),
        .PCOUT(\NLW_mul_reg_I_reg[7]1__0_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_mul_reg_I_reg[7]1__0_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_mul_reg_I_reg[7]1__0_XOROUT_UNCONNECTED [7:0]));
  FDCE \mul_reg_I_reg[8][0] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__67_n_0),
        .Q(\mul_reg_I_reg[8] [0]));
  FDCE \mul_reg_I_reg[8][10] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__57_n_0),
        .Q(\mul_reg_I_reg[8] [10]));
  FDCE \mul_reg_I_reg[8][11] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__56_n_0),
        .Q(\mul_reg_I_reg[8] [11]));
  FDCE \mul_reg_I_reg[8][12] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__55_n_0),
        .Q(\mul_reg_I_reg[8] [12]));
  FDCE \mul_reg_I_reg[8][13] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__54_n_0),
        .Q(\mul_reg_I_reg[8] [13]));
  FDCE \mul_reg_I_reg[8][14] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__53_n_0),
        .Q(\mul_reg_I_reg[8] [14]));
  FDCE \mul_reg_I_reg[8][15] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__52_n_0),
        .Q(\mul_reg_I_reg[8] [15]));
  FDCE \mul_reg_I_reg[8][16] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__51_n_0),
        .Q(\mul_reg_I_reg[8] [16]));
  FDCE \mul_reg_I_reg[8][17] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__50_n_0),
        .Q(\mul_reg_I_reg[8] [17]));
  FDCE \mul_reg_I_reg[8][18] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__49_n_0),
        .Q(\mul_reg_I_reg[8] [18]));
  FDCE \mul_reg_I_reg[8][19] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__48_n_0),
        .Q(\mul_reg_I_reg[8] [19]));
  FDCE \mul_reg_I_reg[8][1] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__66_n_0),
        .Q(\mul_reg_I_reg[8] [1]));
  FDCE \mul_reg_I_reg[8][20] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__47_n_0),
        .Q(\mul_reg_I_reg[8] [20]));
  FDCE \mul_reg_I_reg[8][21] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__46_n_0),
        .Q(\mul_reg_I_reg[8] [21]));
  FDCE \mul_reg_I_reg[8][22] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__45_n_0),
        .Q(\mul_reg_I_reg[8] [22]));
  FDCE \mul_reg_I_reg[8][23] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__44_n_0),
        .Q(\mul_reg_I_reg[8] [23]));
  FDCE \mul_reg_I_reg[8][24] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__43_n_0),
        .Q(\mul_reg_I_reg[8] [24]));
  FDCE \mul_reg_I_reg[8][25] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__42_n_0),
        .Q(\mul_reg_I_reg[8] [25]));
  FDCE \mul_reg_I_reg[8][26] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__41_n_0),
        .Q(\mul_reg_I_reg[8] [26]));
  FDCE \mul_reg_I_reg[8][27] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__40_n_0),
        .Q(\mul_reg_I_reg[8] [27]));
  FDCE \mul_reg_I_reg[8][28] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__39_n_0),
        .Q(\mul_reg_I_reg[8] [28]));
  FDCE \mul_reg_I_reg[8][29] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__38_n_0),
        .Q(\mul_reg_I_reg[8] [29]));
  FDCE \mul_reg_I_reg[8][2] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__65_n_0),
        .Q(\mul_reg_I_reg[8] [2]));
  FDCE \mul_reg_I_reg[8][30] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__37_n_0),
        .Q(\mul_reg_I_reg[8] [30]));
  FDCE \mul_reg_I_reg[8][31] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__36_n_0),
        .Q(\mul_reg_I_reg[8] [31]));
  FDCE \mul_reg_I_reg[8][32] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__35_n_0),
        .Q(\mul_reg_I_reg[8] [32]));
  FDCE \mul_reg_I_reg[8][33] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__34_n_0),
        .Q(\mul_reg_I_reg[8] [33]));
  FDCE \mul_reg_I_reg[8][34] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__33_n_0),
        .Q(\mul_reg_I_reg[8] [34]));
  FDCE \mul_reg_I_reg[8][35] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__32_n_0),
        .Q(\mul_reg_I_reg[8] [35]));
  FDCE \mul_reg_I_reg[8][36] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__31_n_0),
        .Q(\mul_reg_I_reg[8] [36]));
  FDCE \mul_reg_I_reg[8][37] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__30_n_0),
        .Q(\mul_reg_I_reg[8] [37]));
  FDCE \mul_reg_I_reg[8][38] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__29_n_0),
        .Q(\mul_reg_I_reg[8] [38]));
  FDCE \mul_reg_I_reg[8][39] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__28_n_0),
        .Q(\mul_reg_I_reg[8] [39]));
  FDCE \mul_reg_I_reg[8][3] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__64_n_0),
        .Q(\mul_reg_I_reg[8] [3]));
  FDCE \mul_reg_I_reg[8][40] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__27_n_0),
        .Q(\mul_reg_I_reg[8] [40]));
  FDCE \mul_reg_I_reg[8][41] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__26_n_0),
        .Q(\mul_reg_I_reg[8] [41]));
  FDCE \mul_reg_I_reg[8][42] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__25_n_0),
        .Q(\mul_reg_I_reg[8] [42]));
  FDCE \mul_reg_I_reg[8][43] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__24_n_0),
        .Q(\mul_reg_I_reg[8] [43]));
  FDCE \mul_reg_I_reg[8][44] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__23_n_0),
        .Q(\mul_reg_I_reg[8] [44]));
  FDCE \mul_reg_I_reg[8][45] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__22_n_0),
        .Q(\mul_reg_I_reg[8] [45]));
  FDCE \mul_reg_I_reg[8][46] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__21_n_0),
        .Q(\mul_reg_I_reg[8] [46]));
  FDCE \mul_reg_I_reg[8][47] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__20_n_0),
        .Q(\mul_reg_I_reg[8] [47]));
  FDCE \mul_reg_I_reg[8][48] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__19_n_0),
        .Q(\mul_reg_I_reg[8] [48]));
  FDCE \mul_reg_I_reg[8][49] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__18_n_0),
        .Q(\mul_reg_I_reg[8] [49]));
  FDCE \mul_reg_I_reg[8][4] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__63_n_0),
        .Q(\mul_reg_I_reg[8] [4]));
  FDCE \mul_reg_I_reg[8][50] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__17_n_0),
        .Q(\mul_reg_I_reg[8] [50]));
  FDCE \mul_reg_I_reg[8][51] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__16_n_0),
        .Q(\mul_reg_I_reg[8] [51]));
  FDCE \mul_reg_I_reg[8][5] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__62_n_0),
        .Q(\mul_reg_I_reg[8] [5]));
  FDCE \mul_reg_I_reg[8][6] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__61_n_0),
        .Q(\mul_reg_I_reg[8] [6]));
  FDCE \mul_reg_I_reg[8][7] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__60_n_0),
        .Q(\mul_reg_I_reg[8] [7]));
  FDCE \mul_reg_I_reg[8][8] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__59_n_0),
        .Q(\mul_reg_I_reg[8] [8]));
  FDCE \mul_reg_I_reg[8][9] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_gate__58_n_0),
        .Q(\mul_reg_I_reg[8] [9]));
  FDRE \mul_reg_I_reg[9][0]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][0]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][0]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][10]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][10]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][10]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][11]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][11]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][11]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][12]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][12]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][12]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][13]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][13]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][13]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][14]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][14]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][14]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][15]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][15]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][15]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][16]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][16]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][16]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][17]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][17]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][17]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][18]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][18]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][18]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][19]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][19]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][19]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][1]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][1]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][1]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][20]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][20]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][20]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][21]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][21]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][21]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][22]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][22]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][22]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][23]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][23]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][23]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][24]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][24]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][24]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][25]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][25]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][25]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][26]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][26]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][26]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][27]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][27]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][27]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][28]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][28]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][28]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][29]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][29]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][29]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][2]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][2]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][2]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][30]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][30]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][30]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][31]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][31]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][31]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][32]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][32]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][32]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][33]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][33]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][33]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][34]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][34]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][34]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][35]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][35]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][35]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][36]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][36]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][36]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][37]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][37]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][37]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][38]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][38]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][38]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][39]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][39]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][39]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][3]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][3]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][3]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][40]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][40]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][40]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][41]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][41]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][41]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][42]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][42]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][42]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][43]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][43]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][43]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][44]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][44]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][44]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][45]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][45]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][45]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][46]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][46]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][46]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][47]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][47]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][47]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][48]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][48]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][48]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][49]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][49]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][49]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][4]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][4]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][4]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][50]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][50]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][50]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][51]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][51]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][51]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][5]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][5]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][5]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][6]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][6]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][6]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][7]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][7]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][7]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][8]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][8]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][8]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDRE \mul_reg_I_reg[9][9]_U0_mul_reg_I_reg_c_1 
       (.C(clk),
        .CE(data_out_ready1),
        .D(\mul_reg_I_reg[10][9]_srl2_U0_mul_reg_I_reg_c_0_n_0 ),
        .Q(\mul_reg_I_reg[9][9]_U0_mul_reg_I_reg_c_1_n_0 ),
        .R(1'b0));
  FDCE mul_reg_I_reg_c
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(1'b1),
        .Q(mul_reg_I_reg_c_n_0));
  FDCE mul_reg_I_reg_c_0
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_c_n_0),
        .Q(mul_reg_I_reg_c_0_n_0));
  FDCE mul_reg_I_reg_c_1
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(mul_reg_I_reg_c_0_n_0),
        .Q(mul_reg_I_reg_c_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate
       (.I0(\mul_reg_I_reg[13][20]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__0
       (.I0(\mul_reg_I_reg[13][19]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__1
       (.I0(\mul_reg_I_reg[13][18]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__10
       (.I0(\mul_reg_I_reg[13][9]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__100
       (.I0(\mul_reg_I_reg[5][19]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__100_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__101
       (.I0(\mul_reg_I_reg[5][18]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__101_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__102
       (.I0(\mul_reg_I_reg[5][17]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__102_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__103
       (.I0(\mul_reg_I_reg[5][16]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__103_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__104
       (.I0(\mul_reg_I_reg[5][15]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__104_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__105
       (.I0(\mul_reg_I_reg[5][14]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__105_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__106
       (.I0(\mul_reg_I_reg[5][13]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__106_n_0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__107
       (.I0(\mul_reg_I_reg[5][12]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__107_n_0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__108
       (.I0(\mul_reg_I_reg[5][11]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__108_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__109
       (.I0(\mul_reg_I_reg[5][10]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__109_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__11
       (.I0(\mul_reg_I_reg[13][8]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__110
       (.I0(\mul_reg_I_reg[5][9]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__110_n_0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__111
       (.I0(\mul_reg_I_reg[5][8]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__111_n_0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__112
       (.I0(\mul_reg_I_reg[5][7]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__112_n_0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__113
       (.I0(\mul_reg_I_reg[5][6]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__113_n_0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__114
       (.I0(\mul_reg_I_reg[5][5]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__114_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__115
       (.I0(\mul_reg_I_reg[5][4]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__115_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__116
       (.I0(\mul_reg_I_reg[5][3]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__116_n_0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__117
       (.I0(\mul_reg_I_reg[5][2]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__117_n_0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__118
       (.I0(\mul_reg_I_reg[5][1]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__118_n_0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__119
       (.I0(\mul_reg_I_reg[5][0]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__119_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__12
       (.I0(\mul_reg_I_reg[13][7]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__120
       (.I0(\mul_reg_I_reg[1][51]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__120_n_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__121
       (.I0(\mul_reg_I_reg[1][50]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__121_n_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__122
       (.I0(\mul_reg_I_reg[1][49]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__122_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__123
       (.I0(\mul_reg_I_reg[1][48]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__123_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__124
       (.I0(\mul_reg_I_reg[1][47]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__124_n_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__125
       (.I0(\mul_reg_I_reg[1][46]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__125_n_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__126
       (.I0(\mul_reg_I_reg[1][45]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__126_n_0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__127
       (.I0(\mul_reg_I_reg[1][44]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__127_n_0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__128
       (.I0(\mul_reg_I_reg[1][43]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__128_n_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__129
       (.I0(\mul_reg_I_reg[1][42]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__129_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__13
       (.I0(\mul_reg_I_reg[13][6]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__130
       (.I0(\mul_reg_I_reg[1][41]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__130_n_0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__131
       (.I0(\mul_reg_I_reg[1][40]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__131_n_0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__132
       (.I0(\mul_reg_I_reg[1][39]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__132_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__133
       (.I0(\mul_reg_I_reg[1][38]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__133_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__134
       (.I0(\mul_reg_I_reg[1][37]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__134_n_0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__135
       (.I0(\mul_reg_I_reg[1][36]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__135_n_0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__136
       (.I0(\mul_reg_I_reg[1][35]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__136_n_0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__137
       (.I0(\mul_reg_I_reg[1][34]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__137_n_0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__138
       (.I0(\mul_reg_I_reg[1][33]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__138_n_0));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__139
       (.I0(\mul_reg_I_reg[1][32]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__139_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__14
       (.I0(\mul_reg_I_reg[13][5]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__140
       (.I0(\mul_reg_I_reg[1][31]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__140_n_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__141
       (.I0(\mul_reg_I_reg[1][30]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__141_n_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__142
       (.I0(\mul_reg_I_reg[1][29]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__142_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__143
       (.I0(\mul_reg_I_reg[1][28]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__143_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__144
       (.I0(\mul_reg_I_reg[1][27]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__144_n_0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__145
       (.I0(\mul_reg_I_reg[1][26]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__145_n_0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__146
       (.I0(\mul_reg_I_reg[1][25]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__146_n_0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__147
       (.I0(\mul_reg_I_reg[1][24]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__147_n_0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__148
       (.I0(\mul_reg_I_reg[1][23]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__148_n_0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__149
       (.I0(\mul_reg_I_reg[1][22]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__149_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__15
       (.I0(\mul_reg_I_reg[13][4]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__150
       (.I0(\mul_reg_I_reg[1][21]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__150_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__151
       (.I0(\mul_reg_I_reg[1][20]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__151_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__152
       (.I0(\mul_reg_I_reg[1][19]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__152_n_0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__153
       (.I0(\mul_reg_I_reg[1][18]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__153_n_0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__154
       (.I0(\mul_reg_I_reg[1][17]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__154_n_0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__155
       (.I0(\mul_reg_I_reg[1][16]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__155_n_0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__156
       (.I0(\mul_reg_I_reg[1][15]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__156_n_0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__157
       (.I0(\mul_reg_I_reg[1][14]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__157_n_0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__158
       (.I0(\mul_reg_I_reg[1][13]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__158_n_0));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__159
       (.I0(\mul_reg_I_reg[1][12]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__159_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__16
       (.I0(\mul_reg_I_reg[9][51]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__160
       (.I0(\mul_reg_I_reg[1][11]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__160_n_0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__161
       (.I0(\mul_reg_I_reg[1][10]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__161_n_0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__162
       (.I0(\mul_reg_I_reg[1][9]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__162_n_0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__163
       (.I0(\mul_reg_I_reg[1][8]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__163_n_0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__164
       (.I0(\mul_reg_I_reg[1][7]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__164_n_0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__165
       (.I0(\mul_reg_I_reg[1][6]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__165_n_0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__166
       (.I0(\mul_reg_I_reg[1][5]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__166_n_0));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__167
       (.I0(\mul_reg_I_reg[1][4]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__167_n_0));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__168
       (.I0(\mul_reg_I_reg[1][3]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__168_n_0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__169
       (.I0(\mul_reg_I_reg[1][2]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__169_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__17
       (.I0(\mul_reg_I_reg[9][50]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__170
       (.I0(\mul_reg_I_reg[1][1]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__170_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__171
       (.I0(\mul_reg_I_reg[1][0]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__171_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__18
       (.I0(\mul_reg_I_reg[9][49]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__19
       (.I0(\mul_reg_I_reg[9][48]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__19_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__2
       (.I0(\mul_reg_I_reg[13][17]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__20
       (.I0(\mul_reg_I_reg[9][47]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__21
       (.I0(\mul_reg_I_reg[9][46]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__22
       (.I0(\mul_reg_I_reg[9][45]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__23
       (.I0(\mul_reg_I_reg[9][44]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__24
       (.I0(\mul_reg_I_reg[9][43]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__24_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__25
       (.I0(\mul_reg_I_reg[9][42]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__25_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__26
       (.I0(\mul_reg_I_reg[9][41]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__26_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__27
       (.I0(\mul_reg_I_reg[9][40]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__28
       (.I0(\mul_reg_I_reg[9][39]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__28_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__29
       (.I0(\mul_reg_I_reg[9][38]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__29_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__3
       (.I0(\mul_reg_I_reg[13][16]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__30
       (.I0(\mul_reg_I_reg[9][37]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__30_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__31
       (.I0(\mul_reg_I_reg[9][36]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__31_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__32
       (.I0(\mul_reg_I_reg[9][35]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__32_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__33
       (.I0(\mul_reg_I_reg[9][34]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__33_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__34
       (.I0(\mul_reg_I_reg[9][33]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__34_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__35
       (.I0(\mul_reg_I_reg[9][32]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__35_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__36
       (.I0(\mul_reg_I_reg[9][31]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__36_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__37
       (.I0(\mul_reg_I_reg[9][30]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__37_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__38
       (.I0(\mul_reg_I_reg[9][29]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__38_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__39
       (.I0(\mul_reg_I_reg[9][28]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__39_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__4
       (.I0(\mul_reg_I_reg[13][15]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__40
       (.I0(\mul_reg_I_reg[9][27]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__40_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__41
       (.I0(\mul_reg_I_reg[9][26]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__41_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__42
       (.I0(\mul_reg_I_reg[9][25]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__42_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__43
       (.I0(\mul_reg_I_reg[9][24]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__43_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__44
       (.I0(\mul_reg_I_reg[9][23]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__44_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__45
       (.I0(\mul_reg_I_reg[9][22]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__45_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__46
       (.I0(\mul_reg_I_reg[9][21]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__46_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__47
       (.I0(\mul_reg_I_reg[9][20]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__47_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__48
       (.I0(\mul_reg_I_reg[9][19]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__48_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__49
       (.I0(\mul_reg_I_reg[9][18]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__49_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__5
       (.I0(\mul_reg_I_reg[13][14]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__50
       (.I0(\mul_reg_I_reg[9][17]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__50_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__51
       (.I0(\mul_reg_I_reg[9][16]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__51_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__52
       (.I0(\mul_reg_I_reg[9][15]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__52_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__53
       (.I0(\mul_reg_I_reg[9][14]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__53_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__54
       (.I0(\mul_reg_I_reg[9][13]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__54_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__55
       (.I0(\mul_reg_I_reg[9][12]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__55_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__56
       (.I0(\mul_reg_I_reg[9][11]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__56_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__57
       (.I0(\mul_reg_I_reg[9][10]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__57_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__58
       (.I0(\mul_reg_I_reg[9][9]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__58_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__59
       (.I0(\mul_reg_I_reg[9][8]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__59_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__6
       (.I0(\mul_reg_I_reg[13][13]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__60
       (.I0(\mul_reg_I_reg[9][7]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__60_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__61
       (.I0(\mul_reg_I_reg[9][6]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__61_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__62
       (.I0(\mul_reg_I_reg[9][5]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__62_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__63
       (.I0(\mul_reg_I_reg[9][4]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__63_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__64
       (.I0(\mul_reg_I_reg[9][3]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__64_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__65
       (.I0(\mul_reg_I_reg[9][2]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__65_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__66
       (.I0(\mul_reg_I_reg[9][1]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__66_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__67
       (.I0(\mul_reg_I_reg[9][0]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__67_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__68
       (.I0(\mul_reg_I_reg[5][51]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__68_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__69
       (.I0(\mul_reg_I_reg[5][50]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__69_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__7
       (.I0(\mul_reg_I_reg[13][12]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__70
       (.I0(\mul_reg_I_reg[5][49]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__70_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__71
       (.I0(\mul_reg_I_reg[5][48]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__71_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__72
       (.I0(\mul_reg_I_reg[5][47]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__72_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__73
       (.I0(\mul_reg_I_reg[5][46]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__73_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__74
       (.I0(\mul_reg_I_reg[5][45]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__74_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__75
       (.I0(\mul_reg_I_reg[5][44]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__75_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__76
       (.I0(\mul_reg_I_reg[5][43]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__76_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__77
       (.I0(\mul_reg_I_reg[5][42]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__77_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__78
       (.I0(\mul_reg_I_reg[5][41]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__78_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__79
       (.I0(\mul_reg_I_reg[5][40]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__79_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__8
       (.I0(\mul_reg_I_reg[13][11]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__80
       (.I0(\mul_reg_I_reg[5][39]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__80_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__81
       (.I0(\mul_reg_I_reg[5][38]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__81_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__82
       (.I0(\mul_reg_I_reg[5][37]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__82_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__83
       (.I0(\mul_reg_I_reg[5][36]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__83_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__84
       (.I0(\mul_reg_I_reg[5][35]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__84_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__85
       (.I0(\mul_reg_I_reg[5][34]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__85_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__86
       (.I0(\mul_reg_I_reg[5][33]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__86_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__87
       (.I0(\mul_reg_I_reg[5][32]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__87_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__88
       (.I0(\mul_reg_I_reg[5][31]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__88_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__89
       (.I0(\mul_reg_I_reg[5][30]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__89_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__9
       (.I0(\mul_reg_I_reg[13][10]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__90
       (.I0(\mul_reg_I_reg[5][29]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__90_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__91
       (.I0(\mul_reg_I_reg[5][28]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__91_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__92
       (.I0(\mul_reg_I_reg[5][27]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__92_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__93
       (.I0(\mul_reg_I_reg[5][26]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__93_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__94
       (.I0(\mul_reg_I_reg[5][25]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__94_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__95
       (.I0(\mul_reg_I_reg[5][24]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__95_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__96
       (.I0(\mul_reg_I_reg[5][23]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__96_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__97
       (.I0(\mul_reg_I_reg[5][22]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__97_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__98
       (.I0(\mul_reg_I_reg[5][21]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__98_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_reg_I_reg_gate__99
       (.I0(\mul_reg_I_reg[5][20]_U0_mul_reg_I_reg_c_1_n_0 ),
        .I1(mul_reg_I_reg_c_1_n_0),
        .O(mul_reg_I_reg_gate__99_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][11]_i_2 
       (.I0(\mul_reg_Q_reg[11]1_n_94 ),
        .I1(\mul_reg_Q_reg[12] [11]),
        .O(\mul_reg_Q[11][11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][11]_i_3 
       (.I0(\mul_reg_Q_reg[11]1_n_95 ),
        .I1(\mul_reg_Q_reg[12] [10]),
        .O(\mul_reg_Q[11][11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][11]_i_4 
       (.I0(\mul_reg_Q_reg[11]1_n_96 ),
        .I1(\mul_reg_Q_reg[12] [9]),
        .O(\mul_reg_Q[11][11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][11]_i_5 
       (.I0(\mul_reg_Q_reg[11]1_n_97 ),
        .I1(\mul_reg_Q_reg[12] [8]),
        .O(\mul_reg_Q[11][11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][11]_i_6 
       (.I0(\mul_reg_Q_reg[11]1_n_98 ),
        .I1(\mul_reg_Q_reg[12] [7]),
        .O(\mul_reg_Q[11][11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][11]_i_7 
       (.I0(\mul_reg_Q_reg[11]1_n_99 ),
        .I1(\mul_reg_Q_reg[12] [6]),
        .O(\mul_reg_Q[11][11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][11]_i_8 
       (.I0(\mul_reg_Q_reg[11]1_n_100 ),
        .I1(\mul_reg_Q_reg[12] [5]),
        .O(\mul_reg_Q[11][11]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][11]_i_9 
       (.I0(\mul_reg_Q_reg[11]1_n_101 ),
        .I1(\mul_reg_Q_reg[12] [4]),
        .O(\mul_reg_Q[11][11]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][19]_i_2 
       (.I0(\mul_reg_Q_reg[11]1__0_n_103 ),
        .I1(\mul_reg_Q_reg[12] [19]),
        .O(\mul_reg_Q[11][19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][19]_i_3 
       (.I0(\mul_reg_Q_reg[11]1__0_n_104 ),
        .I1(\mul_reg_Q_reg[12] [18]),
        .O(\mul_reg_Q[11][19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][19]_i_4 
       (.I0(\mul_reg_Q_reg[11]1__0_n_105 ),
        .I1(\mul_reg_Q_reg[12] [17]),
        .O(\mul_reg_Q[11][19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][19]_i_5 
       (.I0(\mul_reg_Q_reg[11]1_n_89 ),
        .I1(\mul_reg_Q_reg[12] [16]),
        .O(\mul_reg_Q[11][19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][19]_i_6 
       (.I0(\mul_reg_Q_reg[11]1_n_90 ),
        .I1(\mul_reg_Q_reg[12] [15]),
        .O(\mul_reg_Q[11][19]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][19]_i_7 
       (.I0(\mul_reg_Q_reg[11]1_n_91 ),
        .I1(\mul_reg_Q_reg[12] [14]),
        .O(\mul_reg_Q[11][19]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][19]_i_8 
       (.I0(\mul_reg_Q_reg[11]1_n_92 ),
        .I1(\mul_reg_Q_reg[12] [13]),
        .O(\mul_reg_Q[11][19]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][19]_i_9 
       (.I0(\mul_reg_Q_reg[11]1_n_93 ),
        .I1(\mul_reg_Q_reg[12] [12]),
        .O(\mul_reg_Q[11][19]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][27]_i_2 
       (.I0(\mul_reg_Q_reg[11]1__0_n_95 ),
        .I1(\mul_reg_Q_reg[12] [27]),
        .O(\mul_reg_Q[11][27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][27]_i_3 
       (.I0(\mul_reg_Q_reg[11]1__0_n_96 ),
        .I1(\mul_reg_Q_reg[12] [26]),
        .O(\mul_reg_Q[11][27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][27]_i_4 
       (.I0(\mul_reg_Q_reg[11]1__0_n_97 ),
        .I1(\mul_reg_Q_reg[12] [25]),
        .O(\mul_reg_Q[11][27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][27]_i_5 
       (.I0(\mul_reg_Q_reg[11]1__0_n_98 ),
        .I1(\mul_reg_Q_reg[12] [24]),
        .O(\mul_reg_Q[11][27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][27]_i_6 
       (.I0(\mul_reg_Q_reg[11]1__0_n_99 ),
        .I1(\mul_reg_Q_reg[12] [23]),
        .O(\mul_reg_Q[11][27]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][27]_i_7 
       (.I0(\mul_reg_Q_reg[11]1__0_n_100 ),
        .I1(\mul_reg_Q_reg[12] [22]),
        .O(\mul_reg_Q[11][27]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][27]_i_8 
       (.I0(\mul_reg_Q_reg[11]1__0_n_101 ),
        .I1(\mul_reg_Q_reg[12] [21]),
        .O(\mul_reg_Q[11][27]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][27]_i_9 
       (.I0(\mul_reg_Q_reg[11]1__0_n_102 ),
        .I1(\mul_reg_Q_reg[12] [20]),
        .O(\mul_reg_Q[11][27]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][35]_i_2 
       (.I0(\mul_reg_Q_reg[11]1__0_n_87 ),
        .I1(\mul_reg_Q_reg[12] [35]),
        .O(\mul_reg_Q[11][35]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][35]_i_3 
       (.I0(\mul_reg_Q_reg[11]1__0_n_88 ),
        .I1(\mul_reg_Q_reg[12] [34]),
        .O(\mul_reg_Q[11][35]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][35]_i_4 
       (.I0(\mul_reg_Q_reg[11]1__0_n_89 ),
        .I1(\mul_reg_Q_reg[12] [33]),
        .O(\mul_reg_Q[11][35]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][35]_i_5 
       (.I0(\mul_reg_Q_reg[11]1__0_n_90 ),
        .I1(\mul_reg_Q_reg[12] [32]),
        .O(\mul_reg_Q[11][35]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][35]_i_6 
       (.I0(\mul_reg_Q_reg[11]1__0_n_91 ),
        .I1(\mul_reg_Q_reg[12] [31]),
        .O(\mul_reg_Q[11][35]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][35]_i_7 
       (.I0(\mul_reg_Q_reg[11]1__0_n_92 ),
        .I1(\mul_reg_Q_reg[12] [30]),
        .O(\mul_reg_Q[11][35]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][35]_i_8 
       (.I0(\mul_reg_Q_reg[11]1__0_n_93 ),
        .I1(\mul_reg_Q_reg[12] [29]),
        .O(\mul_reg_Q[11][35]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][35]_i_9 
       (.I0(\mul_reg_Q_reg[11]1__0_n_94 ),
        .I1(\mul_reg_Q_reg[12] [28]),
        .O(\mul_reg_Q[11][35]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][43]_i_2 
       (.I0(\mul_reg_Q_reg[11]1__0_n_79 ),
        .I1(\mul_reg_Q_reg[12] [43]),
        .O(\mul_reg_Q[11][43]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][43]_i_3 
       (.I0(\mul_reg_Q_reg[11]1__0_n_80 ),
        .I1(\mul_reg_Q_reg[12] [42]),
        .O(\mul_reg_Q[11][43]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][43]_i_4 
       (.I0(\mul_reg_Q_reg[11]1__0_n_81 ),
        .I1(\mul_reg_Q_reg[12] [41]),
        .O(\mul_reg_Q[11][43]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][43]_i_5 
       (.I0(\mul_reg_Q_reg[11]1__0_n_82 ),
        .I1(\mul_reg_Q_reg[12] [40]),
        .O(\mul_reg_Q[11][43]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][43]_i_6 
       (.I0(\mul_reg_Q_reg[11]1__0_n_83 ),
        .I1(\mul_reg_Q_reg[12] [39]),
        .O(\mul_reg_Q[11][43]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][43]_i_7 
       (.I0(\mul_reg_Q_reg[11]1__0_n_84 ),
        .I1(\mul_reg_Q_reg[12] [38]),
        .O(\mul_reg_Q[11][43]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][43]_i_8 
       (.I0(\mul_reg_Q_reg[11]1__0_n_85 ),
        .I1(\mul_reg_Q_reg[12] [37]),
        .O(\mul_reg_Q[11][43]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][43]_i_9 
       (.I0(\mul_reg_Q_reg[11]1__0_n_86 ),
        .I1(\mul_reg_Q_reg[12] [36]),
        .O(\mul_reg_Q[11][43]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][51]_i_10 
       (.I0(\mul_reg_Q_reg[11]1__0_n_78 ),
        .I1(\mul_reg_Q_reg[12] [44]),
        .O(\mul_reg_Q[11][51]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_reg_Q[11][51]_i_2 
       (.I0(\mul_reg_Q_reg[12] [47]),
        .O(\mul_reg_Q[11][51]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mul_reg_Q[11][51]_i_3 
       (.I0(\mul_reg_Q_reg[12] [50]),
        .I1(\mul_reg_Q_reg[12] [51]),
        .O(\mul_reg_Q[11][51]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mul_reg_Q[11][51]_i_4 
       (.I0(\mul_reg_Q_reg[12] [49]),
        .I1(\mul_reg_Q_reg[12] [50]),
        .O(\mul_reg_Q[11][51]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mul_reg_Q[11][51]_i_5 
       (.I0(\mul_reg_Q_reg[12] [48]),
        .I1(\mul_reg_Q_reg[12] [49]),
        .O(\mul_reg_Q[11][51]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mul_reg_Q[11][51]_i_6 
       (.I0(\mul_reg_Q_reg[12] [47]),
        .I1(\mul_reg_Q_reg[12] [48]),
        .O(\mul_reg_Q[11][51]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][51]_i_7 
       (.I0(\mul_reg_Q_reg[12] [47]),
        .I1(\mul_reg_Q_reg[11]1__0_n_75 ),
        .O(\mul_reg_Q[11][51]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][51]_i_8 
       (.I0(\mul_reg_Q_reg[11]1__0_n_76 ),
        .I1(\mul_reg_Q_reg[12] [46]),
        .O(\mul_reg_Q[11][51]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[11][51]_i_9 
       (.I0(\mul_reg_Q_reg[11]1__0_n_77 ),
        .I1(\mul_reg_Q_reg[12] [45]),
        .O(\mul_reg_Q[11][51]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][15]_i_2 
       (.I0(\mul_reg_Q_reg[3]1_n_90 ),
        .I1(\mul_reg_Q_reg[4] [15]),
        .O(\mul_reg_Q[3][15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][15]_i_3 
       (.I0(\mul_reg_Q_reg[3]1_n_91 ),
        .I1(\mul_reg_Q_reg[4] [14]),
        .O(\mul_reg_Q[3][15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][15]_i_4 
       (.I0(\mul_reg_Q_reg[3]1_n_92 ),
        .I1(\mul_reg_Q_reg[4] [13]),
        .O(\mul_reg_Q[3][15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][15]_i_5 
       (.I0(\mul_reg_Q_reg[3]1_n_93 ),
        .I1(\mul_reg_Q_reg[4] [12]),
        .O(\mul_reg_Q[3][15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][15]_i_6 
       (.I0(\mul_reg_Q_reg[3]1_n_94 ),
        .I1(\mul_reg_Q_reg[4] [11]),
        .O(\mul_reg_Q[3][15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][15]_i_7 
       (.I0(\mul_reg_Q_reg[3]1_n_95 ),
        .I1(\mul_reg_Q_reg[4] [10]),
        .O(\mul_reg_Q[3][15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][15]_i_8 
       (.I0(\mul_reg_Q_reg[3]1_n_96 ),
        .I1(\mul_reg_Q_reg[4] [9]),
        .O(\mul_reg_Q[3][15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][15]_i_9 
       (.I0(\mul_reg_Q_reg[3]1_n_97 ),
        .I1(\mul_reg_Q_reg[4] [8]),
        .O(\mul_reg_Q[3][15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][23]_i_2 
       (.I0(\mul_reg_Q_reg[3]1__0_n_99 ),
        .I1(\mul_reg_Q_reg[4] [23]),
        .O(\mul_reg_Q[3][23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][23]_i_3 
       (.I0(\mul_reg_Q_reg[3]1__0_n_100 ),
        .I1(\mul_reg_Q_reg[4] [22]),
        .O(\mul_reg_Q[3][23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][23]_i_4 
       (.I0(\mul_reg_Q_reg[3]1__0_n_101 ),
        .I1(\mul_reg_Q_reg[4] [21]),
        .O(\mul_reg_Q[3][23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][23]_i_5 
       (.I0(\mul_reg_Q_reg[3]1__0_n_102 ),
        .I1(\mul_reg_Q_reg[4] [20]),
        .O(\mul_reg_Q[3][23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][23]_i_6 
       (.I0(\mul_reg_Q_reg[3]1__0_n_103 ),
        .I1(\mul_reg_Q_reg[4] [19]),
        .O(\mul_reg_Q[3][23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][23]_i_7 
       (.I0(\mul_reg_Q_reg[3]1__0_n_104 ),
        .I1(\mul_reg_Q_reg[4] [18]),
        .O(\mul_reg_Q[3][23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][23]_i_8 
       (.I0(\mul_reg_Q_reg[3]1__0_n_105 ),
        .I1(\mul_reg_Q_reg[4] [17]),
        .O(\mul_reg_Q[3][23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][23]_i_9 
       (.I0(\mul_reg_Q_reg[3]1_n_89 ),
        .I1(\mul_reg_Q_reg[4] [16]),
        .O(\mul_reg_Q[3][23]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][31]_i_2 
       (.I0(\mul_reg_Q_reg[3]1__0_n_91 ),
        .I1(\mul_reg_Q_reg[4] [31]),
        .O(\mul_reg_Q[3][31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][31]_i_3 
       (.I0(\mul_reg_Q_reg[3]1__0_n_92 ),
        .I1(\mul_reg_Q_reg[4] [30]),
        .O(\mul_reg_Q[3][31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][31]_i_4 
       (.I0(\mul_reg_Q_reg[3]1__0_n_93 ),
        .I1(\mul_reg_Q_reg[4] [29]),
        .O(\mul_reg_Q[3][31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][31]_i_5 
       (.I0(\mul_reg_Q_reg[3]1__0_n_94 ),
        .I1(\mul_reg_Q_reg[4] [28]),
        .O(\mul_reg_Q[3][31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][31]_i_6 
       (.I0(\mul_reg_Q_reg[3]1__0_n_95 ),
        .I1(\mul_reg_Q_reg[4] [27]),
        .O(\mul_reg_Q[3][31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][31]_i_7 
       (.I0(\mul_reg_Q_reg[3]1__0_n_96 ),
        .I1(\mul_reg_Q_reg[4] [26]),
        .O(\mul_reg_Q[3][31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][31]_i_8 
       (.I0(\mul_reg_Q_reg[3]1__0_n_97 ),
        .I1(\mul_reg_Q_reg[4] [25]),
        .O(\mul_reg_Q[3][31]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][31]_i_9 
       (.I0(\mul_reg_Q_reg[3]1__0_n_98 ),
        .I1(\mul_reg_Q_reg[4] [24]),
        .O(\mul_reg_Q[3][31]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][39]_i_2 
       (.I0(\mul_reg_Q_reg[3]1__0_n_83 ),
        .I1(\mul_reg_Q_reg[4] [39]),
        .O(\mul_reg_Q[3][39]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][39]_i_3 
       (.I0(\mul_reg_Q_reg[3]1__0_n_84 ),
        .I1(\mul_reg_Q_reg[4] [38]),
        .O(\mul_reg_Q[3][39]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][39]_i_4 
       (.I0(\mul_reg_Q_reg[3]1__0_n_85 ),
        .I1(\mul_reg_Q_reg[4] [37]),
        .O(\mul_reg_Q[3][39]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][39]_i_5 
       (.I0(\mul_reg_Q_reg[3]1__0_n_86 ),
        .I1(\mul_reg_Q_reg[4] [36]),
        .O(\mul_reg_Q[3][39]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][39]_i_6 
       (.I0(\mul_reg_Q_reg[3]1__0_n_87 ),
        .I1(\mul_reg_Q_reg[4] [35]),
        .O(\mul_reg_Q[3][39]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][39]_i_7 
       (.I0(\mul_reg_Q_reg[3]1__0_n_88 ),
        .I1(\mul_reg_Q_reg[4] [34]),
        .O(\mul_reg_Q[3][39]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][39]_i_8 
       (.I0(\mul_reg_Q_reg[3]1__0_n_89 ),
        .I1(\mul_reg_Q_reg[4] [33]),
        .O(\mul_reg_Q[3][39]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][39]_i_9 
       (.I0(\mul_reg_Q_reg[3]1__0_n_90 ),
        .I1(\mul_reg_Q_reg[4] [32]),
        .O(\mul_reg_Q[3][39]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][47]_i_10 
       (.I0(\mul_reg_Q_reg[3]1__0_n_82 ),
        .I1(\mul_reg_Q_reg[4] [40]),
        .O(\mul_reg_Q[3][47]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_reg_Q[3][47]_i_2 
       (.I0(\mul_reg_Q_reg[4] [47]),
        .O(\mul_reg_Q[3][47]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][47]_i_3 
       (.I0(\mul_reg_Q_reg[4] [47]),
        .I1(\mul_reg_Q_reg[3]1__0_n_75 ),
        .O(\mul_reg_Q[3][47]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][47]_i_4 
       (.I0(\mul_reg_Q_reg[3]1__0_n_76 ),
        .I1(\mul_reg_Q_reg[4] [46]),
        .O(\mul_reg_Q[3][47]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][47]_i_5 
       (.I0(\mul_reg_Q_reg[3]1__0_n_77 ),
        .I1(\mul_reg_Q_reg[4] [45]),
        .O(\mul_reg_Q[3][47]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][47]_i_6 
       (.I0(\mul_reg_Q_reg[3]1__0_n_78 ),
        .I1(\mul_reg_Q_reg[4] [44]),
        .O(\mul_reg_Q[3][47]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][47]_i_7 
       (.I0(\mul_reg_Q_reg[3]1__0_n_79 ),
        .I1(\mul_reg_Q_reg[4] [43]),
        .O(\mul_reg_Q[3][47]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][47]_i_8 
       (.I0(\mul_reg_Q_reg[3]1__0_n_80 ),
        .I1(\mul_reg_Q_reg[4] [42]),
        .O(\mul_reg_Q[3][47]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][47]_i_9 
       (.I0(\mul_reg_Q_reg[3]1__0_n_81 ),
        .I1(\mul_reg_Q_reg[4] [41]),
        .O(\mul_reg_Q[3][47]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mul_reg_Q[3][51]_i_2 
       (.I0(\mul_reg_Q_reg[4] [50]),
        .I1(\mul_reg_Q_reg[4] [51]),
        .O(\mul_reg_Q[3][51]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mul_reg_Q[3][51]_i_3 
       (.I0(\mul_reg_Q_reg[4] [49]),
        .I1(\mul_reg_Q_reg[4] [50]),
        .O(\mul_reg_Q[3][51]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mul_reg_Q[3][51]_i_4 
       (.I0(\mul_reg_Q_reg[4] [48]),
        .I1(\mul_reg_Q_reg[4] [49]),
        .O(\mul_reg_Q[3][51]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mul_reg_Q[3][51]_i_5 
       (.I0(\mul_reg_Q_reg[4] [47]),
        .I1(\mul_reg_Q_reg[4] [48]),
        .O(\mul_reg_Q[3][51]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][7]_i_2 
       (.I0(\mul_reg_Q_reg[3]1_n_98 ),
        .I1(\mul_reg_Q_reg[4] [7]),
        .O(\mul_reg_Q[3][7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][7]_i_3 
       (.I0(\mul_reg_Q_reg[3]1_n_99 ),
        .I1(\mul_reg_Q_reg[4] [6]),
        .O(\mul_reg_Q[3][7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][7]_i_4 
       (.I0(\mul_reg_Q_reg[3]1_n_100 ),
        .I1(\mul_reg_Q_reg[4] [5]),
        .O(\mul_reg_Q[3][7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][7]_i_5 
       (.I0(\mul_reg_Q_reg[3]1_n_101 ),
        .I1(\mul_reg_Q_reg[4] [4]),
        .O(\mul_reg_Q[3][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][7]_i_6 
       (.I0(\mul_reg_Q_reg[3]1_n_102 ),
        .I1(\mul_reg_Q_reg[4] [3]),
        .O(\mul_reg_Q[3][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][7]_i_7 
       (.I0(\mul_reg_Q_reg[3]1_n_103 ),
        .I1(\mul_reg_Q_reg[4] [2]),
        .O(\mul_reg_Q[3][7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][7]_i_8 
       (.I0(\mul_reg_Q_reg[3]1_n_104 ),
        .I1(\mul_reg_Q_reg[4] [1]),
        .O(\mul_reg_Q[3][7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[3][7]_i_9 
       (.I0(\mul_reg_Q_reg[3]1_n_105 ),
        .I1(\mul_reg_Q_reg[4] [0]),
        .O(\mul_reg_Q[3][7]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][15]_i_2 
       (.I0(\mul_reg_Q_reg[7]1_n_90 ),
        .I1(\mul_reg_Q_reg[8] [15]),
        .O(\mul_reg_Q[7][15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][15]_i_3 
       (.I0(\mul_reg_Q_reg[7]1_n_91 ),
        .I1(\mul_reg_Q_reg[8] [14]),
        .O(\mul_reg_Q[7][15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][15]_i_4 
       (.I0(\mul_reg_Q_reg[7]1_n_92 ),
        .I1(\mul_reg_Q_reg[8] [13]),
        .O(\mul_reg_Q[7][15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][15]_i_5 
       (.I0(\mul_reg_Q_reg[7]1_n_93 ),
        .I1(\mul_reg_Q_reg[8] [12]),
        .O(\mul_reg_Q[7][15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][15]_i_6 
       (.I0(\mul_reg_Q_reg[7]1_n_94 ),
        .I1(\mul_reg_Q_reg[8] [11]),
        .O(\mul_reg_Q[7][15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][15]_i_7 
       (.I0(\mul_reg_Q_reg[7]1_n_95 ),
        .I1(\mul_reg_Q_reg[8] [10]),
        .O(\mul_reg_Q[7][15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][15]_i_8 
       (.I0(\mul_reg_Q_reg[7]1_n_96 ),
        .I1(\mul_reg_Q_reg[8] [9]),
        .O(\mul_reg_Q[7][15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][15]_i_9 
       (.I0(\mul_reg_Q_reg[7]1_n_97 ),
        .I1(\mul_reg_Q_reg[8] [8]),
        .O(\mul_reg_Q[7][15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][23]_i_2 
       (.I0(\mul_reg_Q_reg[7]1__0_n_99 ),
        .I1(\mul_reg_Q_reg[8] [23]),
        .O(\mul_reg_Q[7][23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][23]_i_3 
       (.I0(\mul_reg_Q_reg[7]1__0_n_100 ),
        .I1(\mul_reg_Q_reg[8] [22]),
        .O(\mul_reg_Q[7][23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][23]_i_4 
       (.I0(\mul_reg_Q_reg[7]1__0_n_101 ),
        .I1(\mul_reg_Q_reg[8] [21]),
        .O(\mul_reg_Q[7][23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][23]_i_5 
       (.I0(\mul_reg_Q_reg[7]1__0_n_102 ),
        .I1(\mul_reg_Q_reg[8] [20]),
        .O(\mul_reg_Q[7][23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][23]_i_6 
       (.I0(\mul_reg_Q_reg[7]1__0_n_103 ),
        .I1(\mul_reg_Q_reg[8] [19]),
        .O(\mul_reg_Q[7][23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][23]_i_7 
       (.I0(\mul_reg_Q_reg[7]1__0_n_104 ),
        .I1(\mul_reg_Q_reg[8] [18]),
        .O(\mul_reg_Q[7][23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][23]_i_8 
       (.I0(\mul_reg_Q_reg[7]1__0_n_105 ),
        .I1(\mul_reg_Q_reg[8] [17]),
        .O(\mul_reg_Q[7][23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][23]_i_9 
       (.I0(\mul_reg_Q_reg[7]1_n_89 ),
        .I1(\mul_reg_Q_reg[8] [16]),
        .O(\mul_reg_Q[7][23]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][31]_i_2 
       (.I0(\mul_reg_Q_reg[7]1__0_n_91 ),
        .I1(\mul_reg_Q_reg[8] [31]),
        .O(\mul_reg_Q[7][31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][31]_i_3 
       (.I0(\mul_reg_Q_reg[7]1__0_n_92 ),
        .I1(\mul_reg_Q_reg[8] [30]),
        .O(\mul_reg_Q[7][31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][31]_i_4 
       (.I0(\mul_reg_Q_reg[7]1__0_n_93 ),
        .I1(\mul_reg_Q_reg[8] [29]),
        .O(\mul_reg_Q[7][31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][31]_i_5 
       (.I0(\mul_reg_Q_reg[7]1__0_n_94 ),
        .I1(\mul_reg_Q_reg[8] [28]),
        .O(\mul_reg_Q[7][31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][31]_i_6 
       (.I0(\mul_reg_Q_reg[7]1__0_n_95 ),
        .I1(\mul_reg_Q_reg[8] [27]),
        .O(\mul_reg_Q[7][31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][31]_i_7 
       (.I0(\mul_reg_Q_reg[7]1__0_n_96 ),
        .I1(\mul_reg_Q_reg[8] [26]),
        .O(\mul_reg_Q[7][31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][31]_i_8 
       (.I0(\mul_reg_Q_reg[7]1__0_n_97 ),
        .I1(\mul_reg_Q_reg[8] [25]),
        .O(\mul_reg_Q[7][31]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][31]_i_9 
       (.I0(\mul_reg_Q_reg[7]1__0_n_98 ),
        .I1(\mul_reg_Q_reg[8] [24]),
        .O(\mul_reg_Q[7][31]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][39]_i_2 
       (.I0(\mul_reg_Q_reg[7]1__0_n_83 ),
        .I1(\mul_reg_Q_reg[8] [39]),
        .O(\mul_reg_Q[7][39]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][39]_i_3 
       (.I0(\mul_reg_Q_reg[7]1__0_n_84 ),
        .I1(\mul_reg_Q_reg[8] [38]),
        .O(\mul_reg_Q[7][39]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][39]_i_4 
       (.I0(\mul_reg_Q_reg[7]1__0_n_85 ),
        .I1(\mul_reg_Q_reg[8] [37]),
        .O(\mul_reg_Q[7][39]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][39]_i_5 
       (.I0(\mul_reg_Q_reg[7]1__0_n_86 ),
        .I1(\mul_reg_Q_reg[8] [36]),
        .O(\mul_reg_Q[7][39]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][39]_i_6 
       (.I0(\mul_reg_Q_reg[7]1__0_n_87 ),
        .I1(\mul_reg_Q_reg[8] [35]),
        .O(\mul_reg_Q[7][39]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][39]_i_7 
       (.I0(\mul_reg_Q_reg[7]1__0_n_88 ),
        .I1(\mul_reg_Q_reg[8] [34]),
        .O(\mul_reg_Q[7][39]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][39]_i_8 
       (.I0(\mul_reg_Q_reg[7]1__0_n_89 ),
        .I1(\mul_reg_Q_reg[8] [33]),
        .O(\mul_reg_Q[7][39]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][39]_i_9 
       (.I0(\mul_reg_Q_reg[7]1__0_n_90 ),
        .I1(\mul_reg_Q_reg[8] [32]),
        .O(\mul_reg_Q[7][39]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][47]_i_10 
       (.I0(\mul_reg_Q_reg[7]1__0_n_82 ),
        .I1(\mul_reg_Q_reg[8] [40]),
        .O(\mul_reg_Q[7][47]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_reg_Q[7][47]_i_2 
       (.I0(\mul_reg_Q_reg[8] [47]),
        .O(\mul_reg_Q[7][47]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][47]_i_3 
       (.I0(\mul_reg_Q_reg[8] [47]),
        .I1(\mul_reg_Q_reg[7]1__0_n_75 ),
        .O(\mul_reg_Q[7][47]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][47]_i_4 
       (.I0(\mul_reg_Q_reg[7]1__0_n_76 ),
        .I1(\mul_reg_Q_reg[8] [46]),
        .O(\mul_reg_Q[7][47]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][47]_i_5 
       (.I0(\mul_reg_Q_reg[7]1__0_n_77 ),
        .I1(\mul_reg_Q_reg[8] [45]),
        .O(\mul_reg_Q[7][47]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][47]_i_6 
       (.I0(\mul_reg_Q_reg[7]1__0_n_78 ),
        .I1(\mul_reg_Q_reg[8] [44]),
        .O(\mul_reg_Q[7][47]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][47]_i_7 
       (.I0(\mul_reg_Q_reg[7]1__0_n_79 ),
        .I1(\mul_reg_Q_reg[8] [43]),
        .O(\mul_reg_Q[7][47]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][47]_i_8 
       (.I0(\mul_reg_Q_reg[7]1__0_n_80 ),
        .I1(\mul_reg_Q_reg[8] [42]),
        .O(\mul_reg_Q[7][47]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][47]_i_9 
       (.I0(\mul_reg_Q_reg[7]1__0_n_81 ),
        .I1(\mul_reg_Q_reg[8] [41]),
        .O(\mul_reg_Q[7][47]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mul_reg_Q[7][51]_i_2 
       (.I0(\mul_reg_Q_reg[8] [50]),
        .I1(\mul_reg_Q_reg[8] [51]),
        .O(\mul_reg_Q[7][51]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mul_reg_Q[7][51]_i_3 
       (.I0(\mul_reg_Q_reg[8] [49]),
        .I1(\mul_reg_Q_reg[8] [50]),
        .O(\mul_reg_Q[7][51]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mul_reg_Q[7][51]_i_4 
       (.I0(\mul_reg_Q_reg[8] [48]),
        .I1(\mul_reg_Q_reg[8] [49]),
        .O(\mul_reg_Q[7][51]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mul_reg_Q[7][51]_i_5 
       (.I0(\mul_reg_Q_reg[8] [47]),
        .I1(\mul_reg_Q_reg[8] [48]),
        .O(\mul_reg_Q[7][51]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][7]_i_2 
       (.I0(\mul_reg_Q_reg[7]1_n_98 ),
        .I1(\mul_reg_Q_reg[8] [7]),
        .O(\mul_reg_Q[7][7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][7]_i_3 
       (.I0(\mul_reg_Q_reg[7]1_n_99 ),
        .I1(\mul_reg_Q_reg[8] [6]),
        .O(\mul_reg_Q[7][7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][7]_i_4 
       (.I0(\mul_reg_Q_reg[7]1_n_100 ),
        .I1(\mul_reg_Q_reg[8] [5]),
        .O(\mul_reg_Q[7][7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][7]_i_5 
       (.I0(\mul_reg_Q_reg[7]1_n_101 ),
        .I1(\mul_reg_Q_reg[8] [4]),
        .O(\mul_reg_Q[7][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][7]_i_6 
       (.I0(\mul_reg_Q_reg[7]1_n_102 ),
        .I1(\mul_reg_Q_reg[8] [3]),
        .O(\mul_reg_Q[7][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][7]_i_7 
       (.I0(\mul_reg_Q_reg[7]1_n_103 ),
        .I1(\mul_reg_Q_reg[8] [2]),
        .O(\mul_reg_Q[7][7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][7]_i_8 
       (.I0(\mul_reg_Q_reg[7]1_n_104 ),
        .I1(\mul_reg_Q_reg[8] [1]),
        .O(\mul_reg_Q[7][7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_reg_Q[7][7]_i_9 
       (.I0(\mul_reg_Q_reg[7]1_n_105 ),
        .I1(\mul_reg_Q_reg[8] [0]),
        .O(\mul_reg_Q[7][7]_i_9_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][0]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][0] ),
        .Q(\mul_reg_Q_reg[0][0]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][10]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][10]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][10] ),
        .Q(\mul_reg_Q_reg[0][10]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][11]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][11]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][11] ),
        .Q(\mul_reg_Q_reg[0][11]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][12]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][12]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][12] ),
        .Q(\mul_reg_Q_reg[0][12]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][13]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][13]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][13] ),
        .Q(\mul_reg_Q_reg[0][13]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][14]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][14]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][14] ),
        .Q(\mul_reg_Q_reg[0][14]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][15]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][15]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][15] ),
        .Q(\mul_reg_Q_reg[0][15]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][16]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][16]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][16] ),
        .Q(\mul_reg_Q_reg[0][16]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][17]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][17]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][17] ),
        .Q(\mul_reg_Q_reg[0][17]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][18]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][18]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][18] ),
        .Q(\mul_reg_Q_reg[0][18]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][19]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][19]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][19] ),
        .Q(\mul_reg_Q_reg[0][19]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][1]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][1]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][1] ),
        .Q(\mul_reg_Q_reg[0][1]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][20]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][20]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][20] ),
        .Q(\mul_reg_Q_reg[0][20]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][21]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][21]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][21] ),
        .Q(\mul_reg_Q_reg[0][21]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][22]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][22]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][22] ),
        .Q(\mul_reg_Q_reg[0][22]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][23]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][23]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][23] ),
        .Q(\mul_reg_Q_reg[0][23]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][24]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][24]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][24] ),
        .Q(\mul_reg_Q_reg[0][24]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][25]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][25]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][25] ),
        .Q(\mul_reg_Q_reg[0][25]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][26]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][26]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][26] ),
        .Q(\mul_reg_Q_reg[0][26]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][27]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][27]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][27] ),
        .Q(\mul_reg_Q_reg[0][27]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][28]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][28]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][28] ),
        .Q(\mul_reg_Q_reg[0][28]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][29]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][29]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][29] ),
        .Q(\mul_reg_Q_reg[0][29]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][2]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][2] ),
        .Q(\mul_reg_Q_reg[0][2]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][30]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][30]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][30] ),
        .Q(\mul_reg_Q_reg[0][30]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][31]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][31]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][31] ),
        .Q(\mul_reg_Q_reg[0][31]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][32]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][32]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][32] ),
        .Q(\mul_reg_Q_reg[0][32]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][33]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][33]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][33] ),
        .Q(\mul_reg_Q_reg[0][33]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][34]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][34]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][34] ),
        .Q(\mul_reg_Q_reg[0][34]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][35]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][35]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][35] ),
        .Q(\mul_reg_Q_reg[0][35]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][36]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][36]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][36] ),
        .Q(\mul_reg_Q_reg[0][36]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][37]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][37]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][37] ),
        .Q(\mul_reg_Q_reg[0][37]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][38]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][38]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][38] ),
        .Q(\mul_reg_Q_reg[0][38]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][39]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][39]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][39] ),
        .Q(\mul_reg_Q_reg[0][39]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][3] ),
        .Q(\mul_reg_Q_reg[0][3]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][40]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][40]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][40] ),
        .Q(\mul_reg_Q_reg[0][40]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][41]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][41]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][41] ),
        .Q(\mul_reg_Q_reg[0][41]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][42]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][42]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][42] ),
        .Q(\mul_reg_Q_reg[0][42]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][43]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][43]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][43] ),
        .Q(\mul_reg_Q_reg[0][43]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][44]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][44]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][44] ),
        .Q(\mul_reg_Q_reg[0][44]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][45]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][45]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][45] ),
        .Q(\mul_reg_Q_reg[0][45]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][46]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][46]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][46] ),
        .Q(\mul_reg_Q_reg[0][46]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][47]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][47]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][47] ),
        .Q(\mul_reg_Q_reg[0][47]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][48]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][48]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][48] ),
        .Q(\mul_reg_Q_reg[0][48]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][49]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][49]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][49] ),
        .Q(\mul_reg_Q_reg[0][49]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][4]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][4]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][4] ),
        .Q(\mul_reg_Q_reg[0][4]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][50]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][50]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][50] ),
        .Q(\mul_reg_Q_reg[0][50]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][51]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][51]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][51] ),
        .Q(\mul_reg_Q_reg[0][51]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][5]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][5]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][5] ),
        .Q(\mul_reg_Q_reg[0][5]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][6]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][6]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][6] ),
        .Q(\mul_reg_Q_reg[0][6]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][7]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][7]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][7] ),
        .Q(\mul_reg_Q_reg[0][7]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][8]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][8]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][8] ),
        .Q(\mul_reg_Q_reg[0][8]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][9]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][9]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[3][9] ),
        .Q(\mul_reg_Q_reg[0][9]_srl3_n_0 ));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \mul_reg_Q_reg[11]1 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,input_Q[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_Q_reg[11]1_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\coeff_reg_reg[0] [11],1'b0,\coeff_reg_reg[2] [12:11],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [10],\coeff_reg_reg[2] [12:11],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [10],\coeff_reg_reg[2] [12:11],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [10],\coeff_reg_reg[2] [0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_Q_reg[11]1_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_Q_reg[11]1_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_Q_reg[11]1_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(\mul_reg_I_reg[15]0_i_1_n_0 ),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_Q_reg[11]1_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_Q_reg[11]1_OVERFLOW_UNCONNECTED ),
        .P({\mul_reg_Q_reg[11]1_n_58 ,\mul_reg_Q_reg[11]1_n_59 ,\mul_reg_Q_reg[11]1_n_60 ,\mul_reg_Q_reg[11]1_n_61 ,\mul_reg_Q_reg[11]1_n_62 ,\mul_reg_Q_reg[11]1_n_63 ,\mul_reg_Q_reg[11]1_n_64 ,\mul_reg_Q_reg[11]1_n_65 ,\mul_reg_Q_reg[11]1_n_66 ,\mul_reg_Q_reg[11]1_n_67 ,\mul_reg_Q_reg[11]1_n_68 ,\mul_reg_Q_reg[11]1_n_69 ,\mul_reg_Q_reg[11]1_n_70 ,\mul_reg_Q_reg[11]1_n_71 ,\mul_reg_Q_reg[11]1_n_72 ,\mul_reg_Q_reg[11]1_n_73 ,\mul_reg_Q_reg[11]1_n_74 ,\mul_reg_Q_reg[11]1_n_75 ,\mul_reg_Q_reg[11]1_n_76 ,\mul_reg_Q_reg[11]1_n_77 ,\mul_reg_Q_reg[11]1_n_78 ,\mul_reg_Q_reg[11]1_n_79 ,\mul_reg_Q_reg[11]1_n_80 ,\mul_reg_Q_reg[11]1_n_81 ,\mul_reg_Q_reg[11]1_n_82 ,\mul_reg_Q_reg[11]1_n_83 ,\mul_reg_Q_reg[11]1_n_84 ,\mul_reg_Q_reg[11]1_n_85 ,\mul_reg_Q_reg[11]1_n_86 ,\mul_reg_Q_reg[11]1_n_87 ,\mul_reg_Q_reg[11]1_n_88 ,\mul_reg_Q_reg[11]1_n_89 ,\mul_reg_Q_reg[11]1_n_90 ,\mul_reg_Q_reg[11]1_n_91 ,\mul_reg_Q_reg[11]1_n_92 ,\mul_reg_Q_reg[11]1_n_93 ,\mul_reg_Q_reg[11]1_n_94 ,\mul_reg_Q_reg[11]1_n_95 ,\mul_reg_Q_reg[11]1_n_96 ,\mul_reg_Q_reg[11]1_n_97 ,\mul_reg_Q_reg[11]1_n_98 ,\mul_reg_Q_reg[11]1_n_99 ,\mul_reg_Q_reg[11]1_n_100 ,\mul_reg_Q_reg[11]1_n_101 ,\mul_reg_Q_reg[11]1_n_102 ,\mul_reg_Q_reg[11]1_n_103 ,\mul_reg_Q_reg[11]1_n_104 ,\mul_reg_Q_reg[11]1_n_105 }),
        .PATTERNBDETECT(\NLW_mul_reg_Q_reg[11]1_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_Q_reg[11]1_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({\mul_reg_Q_reg[11]1_n_106 ,\mul_reg_Q_reg[11]1_n_107 ,\mul_reg_Q_reg[11]1_n_108 ,\mul_reg_Q_reg[11]1_n_109 ,\mul_reg_Q_reg[11]1_n_110 ,\mul_reg_Q_reg[11]1_n_111 ,\mul_reg_Q_reg[11]1_n_112 ,\mul_reg_Q_reg[11]1_n_113 ,\mul_reg_Q_reg[11]1_n_114 ,\mul_reg_Q_reg[11]1_n_115 ,\mul_reg_Q_reg[11]1_n_116 ,\mul_reg_Q_reg[11]1_n_117 ,\mul_reg_Q_reg[11]1_n_118 ,\mul_reg_Q_reg[11]1_n_119 ,\mul_reg_Q_reg[11]1_n_120 ,\mul_reg_Q_reg[11]1_n_121 ,\mul_reg_Q_reg[11]1_n_122 ,\mul_reg_Q_reg[11]1_n_123 ,\mul_reg_Q_reg[11]1_n_124 ,\mul_reg_Q_reg[11]1_n_125 ,\mul_reg_Q_reg[11]1_n_126 ,\mul_reg_Q_reg[11]1_n_127 ,\mul_reg_Q_reg[11]1_n_128 ,\mul_reg_Q_reg[11]1_n_129 ,\mul_reg_Q_reg[11]1_n_130 ,\mul_reg_Q_reg[11]1_n_131 ,\mul_reg_Q_reg[11]1_n_132 ,\mul_reg_Q_reg[11]1_n_133 ,\mul_reg_Q_reg[11]1_n_134 ,\mul_reg_Q_reg[11]1_n_135 ,\mul_reg_Q_reg[11]1_n_136 ,\mul_reg_Q_reg[11]1_n_137 ,\mul_reg_Q_reg[11]1_n_138 ,\mul_reg_Q_reg[11]1_n_139 ,\mul_reg_Q_reg[11]1_n_140 ,\mul_reg_Q_reg[11]1_n_141 ,\mul_reg_Q_reg[11]1_n_142 ,\mul_reg_Q_reg[11]1_n_143 ,\mul_reg_Q_reg[11]1_n_144 ,\mul_reg_Q_reg[11]1_n_145 ,\mul_reg_Q_reg[11]1_n_146 ,\mul_reg_Q_reg[11]1_n_147 ,\mul_reg_Q_reg[11]1_n_148 ,\mul_reg_Q_reg[11]1_n_149 ,\mul_reg_Q_reg[11]1_n_150 ,\mul_reg_Q_reg[11]1_n_151 ,\mul_reg_Q_reg[11]1_n_152 ,\mul_reg_Q_reg[11]1_n_153 }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_mul_reg_Q_reg[11]1_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_mul_reg_Q_reg[11]1_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \mul_reg_Q_reg[11]1__0 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\coeff_reg_reg[0] [11],1'b0,\coeff_reg_reg[2] [12:11],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [10],\coeff_reg_reg[2] [12:11],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [10],\coeff_reg_reg[2] [12:11],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [10],\coeff_reg_reg[2] [0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_Q_reg[11]1__0_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({input_Q[31],input_Q[31],input_Q[31],input_Q[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_Q_reg[11]1__0_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_Q_reg[11]1__0_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_Q_reg[11]1__0_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(\mul_reg_I_reg[15]0_i_1_n_0 ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_Q_reg[11]1__0_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_Q_reg[11]1__0_OVERFLOW_UNCONNECTED ),
        .P({\mul_reg_Q_reg[11]1__0_n_58 ,\mul_reg_Q_reg[11]1__0_n_59 ,\mul_reg_Q_reg[11]1__0_n_60 ,\mul_reg_Q_reg[11]1__0_n_61 ,\mul_reg_Q_reg[11]1__0_n_62 ,\mul_reg_Q_reg[11]1__0_n_63 ,\mul_reg_Q_reg[11]1__0_n_64 ,\mul_reg_Q_reg[11]1__0_n_65 ,\mul_reg_Q_reg[11]1__0_n_66 ,\mul_reg_Q_reg[11]1__0_n_67 ,\mul_reg_Q_reg[11]1__0_n_68 ,\mul_reg_Q_reg[11]1__0_n_69 ,\mul_reg_Q_reg[11]1__0_n_70 ,\mul_reg_Q_reg[11]1__0_n_71 ,\mul_reg_Q_reg[11]1__0_n_72 ,\mul_reg_Q_reg[11]1__0_n_73 ,\mul_reg_Q_reg[11]1__0_n_74 ,\mul_reg_Q_reg[11]1__0_n_75 ,\mul_reg_Q_reg[11]1__0_n_76 ,\mul_reg_Q_reg[11]1__0_n_77 ,\mul_reg_Q_reg[11]1__0_n_78 ,\mul_reg_Q_reg[11]1__0_n_79 ,\mul_reg_Q_reg[11]1__0_n_80 ,\mul_reg_Q_reg[11]1__0_n_81 ,\mul_reg_Q_reg[11]1__0_n_82 ,\mul_reg_Q_reg[11]1__0_n_83 ,\mul_reg_Q_reg[11]1__0_n_84 ,\mul_reg_Q_reg[11]1__0_n_85 ,\mul_reg_Q_reg[11]1__0_n_86 ,\mul_reg_Q_reg[11]1__0_n_87 ,\mul_reg_Q_reg[11]1__0_n_88 ,\mul_reg_Q_reg[11]1__0_n_89 ,\mul_reg_Q_reg[11]1__0_n_90 ,\mul_reg_Q_reg[11]1__0_n_91 ,\mul_reg_Q_reg[11]1__0_n_92 ,\mul_reg_Q_reg[11]1__0_n_93 ,\mul_reg_Q_reg[11]1__0_n_94 ,\mul_reg_Q_reg[11]1__0_n_95 ,\mul_reg_Q_reg[11]1__0_n_96 ,\mul_reg_Q_reg[11]1__0_n_97 ,\mul_reg_Q_reg[11]1__0_n_98 ,\mul_reg_Q_reg[11]1__0_n_99 ,\mul_reg_Q_reg[11]1__0_n_100 ,\mul_reg_Q_reg[11]1__0_n_101 ,\mul_reg_Q_reg[11]1__0_n_102 ,\mul_reg_Q_reg[11]1__0_n_103 ,\mul_reg_Q_reg[11]1__0_n_104 ,\mul_reg_Q_reg[11]1__0_n_105 }),
        .PATTERNBDETECT(\NLW_mul_reg_Q_reg[11]1__0_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_Q_reg[11]1__0_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\mul_reg_Q_reg[11]1_n_106 ,\mul_reg_Q_reg[11]1_n_107 ,\mul_reg_Q_reg[11]1_n_108 ,\mul_reg_Q_reg[11]1_n_109 ,\mul_reg_Q_reg[11]1_n_110 ,\mul_reg_Q_reg[11]1_n_111 ,\mul_reg_Q_reg[11]1_n_112 ,\mul_reg_Q_reg[11]1_n_113 ,\mul_reg_Q_reg[11]1_n_114 ,\mul_reg_Q_reg[11]1_n_115 ,\mul_reg_Q_reg[11]1_n_116 ,\mul_reg_Q_reg[11]1_n_117 ,\mul_reg_Q_reg[11]1_n_118 ,\mul_reg_Q_reg[11]1_n_119 ,\mul_reg_Q_reg[11]1_n_120 ,\mul_reg_Q_reg[11]1_n_121 ,\mul_reg_Q_reg[11]1_n_122 ,\mul_reg_Q_reg[11]1_n_123 ,\mul_reg_Q_reg[11]1_n_124 ,\mul_reg_Q_reg[11]1_n_125 ,\mul_reg_Q_reg[11]1_n_126 ,\mul_reg_Q_reg[11]1_n_127 ,\mul_reg_Q_reg[11]1_n_128 ,\mul_reg_Q_reg[11]1_n_129 ,\mul_reg_Q_reg[11]1_n_130 ,\mul_reg_Q_reg[11]1_n_131 ,\mul_reg_Q_reg[11]1_n_132 ,\mul_reg_Q_reg[11]1_n_133 ,\mul_reg_Q_reg[11]1_n_134 ,\mul_reg_Q_reg[11]1_n_135 ,\mul_reg_Q_reg[11]1_n_136 ,\mul_reg_Q_reg[11]1_n_137 ,\mul_reg_Q_reg[11]1_n_138 ,\mul_reg_Q_reg[11]1_n_139 ,\mul_reg_Q_reg[11]1_n_140 ,\mul_reg_Q_reg[11]1_n_141 ,\mul_reg_Q_reg[11]1_n_142 ,\mul_reg_Q_reg[11]1_n_143 ,\mul_reg_Q_reg[11]1_n_144 ,\mul_reg_Q_reg[11]1_n_145 ,\mul_reg_Q_reg[11]1_n_146 ,\mul_reg_Q_reg[11]1_n_147 ,\mul_reg_Q_reg[11]1_n_148 ,\mul_reg_Q_reg[11]1_n_149 ,\mul_reg_Q_reg[11]1_n_150 ,\mul_reg_Q_reg[11]1_n_151 ,\mul_reg_Q_reg[11]1_n_152 ,\mul_reg_Q_reg[11]1_n_153 }),
        .PCOUT(\NLW_mul_reg_Q_reg[11]1__0_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_mul_reg_Q_reg[11]1__0_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_mul_reg_Q_reg[11]1__0_XOROUT_UNCONNECTED [7:0]));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][10] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][11]_i_1_n_9 ),
        .Q(\mul_reg_Q_reg_n_0_[11][10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][11] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][11]_i_1_n_8 ),
        .Q(\mul_reg_Q_reg_n_0_[11][11] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_Q_reg[11][11]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\mul_reg_Q_reg[11][11]_i_1_n_0 ,\mul_reg_Q_reg[11][11]_i_1_n_1 ,\mul_reg_Q_reg[11][11]_i_1_n_2 ,\mul_reg_Q_reg[11][11]_i_1_n_3 ,\mul_reg_Q_reg[11][11]_i_1_n_4 ,\mul_reg_Q_reg[11][11]_i_1_n_5 ,\mul_reg_Q_reg[11][11]_i_1_n_6 ,\mul_reg_Q_reg[11][11]_i_1_n_7 }),
        .DI({\mul_reg_Q_reg[11]1_n_94 ,\mul_reg_Q_reg[11]1_n_95 ,\mul_reg_Q_reg[11]1_n_96 ,\mul_reg_Q_reg[11]1_n_97 ,\mul_reg_Q_reg[11]1_n_98 ,\mul_reg_Q_reg[11]1_n_99 ,\mul_reg_Q_reg[11]1_n_100 ,\mul_reg_Q_reg[11]1_n_101 }),
        .O({\mul_reg_Q_reg[11][11]_i_1_n_8 ,\mul_reg_Q_reg[11][11]_i_1_n_9 ,\mul_reg_Q_reg[11][11]_i_1_n_10 ,\mul_reg_Q_reg[11][11]_i_1_n_11 ,\mul_reg_Q_reg[11][11]_i_1_n_12 ,\mul_reg_Q_reg[11][11]_i_1_n_13 ,\mul_reg_Q_reg[11][11]_i_1_n_14 ,\mul_reg_Q_reg[11][11]_i_1_n_15 }),
        .S({\mul_reg_Q[11][11]_i_2_n_0 ,\mul_reg_Q[11][11]_i_3_n_0 ,\mul_reg_Q[11][11]_i_4_n_0 ,\mul_reg_Q[11][11]_i_5_n_0 ,\mul_reg_Q[11][11]_i_6_n_0 ,\mul_reg_Q[11][11]_i_7_n_0 ,\mul_reg_Q[11][11]_i_8_n_0 ,\mul_reg_Q[11][11]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][12] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][19]_i_1_n_15 ),
        .Q(\mul_reg_Q_reg_n_0_[11][12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][13] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][19]_i_1_n_14 ),
        .Q(\mul_reg_Q_reg_n_0_[11][13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][14] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][19]_i_1_n_13 ),
        .Q(\mul_reg_Q_reg_n_0_[11][14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][15] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][19]_i_1_n_12 ),
        .Q(\mul_reg_Q_reg_n_0_[11][15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][16] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][19]_i_1_n_11 ),
        .Q(\mul_reg_Q_reg_n_0_[11][16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][17] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][19]_i_1_n_10 ),
        .Q(\mul_reg_Q_reg_n_0_[11][17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][18] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][19]_i_1_n_9 ),
        .Q(\mul_reg_Q_reg_n_0_[11][18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][19] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][19]_i_1_n_8 ),
        .Q(\mul_reg_Q_reg_n_0_[11][19] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_Q_reg[11][19]_i_1 
       (.CI(\mul_reg_Q_reg[11][11]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_Q_reg[11][19]_i_1_n_0 ,\mul_reg_Q_reg[11][19]_i_1_n_1 ,\mul_reg_Q_reg[11][19]_i_1_n_2 ,\mul_reg_Q_reg[11][19]_i_1_n_3 ,\mul_reg_Q_reg[11][19]_i_1_n_4 ,\mul_reg_Q_reg[11][19]_i_1_n_5 ,\mul_reg_Q_reg[11][19]_i_1_n_6 ,\mul_reg_Q_reg[11][19]_i_1_n_7 }),
        .DI({\mul_reg_Q_reg[11]1__0_n_103 ,\mul_reg_Q_reg[11]1__0_n_104 ,\mul_reg_Q_reg[11]1__0_n_105 ,\mul_reg_Q_reg[11]1_n_89 ,\mul_reg_Q_reg[11]1_n_90 ,\mul_reg_Q_reg[11]1_n_91 ,\mul_reg_Q_reg[11]1_n_92 ,\mul_reg_Q_reg[11]1_n_93 }),
        .O({\mul_reg_Q_reg[11][19]_i_1_n_8 ,\mul_reg_Q_reg[11][19]_i_1_n_9 ,\mul_reg_Q_reg[11][19]_i_1_n_10 ,\mul_reg_Q_reg[11][19]_i_1_n_11 ,\mul_reg_Q_reg[11][19]_i_1_n_12 ,\mul_reg_Q_reg[11][19]_i_1_n_13 ,\mul_reg_Q_reg[11][19]_i_1_n_14 ,\mul_reg_Q_reg[11][19]_i_1_n_15 }),
        .S({\mul_reg_Q[11][19]_i_2_n_0 ,\mul_reg_Q[11][19]_i_3_n_0 ,\mul_reg_Q[11][19]_i_4_n_0 ,\mul_reg_Q[11][19]_i_5_n_0 ,\mul_reg_Q[11][19]_i_6_n_0 ,\mul_reg_Q[11][19]_i_7_n_0 ,\mul_reg_Q[11][19]_i_8_n_0 ,\mul_reg_Q[11][19]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][20] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][27]_i_1_n_15 ),
        .Q(\mul_reg_Q_reg_n_0_[11][20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][21] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][27]_i_1_n_14 ),
        .Q(\mul_reg_Q_reg_n_0_[11][21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][22] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][27]_i_1_n_13 ),
        .Q(\mul_reg_Q_reg_n_0_[11][22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][23] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][27]_i_1_n_12 ),
        .Q(\mul_reg_Q_reg_n_0_[11][23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][24] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][27]_i_1_n_11 ),
        .Q(\mul_reg_Q_reg_n_0_[11][24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][25] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][27]_i_1_n_10 ),
        .Q(\mul_reg_Q_reg_n_0_[11][25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][26] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][27]_i_1_n_9 ),
        .Q(\mul_reg_Q_reg_n_0_[11][26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][27] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][27]_i_1_n_8 ),
        .Q(\mul_reg_Q_reg_n_0_[11][27] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_Q_reg[11][27]_i_1 
       (.CI(\mul_reg_Q_reg[11][19]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_Q_reg[11][27]_i_1_n_0 ,\mul_reg_Q_reg[11][27]_i_1_n_1 ,\mul_reg_Q_reg[11][27]_i_1_n_2 ,\mul_reg_Q_reg[11][27]_i_1_n_3 ,\mul_reg_Q_reg[11][27]_i_1_n_4 ,\mul_reg_Q_reg[11][27]_i_1_n_5 ,\mul_reg_Q_reg[11][27]_i_1_n_6 ,\mul_reg_Q_reg[11][27]_i_1_n_7 }),
        .DI({\mul_reg_Q_reg[11]1__0_n_95 ,\mul_reg_Q_reg[11]1__0_n_96 ,\mul_reg_Q_reg[11]1__0_n_97 ,\mul_reg_Q_reg[11]1__0_n_98 ,\mul_reg_Q_reg[11]1__0_n_99 ,\mul_reg_Q_reg[11]1__0_n_100 ,\mul_reg_Q_reg[11]1__0_n_101 ,\mul_reg_Q_reg[11]1__0_n_102 }),
        .O({\mul_reg_Q_reg[11][27]_i_1_n_8 ,\mul_reg_Q_reg[11][27]_i_1_n_9 ,\mul_reg_Q_reg[11][27]_i_1_n_10 ,\mul_reg_Q_reg[11][27]_i_1_n_11 ,\mul_reg_Q_reg[11][27]_i_1_n_12 ,\mul_reg_Q_reg[11][27]_i_1_n_13 ,\mul_reg_Q_reg[11][27]_i_1_n_14 ,\mul_reg_Q_reg[11][27]_i_1_n_15 }),
        .S({\mul_reg_Q[11][27]_i_2_n_0 ,\mul_reg_Q[11][27]_i_3_n_0 ,\mul_reg_Q[11][27]_i_4_n_0 ,\mul_reg_Q[11][27]_i_5_n_0 ,\mul_reg_Q[11][27]_i_6_n_0 ,\mul_reg_Q[11][27]_i_7_n_0 ,\mul_reg_Q[11][27]_i_8_n_0 ,\mul_reg_Q[11][27]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][28] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][35]_i_1_n_15 ),
        .Q(\mul_reg_Q_reg_n_0_[11][28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][29] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][35]_i_1_n_14 ),
        .Q(\mul_reg_Q_reg_n_0_[11][29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][30] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][35]_i_1_n_13 ),
        .Q(\mul_reg_Q_reg_n_0_[11][30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][31] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][35]_i_1_n_12 ),
        .Q(\mul_reg_Q_reg_n_0_[11][31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][32] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][35]_i_1_n_11 ),
        .Q(\mul_reg_Q_reg_n_0_[11][32] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][33] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][35]_i_1_n_10 ),
        .Q(\mul_reg_Q_reg_n_0_[11][33] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][34] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][35]_i_1_n_9 ),
        .Q(\mul_reg_Q_reg_n_0_[11][34] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][35] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][35]_i_1_n_8 ),
        .Q(\mul_reg_Q_reg_n_0_[11][35] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_Q_reg[11][35]_i_1 
       (.CI(\mul_reg_Q_reg[11][27]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_Q_reg[11][35]_i_1_n_0 ,\mul_reg_Q_reg[11][35]_i_1_n_1 ,\mul_reg_Q_reg[11][35]_i_1_n_2 ,\mul_reg_Q_reg[11][35]_i_1_n_3 ,\mul_reg_Q_reg[11][35]_i_1_n_4 ,\mul_reg_Q_reg[11][35]_i_1_n_5 ,\mul_reg_Q_reg[11][35]_i_1_n_6 ,\mul_reg_Q_reg[11][35]_i_1_n_7 }),
        .DI({\mul_reg_Q_reg[11]1__0_n_87 ,\mul_reg_Q_reg[11]1__0_n_88 ,\mul_reg_Q_reg[11]1__0_n_89 ,\mul_reg_Q_reg[11]1__0_n_90 ,\mul_reg_Q_reg[11]1__0_n_91 ,\mul_reg_Q_reg[11]1__0_n_92 ,\mul_reg_Q_reg[11]1__0_n_93 ,\mul_reg_Q_reg[11]1__0_n_94 }),
        .O({\mul_reg_Q_reg[11][35]_i_1_n_8 ,\mul_reg_Q_reg[11][35]_i_1_n_9 ,\mul_reg_Q_reg[11][35]_i_1_n_10 ,\mul_reg_Q_reg[11][35]_i_1_n_11 ,\mul_reg_Q_reg[11][35]_i_1_n_12 ,\mul_reg_Q_reg[11][35]_i_1_n_13 ,\mul_reg_Q_reg[11][35]_i_1_n_14 ,\mul_reg_Q_reg[11][35]_i_1_n_15 }),
        .S({\mul_reg_Q[11][35]_i_2_n_0 ,\mul_reg_Q[11][35]_i_3_n_0 ,\mul_reg_Q[11][35]_i_4_n_0 ,\mul_reg_Q[11][35]_i_5_n_0 ,\mul_reg_Q[11][35]_i_6_n_0 ,\mul_reg_Q[11][35]_i_7_n_0 ,\mul_reg_Q[11][35]_i_8_n_0 ,\mul_reg_Q[11][35]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][36] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][43]_i_1_n_15 ),
        .Q(\mul_reg_Q_reg_n_0_[11][36] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][37] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][43]_i_1_n_14 ),
        .Q(\mul_reg_Q_reg_n_0_[11][37] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][38] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][43]_i_1_n_13 ),
        .Q(\mul_reg_Q_reg_n_0_[11][38] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][39] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][43]_i_1_n_12 ),
        .Q(\mul_reg_Q_reg_n_0_[11][39] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][40] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][43]_i_1_n_11 ),
        .Q(\mul_reg_Q_reg_n_0_[11][40] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][41] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][43]_i_1_n_10 ),
        .Q(\mul_reg_Q_reg_n_0_[11][41] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][42] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][43]_i_1_n_9 ),
        .Q(\mul_reg_Q_reg_n_0_[11][42] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][43] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][43]_i_1_n_8 ),
        .Q(\mul_reg_Q_reg_n_0_[11][43] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_Q_reg[11][43]_i_1 
       (.CI(\mul_reg_Q_reg[11][35]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_Q_reg[11][43]_i_1_n_0 ,\mul_reg_Q_reg[11][43]_i_1_n_1 ,\mul_reg_Q_reg[11][43]_i_1_n_2 ,\mul_reg_Q_reg[11][43]_i_1_n_3 ,\mul_reg_Q_reg[11][43]_i_1_n_4 ,\mul_reg_Q_reg[11][43]_i_1_n_5 ,\mul_reg_Q_reg[11][43]_i_1_n_6 ,\mul_reg_Q_reg[11][43]_i_1_n_7 }),
        .DI({\mul_reg_Q_reg[11]1__0_n_79 ,\mul_reg_Q_reg[11]1__0_n_80 ,\mul_reg_Q_reg[11]1__0_n_81 ,\mul_reg_Q_reg[11]1__0_n_82 ,\mul_reg_Q_reg[11]1__0_n_83 ,\mul_reg_Q_reg[11]1__0_n_84 ,\mul_reg_Q_reg[11]1__0_n_85 ,\mul_reg_Q_reg[11]1__0_n_86 }),
        .O({\mul_reg_Q_reg[11][43]_i_1_n_8 ,\mul_reg_Q_reg[11][43]_i_1_n_9 ,\mul_reg_Q_reg[11][43]_i_1_n_10 ,\mul_reg_Q_reg[11][43]_i_1_n_11 ,\mul_reg_Q_reg[11][43]_i_1_n_12 ,\mul_reg_Q_reg[11][43]_i_1_n_13 ,\mul_reg_Q_reg[11][43]_i_1_n_14 ,\mul_reg_Q_reg[11][43]_i_1_n_15 }),
        .S({\mul_reg_Q[11][43]_i_2_n_0 ,\mul_reg_Q[11][43]_i_3_n_0 ,\mul_reg_Q[11][43]_i_4_n_0 ,\mul_reg_Q[11][43]_i_5_n_0 ,\mul_reg_Q[11][43]_i_6_n_0 ,\mul_reg_Q[11][43]_i_7_n_0 ,\mul_reg_Q[11][43]_i_8_n_0 ,\mul_reg_Q[11][43]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][44] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][51]_i_1_n_15 ),
        .Q(\mul_reg_Q_reg_n_0_[11][44] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][45] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][51]_i_1_n_14 ),
        .Q(\mul_reg_Q_reg_n_0_[11][45] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][46] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][51]_i_1_n_13 ),
        .Q(\mul_reg_Q_reg_n_0_[11][46] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][47] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][51]_i_1_n_12 ),
        .Q(\mul_reg_Q_reg_n_0_[11][47] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][48] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][51]_i_1_n_11 ),
        .Q(\mul_reg_Q_reg_n_0_[11][48] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][49] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][51]_i_1_n_10 ),
        .Q(\mul_reg_Q_reg_n_0_[11][49] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][4] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][11]_i_1_n_15 ),
        .Q(\mul_reg_Q_reg_n_0_[11][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][50] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][51]_i_1_n_9 ),
        .Q(\mul_reg_Q_reg_n_0_[11][50] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][51] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][51]_i_1_n_8 ),
        .Q(\mul_reg_Q_reg_n_0_[11][51] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_Q_reg[11][51]_i_1 
       (.CI(\mul_reg_Q_reg[11][43]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_mul_reg_Q_reg[11][51]_i_1_CO_UNCONNECTED [7],\mul_reg_Q_reg[11][51]_i_1_n_1 ,\mul_reg_Q_reg[11][51]_i_1_n_2 ,\mul_reg_Q_reg[11][51]_i_1_n_3 ,\mul_reg_Q_reg[11][51]_i_1_n_4 ,\mul_reg_Q_reg[11][51]_i_1_n_5 ,\mul_reg_Q_reg[11][51]_i_1_n_6 ,\mul_reg_Q_reg[11][51]_i_1_n_7 }),
        .DI({1'b0,\mul_reg_Q_reg[12] [49:47],\mul_reg_Q[11][51]_i_2_n_0 ,\mul_reg_Q_reg[11]1__0_n_76 ,\mul_reg_Q_reg[11]1__0_n_77 ,\mul_reg_Q_reg[11]1__0_n_78 }),
        .O({\mul_reg_Q_reg[11][51]_i_1_n_8 ,\mul_reg_Q_reg[11][51]_i_1_n_9 ,\mul_reg_Q_reg[11][51]_i_1_n_10 ,\mul_reg_Q_reg[11][51]_i_1_n_11 ,\mul_reg_Q_reg[11][51]_i_1_n_12 ,\mul_reg_Q_reg[11][51]_i_1_n_13 ,\mul_reg_Q_reg[11][51]_i_1_n_14 ,\mul_reg_Q_reg[11][51]_i_1_n_15 }),
        .S({\mul_reg_Q[11][51]_i_3_n_0 ,\mul_reg_Q[11][51]_i_4_n_0 ,\mul_reg_Q[11][51]_i_5_n_0 ,\mul_reg_Q[11][51]_i_6_n_0 ,\mul_reg_Q[11][51]_i_7_n_0 ,\mul_reg_Q[11][51]_i_8_n_0 ,\mul_reg_Q[11][51]_i_9_n_0 ,\mul_reg_Q[11][51]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][5] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][11]_i_1_n_14 ),
        .Q(\mul_reg_Q_reg_n_0_[11][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][6] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][11]_i_1_n_13 ),
        .Q(\mul_reg_Q_reg_n_0_[11][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][7] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][11]_i_1_n_12 ),
        .Q(\mul_reg_Q_reg_n_0_[11][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][8] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][11]_i_1_n_11 ),
        .Q(\mul_reg_Q_reg_n_0_[11][8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[11][9] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[11][11]_i_1_n_10 ),
        .Q(\mul_reg_Q_reg_n_0_[11][9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][10] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][10]_srl3_n_0 ),
        .Q(\mul_reg_Q_reg[12] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][11] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][11]_srl3_n_0 ),
        .Q(\mul_reg_Q_reg[12] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][12] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][12]_srl3_n_0 ),
        .Q(\mul_reg_Q_reg[12] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][13] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][13]_srl3_n_0 ),
        .Q(\mul_reg_Q_reg[12] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][14] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][14]_srl3_n_0 ),
        .Q(\mul_reg_Q_reg[12] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][15] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][15]_srl3_n_0 ),
        .Q(\mul_reg_Q_reg[12] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][16] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][16]_srl3_n_0 ),
        .Q(\mul_reg_Q_reg[12] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][17] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][17]_srl3_n_0 ),
        .Q(\mul_reg_Q_reg[12] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][18] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][18]_srl3_n_0 ),
        .Q(\mul_reg_Q_reg[12] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][19] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][19]_srl3_n_0 ),
        .Q(\mul_reg_Q_reg[12] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][20] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][20]_srl3_n_0 ),
        .Q(\mul_reg_Q_reg[12] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][21] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][21]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][22] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][22]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][23] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][23]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][24] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][24]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][25] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][25]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][26] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][26]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][27] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][27]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][28] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][28]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][29] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][29]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][30] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][30]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][31] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][31]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][32] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][32]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][33] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][33]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][34] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][34]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][35] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][35]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][36] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][36]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][37] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][37]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][38] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][38]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][39] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][39]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][40] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][40]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][41] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][41]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][42] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][42]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][43] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][43]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][44] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][44]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][45] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][45]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][46] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][46]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][47] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][47]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][48] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][48]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][49] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][49]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][4] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][4]_srl3_n_0 ),
        .Q(\mul_reg_Q_reg[12] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][50] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][50]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][51] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][51]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[12] [51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][5] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][5]_srl3_n_0 ),
        .Q(\mul_reg_Q_reg[12] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][6] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][6]_srl3_n_0 ),
        .Q(\mul_reg_Q_reg[12] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][7] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][7]_srl3_n_0 ),
        .Q(\mul_reg_Q_reg[12] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][8] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][8]_srl3_n_0 ),
        .Q(\mul_reg_Q_reg[12] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][9] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[13][9]_srl3_n_0 ),
        .Q(\mul_reg_Q_reg[12] [9]),
        .R(1'b0));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][10]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][10]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(p_0_out[10]),
        .Q(\mul_reg_Q_reg[13][10]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][11]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][11]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(p_0_out[11]),
        .Q(\mul_reg_Q_reg[13][11]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][12]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][12]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(p_0_out[12]),
        .Q(\mul_reg_Q_reg[13][12]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][13]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][13]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(p_0_out[13]),
        .Q(\mul_reg_Q_reg[13][13]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][14]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][14]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(p_0_out[14]),
        .Q(\mul_reg_Q_reg[13][14]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][15]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][15]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(p_0_out[15]),
        .Q(\mul_reg_Q_reg[13][15]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][16]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][16]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(p_0_out[16]),
        .Q(\mul_reg_Q_reg[13][16]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][17]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][17]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(p_0_out[17]),
        .Q(\mul_reg_Q_reg[13][17]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][18]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][18]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(p_0_out[18]),
        .Q(\mul_reg_Q_reg[13][18]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][19]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][19]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(p_0_out[19]),
        .Q(\mul_reg_Q_reg[13][19]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][20]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][20]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(p_0_out[20]),
        .Q(\mul_reg_Q_reg[13][20]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][21]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][21]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [21]),
        .Q(\mul_reg_Q_reg[13][21]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][22]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][22]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [22]),
        .Q(\mul_reg_Q_reg[13][22]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][23]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][23]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [23]),
        .Q(\mul_reg_Q_reg[13][23]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][24]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][24]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [24]),
        .Q(\mul_reg_Q_reg[13][24]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][25]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][25]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [25]),
        .Q(\mul_reg_Q_reg[13][25]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][26]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][26]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [26]),
        .Q(\mul_reg_Q_reg[13][26]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][27]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][27]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [27]),
        .Q(\mul_reg_Q_reg[13][27]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][28]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][28]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [28]),
        .Q(\mul_reg_Q_reg[13][28]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][29]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][29]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [29]),
        .Q(\mul_reg_Q_reg[13][29]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][30]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][30]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [30]),
        .Q(\mul_reg_Q_reg[13][30]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][31]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][31]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [31]),
        .Q(\mul_reg_Q_reg[13][31]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][32]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][32]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [32]),
        .Q(\mul_reg_Q_reg[13][32]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][33]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][33]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [33]),
        .Q(\mul_reg_Q_reg[13][33]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][34]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][34]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [34]),
        .Q(\mul_reg_Q_reg[13][34]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][35]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][35]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [35]),
        .Q(\mul_reg_Q_reg[13][35]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][36]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][36]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [36]),
        .Q(\mul_reg_Q_reg[13][36]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][37]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][37]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [37]),
        .Q(\mul_reg_Q_reg[13][37]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][38]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][38]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [38]),
        .Q(\mul_reg_Q_reg[13][38]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][39]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][39]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [39]),
        .Q(\mul_reg_Q_reg[13][39]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][40]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][40]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [40]),
        .Q(\mul_reg_Q_reg[13][40]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][41]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][41]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [41]),
        .Q(\mul_reg_Q_reg[13][41]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][42]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][42]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [42]),
        .Q(\mul_reg_Q_reg[13][42]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][43]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][43]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [43]),
        .Q(\mul_reg_Q_reg[13][43]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][44]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][44]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [44]),
        .Q(\mul_reg_Q_reg[13][44]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][45]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][45]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [45]),
        .Q(\mul_reg_Q_reg[13][45]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][46]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][46]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [46]),
        .Q(\mul_reg_Q_reg[13][46]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][47]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][47]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [47]),
        .Q(\mul_reg_Q_reg[13][47]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][48]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][48]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [48]),
        .Q(\mul_reg_Q_reg[13][48]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][49]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][49]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [49]),
        .Q(\mul_reg_Q_reg[13][49]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][4]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][4]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(p_0_out[4]),
        .Q(\mul_reg_Q_reg[13][4]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][50]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][50]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [50]),
        .Q(\mul_reg_Q_reg[13][50]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][51]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][51]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[15] [51]),
        .Q(\mul_reg_Q_reg[13][51]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][5]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][5]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(p_0_out[5]),
        .Q(\mul_reg_Q_reg[13][5]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][6]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][6]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(p_0_out[6]),
        .Q(\mul_reg_Q_reg[13][6]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][7]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][7]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(p_0_out[7]),
        .Q(\mul_reg_Q_reg[13][7]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][8]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][8]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(p_0_out[8]),
        .Q(\mul_reg_Q_reg[13][8]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[13] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[13][9]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[13][9]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(p_0_out[9]),
        .Q(\mul_reg_Q_reg[13][9]_srl3_n_0 ));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \mul_reg_Q_reg[15]0 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,input_Q[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_Q_reg[15]0_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\coeff_reg_reg[3] [14:12],\coeff_reg_reg[1] [14],phase_counter[1],\coeff_reg_reg[3] [9],\coeff_reg_reg[3] [12],\coeff_reg_reg[1] [14],phase_counter[1],\coeff_reg_reg[3] [9],\coeff_reg_reg[3] [12],\coeff_reg_reg[1] [14],phase_counter[1],\coeff_reg_reg[3] [9],\coeff_reg_reg[3] [12]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_Q_reg[15]0_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_Q_reg[15]0_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_Q_reg[15]0_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(\mul_reg_I_reg[15]0_i_1_n_0 ),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_Q_reg[15]0_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_Q_reg[15]0_OVERFLOW_UNCONNECTED ),
        .P({\mul_reg_Q_reg[15]0_n_58 ,\mul_reg_Q_reg[15]0_n_59 ,\mul_reg_Q_reg[15]0_n_60 ,\mul_reg_Q_reg[15]0_n_61 ,\mul_reg_Q_reg[15]0_n_62 ,\mul_reg_Q_reg[15]0_n_63 ,\mul_reg_Q_reg[15]0_n_64 ,\mul_reg_Q_reg[15]0_n_65 ,\mul_reg_Q_reg[15]0_n_66 ,\mul_reg_Q_reg[15]0_n_67 ,\mul_reg_Q_reg[15]0_n_68 ,\mul_reg_Q_reg[15]0_n_69 ,\mul_reg_Q_reg[15]0_n_70 ,\mul_reg_Q_reg[15]0_n_71 ,\mul_reg_Q_reg[15]0_n_72 ,\mul_reg_Q_reg[15]0_n_73 ,\mul_reg_Q_reg[15]0_n_74 ,\mul_reg_Q_reg[15]0_n_75 ,\mul_reg_Q_reg[15]0_n_76 ,\mul_reg_Q_reg[15]0_n_77 ,\mul_reg_Q_reg[15]0_n_78 ,\mul_reg_Q_reg[15]0_n_79 ,\mul_reg_Q_reg[15]0_n_80 ,\mul_reg_Q_reg[15]0_n_81 ,\mul_reg_Q_reg[15]0_n_82 ,\mul_reg_Q_reg[15]0_n_83 ,\mul_reg_Q_reg[15]0_n_84 ,\mul_reg_Q_reg[15]0_n_85 ,\mul_reg_Q_reg[15]0_n_86 ,\mul_reg_Q_reg[15]0_n_87 ,\mul_reg_Q_reg[15]0_n_88 ,p_0_out}),
        .PATTERNBDETECT(\NLW_mul_reg_Q_reg[15]0_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_Q_reg[15]0_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({\mul_reg_Q_reg[15]0_n_106 ,\mul_reg_Q_reg[15]0_n_107 ,\mul_reg_Q_reg[15]0_n_108 ,\mul_reg_Q_reg[15]0_n_109 ,\mul_reg_Q_reg[15]0_n_110 ,\mul_reg_Q_reg[15]0_n_111 ,\mul_reg_Q_reg[15]0_n_112 ,\mul_reg_Q_reg[15]0_n_113 ,\mul_reg_Q_reg[15]0_n_114 ,\mul_reg_Q_reg[15]0_n_115 ,\mul_reg_Q_reg[15]0_n_116 ,\mul_reg_Q_reg[15]0_n_117 ,\mul_reg_Q_reg[15]0_n_118 ,\mul_reg_Q_reg[15]0_n_119 ,\mul_reg_Q_reg[15]0_n_120 ,\mul_reg_Q_reg[15]0_n_121 ,\mul_reg_Q_reg[15]0_n_122 ,\mul_reg_Q_reg[15]0_n_123 ,\mul_reg_Q_reg[15]0_n_124 ,\mul_reg_Q_reg[15]0_n_125 ,\mul_reg_Q_reg[15]0_n_126 ,\mul_reg_Q_reg[15]0_n_127 ,\mul_reg_Q_reg[15]0_n_128 ,\mul_reg_Q_reg[15]0_n_129 ,\mul_reg_Q_reg[15]0_n_130 ,\mul_reg_Q_reg[15]0_n_131 ,\mul_reg_Q_reg[15]0_n_132 ,\mul_reg_Q_reg[15]0_n_133 ,\mul_reg_Q_reg[15]0_n_134 ,\mul_reg_Q_reg[15]0_n_135 ,\mul_reg_Q_reg[15]0_n_136 ,\mul_reg_Q_reg[15]0_n_137 ,\mul_reg_Q_reg[15]0_n_138 ,\mul_reg_Q_reg[15]0_n_139 ,\mul_reg_Q_reg[15]0_n_140 ,\mul_reg_Q_reg[15]0_n_141 ,\mul_reg_Q_reg[15]0_n_142 ,\mul_reg_Q_reg[15]0_n_143 ,\mul_reg_Q_reg[15]0_n_144 ,\mul_reg_Q_reg[15]0_n_145 ,\mul_reg_Q_reg[15]0_n_146 ,\mul_reg_Q_reg[15]0_n_147 ,\mul_reg_Q_reg[15]0_n_148 ,\mul_reg_Q_reg[15]0_n_149 ,\mul_reg_Q_reg[15]0_n_150 ,\mul_reg_Q_reg[15]0_n_151 ,\mul_reg_Q_reg[15]0_n_152 ,\mul_reg_Q_reg[15]0_n_153 }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_mul_reg_Q_reg[15]0_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_mul_reg_Q_reg[15]0_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \mul_reg_Q_reg[15]0__0 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\coeff_reg_reg[3] [14:12],\coeff_reg_reg[1] [14],phase_counter[1],\coeff_reg_reg[3] [9],\coeff_reg_reg[3] [12],\coeff_reg_reg[1] [14],phase_counter[1],\coeff_reg_reg[3] [9],\coeff_reg_reg[3] [12],\coeff_reg_reg[1] [14],phase_counter[1],\coeff_reg_reg[3] [9],\coeff_reg_reg[3] [12]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_Q_reg[15]0__0_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({input_Q[31],input_Q[31],input_Q[31],input_Q[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_Q_reg[15]0__0_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_Q_reg[15]0__0_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_Q_reg[15]0__0_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(\mul_reg_I_reg[15]0_i_1_n_0 ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_Q_reg[15]0__0_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_Q_reg[15]0__0_OVERFLOW_UNCONNECTED ),
        .P({\mul_reg_Q_reg[15]0__0_n_58 ,\mul_reg_Q_reg[15]0__0_n_59 ,\mul_reg_Q_reg[15]0__0_n_60 ,\mul_reg_Q_reg[15]0__0_n_61 ,\mul_reg_Q_reg[15]0__0_n_62 ,\mul_reg_Q_reg[15]0__0_n_63 ,\mul_reg_Q_reg[15]0__0_n_64 ,\mul_reg_Q_reg[15]0__0_n_65 ,\mul_reg_Q_reg[15]0__0_n_66 ,\mul_reg_Q_reg[15]0__0_n_67 ,\mul_reg_Q_reg[15]0__0_n_68 ,\mul_reg_Q_reg[15]0__0_n_69 ,\mul_reg_Q_reg[15]0__0_n_70 ,\mul_reg_Q_reg[15]0__0_n_71 ,\mul_reg_Q_reg[15]0__0_n_72 ,\mul_reg_Q_reg[15]0__0_n_73 ,\mul_reg_Q_reg[15]0__0_n_74 ,\mul_reg_Q_reg[15] }),
        .PATTERNBDETECT(\NLW_mul_reg_Q_reg[15]0__0_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_Q_reg[15]0__0_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\mul_reg_Q_reg[15]0_n_106 ,\mul_reg_Q_reg[15]0_n_107 ,\mul_reg_Q_reg[15]0_n_108 ,\mul_reg_Q_reg[15]0_n_109 ,\mul_reg_Q_reg[15]0_n_110 ,\mul_reg_Q_reg[15]0_n_111 ,\mul_reg_Q_reg[15]0_n_112 ,\mul_reg_Q_reg[15]0_n_113 ,\mul_reg_Q_reg[15]0_n_114 ,\mul_reg_Q_reg[15]0_n_115 ,\mul_reg_Q_reg[15]0_n_116 ,\mul_reg_Q_reg[15]0_n_117 ,\mul_reg_Q_reg[15]0_n_118 ,\mul_reg_Q_reg[15]0_n_119 ,\mul_reg_Q_reg[15]0_n_120 ,\mul_reg_Q_reg[15]0_n_121 ,\mul_reg_Q_reg[15]0_n_122 ,\mul_reg_Q_reg[15]0_n_123 ,\mul_reg_Q_reg[15]0_n_124 ,\mul_reg_Q_reg[15]0_n_125 ,\mul_reg_Q_reg[15]0_n_126 ,\mul_reg_Q_reg[15]0_n_127 ,\mul_reg_Q_reg[15]0_n_128 ,\mul_reg_Q_reg[15]0_n_129 ,\mul_reg_Q_reg[15]0_n_130 ,\mul_reg_Q_reg[15]0_n_131 ,\mul_reg_Q_reg[15]0_n_132 ,\mul_reg_Q_reg[15]0_n_133 ,\mul_reg_Q_reg[15]0_n_134 ,\mul_reg_Q_reg[15]0_n_135 ,\mul_reg_Q_reg[15]0_n_136 ,\mul_reg_Q_reg[15]0_n_137 ,\mul_reg_Q_reg[15]0_n_138 ,\mul_reg_Q_reg[15]0_n_139 ,\mul_reg_Q_reg[15]0_n_140 ,\mul_reg_Q_reg[15]0_n_141 ,\mul_reg_Q_reg[15]0_n_142 ,\mul_reg_Q_reg[15]0_n_143 ,\mul_reg_Q_reg[15]0_n_144 ,\mul_reg_Q_reg[15]0_n_145 ,\mul_reg_Q_reg[15]0_n_146 ,\mul_reg_Q_reg[15]0_n_147 ,\mul_reg_Q_reg[15]0_n_148 ,\mul_reg_Q_reg[15]0_n_149 ,\mul_reg_Q_reg[15]0_n_150 ,\mul_reg_Q_reg[15]0_n_151 ,\mul_reg_Q_reg[15]0_n_152 ,\mul_reg_Q_reg[15]0_n_153 }),
        .PCOUT(\NLW_mul_reg_Q_reg[15]0__0_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_mul_reg_Q_reg[15]0__0_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_mul_reg_Q_reg[15]0__0_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \mul_reg_Q_reg[3]1 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,input_Q[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_Q_reg[3]1_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\coeff_reg_reg[0] ,\coeff_reg_reg[0] [12:9],\coeff_reg_reg[0] [12:9],\coeff_reg_reg[0] [12]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_Q_reg[3]1_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_Q_reg[3]1_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_Q_reg[3]1_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(\mul_reg_I_reg[15]0_i_1_n_0 ),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_Q_reg[3]1_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_Q_reg[3]1_OVERFLOW_UNCONNECTED ),
        .P({\mul_reg_Q_reg[3]1_n_58 ,\mul_reg_Q_reg[3]1_n_59 ,\mul_reg_Q_reg[3]1_n_60 ,\mul_reg_Q_reg[3]1_n_61 ,\mul_reg_Q_reg[3]1_n_62 ,\mul_reg_Q_reg[3]1_n_63 ,\mul_reg_Q_reg[3]1_n_64 ,\mul_reg_Q_reg[3]1_n_65 ,\mul_reg_Q_reg[3]1_n_66 ,\mul_reg_Q_reg[3]1_n_67 ,\mul_reg_Q_reg[3]1_n_68 ,\mul_reg_Q_reg[3]1_n_69 ,\mul_reg_Q_reg[3]1_n_70 ,\mul_reg_Q_reg[3]1_n_71 ,\mul_reg_Q_reg[3]1_n_72 ,\mul_reg_Q_reg[3]1_n_73 ,\mul_reg_Q_reg[3]1_n_74 ,\mul_reg_Q_reg[3]1_n_75 ,\mul_reg_Q_reg[3]1_n_76 ,\mul_reg_Q_reg[3]1_n_77 ,\mul_reg_Q_reg[3]1_n_78 ,\mul_reg_Q_reg[3]1_n_79 ,\mul_reg_Q_reg[3]1_n_80 ,\mul_reg_Q_reg[3]1_n_81 ,\mul_reg_Q_reg[3]1_n_82 ,\mul_reg_Q_reg[3]1_n_83 ,\mul_reg_Q_reg[3]1_n_84 ,\mul_reg_Q_reg[3]1_n_85 ,\mul_reg_Q_reg[3]1_n_86 ,\mul_reg_Q_reg[3]1_n_87 ,\mul_reg_Q_reg[3]1_n_88 ,\mul_reg_Q_reg[3]1_n_89 ,\mul_reg_Q_reg[3]1_n_90 ,\mul_reg_Q_reg[3]1_n_91 ,\mul_reg_Q_reg[3]1_n_92 ,\mul_reg_Q_reg[3]1_n_93 ,\mul_reg_Q_reg[3]1_n_94 ,\mul_reg_Q_reg[3]1_n_95 ,\mul_reg_Q_reg[3]1_n_96 ,\mul_reg_Q_reg[3]1_n_97 ,\mul_reg_Q_reg[3]1_n_98 ,\mul_reg_Q_reg[3]1_n_99 ,\mul_reg_Q_reg[3]1_n_100 ,\mul_reg_Q_reg[3]1_n_101 ,\mul_reg_Q_reg[3]1_n_102 ,\mul_reg_Q_reg[3]1_n_103 ,\mul_reg_Q_reg[3]1_n_104 ,\mul_reg_Q_reg[3]1_n_105 }),
        .PATTERNBDETECT(\NLW_mul_reg_Q_reg[3]1_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_Q_reg[3]1_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({\mul_reg_Q_reg[3]1_n_106 ,\mul_reg_Q_reg[3]1_n_107 ,\mul_reg_Q_reg[3]1_n_108 ,\mul_reg_Q_reg[3]1_n_109 ,\mul_reg_Q_reg[3]1_n_110 ,\mul_reg_Q_reg[3]1_n_111 ,\mul_reg_Q_reg[3]1_n_112 ,\mul_reg_Q_reg[3]1_n_113 ,\mul_reg_Q_reg[3]1_n_114 ,\mul_reg_Q_reg[3]1_n_115 ,\mul_reg_Q_reg[3]1_n_116 ,\mul_reg_Q_reg[3]1_n_117 ,\mul_reg_Q_reg[3]1_n_118 ,\mul_reg_Q_reg[3]1_n_119 ,\mul_reg_Q_reg[3]1_n_120 ,\mul_reg_Q_reg[3]1_n_121 ,\mul_reg_Q_reg[3]1_n_122 ,\mul_reg_Q_reg[3]1_n_123 ,\mul_reg_Q_reg[3]1_n_124 ,\mul_reg_Q_reg[3]1_n_125 ,\mul_reg_Q_reg[3]1_n_126 ,\mul_reg_Q_reg[3]1_n_127 ,\mul_reg_Q_reg[3]1_n_128 ,\mul_reg_Q_reg[3]1_n_129 ,\mul_reg_Q_reg[3]1_n_130 ,\mul_reg_Q_reg[3]1_n_131 ,\mul_reg_Q_reg[3]1_n_132 ,\mul_reg_Q_reg[3]1_n_133 ,\mul_reg_Q_reg[3]1_n_134 ,\mul_reg_Q_reg[3]1_n_135 ,\mul_reg_Q_reg[3]1_n_136 ,\mul_reg_Q_reg[3]1_n_137 ,\mul_reg_Q_reg[3]1_n_138 ,\mul_reg_Q_reg[3]1_n_139 ,\mul_reg_Q_reg[3]1_n_140 ,\mul_reg_Q_reg[3]1_n_141 ,\mul_reg_Q_reg[3]1_n_142 ,\mul_reg_Q_reg[3]1_n_143 ,\mul_reg_Q_reg[3]1_n_144 ,\mul_reg_Q_reg[3]1_n_145 ,\mul_reg_Q_reg[3]1_n_146 ,\mul_reg_Q_reg[3]1_n_147 ,\mul_reg_Q_reg[3]1_n_148 ,\mul_reg_Q_reg[3]1_n_149 ,\mul_reg_Q_reg[3]1_n_150 ,\mul_reg_Q_reg[3]1_n_151 ,\mul_reg_Q_reg[3]1_n_152 ,\mul_reg_Q_reg[3]1_n_153 }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_mul_reg_Q_reg[3]1_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_mul_reg_Q_reg[3]1_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \mul_reg_Q_reg[3]1__0 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\coeff_reg_reg[0] ,\coeff_reg_reg[0] [12:9],\coeff_reg_reg[0] [12:9],\coeff_reg_reg[0] [12]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_Q_reg[3]1__0_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({input_Q[31],input_Q[31],input_Q[31],input_Q[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_Q_reg[3]1__0_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_Q_reg[3]1__0_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_Q_reg[3]1__0_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(\mul_reg_I_reg[15]0_i_1_n_0 ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_Q_reg[3]1__0_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_Q_reg[3]1__0_OVERFLOW_UNCONNECTED ),
        .P({\mul_reg_Q_reg[3]1__0_n_58 ,\mul_reg_Q_reg[3]1__0_n_59 ,\mul_reg_Q_reg[3]1__0_n_60 ,\mul_reg_Q_reg[3]1__0_n_61 ,\mul_reg_Q_reg[3]1__0_n_62 ,\mul_reg_Q_reg[3]1__0_n_63 ,\mul_reg_Q_reg[3]1__0_n_64 ,\mul_reg_Q_reg[3]1__0_n_65 ,\mul_reg_Q_reg[3]1__0_n_66 ,\mul_reg_Q_reg[3]1__0_n_67 ,\mul_reg_Q_reg[3]1__0_n_68 ,\mul_reg_Q_reg[3]1__0_n_69 ,\mul_reg_Q_reg[3]1__0_n_70 ,\mul_reg_Q_reg[3]1__0_n_71 ,\mul_reg_Q_reg[3]1__0_n_72 ,\mul_reg_Q_reg[3]1__0_n_73 ,\mul_reg_Q_reg[3]1__0_n_74 ,\mul_reg_Q_reg[3]1__0_n_75 ,\mul_reg_Q_reg[3]1__0_n_76 ,\mul_reg_Q_reg[3]1__0_n_77 ,\mul_reg_Q_reg[3]1__0_n_78 ,\mul_reg_Q_reg[3]1__0_n_79 ,\mul_reg_Q_reg[3]1__0_n_80 ,\mul_reg_Q_reg[3]1__0_n_81 ,\mul_reg_Q_reg[3]1__0_n_82 ,\mul_reg_Q_reg[3]1__0_n_83 ,\mul_reg_Q_reg[3]1__0_n_84 ,\mul_reg_Q_reg[3]1__0_n_85 ,\mul_reg_Q_reg[3]1__0_n_86 ,\mul_reg_Q_reg[3]1__0_n_87 ,\mul_reg_Q_reg[3]1__0_n_88 ,\mul_reg_Q_reg[3]1__0_n_89 ,\mul_reg_Q_reg[3]1__0_n_90 ,\mul_reg_Q_reg[3]1__0_n_91 ,\mul_reg_Q_reg[3]1__0_n_92 ,\mul_reg_Q_reg[3]1__0_n_93 ,\mul_reg_Q_reg[3]1__0_n_94 ,\mul_reg_Q_reg[3]1__0_n_95 ,\mul_reg_Q_reg[3]1__0_n_96 ,\mul_reg_Q_reg[3]1__0_n_97 ,\mul_reg_Q_reg[3]1__0_n_98 ,\mul_reg_Q_reg[3]1__0_n_99 ,\mul_reg_Q_reg[3]1__0_n_100 ,\mul_reg_Q_reg[3]1__0_n_101 ,\mul_reg_Q_reg[3]1__0_n_102 ,\mul_reg_Q_reg[3]1__0_n_103 ,\mul_reg_Q_reg[3]1__0_n_104 ,\mul_reg_Q_reg[3]1__0_n_105 }),
        .PATTERNBDETECT(\NLW_mul_reg_Q_reg[3]1__0_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_Q_reg[3]1__0_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\mul_reg_Q_reg[3]1_n_106 ,\mul_reg_Q_reg[3]1_n_107 ,\mul_reg_Q_reg[3]1_n_108 ,\mul_reg_Q_reg[3]1_n_109 ,\mul_reg_Q_reg[3]1_n_110 ,\mul_reg_Q_reg[3]1_n_111 ,\mul_reg_Q_reg[3]1_n_112 ,\mul_reg_Q_reg[3]1_n_113 ,\mul_reg_Q_reg[3]1_n_114 ,\mul_reg_Q_reg[3]1_n_115 ,\mul_reg_Q_reg[3]1_n_116 ,\mul_reg_Q_reg[3]1_n_117 ,\mul_reg_Q_reg[3]1_n_118 ,\mul_reg_Q_reg[3]1_n_119 ,\mul_reg_Q_reg[3]1_n_120 ,\mul_reg_Q_reg[3]1_n_121 ,\mul_reg_Q_reg[3]1_n_122 ,\mul_reg_Q_reg[3]1_n_123 ,\mul_reg_Q_reg[3]1_n_124 ,\mul_reg_Q_reg[3]1_n_125 ,\mul_reg_Q_reg[3]1_n_126 ,\mul_reg_Q_reg[3]1_n_127 ,\mul_reg_Q_reg[3]1_n_128 ,\mul_reg_Q_reg[3]1_n_129 ,\mul_reg_Q_reg[3]1_n_130 ,\mul_reg_Q_reg[3]1_n_131 ,\mul_reg_Q_reg[3]1_n_132 ,\mul_reg_Q_reg[3]1_n_133 ,\mul_reg_Q_reg[3]1_n_134 ,\mul_reg_Q_reg[3]1_n_135 ,\mul_reg_Q_reg[3]1_n_136 ,\mul_reg_Q_reg[3]1_n_137 ,\mul_reg_Q_reg[3]1_n_138 ,\mul_reg_Q_reg[3]1_n_139 ,\mul_reg_Q_reg[3]1_n_140 ,\mul_reg_Q_reg[3]1_n_141 ,\mul_reg_Q_reg[3]1_n_142 ,\mul_reg_Q_reg[3]1_n_143 ,\mul_reg_Q_reg[3]1_n_144 ,\mul_reg_Q_reg[3]1_n_145 ,\mul_reg_Q_reg[3]1_n_146 ,\mul_reg_Q_reg[3]1_n_147 ,\mul_reg_Q_reg[3]1_n_148 ,\mul_reg_Q_reg[3]1_n_149 ,\mul_reg_Q_reg[3]1_n_150 ,\mul_reg_Q_reg[3]1_n_151 ,\mul_reg_Q_reg[3]1_n_152 ,\mul_reg_Q_reg[3]1_n_153 }),
        .PCOUT(\NLW_mul_reg_Q_reg[3]1__0_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_mul_reg_Q_reg[3]1__0_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_mul_reg_Q_reg[3]1__0_XOROUT_UNCONNECTED [7:0]));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][0] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][7]_i_1_n_15 ),
        .Q(\mul_reg_Q_reg_n_0_[3][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][10] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][15]_i_1_n_13 ),
        .Q(\mul_reg_Q_reg_n_0_[3][10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][11] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][15]_i_1_n_12 ),
        .Q(\mul_reg_Q_reg_n_0_[3][11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][12] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][15]_i_1_n_11 ),
        .Q(\mul_reg_Q_reg_n_0_[3][12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][13] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][15]_i_1_n_10 ),
        .Q(\mul_reg_Q_reg_n_0_[3][13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][14] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][15]_i_1_n_9 ),
        .Q(\mul_reg_Q_reg_n_0_[3][14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][15] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][15]_i_1_n_8 ),
        .Q(\mul_reg_Q_reg_n_0_[3][15] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_Q_reg[3][15]_i_1 
       (.CI(\mul_reg_Q_reg[3][7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_Q_reg[3][15]_i_1_n_0 ,\mul_reg_Q_reg[3][15]_i_1_n_1 ,\mul_reg_Q_reg[3][15]_i_1_n_2 ,\mul_reg_Q_reg[3][15]_i_1_n_3 ,\mul_reg_Q_reg[3][15]_i_1_n_4 ,\mul_reg_Q_reg[3][15]_i_1_n_5 ,\mul_reg_Q_reg[3][15]_i_1_n_6 ,\mul_reg_Q_reg[3][15]_i_1_n_7 }),
        .DI({\mul_reg_Q_reg[3]1_n_90 ,\mul_reg_Q_reg[3]1_n_91 ,\mul_reg_Q_reg[3]1_n_92 ,\mul_reg_Q_reg[3]1_n_93 ,\mul_reg_Q_reg[3]1_n_94 ,\mul_reg_Q_reg[3]1_n_95 ,\mul_reg_Q_reg[3]1_n_96 ,\mul_reg_Q_reg[3]1_n_97 }),
        .O({\mul_reg_Q_reg[3][15]_i_1_n_8 ,\mul_reg_Q_reg[3][15]_i_1_n_9 ,\mul_reg_Q_reg[3][15]_i_1_n_10 ,\mul_reg_Q_reg[3][15]_i_1_n_11 ,\mul_reg_Q_reg[3][15]_i_1_n_12 ,\mul_reg_Q_reg[3][15]_i_1_n_13 ,\mul_reg_Q_reg[3][15]_i_1_n_14 ,\mul_reg_Q_reg[3][15]_i_1_n_15 }),
        .S({\mul_reg_Q[3][15]_i_2_n_0 ,\mul_reg_Q[3][15]_i_3_n_0 ,\mul_reg_Q[3][15]_i_4_n_0 ,\mul_reg_Q[3][15]_i_5_n_0 ,\mul_reg_Q[3][15]_i_6_n_0 ,\mul_reg_Q[3][15]_i_7_n_0 ,\mul_reg_Q[3][15]_i_8_n_0 ,\mul_reg_Q[3][15]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][16] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][23]_i_1_n_15 ),
        .Q(\mul_reg_Q_reg_n_0_[3][16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][17] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][23]_i_1_n_14 ),
        .Q(\mul_reg_Q_reg_n_0_[3][17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][18] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][23]_i_1_n_13 ),
        .Q(\mul_reg_Q_reg_n_0_[3][18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][19] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][23]_i_1_n_12 ),
        .Q(\mul_reg_Q_reg_n_0_[3][19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][1] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][7]_i_1_n_14 ),
        .Q(\mul_reg_Q_reg_n_0_[3][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][20] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][23]_i_1_n_11 ),
        .Q(\mul_reg_Q_reg_n_0_[3][20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][21] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][23]_i_1_n_10 ),
        .Q(\mul_reg_Q_reg_n_0_[3][21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][22] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][23]_i_1_n_9 ),
        .Q(\mul_reg_Q_reg_n_0_[3][22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][23] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][23]_i_1_n_8 ),
        .Q(\mul_reg_Q_reg_n_0_[3][23] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_Q_reg[3][23]_i_1 
       (.CI(\mul_reg_Q_reg[3][15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_Q_reg[3][23]_i_1_n_0 ,\mul_reg_Q_reg[3][23]_i_1_n_1 ,\mul_reg_Q_reg[3][23]_i_1_n_2 ,\mul_reg_Q_reg[3][23]_i_1_n_3 ,\mul_reg_Q_reg[3][23]_i_1_n_4 ,\mul_reg_Q_reg[3][23]_i_1_n_5 ,\mul_reg_Q_reg[3][23]_i_1_n_6 ,\mul_reg_Q_reg[3][23]_i_1_n_7 }),
        .DI({\mul_reg_Q_reg[3]1__0_n_99 ,\mul_reg_Q_reg[3]1__0_n_100 ,\mul_reg_Q_reg[3]1__0_n_101 ,\mul_reg_Q_reg[3]1__0_n_102 ,\mul_reg_Q_reg[3]1__0_n_103 ,\mul_reg_Q_reg[3]1__0_n_104 ,\mul_reg_Q_reg[3]1__0_n_105 ,\mul_reg_Q_reg[3]1_n_89 }),
        .O({\mul_reg_Q_reg[3][23]_i_1_n_8 ,\mul_reg_Q_reg[3][23]_i_1_n_9 ,\mul_reg_Q_reg[3][23]_i_1_n_10 ,\mul_reg_Q_reg[3][23]_i_1_n_11 ,\mul_reg_Q_reg[3][23]_i_1_n_12 ,\mul_reg_Q_reg[3][23]_i_1_n_13 ,\mul_reg_Q_reg[3][23]_i_1_n_14 ,\mul_reg_Q_reg[3][23]_i_1_n_15 }),
        .S({\mul_reg_Q[3][23]_i_2_n_0 ,\mul_reg_Q[3][23]_i_3_n_0 ,\mul_reg_Q[3][23]_i_4_n_0 ,\mul_reg_Q[3][23]_i_5_n_0 ,\mul_reg_Q[3][23]_i_6_n_0 ,\mul_reg_Q[3][23]_i_7_n_0 ,\mul_reg_Q[3][23]_i_8_n_0 ,\mul_reg_Q[3][23]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][24] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][31]_i_1_n_15 ),
        .Q(\mul_reg_Q_reg_n_0_[3][24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][25] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][31]_i_1_n_14 ),
        .Q(\mul_reg_Q_reg_n_0_[3][25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][26] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][31]_i_1_n_13 ),
        .Q(\mul_reg_Q_reg_n_0_[3][26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][27] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][31]_i_1_n_12 ),
        .Q(\mul_reg_Q_reg_n_0_[3][27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][28] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][31]_i_1_n_11 ),
        .Q(\mul_reg_Q_reg_n_0_[3][28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][29] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][31]_i_1_n_10 ),
        .Q(\mul_reg_Q_reg_n_0_[3][29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][2] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][7]_i_1_n_13 ),
        .Q(\mul_reg_Q_reg_n_0_[3][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][30] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][31]_i_1_n_9 ),
        .Q(\mul_reg_Q_reg_n_0_[3][30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][31] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][31]_i_1_n_8 ),
        .Q(\mul_reg_Q_reg_n_0_[3][31] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_Q_reg[3][31]_i_1 
       (.CI(\mul_reg_Q_reg[3][23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_Q_reg[3][31]_i_1_n_0 ,\mul_reg_Q_reg[3][31]_i_1_n_1 ,\mul_reg_Q_reg[3][31]_i_1_n_2 ,\mul_reg_Q_reg[3][31]_i_1_n_3 ,\mul_reg_Q_reg[3][31]_i_1_n_4 ,\mul_reg_Q_reg[3][31]_i_1_n_5 ,\mul_reg_Q_reg[3][31]_i_1_n_6 ,\mul_reg_Q_reg[3][31]_i_1_n_7 }),
        .DI({\mul_reg_Q_reg[3]1__0_n_91 ,\mul_reg_Q_reg[3]1__0_n_92 ,\mul_reg_Q_reg[3]1__0_n_93 ,\mul_reg_Q_reg[3]1__0_n_94 ,\mul_reg_Q_reg[3]1__0_n_95 ,\mul_reg_Q_reg[3]1__0_n_96 ,\mul_reg_Q_reg[3]1__0_n_97 ,\mul_reg_Q_reg[3]1__0_n_98 }),
        .O({\mul_reg_Q_reg[3][31]_i_1_n_8 ,\mul_reg_Q_reg[3][31]_i_1_n_9 ,\mul_reg_Q_reg[3][31]_i_1_n_10 ,\mul_reg_Q_reg[3][31]_i_1_n_11 ,\mul_reg_Q_reg[3][31]_i_1_n_12 ,\mul_reg_Q_reg[3][31]_i_1_n_13 ,\mul_reg_Q_reg[3][31]_i_1_n_14 ,\mul_reg_Q_reg[3][31]_i_1_n_15 }),
        .S({\mul_reg_Q[3][31]_i_2_n_0 ,\mul_reg_Q[3][31]_i_3_n_0 ,\mul_reg_Q[3][31]_i_4_n_0 ,\mul_reg_Q[3][31]_i_5_n_0 ,\mul_reg_Q[3][31]_i_6_n_0 ,\mul_reg_Q[3][31]_i_7_n_0 ,\mul_reg_Q[3][31]_i_8_n_0 ,\mul_reg_Q[3][31]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][32] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][39]_i_1_n_15 ),
        .Q(\mul_reg_Q_reg_n_0_[3][32] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][33] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][39]_i_1_n_14 ),
        .Q(\mul_reg_Q_reg_n_0_[3][33] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][34] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][39]_i_1_n_13 ),
        .Q(\mul_reg_Q_reg_n_0_[3][34] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][35] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][39]_i_1_n_12 ),
        .Q(\mul_reg_Q_reg_n_0_[3][35] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][36] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][39]_i_1_n_11 ),
        .Q(\mul_reg_Q_reg_n_0_[3][36] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][37] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][39]_i_1_n_10 ),
        .Q(\mul_reg_Q_reg_n_0_[3][37] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][38] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][39]_i_1_n_9 ),
        .Q(\mul_reg_Q_reg_n_0_[3][38] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][39] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][39]_i_1_n_8 ),
        .Q(\mul_reg_Q_reg_n_0_[3][39] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_Q_reg[3][39]_i_1 
       (.CI(\mul_reg_Q_reg[3][31]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_Q_reg[3][39]_i_1_n_0 ,\mul_reg_Q_reg[3][39]_i_1_n_1 ,\mul_reg_Q_reg[3][39]_i_1_n_2 ,\mul_reg_Q_reg[3][39]_i_1_n_3 ,\mul_reg_Q_reg[3][39]_i_1_n_4 ,\mul_reg_Q_reg[3][39]_i_1_n_5 ,\mul_reg_Q_reg[3][39]_i_1_n_6 ,\mul_reg_Q_reg[3][39]_i_1_n_7 }),
        .DI({\mul_reg_Q_reg[3]1__0_n_83 ,\mul_reg_Q_reg[3]1__0_n_84 ,\mul_reg_Q_reg[3]1__0_n_85 ,\mul_reg_Q_reg[3]1__0_n_86 ,\mul_reg_Q_reg[3]1__0_n_87 ,\mul_reg_Q_reg[3]1__0_n_88 ,\mul_reg_Q_reg[3]1__0_n_89 ,\mul_reg_Q_reg[3]1__0_n_90 }),
        .O({\mul_reg_Q_reg[3][39]_i_1_n_8 ,\mul_reg_Q_reg[3][39]_i_1_n_9 ,\mul_reg_Q_reg[3][39]_i_1_n_10 ,\mul_reg_Q_reg[3][39]_i_1_n_11 ,\mul_reg_Q_reg[3][39]_i_1_n_12 ,\mul_reg_Q_reg[3][39]_i_1_n_13 ,\mul_reg_Q_reg[3][39]_i_1_n_14 ,\mul_reg_Q_reg[3][39]_i_1_n_15 }),
        .S({\mul_reg_Q[3][39]_i_2_n_0 ,\mul_reg_Q[3][39]_i_3_n_0 ,\mul_reg_Q[3][39]_i_4_n_0 ,\mul_reg_Q[3][39]_i_5_n_0 ,\mul_reg_Q[3][39]_i_6_n_0 ,\mul_reg_Q[3][39]_i_7_n_0 ,\mul_reg_Q[3][39]_i_8_n_0 ,\mul_reg_Q[3][39]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][3] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][7]_i_1_n_12 ),
        .Q(\mul_reg_Q_reg_n_0_[3][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][40] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][47]_i_1_n_15 ),
        .Q(\mul_reg_Q_reg_n_0_[3][40] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][41] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][47]_i_1_n_14 ),
        .Q(\mul_reg_Q_reg_n_0_[3][41] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][42] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][47]_i_1_n_13 ),
        .Q(\mul_reg_Q_reg_n_0_[3][42] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][43] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][47]_i_1_n_12 ),
        .Q(\mul_reg_Q_reg_n_0_[3][43] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][44] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][47]_i_1_n_11 ),
        .Q(\mul_reg_Q_reg_n_0_[3][44] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][45] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][47]_i_1_n_10 ),
        .Q(\mul_reg_Q_reg_n_0_[3][45] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][46] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][47]_i_1_n_9 ),
        .Q(\mul_reg_Q_reg_n_0_[3][46] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][47] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][47]_i_1_n_8 ),
        .Q(\mul_reg_Q_reg_n_0_[3][47] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_Q_reg[3][47]_i_1 
       (.CI(\mul_reg_Q_reg[3][39]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_Q_reg[3][47]_i_1_n_0 ,\mul_reg_Q_reg[3][47]_i_1_n_1 ,\mul_reg_Q_reg[3][47]_i_1_n_2 ,\mul_reg_Q_reg[3][47]_i_1_n_3 ,\mul_reg_Q_reg[3][47]_i_1_n_4 ,\mul_reg_Q_reg[3][47]_i_1_n_5 ,\mul_reg_Q_reg[3][47]_i_1_n_6 ,\mul_reg_Q_reg[3][47]_i_1_n_7 }),
        .DI({\mul_reg_Q[3][47]_i_2_n_0 ,\mul_reg_Q_reg[3]1__0_n_76 ,\mul_reg_Q_reg[3]1__0_n_77 ,\mul_reg_Q_reg[3]1__0_n_78 ,\mul_reg_Q_reg[3]1__0_n_79 ,\mul_reg_Q_reg[3]1__0_n_80 ,\mul_reg_Q_reg[3]1__0_n_81 ,\mul_reg_Q_reg[3]1__0_n_82 }),
        .O({\mul_reg_Q_reg[3][47]_i_1_n_8 ,\mul_reg_Q_reg[3][47]_i_1_n_9 ,\mul_reg_Q_reg[3][47]_i_1_n_10 ,\mul_reg_Q_reg[3][47]_i_1_n_11 ,\mul_reg_Q_reg[3][47]_i_1_n_12 ,\mul_reg_Q_reg[3][47]_i_1_n_13 ,\mul_reg_Q_reg[3][47]_i_1_n_14 ,\mul_reg_Q_reg[3][47]_i_1_n_15 }),
        .S({\mul_reg_Q[3][47]_i_3_n_0 ,\mul_reg_Q[3][47]_i_4_n_0 ,\mul_reg_Q[3][47]_i_5_n_0 ,\mul_reg_Q[3][47]_i_6_n_0 ,\mul_reg_Q[3][47]_i_7_n_0 ,\mul_reg_Q[3][47]_i_8_n_0 ,\mul_reg_Q[3][47]_i_9_n_0 ,\mul_reg_Q[3][47]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][48] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][51]_i_1_n_15 ),
        .Q(\mul_reg_Q_reg_n_0_[3][48] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][49] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][51]_i_1_n_14 ),
        .Q(\mul_reg_Q_reg_n_0_[3][49] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][4] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][7]_i_1_n_11 ),
        .Q(\mul_reg_Q_reg_n_0_[3][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][50] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][51]_i_1_n_13 ),
        .Q(\mul_reg_Q_reg_n_0_[3][50] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][51] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][51]_i_1_n_12 ),
        .Q(\mul_reg_Q_reg_n_0_[3][51] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_Q_reg[3][51]_i_1 
       (.CI(\mul_reg_Q_reg[3][47]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_mul_reg_Q_reg[3][51]_i_1_CO_UNCONNECTED [7:3],\mul_reg_Q_reg[3][51]_i_1_n_5 ,\mul_reg_Q_reg[3][51]_i_1_n_6 ,\mul_reg_Q_reg[3][51]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,\mul_reg_Q_reg[4] [49:47]}),
        .O({\NLW_mul_reg_Q_reg[3][51]_i_1_O_UNCONNECTED [7:4],\mul_reg_Q_reg[3][51]_i_1_n_12 ,\mul_reg_Q_reg[3][51]_i_1_n_13 ,\mul_reg_Q_reg[3][51]_i_1_n_14 ,\mul_reg_Q_reg[3][51]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,\mul_reg_Q[3][51]_i_2_n_0 ,\mul_reg_Q[3][51]_i_3_n_0 ,\mul_reg_Q[3][51]_i_4_n_0 ,\mul_reg_Q[3][51]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][5] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][7]_i_1_n_10 ),
        .Q(\mul_reg_Q_reg_n_0_[3][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][6] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][7]_i_1_n_9 ),
        .Q(\mul_reg_Q_reg_n_0_[3][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][7] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][7]_i_1_n_8 ),
        .Q(\mul_reg_Q_reg_n_0_[3][7] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_Q_reg[3][7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\mul_reg_Q_reg[3][7]_i_1_n_0 ,\mul_reg_Q_reg[3][7]_i_1_n_1 ,\mul_reg_Q_reg[3][7]_i_1_n_2 ,\mul_reg_Q_reg[3][7]_i_1_n_3 ,\mul_reg_Q_reg[3][7]_i_1_n_4 ,\mul_reg_Q_reg[3][7]_i_1_n_5 ,\mul_reg_Q_reg[3][7]_i_1_n_6 ,\mul_reg_Q_reg[3][7]_i_1_n_7 }),
        .DI({\mul_reg_Q_reg[3]1_n_98 ,\mul_reg_Q_reg[3]1_n_99 ,\mul_reg_Q_reg[3]1_n_100 ,\mul_reg_Q_reg[3]1_n_101 ,\mul_reg_Q_reg[3]1_n_102 ,\mul_reg_Q_reg[3]1_n_103 ,\mul_reg_Q_reg[3]1_n_104 ,\mul_reg_Q_reg[3]1_n_105 }),
        .O({\mul_reg_Q_reg[3][7]_i_1_n_8 ,\mul_reg_Q_reg[3][7]_i_1_n_9 ,\mul_reg_Q_reg[3][7]_i_1_n_10 ,\mul_reg_Q_reg[3][7]_i_1_n_11 ,\mul_reg_Q_reg[3][7]_i_1_n_12 ,\mul_reg_Q_reg[3][7]_i_1_n_13 ,\mul_reg_Q_reg[3][7]_i_1_n_14 ,\mul_reg_Q_reg[3][7]_i_1_n_15 }),
        .S({\mul_reg_Q[3][7]_i_2_n_0 ,\mul_reg_Q[3][7]_i_3_n_0 ,\mul_reg_Q[3][7]_i_4_n_0 ,\mul_reg_Q[3][7]_i_5_n_0 ,\mul_reg_Q[3][7]_i_6_n_0 ,\mul_reg_Q[3][7]_i_7_n_0 ,\mul_reg_Q[3][7]_i_8_n_0 ,\mul_reg_Q[3][7]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][8] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][15]_i_1_n_15 ),
        .Q(\mul_reg_Q_reg_n_0_[3][8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[3][9] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[3][15]_i_1_n_14 ),
        .Q(\mul_reg_Q_reg_n_0_[3][9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][0] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][0]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][10] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][10]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][11] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][11]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][12] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][12]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][13] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][13]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][14] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][14]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][15] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][15]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][16] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][16]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][17] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][17]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][18] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][18]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][19] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][19]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][1] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][1]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][20] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][20]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][21] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][21]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][22] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][22]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][23] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][23]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][24] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][24]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][25] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][25]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][26] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][26]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][27] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][27]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][28] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][28]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][29] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][29]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][2] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][2]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][30] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][30]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][31] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][31]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][32] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][32]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][33] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][33]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][34] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][34]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][35] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][35]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][36] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][36]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][37] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][37]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][38] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][38]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][39] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][39]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][3] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][3]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][40] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][40]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][41] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][41]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][42] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][42]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][43] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][43]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][44] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][44]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][45] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][45]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][46] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][46]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][47] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][47]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][48] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][48]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][49] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][49]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][4] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][4]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][50] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][50]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][51] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][51]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][5] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][5]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][6] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][6]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][7] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][7]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][8] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][8]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][9] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[5][9]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[4] [9]),
        .R(1'b0));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][0]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][0] ),
        .Q(\mul_reg_Q_reg[5][0]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][10]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][10]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][10] ),
        .Q(\mul_reg_Q_reg[5][10]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][11]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][11]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][11] ),
        .Q(\mul_reg_Q_reg[5][11]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][12]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][12]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][12] ),
        .Q(\mul_reg_Q_reg[5][12]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][13]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][13]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][13] ),
        .Q(\mul_reg_Q_reg[5][13]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][14]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][14]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][14] ),
        .Q(\mul_reg_Q_reg[5][14]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][15]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][15]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][15] ),
        .Q(\mul_reg_Q_reg[5][15]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][16]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][16]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][16] ),
        .Q(\mul_reg_Q_reg[5][16]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][17]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][17]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][17] ),
        .Q(\mul_reg_Q_reg[5][17]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][18]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][18]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][18] ),
        .Q(\mul_reg_Q_reg[5][18]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][19]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][19]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][19] ),
        .Q(\mul_reg_Q_reg[5][19]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][1]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][1] ),
        .Q(\mul_reg_Q_reg[5][1]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][20]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][20]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][20] ),
        .Q(\mul_reg_Q_reg[5][20]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][21]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][21]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][21] ),
        .Q(\mul_reg_Q_reg[5][21]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][22]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][22]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][22] ),
        .Q(\mul_reg_Q_reg[5][22]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][23]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][23]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][23] ),
        .Q(\mul_reg_Q_reg[5][23]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][24]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][24]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][24] ),
        .Q(\mul_reg_Q_reg[5][24]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][25]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][25]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][25] ),
        .Q(\mul_reg_Q_reg[5][25]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][26]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][26]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][26] ),
        .Q(\mul_reg_Q_reg[5][26]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][27]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][27]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][27] ),
        .Q(\mul_reg_Q_reg[5][27]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][28]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][28]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][28] ),
        .Q(\mul_reg_Q_reg[5][28]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][29]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][29]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][29] ),
        .Q(\mul_reg_Q_reg[5][29]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][2]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][2] ),
        .Q(\mul_reg_Q_reg[5][2]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][30]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][30]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][30] ),
        .Q(\mul_reg_Q_reg[5][30]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][31]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][31]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][31] ),
        .Q(\mul_reg_Q_reg[5][31]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][32]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][32]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][32] ),
        .Q(\mul_reg_Q_reg[5][32]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][33]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][33]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][33] ),
        .Q(\mul_reg_Q_reg[5][33]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][34]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][34]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][34] ),
        .Q(\mul_reg_Q_reg[5][34]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][35]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][35]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][35] ),
        .Q(\mul_reg_Q_reg[5][35]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][36]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][36]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][36] ),
        .Q(\mul_reg_Q_reg[5][36]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][37]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][37]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][37] ),
        .Q(\mul_reg_Q_reg[5][37]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][38]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][38]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][38] ),
        .Q(\mul_reg_Q_reg[5][38]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][39]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][39]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][39] ),
        .Q(\mul_reg_Q_reg[5][39]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][3]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][3] ),
        .Q(\mul_reg_Q_reg[5][3]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][40]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][40]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][40] ),
        .Q(\mul_reg_Q_reg[5][40]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][41]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][41]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][41] ),
        .Q(\mul_reg_Q_reg[5][41]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][42]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][42]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][42] ),
        .Q(\mul_reg_Q_reg[5][42]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][43]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][43]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][43] ),
        .Q(\mul_reg_Q_reg[5][43]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][44]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][44]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][44] ),
        .Q(\mul_reg_Q_reg[5][44]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][45]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][45]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][45] ),
        .Q(\mul_reg_Q_reg[5][45]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][46]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][46]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][46] ),
        .Q(\mul_reg_Q_reg[5][46]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][47]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][47]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][47] ),
        .Q(\mul_reg_Q_reg[5][47]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][48]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][48]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][48] ),
        .Q(\mul_reg_Q_reg[5][48]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][49]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][49]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][49] ),
        .Q(\mul_reg_Q_reg[5][49]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][4]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][4] ),
        .Q(\mul_reg_Q_reg[5][4]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][50]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][50]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][50] ),
        .Q(\mul_reg_Q_reg[5][50]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][51]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][51]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][51] ),
        .Q(\mul_reg_Q_reg[5][51]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][5]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][5] ),
        .Q(\mul_reg_Q_reg[5][5]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][6]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][6]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][6] ),
        .Q(\mul_reg_Q_reg[5][6]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][7]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][7]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][7] ),
        .Q(\mul_reg_Q_reg[5][7]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][8]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][8]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][8] ),
        .Q(\mul_reg_Q_reg[5][8]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[5] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[5][9]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[5][9]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[7][9] ),
        .Q(\mul_reg_Q_reg[5][9]_srl2_n_0 ));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \mul_reg_Q_reg[7]1 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,input_Q[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_Q_reg[7]1_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\coeff_reg_reg[1] [14],1'b0,\coeff_reg_reg[0] [14],\coeff_reg_reg[0] [9],\coeff_reg_reg[1] [10],\coeff_reg_reg[0] [12],\coeff_reg_reg[0] [14],\coeff_reg_reg[0] [9],\coeff_reg_reg[1] [10],\coeff_reg_reg[0] [12],\coeff_reg_reg[0] [14],\coeff_reg_reg[0] [9],\coeff_reg_reg[1] [10],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_Q_reg[7]1_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_Q_reg[7]1_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_Q_reg[7]1_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(\mul_reg_I_reg[15]0_i_1_n_0 ),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_Q_reg[7]1_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_Q_reg[7]1_OVERFLOW_UNCONNECTED ),
        .P({\mul_reg_Q_reg[7]1_n_58 ,\mul_reg_Q_reg[7]1_n_59 ,\mul_reg_Q_reg[7]1_n_60 ,\mul_reg_Q_reg[7]1_n_61 ,\mul_reg_Q_reg[7]1_n_62 ,\mul_reg_Q_reg[7]1_n_63 ,\mul_reg_Q_reg[7]1_n_64 ,\mul_reg_Q_reg[7]1_n_65 ,\mul_reg_Q_reg[7]1_n_66 ,\mul_reg_Q_reg[7]1_n_67 ,\mul_reg_Q_reg[7]1_n_68 ,\mul_reg_Q_reg[7]1_n_69 ,\mul_reg_Q_reg[7]1_n_70 ,\mul_reg_Q_reg[7]1_n_71 ,\mul_reg_Q_reg[7]1_n_72 ,\mul_reg_Q_reg[7]1_n_73 ,\mul_reg_Q_reg[7]1_n_74 ,\mul_reg_Q_reg[7]1_n_75 ,\mul_reg_Q_reg[7]1_n_76 ,\mul_reg_Q_reg[7]1_n_77 ,\mul_reg_Q_reg[7]1_n_78 ,\mul_reg_Q_reg[7]1_n_79 ,\mul_reg_Q_reg[7]1_n_80 ,\mul_reg_Q_reg[7]1_n_81 ,\mul_reg_Q_reg[7]1_n_82 ,\mul_reg_Q_reg[7]1_n_83 ,\mul_reg_Q_reg[7]1_n_84 ,\mul_reg_Q_reg[7]1_n_85 ,\mul_reg_Q_reg[7]1_n_86 ,\mul_reg_Q_reg[7]1_n_87 ,\mul_reg_Q_reg[7]1_n_88 ,\mul_reg_Q_reg[7]1_n_89 ,\mul_reg_Q_reg[7]1_n_90 ,\mul_reg_Q_reg[7]1_n_91 ,\mul_reg_Q_reg[7]1_n_92 ,\mul_reg_Q_reg[7]1_n_93 ,\mul_reg_Q_reg[7]1_n_94 ,\mul_reg_Q_reg[7]1_n_95 ,\mul_reg_Q_reg[7]1_n_96 ,\mul_reg_Q_reg[7]1_n_97 ,\mul_reg_Q_reg[7]1_n_98 ,\mul_reg_Q_reg[7]1_n_99 ,\mul_reg_Q_reg[7]1_n_100 ,\mul_reg_Q_reg[7]1_n_101 ,\mul_reg_Q_reg[7]1_n_102 ,\mul_reg_Q_reg[7]1_n_103 ,\mul_reg_Q_reg[7]1_n_104 ,\mul_reg_Q_reg[7]1_n_105 }),
        .PATTERNBDETECT(\NLW_mul_reg_Q_reg[7]1_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_Q_reg[7]1_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({\mul_reg_Q_reg[7]1_n_106 ,\mul_reg_Q_reg[7]1_n_107 ,\mul_reg_Q_reg[7]1_n_108 ,\mul_reg_Q_reg[7]1_n_109 ,\mul_reg_Q_reg[7]1_n_110 ,\mul_reg_Q_reg[7]1_n_111 ,\mul_reg_Q_reg[7]1_n_112 ,\mul_reg_Q_reg[7]1_n_113 ,\mul_reg_Q_reg[7]1_n_114 ,\mul_reg_Q_reg[7]1_n_115 ,\mul_reg_Q_reg[7]1_n_116 ,\mul_reg_Q_reg[7]1_n_117 ,\mul_reg_Q_reg[7]1_n_118 ,\mul_reg_Q_reg[7]1_n_119 ,\mul_reg_Q_reg[7]1_n_120 ,\mul_reg_Q_reg[7]1_n_121 ,\mul_reg_Q_reg[7]1_n_122 ,\mul_reg_Q_reg[7]1_n_123 ,\mul_reg_Q_reg[7]1_n_124 ,\mul_reg_Q_reg[7]1_n_125 ,\mul_reg_Q_reg[7]1_n_126 ,\mul_reg_Q_reg[7]1_n_127 ,\mul_reg_Q_reg[7]1_n_128 ,\mul_reg_Q_reg[7]1_n_129 ,\mul_reg_Q_reg[7]1_n_130 ,\mul_reg_Q_reg[7]1_n_131 ,\mul_reg_Q_reg[7]1_n_132 ,\mul_reg_Q_reg[7]1_n_133 ,\mul_reg_Q_reg[7]1_n_134 ,\mul_reg_Q_reg[7]1_n_135 ,\mul_reg_Q_reg[7]1_n_136 ,\mul_reg_Q_reg[7]1_n_137 ,\mul_reg_Q_reg[7]1_n_138 ,\mul_reg_Q_reg[7]1_n_139 ,\mul_reg_Q_reg[7]1_n_140 ,\mul_reg_Q_reg[7]1_n_141 ,\mul_reg_Q_reg[7]1_n_142 ,\mul_reg_Q_reg[7]1_n_143 ,\mul_reg_Q_reg[7]1_n_144 ,\mul_reg_Q_reg[7]1_n_145 ,\mul_reg_Q_reg[7]1_n_146 ,\mul_reg_Q_reg[7]1_n_147 ,\mul_reg_Q_reg[7]1_n_148 ,\mul_reg_Q_reg[7]1_n_149 ,\mul_reg_Q_reg[7]1_n_150 ,\mul_reg_Q_reg[7]1_n_151 ,\mul_reg_Q_reg[7]1_n_152 ,\mul_reg_Q_reg[7]1_n_153 }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_mul_reg_Q_reg[7]1_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_mul_reg_Q_reg[7]1_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \mul_reg_Q_reg[7]1__0 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\coeff_reg_reg[1] [14],1'b0,\coeff_reg_reg[0] [14],\coeff_reg_reg[0] [9],\coeff_reg_reg[1] [10],\coeff_reg_reg[0] [12],\coeff_reg_reg[0] [14],\coeff_reg_reg[0] [9],\coeff_reg_reg[1] [10],\coeff_reg_reg[0] [12],\coeff_reg_reg[0] [14],\coeff_reg_reg[0] [9],\coeff_reg_reg[1] [10],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_Q_reg[7]1__0_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({input_Q[31],input_Q[31],input_Q[31],input_Q[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_Q_reg[7]1__0_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_Q_reg[7]1__0_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_Q_reg[7]1__0_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(\mul_reg_I_reg[15]0_i_1_n_0 ),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_Q_reg[7]1__0_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_Q_reg[7]1__0_OVERFLOW_UNCONNECTED ),
        .P({\mul_reg_Q_reg[7]1__0_n_58 ,\mul_reg_Q_reg[7]1__0_n_59 ,\mul_reg_Q_reg[7]1__0_n_60 ,\mul_reg_Q_reg[7]1__0_n_61 ,\mul_reg_Q_reg[7]1__0_n_62 ,\mul_reg_Q_reg[7]1__0_n_63 ,\mul_reg_Q_reg[7]1__0_n_64 ,\mul_reg_Q_reg[7]1__0_n_65 ,\mul_reg_Q_reg[7]1__0_n_66 ,\mul_reg_Q_reg[7]1__0_n_67 ,\mul_reg_Q_reg[7]1__0_n_68 ,\mul_reg_Q_reg[7]1__0_n_69 ,\mul_reg_Q_reg[7]1__0_n_70 ,\mul_reg_Q_reg[7]1__0_n_71 ,\mul_reg_Q_reg[7]1__0_n_72 ,\mul_reg_Q_reg[7]1__0_n_73 ,\mul_reg_Q_reg[7]1__0_n_74 ,\mul_reg_Q_reg[7]1__0_n_75 ,\mul_reg_Q_reg[7]1__0_n_76 ,\mul_reg_Q_reg[7]1__0_n_77 ,\mul_reg_Q_reg[7]1__0_n_78 ,\mul_reg_Q_reg[7]1__0_n_79 ,\mul_reg_Q_reg[7]1__0_n_80 ,\mul_reg_Q_reg[7]1__0_n_81 ,\mul_reg_Q_reg[7]1__0_n_82 ,\mul_reg_Q_reg[7]1__0_n_83 ,\mul_reg_Q_reg[7]1__0_n_84 ,\mul_reg_Q_reg[7]1__0_n_85 ,\mul_reg_Q_reg[7]1__0_n_86 ,\mul_reg_Q_reg[7]1__0_n_87 ,\mul_reg_Q_reg[7]1__0_n_88 ,\mul_reg_Q_reg[7]1__0_n_89 ,\mul_reg_Q_reg[7]1__0_n_90 ,\mul_reg_Q_reg[7]1__0_n_91 ,\mul_reg_Q_reg[7]1__0_n_92 ,\mul_reg_Q_reg[7]1__0_n_93 ,\mul_reg_Q_reg[7]1__0_n_94 ,\mul_reg_Q_reg[7]1__0_n_95 ,\mul_reg_Q_reg[7]1__0_n_96 ,\mul_reg_Q_reg[7]1__0_n_97 ,\mul_reg_Q_reg[7]1__0_n_98 ,\mul_reg_Q_reg[7]1__0_n_99 ,\mul_reg_Q_reg[7]1__0_n_100 ,\mul_reg_Q_reg[7]1__0_n_101 ,\mul_reg_Q_reg[7]1__0_n_102 ,\mul_reg_Q_reg[7]1__0_n_103 ,\mul_reg_Q_reg[7]1__0_n_104 ,\mul_reg_Q_reg[7]1__0_n_105 }),
        .PATTERNBDETECT(\NLW_mul_reg_Q_reg[7]1__0_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_Q_reg[7]1__0_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\mul_reg_Q_reg[7]1_n_106 ,\mul_reg_Q_reg[7]1_n_107 ,\mul_reg_Q_reg[7]1_n_108 ,\mul_reg_Q_reg[7]1_n_109 ,\mul_reg_Q_reg[7]1_n_110 ,\mul_reg_Q_reg[7]1_n_111 ,\mul_reg_Q_reg[7]1_n_112 ,\mul_reg_Q_reg[7]1_n_113 ,\mul_reg_Q_reg[7]1_n_114 ,\mul_reg_Q_reg[7]1_n_115 ,\mul_reg_Q_reg[7]1_n_116 ,\mul_reg_Q_reg[7]1_n_117 ,\mul_reg_Q_reg[7]1_n_118 ,\mul_reg_Q_reg[7]1_n_119 ,\mul_reg_Q_reg[7]1_n_120 ,\mul_reg_Q_reg[7]1_n_121 ,\mul_reg_Q_reg[7]1_n_122 ,\mul_reg_Q_reg[7]1_n_123 ,\mul_reg_Q_reg[7]1_n_124 ,\mul_reg_Q_reg[7]1_n_125 ,\mul_reg_Q_reg[7]1_n_126 ,\mul_reg_Q_reg[7]1_n_127 ,\mul_reg_Q_reg[7]1_n_128 ,\mul_reg_Q_reg[7]1_n_129 ,\mul_reg_Q_reg[7]1_n_130 ,\mul_reg_Q_reg[7]1_n_131 ,\mul_reg_Q_reg[7]1_n_132 ,\mul_reg_Q_reg[7]1_n_133 ,\mul_reg_Q_reg[7]1_n_134 ,\mul_reg_Q_reg[7]1_n_135 ,\mul_reg_Q_reg[7]1_n_136 ,\mul_reg_Q_reg[7]1_n_137 ,\mul_reg_Q_reg[7]1_n_138 ,\mul_reg_Q_reg[7]1_n_139 ,\mul_reg_Q_reg[7]1_n_140 ,\mul_reg_Q_reg[7]1_n_141 ,\mul_reg_Q_reg[7]1_n_142 ,\mul_reg_Q_reg[7]1_n_143 ,\mul_reg_Q_reg[7]1_n_144 ,\mul_reg_Q_reg[7]1_n_145 ,\mul_reg_Q_reg[7]1_n_146 ,\mul_reg_Q_reg[7]1_n_147 ,\mul_reg_Q_reg[7]1_n_148 ,\mul_reg_Q_reg[7]1_n_149 ,\mul_reg_Q_reg[7]1_n_150 ,\mul_reg_Q_reg[7]1_n_151 ,\mul_reg_Q_reg[7]1_n_152 ,\mul_reg_Q_reg[7]1_n_153 }),
        .PCOUT(\NLW_mul_reg_Q_reg[7]1__0_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_mul_reg_Q_reg[7]1__0_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_mul_reg_Q_reg[7]1__0_XOROUT_UNCONNECTED [7:0]));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][0] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][7]_i_1_n_15 ),
        .Q(\mul_reg_Q_reg_n_0_[7][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][10] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][15]_i_1_n_13 ),
        .Q(\mul_reg_Q_reg_n_0_[7][10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][11] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][15]_i_1_n_12 ),
        .Q(\mul_reg_Q_reg_n_0_[7][11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][12] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][15]_i_1_n_11 ),
        .Q(\mul_reg_Q_reg_n_0_[7][12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][13] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][15]_i_1_n_10 ),
        .Q(\mul_reg_Q_reg_n_0_[7][13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][14] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][15]_i_1_n_9 ),
        .Q(\mul_reg_Q_reg_n_0_[7][14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][15] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][15]_i_1_n_8 ),
        .Q(\mul_reg_Q_reg_n_0_[7][15] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_Q_reg[7][15]_i_1 
       (.CI(\mul_reg_Q_reg[7][7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_Q_reg[7][15]_i_1_n_0 ,\mul_reg_Q_reg[7][15]_i_1_n_1 ,\mul_reg_Q_reg[7][15]_i_1_n_2 ,\mul_reg_Q_reg[7][15]_i_1_n_3 ,\mul_reg_Q_reg[7][15]_i_1_n_4 ,\mul_reg_Q_reg[7][15]_i_1_n_5 ,\mul_reg_Q_reg[7][15]_i_1_n_6 ,\mul_reg_Q_reg[7][15]_i_1_n_7 }),
        .DI({\mul_reg_Q_reg[7]1_n_90 ,\mul_reg_Q_reg[7]1_n_91 ,\mul_reg_Q_reg[7]1_n_92 ,\mul_reg_Q_reg[7]1_n_93 ,\mul_reg_Q_reg[7]1_n_94 ,\mul_reg_Q_reg[7]1_n_95 ,\mul_reg_Q_reg[7]1_n_96 ,\mul_reg_Q_reg[7]1_n_97 }),
        .O({\mul_reg_Q_reg[7][15]_i_1_n_8 ,\mul_reg_Q_reg[7][15]_i_1_n_9 ,\mul_reg_Q_reg[7][15]_i_1_n_10 ,\mul_reg_Q_reg[7][15]_i_1_n_11 ,\mul_reg_Q_reg[7][15]_i_1_n_12 ,\mul_reg_Q_reg[7][15]_i_1_n_13 ,\mul_reg_Q_reg[7][15]_i_1_n_14 ,\mul_reg_Q_reg[7][15]_i_1_n_15 }),
        .S({\mul_reg_Q[7][15]_i_2_n_0 ,\mul_reg_Q[7][15]_i_3_n_0 ,\mul_reg_Q[7][15]_i_4_n_0 ,\mul_reg_Q[7][15]_i_5_n_0 ,\mul_reg_Q[7][15]_i_6_n_0 ,\mul_reg_Q[7][15]_i_7_n_0 ,\mul_reg_Q[7][15]_i_8_n_0 ,\mul_reg_Q[7][15]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][16] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][23]_i_1_n_15 ),
        .Q(\mul_reg_Q_reg_n_0_[7][16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][17] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][23]_i_1_n_14 ),
        .Q(\mul_reg_Q_reg_n_0_[7][17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][18] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][23]_i_1_n_13 ),
        .Q(\mul_reg_Q_reg_n_0_[7][18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][19] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][23]_i_1_n_12 ),
        .Q(\mul_reg_Q_reg_n_0_[7][19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][1] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][7]_i_1_n_14 ),
        .Q(\mul_reg_Q_reg_n_0_[7][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][20] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][23]_i_1_n_11 ),
        .Q(\mul_reg_Q_reg_n_0_[7][20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][21] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][23]_i_1_n_10 ),
        .Q(\mul_reg_Q_reg_n_0_[7][21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][22] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][23]_i_1_n_9 ),
        .Q(\mul_reg_Q_reg_n_0_[7][22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][23] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][23]_i_1_n_8 ),
        .Q(\mul_reg_Q_reg_n_0_[7][23] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_Q_reg[7][23]_i_1 
       (.CI(\mul_reg_Q_reg[7][15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_Q_reg[7][23]_i_1_n_0 ,\mul_reg_Q_reg[7][23]_i_1_n_1 ,\mul_reg_Q_reg[7][23]_i_1_n_2 ,\mul_reg_Q_reg[7][23]_i_1_n_3 ,\mul_reg_Q_reg[7][23]_i_1_n_4 ,\mul_reg_Q_reg[7][23]_i_1_n_5 ,\mul_reg_Q_reg[7][23]_i_1_n_6 ,\mul_reg_Q_reg[7][23]_i_1_n_7 }),
        .DI({\mul_reg_Q_reg[7]1__0_n_99 ,\mul_reg_Q_reg[7]1__0_n_100 ,\mul_reg_Q_reg[7]1__0_n_101 ,\mul_reg_Q_reg[7]1__0_n_102 ,\mul_reg_Q_reg[7]1__0_n_103 ,\mul_reg_Q_reg[7]1__0_n_104 ,\mul_reg_Q_reg[7]1__0_n_105 ,\mul_reg_Q_reg[7]1_n_89 }),
        .O({\mul_reg_Q_reg[7][23]_i_1_n_8 ,\mul_reg_Q_reg[7][23]_i_1_n_9 ,\mul_reg_Q_reg[7][23]_i_1_n_10 ,\mul_reg_Q_reg[7][23]_i_1_n_11 ,\mul_reg_Q_reg[7][23]_i_1_n_12 ,\mul_reg_Q_reg[7][23]_i_1_n_13 ,\mul_reg_Q_reg[7][23]_i_1_n_14 ,\mul_reg_Q_reg[7][23]_i_1_n_15 }),
        .S({\mul_reg_Q[7][23]_i_2_n_0 ,\mul_reg_Q[7][23]_i_3_n_0 ,\mul_reg_Q[7][23]_i_4_n_0 ,\mul_reg_Q[7][23]_i_5_n_0 ,\mul_reg_Q[7][23]_i_6_n_0 ,\mul_reg_Q[7][23]_i_7_n_0 ,\mul_reg_Q[7][23]_i_8_n_0 ,\mul_reg_Q[7][23]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][24] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][31]_i_1_n_15 ),
        .Q(\mul_reg_Q_reg_n_0_[7][24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][25] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][31]_i_1_n_14 ),
        .Q(\mul_reg_Q_reg_n_0_[7][25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][26] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][31]_i_1_n_13 ),
        .Q(\mul_reg_Q_reg_n_0_[7][26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][27] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][31]_i_1_n_12 ),
        .Q(\mul_reg_Q_reg_n_0_[7][27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][28] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][31]_i_1_n_11 ),
        .Q(\mul_reg_Q_reg_n_0_[7][28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][29] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][31]_i_1_n_10 ),
        .Q(\mul_reg_Q_reg_n_0_[7][29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][2] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][7]_i_1_n_13 ),
        .Q(\mul_reg_Q_reg_n_0_[7][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][30] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][31]_i_1_n_9 ),
        .Q(\mul_reg_Q_reg_n_0_[7][30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][31] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][31]_i_1_n_8 ),
        .Q(\mul_reg_Q_reg_n_0_[7][31] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_Q_reg[7][31]_i_1 
       (.CI(\mul_reg_Q_reg[7][23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_Q_reg[7][31]_i_1_n_0 ,\mul_reg_Q_reg[7][31]_i_1_n_1 ,\mul_reg_Q_reg[7][31]_i_1_n_2 ,\mul_reg_Q_reg[7][31]_i_1_n_3 ,\mul_reg_Q_reg[7][31]_i_1_n_4 ,\mul_reg_Q_reg[7][31]_i_1_n_5 ,\mul_reg_Q_reg[7][31]_i_1_n_6 ,\mul_reg_Q_reg[7][31]_i_1_n_7 }),
        .DI({\mul_reg_Q_reg[7]1__0_n_91 ,\mul_reg_Q_reg[7]1__0_n_92 ,\mul_reg_Q_reg[7]1__0_n_93 ,\mul_reg_Q_reg[7]1__0_n_94 ,\mul_reg_Q_reg[7]1__0_n_95 ,\mul_reg_Q_reg[7]1__0_n_96 ,\mul_reg_Q_reg[7]1__0_n_97 ,\mul_reg_Q_reg[7]1__0_n_98 }),
        .O({\mul_reg_Q_reg[7][31]_i_1_n_8 ,\mul_reg_Q_reg[7][31]_i_1_n_9 ,\mul_reg_Q_reg[7][31]_i_1_n_10 ,\mul_reg_Q_reg[7][31]_i_1_n_11 ,\mul_reg_Q_reg[7][31]_i_1_n_12 ,\mul_reg_Q_reg[7][31]_i_1_n_13 ,\mul_reg_Q_reg[7][31]_i_1_n_14 ,\mul_reg_Q_reg[7][31]_i_1_n_15 }),
        .S({\mul_reg_Q[7][31]_i_2_n_0 ,\mul_reg_Q[7][31]_i_3_n_0 ,\mul_reg_Q[7][31]_i_4_n_0 ,\mul_reg_Q[7][31]_i_5_n_0 ,\mul_reg_Q[7][31]_i_6_n_0 ,\mul_reg_Q[7][31]_i_7_n_0 ,\mul_reg_Q[7][31]_i_8_n_0 ,\mul_reg_Q[7][31]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][32] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][39]_i_1_n_15 ),
        .Q(\mul_reg_Q_reg_n_0_[7][32] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][33] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][39]_i_1_n_14 ),
        .Q(\mul_reg_Q_reg_n_0_[7][33] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][34] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][39]_i_1_n_13 ),
        .Q(\mul_reg_Q_reg_n_0_[7][34] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][35] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][39]_i_1_n_12 ),
        .Q(\mul_reg_Q_reg_n_0_[7][35] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][36] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][39]_i_1_n_11 ),
        .Q(\mul_reg_Q_reg_n_0_[7][36] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][37] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][39]_i_1_n_10 ),
        .Q(\mul_reg_Q_reg_n_0_[7][37] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][38] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][39]_i_1_n_9 ),
        .Q(\mul_reg_Q_reg_n_0_[7][38] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][39] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][39]_i_1_n_8 ),
        .Q(\mul_reg_Q_reg_n_0_[7][39] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_Q_reg[7][39]_i_1 
       (.CI(\mul_reg_Q_reg[7][31]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_Q_reg[7][39]_i_1_n_0 ,\mul_reg_Q_reg[7][39]_i_1_n_1 ,\mul_reg_Q_reg[7][39]_i_1_n_2 ,\mul_reg_Q_reg[7][39]_i_1_n_3 ,\mul_reg_Q_reg[7][39]_i_1_n_4 ,\mul_reg_Q_reg[7][39]_i_1_n_5 ,\mul_reg_Q_reg[7][39]_i_1_n_6 ,\mul_reg_Q_reg[7][39]_i_1_n_7 }),
        .DI({\mul_reg_Q_reg[7]1__0_n_83 ,\mul_reg_Q_reg[7]1__0_n_84 ,\mul_reg_Q_reg[7]1__0_n_85 ,\mul_reg_Q_reg[7]1__0_n_86 ,\mul_reg_Q_reg[7]1__0_n_87 ,\mul_reg_Q_reg[7]1__0_n_88 ,\mul_reg_Q_reg[7]1__0_n_89 ,\mul_reg_Q_reg[7]1__0_n_90 }),
        .O({\mul_reg_Q_reg[7][39]_i_1_n_8 ,\mul_reg_Q_reg[7][39]_i_1_n_9 ,\mul_reg_Q_reg[7][39]_i_1_n_10 ,\mul_reg_Q_reg[7][39]_i_1_n_11 ,\mul_reg_Q_reg[7][39]_i_1_n_12 ,\mul_reg_Q_reg[7][39]_i_1_n_13 ,\mul_reg_Q_reg[7][39]_i_1_n_14 ,\mul_reg_Q_reg[7][39]_i_1_n_15 }),
        .S({\mul_reg_Q[7][39]_i_2_n_0 ,\mul_reg_Q[7][39]_i_3_n_0 ,\mul_reg_Q[7][39]_i_4_n_0 ,\mul_reg_Q[7][39]_i_5_n_0 ,\mul_reg_Q[7][39]_i_6_n_0 ,\mul_reg_Q[7][39]_i_7_n_0 ,\mul_reg_Q[7][39]_i_8_n_0 ,\mul_reg_Q[7][39]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][3] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][7]_i_1_n_12 ),
        .Q(\mul_reg_Q_reg_n_0_[7][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][40] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][47]_i_1_n_15 ),
        .Q(\mul_reg_Q_reg_n_0_[7][40] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][41] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][47]_i_1_n_14 ),
        .Q(\mul_reg_Q_reg_n_0_[7][41] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][42] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][47]_i_1_n_13 ),
        .Q(\mul_reg_Q_reg_n_0_[7][42] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][43] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][47]_i_1_n_12 ),
        .Q(\mul_reg_Q_reg_n_0_[7][43] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][44] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][47]_i_1_n_11 ),
        .Q(\mul_reg_Q_reg_n_0_[7][44] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][45] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][47]_i_1_n_10 ),
        .Q(\mul_reg_Q_reg_n_0_[7][45] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][46] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][47]_i_1_n_9 ),
        .Q(\mul_reg_Q_reg_n_0_[7][46] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][47] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][47]_i_1_n_8 ),
        .Q(\mul_reg_Q_reg_n_0_[7][47] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_Q_reg[7][47]_i_1 
       (.CI(\mul_reg_Q_reg[7][39]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\mul_reg_Q_reg[7][47]_i_1_n_0 ,\mul_reg_Q_reg[7][47]_i_1_n_1 ,\mul_reg_Q_reg[7][47]_i_1_n_2 ,\mul_reg_Q_reg[7][47]_i_1_n_3 ,\mul_reg_Q_reg[7][47]_i_1_n_4 ,\mul_reg_Q_reg[7][47]_i_1_n_5 ,\mul_reg_Q_reg[7][47]_i_1_n_6 ,\mul_reg_Q_reg[7][47]_i_1_n_7 }),
        .DI({\mul_reg_Q[7][47]_i_2_n_0 ,\mul_reg_Q_reg[7]1__0_n_76 ,\mul_reg_Q_reg[7]1__0_n_77 ,\mul_reg_Q_reg[7]1__0_n_78 ,\mul_reg_Q_reg[7]1__0_n_79 ,\mul_reg_Q_reg[7]1__0_n_80 ,\mul_reg_Q_reg[7]1__0_n_81 ,\mul_reg_Q_reg[7]1__0_n_82 }),
        .O({\mul_reg_Q_reg[7][47]_i_1_n_8 ,\mul_reg_Q_reg[7][47]_i_1_n_9 ,\mul_reg_Q_reg[7][47]_i_1_n_10 ,\mul_reg_Q_reg[7][47]_i_1_n_11 ,\mul_reg_Q_reg[7][47]_i_1_n_12 ,\mul_reg_Q_reg[7][47]_i_1_n_13 ,\mul_reg_Q_reg[7][47]_i_1_n_14 ,\mul_reg_Q_reg[7][47]_i_1_n_15 }),
        .S({\mul_reg_Q[7][47]_i_3_n_0 ,\mul_reg_Q[7][47]_i_4_n_0 ,\mul_reg_Q[7][47]_i_5_n_0 ,\mul_reg_Q[7][47]_i_6_n_0 ,\mul_reg_Q[7][47]_i_7_n_0 ,\mul_reg_Q[7][47]_i_8_n_0 ,\mul_reg_Q[7][47]_i_9_n_0 ,\mul_reg_Q[7][47]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][48] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][51]_i_1_n_15 ),
        .Q(\mul_reg_Q_reg_n_0_[7][48] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][49] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][51]_i_1_n_14 ),
        .Q(\mul_reg_Q_reg_n_0_[7][49] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][4] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][7]_i_1_n_11 ),
        .Q(\mul_reg_Q_reg_n_0_[7][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][50] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][51]_i_1_n_13 ),
        .Q(\mul_reg_Q_reg_n_0_[7][50] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][51] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][51]_i_1_n_12 ),
        .Q(\mul_reg_Q_reg_n_0_[7][51] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_Q_reg[7][51]_i_1 
       (.CI(\mul_reg_Q_reg[7][47]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_mul_reg_Q_reg[7][51]_i_1_CO_UNCONNECTED [7:3],\mul_reg_Q_reg[7][51]_i_1_n_5 ,\mul_reg_Q_reg[7][51]_i_1_n_6 ,\mul_reg_Q_reg[7][51]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,\mul_reg_Q_reg[8] [49:47]}),
        .O({\NLW_mul_reg_Q_reg[7][51]_i_1_O_UNCONNECTED [7:4],\mul_reg_Q_reg[7][51]_i_1_n_12 ,\mul_reg_Q_reg[7][51]_i_1_n_13 ,\mul_reg_Q_reg[7][51]_i_1_n_14 ,\mul_reg_Q_reg[7][51]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,\mul_reg_Q[7][51]_i_2_n_0 ,\mul_reg_Q[7][51]_i_3_n_0 ,\mul_reg_Q[7][51]_i_4_n_0 ,\mul_reg_Q[7][51]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][5] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][7]_i_1_n_10 ),
        .Q(\mul_reg_Q_reg_n_0_[7][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][6] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][7]_i_1_n_9 ),
        .Q(\mul_reg_Q_reg_n_0_[7][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][7] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][7]_i_1_n_8 ),
        .Q(\mul_reg_Q_reg_n_0_[7][7] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_reg_Q_reg[7][7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\mul_reg_Q_reg[7][7]_i_1_n_0 ,\mul_reg_Q_reg[7][7]_i_1_n_1 ,\mul_reg_Q_reg[7][7]_i_1_n_2 ,\mul_reg_Q_reg[7][7]_i_1_n_3 ,\mul_reg_Q_reg[7][7]_i_1_n_4 ,\mul_reg_Q_reg[7][7]_i_1_n_5 ,\mul_reg_Q_reg[7][7]_i_1_n_6 ,\mul_reg_Q_reg[7][7]_i_1_n_7 }),
        .DI({\mul_reg_Q_reg[7]1_n_98 ,\mul_reg_Q_reg[7]1_n_99 ,\mul_reg_Q_reg[7]1_n_100 ,\mul_reg_Q_reg[7]1_n_101 ,\mul_reg_Q_reg[7]1_n_102 ,\mul_reg_Q_reg[7]1_n_103 ,\mul_reg_Q_reg[7]1_n_104 ,\mul_reg_Q_reg[7]1_n_105 }),
        .O({\mul_reg_Q_reg[7][7]_i_1_n_8 ,\mul_reg_Q_reg[7][7]_i_1_n_9 ,\mul_reg_Q_reg[7][7]_i_1_n_10 ,\mul_reg_Q_reg[7][7]_i_1_n_11 ,\mul_reg_Q_reg[7][7]_i_1_n_12 ,\mul_reg_Q_reg[7][7]_i_1_n_13 ,\mul_reg_Q_reg[7][7]_i_1_n_14 ,\mul_reg_Q_reg[7][7]_i_1_n_15 }),
        .S({\mul_reg_Q[7][7]_i_2_n_0 ,\mul_reg_Q[7][7]_i_3_n_0 ,\mul_reg_Q[7][7]_i_4_n_0 ,\mul_reg_Q[7][7]_i_5_n_0 ,\mul_reg_Q[7][7]_i_6_n_0 ,\mul_reg_Q[7][7]_i_7_n_0 ,\mul_reg_Q[7][7]_i_8_n_0 ,\mul_reg_Q[7][7]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][8] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][15]_i_1_n_15 ),
        .Q(\mul_reg_Q_reg_n_0_[7][8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[7][9] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[7][15]_i_1_n_14 ),
        .Q(\mul_reg_Q_reg_n_0_[7][9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][0] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][0]_srl3_n_0 ),
        .Q(\mul_reg_Q_reg[8] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][10] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][10]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][11] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][11]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][12] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][12]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][13] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][13]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][14] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][14]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][15] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][15]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][16] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][16]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][17] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][17]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][18] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][18]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][19] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][19]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][1] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][1]_srl3_n_0 ),
        .Q(\mul_reg_Q_reg[8] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][20] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][20]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][21] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][21]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][22] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][22]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][23] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][23]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][24] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][24]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][25] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][25]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][26] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][26]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][27] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][27]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][28] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][28]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][29] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][29]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][2] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][2]_srl3_n_0 ),
        .Q(\mul_reg_Q_reg[8] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][30] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][30]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][31] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][31]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][32] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][32]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][33] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][33]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][34] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][34]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][35] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][35]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][36] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][36]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][37] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][37]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][38] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][38]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][39] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][39]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][3] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][3]_srl3_n_0 ),
        .Q(\mul_reg_Q_reg[8] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][40] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][40]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][41] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][41]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][42] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][42]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][43] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][43]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][44] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][44]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][45] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][45]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][46] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][46]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][47] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][47]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][48] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][48]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][49] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][49]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][4] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][4]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][50] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][50]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][51] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][51]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][5] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][5]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][6] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][6]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][7] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][7]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][8] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][8]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][9] 
       (.C(clk),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[9][9]_srl2_n_0 ),
        .Q(\mul_reg_Q_reg[8] [9]),
        .R(1'b0));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][0]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[11]1_n_105 ),
        .Q(\mul_reg_Q_reg[9][0]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][10]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][10]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][10] ),
        .Q(\mul_reg_Q_reg[9][10]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][11]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][11]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][11] ),
        .Q(\mul_reg_Q_reg[9][11]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][12]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][12]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][12] ),
        .Q(\mul_reg_Q_reg[9][12]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][13]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][13]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][13] ),
        .Q(\mul_reg_Q_reg[9][13]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][14]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][14]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][14] ),
        .Q(\mul_reg_Q_reg[9][14]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][15]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][15]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][15] ),
        .Q(\mul_reg_Q_reg[9][15]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][16]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][16]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][16] ),
        .Q(\mul_reg_Q_reg[9][16]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][17]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][17]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][17] ),
        .Q(\mul_reg_Q_reg[9][17]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][18]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][18]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][18] ),
        .Q(\mul_reg_Q_reg[9][18]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][19]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][19]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][19] ),
        .Q(\mul_reg_Q_reg[9][19]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][1]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][1]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[11]1_n_104 ),
        .Q(\mul_reg_Q_reg[9][1]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][20]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][20]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][20] ),
        .Q(\mul_reg_Q_reg[9][20]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][21]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][21]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][21] ),
        .Q(\mul_reg_Q_reg[9][21]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][22]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][22]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][22] ),
        .Q(\mul_reg_Q_reg[9][22]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][23]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][23]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][23] ),
        .Q(\mul_reg_Q_reg[9][23]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][24]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][24]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][24] ),
        .Q(\mul_reg_Q_reg[9][24]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][25]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][25]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][25] ),
        .Q(\mul_reg_Q_reg[9][25]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][26]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][26]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][26] ),
        .Q(\mul_reg_Q_reg[9][26]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][27]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][27]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][27] ),
        .Q(\mul_reg_Q_reg[9][27]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][28]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][28]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][28] ),
        .Q(\mul_reg_Q_reg[9][28]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][29]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][29]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][29] ),
        .Q(\mul_reg_Q_reg[9][29]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][2]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[11]1_n_103 ),
        .Q(\mul_reg_Q_reg[9][2]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][30]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][30]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][30] ),
        .Q(\mul_reg_Q_reg[9][30]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][31]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][31]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][31] ),
        .Q(\mul_reg_Q_reg[9][31]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][32]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][32]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][32] ),
        .Q(\mul_reg_Q_reg[9][32]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][33]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][33]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][33] ),
        .Q(\mul_reg_Q_reg[9][33]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][34]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][34]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][34] ),
        .Q(\mul_reg_Q_reg[9][34]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][35]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][35]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][35] ),
        .Q(\mul_reg_Q_reg[9][35]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][36]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][36]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][36] ),
        .Q(\mul_reg_Q_reg[9][36]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][37]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][37]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][37] ),
        .Q(\mul_reg_Q_reg[9][37]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][38]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][38]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][38] ),
        .Q(\mul_reg_Q_reg[9][38]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][39]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][39]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][39] ),
        .Q(\mul_reg_Q_reg[9][39]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg[11]1_n_102 ),
        .Q(\mul_reg_Q_reg[9][3]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][40]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][40]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][40] ),
        .Q(\mul_reg_Q_reg[9][40]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][41]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][41]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][41] ),
        .Q(\mul_reg_Q_reg[9][41]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][42]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][42]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][42] ),
        .Q(\mul_reg_Q_reg[9][42]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][43]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][43]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][43] ),
        .Q(\mul_reg_Q_reg[9][43]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][44]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][44]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][44] ),
        .Q(\mul_reg_Q_reg[9][44]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][45]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][45]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][45] ),
        .Q(\mul_reg_Q_reg[9][45]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][46]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][46]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][46] ),
        .Q(\mul_reg_Q_reg[9][46]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][47]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][47]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][47] ),
        .Q(\mul_reg_Q_reg[9][47]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][48]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][48]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][48] ),
        .Q(\mul_reg_Q_reg[9][48]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][49]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][49]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][49] ),
        .Q(\mul_reg_Q_reg[9][49]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][4]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][4] ),
        .Q(\mul_reg_Q_reg[9][4]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][50]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][50]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][50] ),
        .Q(\mul_reg_Q_reg[9][50]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][51]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][51]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][51] ),
        .Q(\mul_reg_Q_reg[9][51]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][5]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][5] ),
        .Q(\mul_reg_Q_reg[9][5]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][6]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][6]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][6] ),
        .Q(\mul_reg_Q_reg[9][6]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][7]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][7]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][7] ),
        .Q(\mul_reg_Q_reg[9][7]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][8]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][8]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][8] ),
        .Q(\mul_reg_Q_reg[9][8]_srl2_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[9] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[9][9]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[9][9]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[51]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_0_[11][9] ),
        .Q(\mul_reg_Q_reg[9][9]_srl2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_counter[0]_i_1 
       (.I0(phase_counter[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_counter[1]_i_1 
       (.I0(phase_counter[1]),
        .I1(phase_counter[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h68)) 
    \phase_counter[2]_i_1 
       (.I0(phase_counter[2]),
        .I1(phase_counter[1]),
        .I2(phase_counter[0]),
        .O(p_0_in[2]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_counter_reg[0] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(p_0_in[0]),
        .Q(phase_counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_counter_reg[1] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(p_0_in[1]),
        .Q(phase_counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_counter_reg[2] 
       (.C(clk),
        .CE(data_out_ready1),
        .CLR(reset),
        .D(p_0_in[2]),
        .Q(phase_counter[2]));
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
