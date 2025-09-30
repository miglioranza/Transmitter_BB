// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue Sep 30 11:33:25 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_Polyphase_filter_0_0_sim_netlist.v
// Design      : Design_2_Polyphase_filter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Design_2_Polyphase_filter_0_0,Polyphase_filter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "Polyphase_filter,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset,
    FIFO_reset,
    input_I,
    input_Q,
    data_in_valid,
    data_out_valid,
    data_out_I,
    data_out_Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Design_2_clk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 FIFO_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME FIFO_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input FIFO_reset;
  input [15:0]input_I;
  input [15:0]input_Q;
  input data_in_valid;
  output data_out_valid;
  output [15:0]data_out_I;
  output [15:0]data_out_Q;

  wire FIFO_reset;
  wire clk;
  wire data_in_valid;
  wire [15:0]data_out_I;
  wire [15:0]data_out_Q;
  wire data_out_valid;
  wire [15:0]input_I;
  wire [15:0]input_Q;
  wire reset;

  (* CONVERSION_FACTOR = "4" *) 
  (* DATA_WIDTH = "16" *) 
  (* DECIMATION_FILTER = "FALSE" *) 
  (* FILTER_TAPS = "16" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Polyphase_filter U0
       (.FIFO_reset(FIFO_reset),
        .clk(clk),
        .data_in_valid(data_in_valid),
        .data_out_I(data_out_I),
        .data_out_Q(data_out_Q),
        .data_out_valid(data_out_valid),
        .input_I(input_I),
        .input_Q(input_Q),
        .reset(reset));
endmodule

(* CONVERSION_FACTOR = "4" *) (* DATA_WIDTH = "16" *) (* DECIMATION_FILTER = "FALSE" *) 
(* FILTER_TAPS = "16" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Polyphase_filter
   (clk,
    reset,
    FIFO_reset,
    input_I,
    input_Q,
    data_in_valid,
    data_out_valid,
    data_out_I,
    data_out_Q);
  input clk;
  input reset;
  input FIFO_reset;
  input [15:0]input_I;
  input [15:0]input_Q;
  input data_in_valid;
  output data_out_valid;
  output [15:0]data_out_I;
  output [15:0]data_out_Q;

  wire FIFO_reset;
  wire axis_data_fifo_Q_n_1;
  wire axis_data_fifo_Q_n_10;
  wire axis_data_fifo_Q_n_11;
  wire axis_data_fifo_Q_n_12;
  wire axis_data_fifo_Q_n_13;
  wire axis_data_fifo_Q_n_14;
  wire axis_data_fifo_Q_n_15;
  wire axis_data_fifo_Q_n_16;
  wire axis_data_fifo_Q_n_17;
  wire axis_data_fifo_Q_n_2;
  wire axis_data_fifo_Q_n_3;
  wire axis_data_fifo_Q_n_4;
  wire axis_data_fifo_Q_n_5;
  wire axis_data_fifo_Q_n_6;
  wire axis_data_fifo_Q_n_7;
  wire axis_data_fifo_Q_n_8;
  wire axis_data_fifo_Q_n_9;
  wire clk;
  wire [14:10]\coeff[3] ;
  wire [10:0]\coeff[7] ;
  wire \coeff_reg[0][9]_i_1_n_0 ;
  wire \coeff_reg[1][14]_i_1_n_0 ;
  wire \coeff_reg[2][0]_i_1_n_0 ;
  wire \coeff_reg[3][13]_i_1_n_0 ;
  wire [14:9]\coeff_reg_reg[0] ;
  wire [14:0]\coeff_reg_reg[1] ;
  wire [12:0]\coeff_reg_reg[2] ;
  wire [13:13]\coeff_reg_reg[3] ;
  wire data_in_valid;
  wire [15:0]data_out_I;
  wire \data_out_I[0]_i_10_n_0 ;
  wire \data_out_I[0]_i_11_n_0 ;
  wire \data_out_I[0]_i_12_n_0 ;
  wire \data_out_I[0]_i_13_n_0 ;
  wire \data_out_I[0]_i_14_n_0 ;
  wire \data_out_I[0]_i_15_n_0 ;
  wire \data_out_I[0]_i_8_n_0 ;
  wire \data_out_I[0]_i_9_n_0 ;
  wire \data_out_I[10]_i_10_n_0 ;
  wire \data_out_I[10]_i_11_n_0 ;
  wire \data_out_I[10]_i_12_n_0 ;
  wire \data_out_I[10]_i_13_n_0 ;
  wire \data_out_I[10]_i_14_n_0 ;
  wire \data_out_I[10]_i_15_n_0 ;
  wire \data_out_I[10]_i_8_n_0 ;
  wire \data_out_I[10]_i_9_n_0 ;
  wire \data_out_I[11]_i_10_n_0 ;
  wire \data_out_I[11]_i_11_n_0 ;
  wire \data_out_I[11]_i_12_n_0 ;
  wire \data_out_I[11]_i_13_n_0 ;
  wire \data_out_I[11]_i_14_n_0 ;
  wire \data_out_I[11]_i_15_n_0 ;
  wire \data_out_I[11]_i_8_n_0 ;
  wire \data_out_I[11]_i_9_n_0 ;
  wire \data_out_I[12]_i_10_n_0 ;
  wire \data_out_I[12]_i_11_n_0 ;
  wire \data_out_I[12]_i_12_n_0 ;
  wire \data_out_I[12]_i_13_n_0 ;
  wire \data_out_I[12]_i_14_n_0 ;
  wire \data_out_I[12]_i_15_n_0 ;
  wire \data_out_I[12]_i_8_n_0 ;
  wire \data_out_I[12]_i_9_n_0 ;
  wire \data_out_I[13]_i_10_n_0 ;
  wire \data_out_I[13]_i_11_n_0 ;
  wire \data_out_I[13]_i_12_n_0 ;
  wire \data_out_I[13]_i_13_n_0 ;
  wire \data_out_I[13]_i_14_n_0 ;
  wire \data_out_I[13]_i_15_n_0 ;
  wire \data_out_I[13]_i_8_n_0 ;
  wire \data_out_I[13]_i_9_n_0 ;
  wire \data_out_I[14]_i_10_n_0 ;
  wire \data_out_I[14]_i_11_n_0 ;
  wire \data_out_I[14]_i_12_n_0 ;
  wire \data_out_I[14]_i_13_n_0 ;
  wire \data_out_I[14]_i_14_n_0 ;
  wire \data_out_I[14]_i_15_n_0 ;
  wire \data_out_I[14]_i_8_n_0 ;
  wire \data_out_I[14]_i_9_n_0 ;
  wire \data_out_I[15]_i_10_n_0 ;
  wire \data_out_I[15]_i_11_n_0 ;
  wire \data_out_I[15]_i_12_n_0 ;
  wire \data_out_I[15]_i_13_n_0 ;
  wire \data_out_I[15]_i_14_n_0 ;
  wire \data_out_I[15]_i_15_n_0 ;
  wire \data_out_I[15]_i_16_n_0 ;
  wire \data_out_I[15]_i_17_n_0 ;
  wire \data_out_I[15]_i_1_n_0 ;
  wire \data_out_I[1]_i_10_n_0 ;
  wire \data_out_I[1]_i_11_n_0 ;
  wire \data_out_I[1]_i_12_n_0 ;
  wire \data_out_I[1]_i_13_n_0 ;
  wire \data_out_I[1]_i_14_n_0 ;
  wire \data_out_I[1]_i_15_n_0 ;
  wire \data_out_I[1]_i_8_n_0 ;
  wire \data_out_I[1]_i_9_n_0 ;
  wire \data_out_I[2]_i_10_n_0 ;
  wire \data_out_I[2]_i_11_n_0 ;
  wire \data_out_I[2]_i_12_n_0 ;
  wire \data_out_I[2]_i_13_n_0 ;
  wire \data_out_I[2]_i_14_n_0 ;
  wire \data_out_I[2]_i_15_n_0 ;
  wire \data_out_I[2]_i_8_n_0 ;
  wire \data_out_I[2]_i_9_n_0 ;
  wire \data_out_I[3]_i_10_n_0 ;
  wire \data_out_I[3]_i_11_n_0 ;
  wire \data_out_I[3]_i_12_n_0 ;
  wire \data_out_I[3]_i_13_n_0 ;
  wire \data_out_I[3]_i_14_n_0 ;
  wire \data_out_I[3]_i_15_n_0 ;
  wire \data_out_I[3]_i_8_n_0 ;
  wire \data_out_I[3]_i_9_n_0 ;
  wire \data_out_I[4]_i_10_n_0 ;
  wire \data_out_I[4]_i_11_n_0 ;
  wire \data_out_I[4]_i_12_n_0 ;
  wire \data_out_I[4]_i_13_n_0 ;
  wire \data_out_I[4]_i_14_n_0 ;
  wire \data_out_I[4]_i_15_n_0 ;
  wire \data_out_I[4]_i_8_n_0 ;
  wire \data_out_I[4]_i_9_n_0 ;
  wire \data_out_I[5]_i_10_n_0 ;
  wire \data_out_I[5]_i_11_n_0 ;
  wire \data_out_I[5]_i_12_n_0 ;
  wire \data_out_I[5]_i_13_n_0 ;
  wire \data_out_I[5]_i_14_n_0 ;
  wire \data_out_I[5]_i_15_n_0 ;
  wire \data_out_I[5]_i_8_n_0 ;
  wire \data_out_I[5]_i_9_n_0 ;
  wire \data_out_I[6]_i_10_n_0 ;
  wire \data_out_I[6]_i_11_n_0 ;
  wire \data_out_I[6]_i_12_n_0 ;
  wire \data_out_I[6]_i_13_n_0 ;
  wire \data_out_I[6]_i_14_n_0 ;
  wire \data_out_I[6]_i_15_n_0 ;
  wire \data_out_I[6]_i_8_n_0 ;
  wire \data_out_I[6]_i_9_n_0 ;
  wire \data_out_I[7]_i_10_n_0 ;
  wire \data_out_I[7]_i_11_n_0 ;
  wire \data_out_I[7]_i_12_n_0 ;
  wire \data_out_I[7]_i_13_n_0 ;
  wire \data_out_I[7]_i_14_n_0 ;
  wire \data_out_I[7]_i_15_n_0 ;
  wire \data_out_I[7]_i_8_n_0 ;
  wire \data_out_I[7]_i_9_n_0 ;
  wire \data_out_I[8]_i_10_n_0 ;
  wire \data_out_I[8]_i_11_n_0 ;
  wire \data_out_I[8]_i_12_n_0 ;
  wire \data_out_I[8]_i_13_n_0 ;
  wire \data_out_I[8]_i_14_n_0 ;
  wire \data_out_I[8]_i_15_n_0 ;
  wire \data_out_I[8]_i_8_n_0 ;
  wire \data_out_I[8]_i_9_n_0 ;
  wire \data_out_I[9]_i_10_n_0 ;
  wire \data_out_I[9]_i_11_n_0 ;
  wire \data_out_I[9]_i_12_n_0 ;
  wire \data_out_I[9]_i_13_n_0 ;
  wire \data_out_I[9]_i_14_n_0 ;
  wire \data_out_I[9]_i_15_n_0 ;
  wire \data_out_I[9]_i_8_n_0 ;
  wire \data_out_I[9]_i_9_n_0 ;
  wire \data_out_I_reg[0]_i_2_n_0 ;
  wire \data_out_I_reg[0]_i_3_n_0 ;
  wire \data_out_I_reg[0]_i_4_n_0 ;
  wire \data_out_I_reg[0]_i_5_n_0 ;
  wire \data_out_I_reg[0]_i_6_n_0 ;
  wire \data_out_I_reg[0]_i_7_n_0 ;
  wire \data_out_I_reg[10]_i_2_n_0 ;
  wire \data_out_I_reg[10]_i_3_n_0 ;
  wire \data_out_I_reg[10]_i_4_n_0 ;
  wire \data_out_I_reg[10]_i_5_n_0 ;
  wire \data_out_I_reg[10]_i_6_n_0 ;
  wire \data_out_I_reg[10]_i_7_n_0 ;
  wire \data_out_I_reg[11]_i_2_n_0 ;
  wire \data_out_I_reg[11]_i_3_n_0 ;
  wire \data_out_I_reg[11]_i_4_n_0 ;
  wire \data_out_I_reg[11]_i_5_n_0 ;
  wire \data_out_I_reg[11]_i_6_n_0 ;
  wire \data_out_I_reg[11]_i_7_n_0 ;
  wire \data_out_I_reg[12]_i_2_n_0 ;
  wire \data_out_I_reg[12]_i_3_n_0 ;
  wire \data_out_I_reg[12]_i_4_n_0 ;
  wire \data_out_I_reg[12]_i_5_n_0 ;
  wire \data_out_I_reg[12]_i_6_n_0 ;
  wire \data_out_I_reg[12]_i_7_n_0 ;
  wire \data_out_I_reg[13]_i_2_n_0 ;
  wire \data_out_I_reg[13]_i_3_n_0 ;
  wire \data_out_I_reg[13]_i_4_n_0 ;
  wire \data_out_I_reg[13]_i_5_n_0 ;
  wire \data_out_I_reg[13]_i_6_n_0 ;
  wire \data_out_I_reg[13]_i_7_n_0 ;
  wire \data_out_I_reg[14]_i_2_n_0 ;
  wire \data_out_I_reg[14]_i_3_n_0 ;
  wire \data_out_I_reg[14]_i_4_n_0 ;
  wire \data_out_I_reg[14]_i_5_n_0 ;
  wire \data_out_I_reg[14]_i_6_n_0 ;
  wire \data_out_I_reg[14]_i_7_n_0 ;
  wire \data_out_I_reg[15]_i_4_n_0 ;
  wire \data_out_I_reg[15]_i_5_n_0 ;
  wire \data_out_I_reg[15]_i_6_n_0 ;
  wire \data_out_I_reg[15]_i_7_n_0 ;
  wire \data_out_I_reg[15]_i_8_n_0 ;
  wire \data_out_I_reg[15]_i_9_n_0 ;
  wire \data_out_I_reg[1]_i_2_n_0 ;
  wire \data_out_I_reg[1]_i_3_n_0 ;
  wire \data_out_I_reg[1]_i_4_n_0 ;
  wire \data_out_I_reg[1]_i_5_n_0 ;
  wire \data_out_I_reg[1]_i_6_n_0 ;
  wire \data_out_I_reg[1]_i_7_n_0 ;
  wire \data_out_I_reg[2]_i_2_n_0 ;
  wire \data_out_I_reg[2]_i_3_n_0 ;
  wire \data_out_I_reg[2]_i_4_n_0 ;
  wire \data_out_I_reg[2]_i_5_n_0 ;
  wire \data_out_I_reg[2]_i_6_n_0 ;
  wire \data_out_I_reg[2]_i_7_n_0 ;
  wire \data_out_I_reg[3]_i_2_n_0 ;
  wire \data_out_I_reg[3]_i_3_n_0 ;
  wire \data_out_I_reg[3]_i_4_n_0 ;
  wire \data_out_I_reg[3]_i_5_n_0 ;
  wire \data_out_I_reg[3]_i_6_n_0 ;
  wire \data_out_I_reg[3]_i_7_n_0 ;
  wire \data_out_I_reg[4]_i_2_n_0 ;
  wire \data_out_I_reg[4]_i_3_n_0 ;
  wire \data_out_I_reg[4]_i_4_n_0 ;
  wire \data_out_I_reg[4]_i_5_n_0 ;
  wire \data_out_I_reg[4]_i_6_n_0 ;
  wire \data_out_I_reg[4]_i_7_n_0 ;
  wire \data_out_I_reg[5]_i_2_n_0 ;
  wire \data_out_I_reg[5]_i_3_n_0 ;
  wire \data_out_I_reg[5]_i_4_n_0 ;
  wire \data_out_I_reg[5]_i_5_n_0 ;
  wire \data_out_I_reg[5]_i_6_n_0 ;
  wire \data_out_I_reg[5]_i_7_n_0 ;
  wire \data_out_I_reg[6]_i_2_n_0 ;
  wire \data_out_I_reg[6]_i_3_n_0 ;
  wire \data_out_I_reg[6]_i_4_n_0 ;
  wire \data_out_I_reg[6]_i_5_n_0 ;
  wire \data_out_I_reg[6]_i_6_n_0 ;
  wire \data_out_I_reg[6]_i_7_n_0 ;
  wire \data_out_I_reg[7]_i_2_n_0 ;
  wire \data_out_I_reg[7]_i_3_n_0 ;
  wire \data_out_I_reg[7]_i_4_n_0 ;
  wire \data_out_I_reg[7]_i_5_n_0 ;
  wire \data_out_I_reg[7]_i_6_n_0 ;
  wire \data_out_I_reg[7]_i_7_n_0 ;
  wire \data_out_I_reg[8]_i_2_n_0 ;
  wire \data_out_I_reg[8]_i_3_n_0 ;
  wire \data_out_I_reg[8]_i_4_n_0 ;
  wire \data_out_I_reg[8]_i_5_n_0 ;
  wire \data_out_I_reg[8]_i_6_n_0 ;
  wire \data_out_I_reg[8]_i_7_n_0 ;
  wire \data_out_I_reg[9]_i_2_n_0 ;
  wire \data_out_I_reg[9]_i_3_n_0 ;
  wire \data_out_I_reg[9]_i_4_n_0 ;
  wire \data_out_I_reg[9]_i_5_n_0 ;
  wire \data_out_I_reg[9]_i_6_n_0 ;
  wire \data_out_I_reg[9]_i_7_n_0 ;
  wire [15:0]data_out_Q;
  wire \data_out_Q[0]_i_10_n_0 ;
  wire \data_out_Q[0]_i_11_n_0 ;
  wire \data_out_Q[0]_i_12_n_0 ;
  wire \data_out_Q[0]_i_13_n_0 ;
  wire \data_out_Q[0]_i_14_n_0 ;
  wire \data_out_Q[0]_i_15_n_0 ;
  wire \data_out_Q[0]_i_1_n_0 ;
  wire \data_out_Q[0]_i_8_n_0 ;
  wire \data_out_Q[0]_i_9_n_0 ;
  wire \data_out_Q[10]_i_10_n_0 ;
  wire \data_out_Q[10]_i_11_n_0 ;
  wire \data_out_Q[10]_i_12_n_0 ;
  wire \data_out_Q[10]_i_13_n_0 ;
  wire \data_out_Q[10]_i_14_n_0 ;
  wire \data_out_Q[10]_i_15_n_0 ;
  wire \data_out_Q[10]_i_1_n_0 ;
  wire \data_out_Q[10]_i_8_n_0 ;
  wire \data_out_Q[10]_i_9_n_0 ;
  wire \data_out_Q[11]_i_10_n_0 ;
  wire \data_out_Q[11]_i_11_n_0 ;
  wire \data_out_Q[11]_i_12_n_0 ;
  wire \data_out_Q[11]_i_13_n_0 ;
  wire \data_out_Q[11]_i_14_n_0 ;
  wire \data_out_Q[11]_i_15_n_0 ;
  wire \data_out_Q[11]_i_1_n_0 ;
  wire \data_out_Q[11]_i_8_n_0 ;
  wire \data_out_Q[11]_i_9_n_0 ;
  wire \data_out_Q[12]_i_10_n_0 ;
  wire \data_out_Q[12]_i_11_n_0 ;
  wire \data_out_Q[12]_i_12_n_0 ;
  wire \data_out_Q[12]_i_13_n_0 ;
  wire \data_out_Q[12]_i_14_n_0 ;
  wire \data_out_Q[12]_i_15_n_0 ;
  wire \data_out_Q[12]_i_1_n_0 ;
  wire \data_out_Q[12]_i_8_n_0 ;
  wire \data_out_Q[12]_i_9_n_0 ;
  wire \data_out_Q[13]_i_10_n_0 ;
  wire \data_out_Q[13]_i_11_n_0 ;
  wire \data_out_Q[13]_i_12_n_0 ;
  wire \data_out_Q[13]_i_13_n_0 ;
  wire \data_out_Q[13]_i_14_n_0 ;
  wire \data_out_Q[13]_i_15_n_0 ;
  wire \data_out_Q[13]_i_1_n_0 ;
  wire \data_out_Q[13]_i_8_n_0 ;
  wire \data_out_Q[13]_i_9_n_0 ;
  wire \data_out_Q[14]_i_10_n_0 ;
  wire \data_out_Q[14]_i_11_n_0 ;
  wire \data_out_Q[14]_i_12_n_0 ;
  wire \data_out_Q[14]_i_13_n_0 ;
  wire \data_out_Q[14]_i_14_n_0 ;
  wire \data_out_Q[14]_i_15_n_0 ;
  wire \data_out_Q[14]_i_1_n_0 ;
  wire \data_out_Q[14]_i_8_n_0 ;
  wire \data_out_Q[14]_i_9_n_0 ;
  wire \data_out_Q[15]_i_10_n_0 ;
  wire \data_out_Q[15]_i_11_n_0 ;
  wire \data_out_Q[15]_i_12_n_0 ;
  wire \data_out_Q[15]_i_13_n_0 ;
  wire \data_out_Q[15]_i_14_n_0 ;
  wire \data_out_Q[15]_i_15_n_0 ;
  wire \data_out_Q[15]_i_1_n_0 ;
  wire \data_out_Q[15]_i_8_n_0 ;
  wire \data_out_Q[15]_i_9_n_0 ;
  wire \data_out_Q[1]_i_10_n_0 ;
  wire \data_out_Q[1]_i_11_n_0 ;
  wire \data_out_Q[1]_i_12_n_0 ;
  wire \data_out_Q[1]_i_13_n_0 ;
  wire \data_out_Q[1]_i_14_n_0 ;
  wire \data_out_Q[1]_i_15_n_0 ;
  wire \data_out_Q[1]_i_1_n_0 ;
  wire \data_out_Q[1]_i_8_n_0 ;
  wire \data_out_Q[1]_i_9_n_0 ;
  wire \data_out_Q[2]_i_10_n_0 ;
  wire \data_out_Q[2]_i_11_n_0 ;
  wire \data_out_Q[2]_i_12_n_0 ;
  wire \data_out_Q[2]_i_13_n_0 ;
  wire \data_out_Q[2]_i_14_n_0 ;
  wire \data_out_Q[2]_i_15_n_0 ;
  wire \data_out_Q[2]_i_1_n_0 ;
  wire \data_out_Q[2]_i_8_n_0 ;
  wire \data_out_Q[2]_i_9_n_0 ;
  wire \data_out_Q[3]_i_10_n_0 ;
  wire \data_out_Q[3]_i_11_n_0 ;
  wire \data_out_Q[3]_i_12_n_0 ;
  wire \data_out_Q[3]_i_13_n_0 ;
  wire \data_out_Q[3]_i_14_n_0 ;
  wire \data_out_Q[3]_i_15_n_0 ;
  wire \data_out_Q[3]_i_1_n_0 ;
  wire \data_out_Q[3]_i_8_n_0 ;
  wire \data_out_Q[3]_i_9_n_0 ;
  wire \data_out_Q[4]_i_10_n_0 ;
  wire \data_out_Q[4]_i_11_n_0 ;
  wire \data_out_Q[4]_i_12_n_0 ;
  wire \data_out_Q[4]_i_13_n_0 ;
  wire \data_out_Q[4]_i_14_n_0 ;
  wire \data_out_Q[4]_i_15_n_0 ;
  wire \data_out_Q[4]_i_1_n_0 ;
  wire \data_out_Q[4]_i_8_n_0 ;
  wire \data_out_Q[4]_i_9_n_0 ;
  wire \data_out_Q[5]_i_10_n_0 ;
  wire \data_out_Q[5]_i_11_n_0 ;
  wire \data_out_Q[5]_i_12_n_0 ;
  wire \data_out_Q[5]_i_13_n_0 ;
  wire \data_out_Q[5]_i_14_n_0 ;
  wire \data_out_Q[5]_i_15_n_0 ;
  wire \data_out_Q[5]_i_1_n_0 ;
  wire \data_out_Q[5]_i_8_n_0 ;
  wire \data_out_Q[5]_i_9_n_0 ;
  wire \data_out_Q[6]_i_10_n_0 ;
  wire \data_out_Q[6]_i_11_n_0 ;
  wire \data_out_Q[6]_i_12_n_0 ;
  wire \data_out_Q[6]_i_13_n_0 ;
  wire \data_out_Q[6]_i_14_n_0 ;
  wire \data_out_Q[6]_i_15_n_0 ;
  wire \data_out_Q[6]_i_1_n_0 ;
  wire \data_out_Q[6]_i_8_n_0 ;
  wire \data_out_Q[6]_i_9_n_0 ;
  wire \data_out_Q[7]_i_10_n_0 ;
  wire \data_out_Q[7]_i_11_n_0 ;
  wire \data_out_Q[7]_i_12_n_0 ;
  wire \data_out_Q[7]_i_13_n_0 ;
  wire \data_out_Q[7]_i_14_n_0 ;
  wire \data_out_Q[7]_i_15_n_0 ;
  wire \data_out_Q[7]_i_1_n_0 ;
  wire \data_out_Q[7]_i_8_n_0 ;
  wire \data_out_Q[7]_i_9_n_0 ;
  wire \data_out_Q[8]_i_10_n_0 ;
  wire \data_out_Q[8]_i_11_n_0 ;
  wire \data_out_Q[8]_i_12_n_0 ;
  wire \data_out_Q[8]_i_13_n_0 ;
  wire \data_out_Q[8]_i_14_n_0 ;
  wire \data_out_Q[8]_i_15_n_0 ;
  wire \data_out_Q[8]_i_1_n_0 ;
  wire \data_out_Q[8]_i_8_n_0 ;
  wire \data_out_Q[8]_i_9_n_0 ;
  wire \data_out_Q[9]_i_10_n_0 ;
  wire \data_out_Q[9]_i_11_n_0 ;
  wire \data_out_Q[9]_i_12_n_0 ;
  wire \data_out_Q[9]_i_13_n_0 ;
  wire \data_out_Q[9]_i_14_n_0 ;
  wire \data_out_Q[9]_i_15_n_0 ;
  wire \data_out_Q[9]_i_1_n_0 ;
  wire \data_out_Q[9]_i_8_n_0 ;
  wire \data_out_Q[9]_i_9_n_0 ;
  wire \data_out_Q_reg[0]_i_2_n_0 ;
  wire \data_out_Q_reg[0]_i_3_n_0 ;
  wire \data_out_Q_reg[0]_i_4_n_0 ;
  wire \data_out_Q_reg[0]_i_5_n_0 ;
  wire \data_out_Q_reg[0]_i_6_n_0 ;
  wire \data_out_Q_reg[0]_i_7_n_0 ;
  wire \data_out_Q_reg[10]_i_2_n_0 ;
  wire \data_out_Q_reg[10]_i_3_n_0 ;
  wire \data_out_Q_reg[10]_i_4_n_0 ;
  wire \data_out_Q_reg[10]_i_5_n_0 ;
  wire \data_out_Q_reg[10]_i_6_n_0 ;
  wire \data_out_Q_reg[10]_i_7_n_0 ;
  wire \data_out_Q_reg[11]_i_2_n_0 ;
  wire \data_out_Q_reg[11]_i_3_n_0 ;
  wire \data_out_Q_reg[11]_i_4_n_0 ;
  wire \data_out_Q_reg[11]_i_5_n_0 ;
  wire \data_out_Q_reg[11]_i_6_n_0 ;
  wire \data_out_Q_reg[11]_i_7_n_0 ;
  wire \data_out_Q_reg[12]_i_2_n_0 ;
  wire \data_out_Q_reg[12]_i_3_n_0 ;
  wire \data_out_Q_reg[12]_i_4_n_0 ;
  wire \data_out_Q_reg[12]_i_5_n_0 ;
  wire \data_out_Q_reg[12]_i_6_n_0 ;
  wire \data_out_Q_reg[12]_i_7_n_0 ;
  wire \data_out_Q_reg[13]_i_2_n_0 ;
  wire \data_out_Q_reg[13]_i_3_n_0 ;
  wire \data_out_Q_reg[13]_i_4_n_0 ;
  wire \data_out_Q_reg[13]_i_5_n_0 ;
  wire \data_out_Q_reg[13]_i_6_n_0 ;
  wire \data_out_Q_reg[13]_i_7_n_0 ;
  wire \data_out_Q_reg[14]_i_2_n_0 ;
  wire \data_out_Q_reg[14]_i_3_n_0 ;
  wire \data_out_Q_reg[14]_i_4_n_0 ;
  wire \data_out_Q_reg[14]_i_5_n_0 ;
  wire \data_out_Q_reg[14]_i_6_n_0 ;
  wire \data_out_Q_reg[14]_i_7_n_0 ;
  wire \data_out_Q_reg[15]_i_2_n_0 ;
  wire \data_out_Q_reg[15]_i_3_n_0 ;
  wire \data_out_Q_reg[15]_i_4_n_0 ;
  wire \data_out_Q_reg[15]_i_5_n_0 ;
  wire \data_out_Q_reg[15]_i_6_n_0 ;
  wire \data_out_Q_reg[15]_i_7_n_0 ;
  wire \data_out_Q_reg[1]_i_2_n_0 ;
  wire \data_out_Q_reg[1]_i_3_n_0 ;
  wire \data_out_Q_reg[1]_i_4_n_0 ;
  wire \data_out_Q_reg[1]_i_5_n_0 ;
  wire \data_out_Q_reg[1]_i_6_n_0 ;
  wire \data_out_Q_reg[1]_i_7_n_0 ;
  wire \data_out_Q_reg[2]_i_2_n_0 ;
  wire \data_out_Q_reg[2]_i_3_n_0 ;
  wire \data_out_Q_reg[2]_i_4_n_0 ;
  wire \data_out_Q_reg[2]_i_5_n_0 ;
  wire \data_out_Q_reg[2]_i_6_n_0 ;
  wire \data_out_Q_reg[2]_i_7_n_0 ;
  wire \data_out_Q_reg[3]_i_2_n_0 ;
  wire \data_out_Q_reg[3]_i_3_n_0 ;
  wire \data_out_Q_reg[3]_i_4_n_0 ;
  wire \data_out_Q_reg[3]_i_5_n_0 ;
  wire \data_out_Q_reg[3]_i_6_n_0 ;
  wire \data_out_Q_reg[3]_i_7_n_0 ;
  wire \data_out_Q_reg[4]_i_2_n_0 ;
  wire \data_out_Q_reg[4]_i_3_n_0 ;
  wire \data_out_Q_reg[4]_i_4_n_0 ;
  wire \data_out_Q_reg[4]_i_5_n_0 ;
  wire \data_out_Q_reg[4]_i_6_n_0 ;
  wire \data_out_Q_reg[4]_i_7_n_0 ;
  wire \data_out_Q_reg[5]_i_2_n_0 ;
  wire \data_out_Q_reg[5]_i_3_n_0 ;
  wire \data_out_Q_reg[5]_i_4_n_0 ;
  wire \data_out_Q_reg[5]_i_5_n_0 ;
  wire \data_out_Q_reg[5]_i_6_n_0 ;
  wire \data_out_Q_reg[5]_i_7_n_0 ;
  wire \data_out_Q_reg[6]_i_2_n_0 ;
  wire \data_out_Q_reg[6]_i_3_n_0 ;
  wire \data_out_Q_reg[6]_i_4_n_0 ;
  wire \data_out_Q_reg[6]_i_5_n_0 ;
  wire \data_out_Q_reg[6]_i_6_n_0 ;
  wire \data_out_Q_reg[6]_i_7_n_0 ;
  wire \data_out_Q_reg[7]_i_2_n_0 ;
  wire \data_out_Q_reg[7]_i_3_n_0 ;
  wire \data_out_Q_reg[7]_i_4_n_0 ;
  wire \data_out_Q_reg[7]_i_5_n_0 ;
  wire \data_out_Q_reg[7]_i_6_n_0 ;
  wire \data_out_Q_reg[7]_i_7_n_0 ;
  wire \data_out_Q_reg[8]_i_2_n_0 ;
  wire \data_out_Q_reg[8]_i_3_n_0 ;
  wire \data_out_Q_reg[8]_i_4_n_0 ;
  wire \data_out_Q_reg[8]_i_5_n_0 ;
  wire \data_out_Q_reg[8]_i_6_n_0 ;
  wire \data_out_Q_reg[8]_i_7_n_0 ;
  wire \data_out_Q_reg[9]_i_2_n_0 ;
  wire \data_out_Q_reg[9]_i_3_n_0 ;
  wire \data_out_Q_reg[9]_i_4_n_0 ;
  wire \data_out_Q_reg[9]_i_5_n_0 ;
  wire \data_out_Q_reg[9]_i_6_n_0 ;
  wire \data_out_Q_reg[9]_i_7_n_0 ;
  wire data_out_valid;
  wire data_out_valid_i_10_n_0;
  wire data_out_valid_i_11_n_0;
  wire data_out_valid_i_12_n_0;
  wire data_out_valid_i_13_n_0;
  wire data_out_valid_i_14_n_0;
  wire data_out_valid_i_15_n_0;
  wire data_out_valid_i_16_n_0;
  wire data_out_valid_i_17_n_0;
  wire data_out_valid_i_18_n_0;
  wire data_out_valid_i_1_n_0;
  wire data_out_valid_i_4_n_0;
  wire data_out_valid_i_5_n_0;
  wire data_out_valid_i_6_n_0;
  wire data_out_valid_i_7_n_0;
  wire data_out_valid_i_8_n_0;
  wire data_out_valid_i_9_n_0;
  wire data_out_valid_reg_i_2_n_3;
  wire data_out_valid_reg_i_2_n_4;
  wire data_out_valid_reg_i_2_n_5;
  wire data_out_valid_reg_i_2_n_6;
  wire data_out_valid_reg_i_2_n_7;
  wire data_out_valid_reg_i_3_n_0;
  wire data_out_valid_reg_i_3_n_1;
  wire data_out_valid_reg_i_3_n_2;
  wire data_out_valid_reg_i_3_n_3;
  wire data_out_valid_reg_i_3_n_4;
  wire data_out_valid_reg_i_3_n_5;
  wire data_out_valid_reg_i_3_n_6;
  wire data_out_valid_reg_i_3_n_7;
  wire filter2fifo_ready1;
  wire filter2fifo_ready_i_1_n_0;
  wire filter2fifo_ready_reg_n_0;
  wire [15:0]input_I;
  wire [15:0]input_Q;
  wire [15:0]m_axis_tdata;
  wire m_axis_tvalid;
  wire [35:0]\mul_reg_I_reg[10] ;
  wire [35:0]\mul_reg_I_reg[11] ;
  wire \mul_reg_I_reg[11]0_n_100 ;
  wire \mul_reg_I_reg[11]0_n_101 ;
  wire \mul_reg_I_reg[11]0_n_102 ;
  wire \mul_reg_I_reg[11]0_n_103 ;
  wire \mul_reg_I_reg[11]0_n_104 ;
  wire \mul_reg_I_reg[11]0_n_105 ;
  wire \mul_reg_I_reg[11]0_n_70 ;
  wire \mul_reg_I_reg[11]0_n_71 ;
  wire \mul_reg_I_reg[11]0_n_72 ;
  wire \mul_reg_I_reg[11]0_n_73 ;
  wire \mul_reg_I_reg[11]0_n_74 ;
  wire \mul_reg_I_reg[11]0_n_75 ;
  wire \mul_reg_I_reg[11]0_n_76 ;
  wire \mul_reg_I_reg[11]0_n_77 ;
  wire \mul_reg_I_reg[11]0_n_78 ;
  wire \mul_reg_I_reg[11]0_n_79 ;
  wire \mul_reg_I_reg[11]0_n_80 ;
  wire \mul_reg_I_reg[11]0_n_81 ;
  wire \mul_reg_I_reg[11]0_n_82 ;
  wire \mul_reg_I_reg[11]0_n_83 ;
  wire \mul_reg_I_reg[11]0_n_84 ;
  wire \mul_reg_I_reg[11]0_n_85 ;
  wire \mul_reg_I_reg[11]0_n_86 ;
  wire \mul_reg_I_reg[11]0_n_87 ;
  wire \mul_reg_I_reg[11]0_n_88 ;
  wire \mul_reg_I_reg[11]0_n_89 ;
  wire \mul_reg_I_reg[11]0_n_90 ;
  wire \mul_reg_I_reg[11]0_n_91 ;
  wire \mul_reg_I_reg[11]0_n_92 ;
  wire \mul_reg_I_reg[11]0_n_93 ;
  wire \mul_reg_I_reg[11]0_n_94 ;
  wire \mul_reg_I_reg[11]0_n_95 ;
  wire \mul_reg_I_reg[11]0_n_96 ;
  wire \mul_reg_I_reg[11]0_n_97 ;
  wire \mul_reg_I_reg[11]0_n_98 ;
  wire \mul_reg_I_reg[11]0_n_99 ;
  wire [31:0]\mul_reg_I_reg[12] ;
  wire [31:0]\mul_reg_I_reg[13] ;
  wire [31:0]\mul_reg_I_reg[14] ;
  wire \mul_reg_I_reg[14][31]_i_2_n_0 ;
  wire [31:0]\mul_reg_I_reg[15] ;
  wire \mul_reg_I_reg[15]0_n_100 ;
  wire \mul_reg_I_reg[15]0_n_101 ;
  wire \mul_reg_I_reg[15]0_n_102 ;
  wire \mul_reg_I_reg[15]0_n_103 ;
  wire \mul_reg_I_reg[15]0_n_104 ;
  wire \mul_reg_I_reg[15]0_n_105 ;
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
  wire \mul_reg_I_reg[15]0_n_89 ;
  wire \mul_reg_I_reg[15]0_n_90 ;
  wire \mul_reg_I_reg[15]0_n_91 ;
  wire \mul_reg_I_reg[15]0_n_92 ;
  wire \mul_reg_I_reg[15]0_n_93 ;
  wire \mul_reg_I_reg[15]0_n_94 ;
  wire \mul_reg_I_reg[15]0_n_95 ;
  wire \mul_reg_I_reg[15]0_n_96 ;
  wire \mul_reg_I_reg[15]0_n_97 ;
  wire \mul_reg_I_reg[15]0_n_98 ;
  wire \mul_reg_I_reg[15]0_n_99 ;
  wire [15:0]\mul_reg_I_reg[1] ;
  wire [15:0]\mul_reg_I_reg[2] ;
  wire [15:0]\mul_reg_I_reg[3] ;
  wire \mul_reg_I_reg[3]0_n_100 ;
  wire \mul_reg_I_reg[3]0_n_101 ;
  wire \mul_reg_I_reg[3]0_n_102 ;
  wire \mul_reg_I_reg[3]0_n_103 ;
  wire \mul_reg_I_reg[3]0_n_104 ;
  wire \mul_reg_I_reg[3]0_n_105 ;
  wire \mul_reg_I_reg[3]0_n_70 ;
  wire \mul_reg_I_reg[3]0_n_71 ;
  wire \mul_reg_I_reg[3]0_n_72 ;
  wire \mul_reg_I_reg[3]0_n_73 ;
  wire \mul_reg_I_reg[3]0_n_74 ;
  wire \mul_reg_I_reg[3]0_n_75 ;
  wire \mul_reg_I_reg[3]0_n_76 ;
  wire \mul_reg_I_reg[3]0_n_77 ;
  wire \mul_reg_I_reg[3]0_n_78 ;
  wire \mul_reg_I_reg[3]0_n_79 ;
  wire \mul_reg_I_reg[3]0_n_80 ;
  wire \mul_reg_I_reg[3]0_n_81 ;
  wire \mul_reg_I_reg[3]0_n_82 ;
  wire \mul_reg_I_reg[3]0_n_83 ;
  wire \mul_reg_I_reg[3]0_n_84 ;
  wire \mul_reg_I_reg[3]0_n_85 ;
  wire \mul_reg_I_reg[3]0_n_86 ;
  wire \mul_reg_I_reg[3]0_n_87 ;
  wire \mul_reg_I_reg[3]0_n_88 ;
  wire \mul_reg_I_reg[3]0_n_89 ;
  wire \mul_reg_I_reg[3]0_n_90 ;
  wire \mul_reg_I_reg[3]0_n_91 ;
  wire \mul_reg_I_reg[3]0_n_92 ;
  wire \mul_reg_I_reg[3]0_n_93 ;
  wire \mul_reg_I_reg[3]0_n_94 ;
  wire \mul_reg_I_reg[3]0_n_95 ;
  wire \mul_reg_I_reg[3]0_n_96 ;
  wire \mul_reg_I_reg[3]0_n_97 ;
  wire \mul_reg_I_reg[3]0_n_98 ;
  wire \mul_reg_I_reg[3]0_n_99 ;
  wire [35:0]\mul_reg_I_reg[4] ;
  wire [35:0]\mul_reg_I_reg[5] ;
  wire [35:0]\mul_reg_I_reg[6] ;
  wire [35:0]\mul_reg_I_reg[7] ;
  wire \mul_reg_I_reg[7]0_n_100 ;
  wire \mul_reg_I_reg[7]0_n_101 ;
  wire \mul_reg_I_reg[7]0_n_102 ;
  wire \mul_reg_I_reg[7]0_n_103 ;
  wire \mul_reg_I_reg[7]0_n_104 ;
  wire \mul_reg_I_reg[7]0_n_105 ;
  wire \mul_reg_I_reg[7]0_n_70 ;
  wire \mul_reg_I_reg[7]0_n_71 ;
  wire \mul_reg_I_reg[7]0_n_72 ;
  wire \mul_reg_I_reg[7]0_n_73 ;
  wire \mul_reg_I_reg[7]0_n_74 ;
  wire \mul_reg_I_reg[7]0_n_75 ;
  wire \mul_reg_I_reg[7]0_n_76 ;
  wire \mul_reg_I_reg[7]0_n_77 ;
  wire \mul_reg_I_reg[7]0_n_78 ;
  wire \mul_reg_I_reg[7]0_n_79 ;
  wire \mul_reg_I_reg[7]0_n_80 ;
  wire \mul_reg_I_reg[7]0_n_81 ;
  wire \mul_reg_I_reg[7]0_n_82 ;
  wire \mul_reg_I_reg[7]0_n_83 ;
  wire \mul_reg_I_reg[7]0_n_84 ;
  wire \mul_reg_I_reg[7]0_n_85 ;
  wire \mul_reg_I_reg[7]0_n_86 ;
  wire \mul_reg_I_reg[7]0_n_87 ;
  wire \mul_reg_I_reg[7]0_n_88 ;
  wire \mul_reg_I_reg[7]0_n_89 ;
  wire \mul_reg_I_reg[7]0_n_90 ;
  wire \mul_reg_I_reg[7]0_n_91 ;
  wire \mul_reg_I_reg[7]0_n_92 ;
  wire \mul_reg_I_reg[7]0_n_93 ;
  wire \mul_reg_I_reg[7]0_n_94 ;
  wire \mul_reg_I_reg[7]0_n_95 ;
  wire \mul_reg_I_reg[7]0_n_96 ;
  wire \mul_reg_I_reg[7]0_n_97 ;
  wire \mul_reg_I_reg[7]0_n_98 ;
  wire \mul_reg_I_reg[7]0_n_99 ;
  wire [35:0]\mul_reg_I_reg[8] ;
  wire [35:0]\mul_reg_I_reg[9] ;
  wire \mul_reg_I_reg_n_0_[0][0] ;
  wire \mul_reg_I_reg_n_0_[0][10] ;
  wire \mul_reg_I_reg_n_0_[0][11] ;
  wire \mul_reg_I_reg_n_0_[0][12] ;
  wire \mul_reg_I_reg_n_0_[0][13] ;
  wire \mul_reg_I_reg_n_0_[0][14] ;
  wire \mul_reg_I_reg_n_0_[0][15] ;
  wire \mul_reg_I_reg_n_0_[0][1] ;
  wire \mul_reg_I_reg_n_0_[0][2] ;
  wire \mul_reg_I_reg_n_0_[0][3] ;
  wire \mul_reg_I_reg_n_0_[0][4] ;
  wire \mul_reg_I_reg_n_0_[0][5] ;
  wire \mul_reg_I_reg_n_0_[0][6] ;
  wire \mul_reg_I_reg_n_0_[0][7] ;
  wire \mul_reg_I_reg_n_0_[0][8] ;
  wire \mul_reg_I_reg_n_0_[0][9] ;
  wire [35:0]\mul_reg_Q_reg[10] ;
  wire [35:0]\mul_reg_Q_reg[11] ;
  wire \mul_reg_Q_reg[11]0_n_100 ;
  wire \mul_reg_Q_reg[11]0_n_101 ;
  wire \mul_reg_Q_reg[11]0_n_102 ;
  wire \mul_reg_Q_reg[11]0_n_103 ;
  wire \mul_reg_Q_reg[11]0_n_104 ;
  wire \mul_reg_Q_reg[11]0_n_105 ;
  wire \mul_reg_Q_reg[11]0_n_70 ;
  wire \mul_reg_Q_reg[11]0_n_71 ;
  wire \mul_reg_Q_reg[11]0_n_72 ;
  wire \mul_reg_Q_reg[11]0_n_73 ;
  wire \mul_reg_Q_reg[11]0_n_74 ;
  wire \mul_reg_Q_reg[11]0_n_75 ;
  wire \mul_reg_Q_reg[11]0_n_76 ;
  wire \mul_reg_Q_reg[11]0_n_77 ;
  wire \mul_reg_Q_reg[11]0_n_78 ;
  wire \mul_reg_Q_reg[11]0_n_79 ;
  wire \mul_reg_Q_reg[11]0_n_80 ;
  wire \mul_reg_Q_reg[11]0_n_81 ;
  wire \mul_reg_Q_reg[11]0_n_82 ;
  wire \mul_reg_Q_reg[11]0_n_83 ;
  wire \mul_reg_Q_reg[11]0_n_84 ;
  wire \mul_reg_Q_reg[11]0_n_85 ;
  wire \mul_reg_Q_reg[11]0_n_86 ;
  wire \mul_reg_Q_reg[11]0_n_87 ;
  wire \mul_reg_Q_reg[11]0_n_88 ;
  wire \mul_reg_Q_reg[11]0_n_89 ;
  wire \mul_reg_Q_reg[11]0_n_90 ;
  wire \mul_reg_Q_reg[11]0_n_91 ;
  wire \mul_reg_Q_reg[11]0_n_92 ;
  wire \mul_reg_Q_reg[11]0_n_93 ;
  wire \mul_reg_Q_reg[11]0_n_94 ;
  wire \mul_reg_Q_reg[11]0_n_95 ;
  wire \mul_reg_Q_reg[11]0_n_96 ;
  wire \mul_reg_Q_reg[11]0_n_97 ;
  wire \mul_reg_Q_reg[11]0_n_98 ;
  wire \mul_reg_Q_reg[11]0_n_99 ;
  wire [31:0]\mul_reg_Q_reg[12] ;
  wire [31:0]\mul_reg_Q_reg[13] ;
  wire [31:0]\mul_reg_Q_reg[14] ;
  wire \mul_reg_Q_reg[14][31]_i_2_n_0 ;
  wire [31:0]\mul_reg_Q_reg[15] ;
  wire \mul_reg_Q_reg[15]0_n_100 ;
  wire \mul_reg_Q_reg[15]0_n_101 ;
  wire \mul_reg_Q_reg[15]0_n_102 ;
  wire \mul_reg_Q_reg[15]0_n_103 ;
  wire \mul_reg_Q_reg[15]0_n_104 ;
  wire \mul_reg_Q_reg[15]0_n_105 ;
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
  wire \mul_reg_Q_reg[15]0_n_89 ;
  wire \mul_reg_Q_reg[15]0_n_90 ;
  wire \mul_reg_Q_reg[15]0_n_91 ;
  wire \mul_reg_Q_reg[15]0_n_92 ;
  wire \mul_reg_Q_reg[15]0_n_93 ;
  wire \mul_reg_Q_reg[15]0_n_94 ;
  wire \mul_reg_Q_reg[15]0_n_95 ;
  wire \mul_reg_Q_reg[15]0_n_96 ;
  wire \mul_reg_Q_reg[15]0_n_97 ;
  wire \mul_reg_Q_reg[15]0_n_98 ;
  wire \mul_reg_Q_reg[15]0_n_99 ;
  wire [15:0]\mul_reg_Q_reg[1] ;
  wire [15:0]\mul_reg_Q_reg[2] ;
  wire [15:0]\mul_reg_Q_reg[3] ;
  wire \mul_reg_Q_reg[3]0_n_100 ;
  wire \mul_reg_Q_reg[3]0_n_101 ;
  wire \mul_reg_Q_reg[3]0_n_102 ;
  wire \mul_reg_Q_reg[3]0_n_103 ;
  wire \mul_reg_Q_reg[3]0_n_104 ;
  wire \mul_reg_Q_reg[3]0_n_105 ;
  wire \mul_reg_Q_reg[3]0_n_70 ;
  wire \mul_reg_Q_reg[3]0_n_71 ;
  wire \mul_reg_Q_reg[3]0_n_72 ;
  wire \mul_reg_Q_reg[3]0_n_73 ;
  wire \mul_reg_Q_reg[3]0_n_74 ;
  wire \mul_reg_Q_reg[3]0_n_75 ;
  wire \mul_reg_Q_reg[3]0_n_76 ;
  wire \mul_reg_Q_reg[3]0_n_77 ;
  wire \mul_reg_Q_reg[3]0_n_78 ;
  wire \mul_reg_Q_reg[3]0_n_79 ;
  wire \mul_reg_Q_reg[3]0_n_80 ;
  wire \mul_reg_Q_reg[3]0_n_81 ;
  wire \mul_reg_Q_reg[3]0_n_82 ;
  wire \mul_reg_Q_reg[3]0_n_83 ;
  wire \mul_reg_Q_reg[3]0_n_84 ;
  wire \mul_reg_Q_reg[3]0_n_85 ;
  wire \mul_reg_Q_reg[3]0_n_86 ;
  wire \mul_reg_Q_reg[3]0_n_87 ;
  wire \mul_reg_Q_reg[3]0_n_88 ;
  wire \mul_reg_Q_reg[3]0_n_89 ;
  wire \mul_reg_Q_reg[3]0_n_90 ;
  wire \mul_reg_Q_reg[3]0_n_91 ;
  wire \mul_reg_Q_reg[3]0_n_92 ;
  wire \mul_reg_Q_reg[3]0_n_93 ;
  wire \mul_reg_Q_reg[3]0_n_94 ;
  wire \mul_reg_Q_reg[3]0_n_95 ;
  wire \mul_reg_Q_reg[3]0_n_96 ;
  wire \mul_reg_Q_reg[3]0_n_97 ;
  wire \mul_reg_Q_reg[3]0_n_98 ;
  wire \mul_reg_Q_reg[3]0_n_99 ;
  wire [35:0]\mul_reg_Q_reg[4] ;
  wire [35:0]\mul_reg_Q_reg[5] ;
  wire [35:0]\mul_reg_Q_reg[6] ;
  wire [35:0]\mul_reg_Q_reg[7] ;
  wire \mul_reg_Q_reg[7]0_n_100 ;
  wire \mul_reg_Q_reg[7]0_n_101 ;
  wire \mul_reg_Q_reg[7]0_n_102 ;
  wire \mul_reg_Q_reg[7]0_n_103 ;
  wire \mul_reg_Q_reg[7]0_n_104 ;
  wire \mul_reg_Q_reg[7]0_n_105 ;
  wire \mul_reg_Q_reg[7]0_n_70 ;
  wire \mul_reg_Q_reg[7]0_n_71 ;
  wire \mul_reg_Q_reg[7]0_n_72 ;
  wire \mul_reg_Q_reg[7]0_n_73 ;
  wire \mul_reg_Q_reg[7]0_n_74 ;
  wire \mul_reg_Q_reg[7]0_n_75 ;
  wire \mul_reg_Q_reg[7]0_n_76 ;
  wire \mul_reg_Q_reg[7]0_n_77 ;
  wire \mul_reg_Q_reg[7]0_n_78 ;
  wire \mul_reg_Q_reg[7]0_n_79 ;
  wire \mul_reg_Q_reg[7]0_n_80 ;
  wire \mul_reg_Q_reg[7]0_n_81 ;
  wire \mul_reg_Q_reg[7]0_n_82 ;
  wire \mul_reg_Q_reg[7]0_n_83 ;
  wire \mul_reg_Q_reg[7]0_n_84 ;
  wire \mul_reg_Q_reg[7]0_n_85 ;
  wire \mul_reg_Q_reg[7]0_n_86 ;
  wire \mul_reg_Q_reg[7]0_n_87 ;
  wire \mul_reg_Q_reg[7]0_n_88 ;
  wire \mul_reg_Q_reg[7]0_n_89 ;
  wire \mul_reg_Q_reg[7]0_n_90 ;
  wire \mul_reg_Q_reg[7]0_n_91 ;
  wire \mul_reg_Q_reg[7]0_n_92 ;
  wire \mul_reg_Q_reg[7]0_n_93 ;
  wire \mul_reg_Q_reg[7]0_n_94 ;
  wire \mul_reg_Q_reg[7]0_n_95 ;
  wire \mul_reg_Q_reg[7]0_n_96 ;
  wire \mul_reg_Q_reg[7]0_n_97 ;
  wire \mul_reg_Q_reg[7]0_n_98 ;
  wire \mul_reg_Q_reg[7]0_n_99 ;
  wire [35:0]\mul_reg_Q_reg[8] ;
  wire [35:0]\mul_reg_Q_reg[9] ;
  wire \mul_reg_Q_reg_n_0_[0][0] ;
  wire \mul_reg_Q_reg_n_0_[0][10] ;
  wire \mul_reg_Q_reg_n_0_[0][11] ;
  wire \mul_reg_Q_reg_n_0_[0][12] ;
  wire \mul_reg_Q_reg_n_0_[0][13] ;
  wire \mul_reg_Q_reg_n_0_[0][14] ;
  wire \mul_reg_Q_reg_n_0_[0][15] ;
  wire \mul_reg_Q_reg_n_0_[0][1] ;
  wire \mul_reg_Q_reg_n_0_[0][2] ;
  wire \mul_reg_Q_reg_n_0_[0][3] ;
  wire \mul_reg_Q_reg_n_0_[0][4] ;
  wire \mul_reg_Q_reg_n_0_[0][5] ;
  wire \mul_reg_Q_reg_n_0_[0][6] ;
  wire \mul_reg_Q_reg_n_0_[0][7] ;
  wire \mul_reg_Q_reg_n_0_[0][8] ;
  wire \mul_reg_Q_reg_n_0_[0][9] ;
  wire [15:0]p_0_in;
  wire p_1_in;
  wire [1:0]phase_counter;
  wire \phase_counter[0]_i_1_n_0 ;
  wire \phase_counter[1]_i_2_n_0 ;
  wire reset;
  wire tail_tmp2;
  wire \tail_tmp[0]_i_1_n_0 ;
  wire \tail_tmp[0]_i_2_n_0 ;
  wire \tail_tmp[0]_i_4_n_0 ;
  wire [31:0]tail_tmp_reg;
  wire \tail_tmp_reg[0]_i_3_n_0 ;
  wire \tail_tmp_reg[0]_i_3_n_1 ;
  wire \tail_tmp_reg[0]_i_3_n_10 ;
  wire \tail_tmp_reg[0]_i_3_n_11 ;
  wire \tail_tmp_reg[0]_i_3_n_12 ;
  wire \tail_tmp_reg[0]_i_3_n_13 ;
  wire \tail_tmp_reg[0]_i_3_n_14 ;
  wire \tail_tmp_reg[0]_i_3_n_15 ;
  wire \tail_tmp_reg[0]_i_3_n_2 ;
  wire \tail_tmp_reg[0]_i_3_n_3 ;
  wire \tail_tmp_reg[0]_i_3_n_4 ;
  wire \tail_tmp_reg[0]_i_3_n_5 ;
  wire \tail_tmp_reg[0]_i_3_n_6 ;
  wire \tail_tmp_reg[0]_i_3_n_7 ;
  wire \tail_tmp_reg[0]_i_3_n_8 ;
  wire \tail_tmp_reg[0]_i_3_n_9 ;
  wire \tail_tmp_reg[0]_rep_n_0 ;
  wire \tail_tmp_reg[16]_i_1_n_0 ;
  wire \tail_tmp_reg[16]_i_1_n_1 ;
  wire \tail_tmp_reg[16]_i_1_n_10 ;
  wire \tail_tmp_reg[16]_i_1_n_11 ;
  wire \tail_tmp_reg[16]_i_1_n_12 ;
  wire \tail_tmp_reg[16]_i_1_n_13 ;
  wire \tail_tmp_reg[16]_i_1_n_14 ;
  wire \tail_tmp_reg[16]_i_1_n_15 ;
  wire \tail_tmp_reg[16]_i_1_n_2 ;
  wire \tail_tmp_reg[16]_i_1_n_3 ;
  wire \tail_tmp_reg[16]_i_1_n_4 ;
  wire \tail_tmp_reg[16]_i_1_n_5 ;
  wire \tail_tmp_reg[16]_i_1_n_6 ;
  wire \tail_tmp_reg[16]_i_1_n_7 ;
  wire \tail_tmp_reg[16]_i_1_n_8 ;
  wire \tail_tmp_reg[16]_i_1_n_9 ;
  wire \tail_tmp_reg[24]_i_1_n_1 ;
  wire \tail_tmp_reg[24]_i_1_n_10 ;
  wire \tail_tmp_reg[24]_i_1_n_11 ;
  wire \tail_tmp_reg[24]_i_1_n_12 ;
  wire \tail_tmp_reg[24]_i_1_n_13 ;
  wire \tail_tmp_reg[24]_i_1_n_14 ;
  wire \tail_tmp_reg[24]_i_1_n_15 ;
  wire \tail_tmp_reg[24]_i_1_n_2 ;
  wire \tail_tmp_reg[24]_i_1_n_3 ;
  wire \tail_tmp_reg[24]_i_1_n_4 ;
  wire \tail_tmp_reg[24]_i_1_n_5 ;
  wire \tail_tmp_reg[24]_i_1_n_6 ;
  wire \tail_tmp_reg[24]_i_1_n_7 ;
  wire \tail_tmp_reg[24]_i_1_n_8 ;
  wire \tail_tmp_reg[24]_i_1_n_9 ;
  wire \tail_tmp_reg[8]_i_1_n_0 ;
  wire \tail_tmp_reg[8]_i_1_n_1 ;
  wire \tail_tmp_reg[8]_i_1_n_10 ;
  wire \tail_tmp_reg[8]_i_1_n_11 ;
  wire \tail_tmp_reg[8]_i_1_n_12 ;
  wire \tail_tmp_reg[8]_i_1_n_13 ;
  wire \tail_tmp_reg[8]_i_1_n_14 ;
  wire \tail_tmp_reg[8]_i_1_n_15 ;
  wire \tail_tmp_reg[8]_i_1_n_2 ;
  wire \tail_tmp_reg[8]_i_1_n_3 ;
  wire \tail_tmp_reg[8]_i_1_n_4 ;
  wire \tail_tmp_reg[8]_i_1_n_5 ;
  wire \tail_tmp_reg[8]_i_1_n_6 ;
  wire \tail_tmp_reg[8]_i_1_n_7 ;
  wire \tail_tmp_reg[8]_i_1_n_8 ;
  wire \tail_tmp_reg[8]_i_1_n_9 ;
  wire NLW_axis_data_fifo_I_almost_empty_UNCONNECTED;
  wire NLW_axis_data_fifo_I_almost_full_UNCONNECTED;
  wire NLW_axis_data_fifo_I_s_axis_tready_UNCONNECTED;
  wire NLW_axis_data_fifo_Q_almost_empty_UNCONNECTED;
  wire NLW_axis_data_fifo_Q_almost_full_UNCONNECTED;
  wire NLW_axis_data_fifo_Q_s_axis_tready_UNCONNECTED;
  wire [7:6]NLW_data_out_valid_reg_i_2_CO_UNCONNECTED;
  wire [7:0]NLW_data_out_valid_reg_i_2_O_UNCONNECTED;
  wire [7:0]NLW_data_out_valid_reg_i_3_O_UNCONNECTED;
  wire \NLW_mul_reg_I_reg[11]0_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[11]0_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[11]0_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[11]0_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[11]0_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[11]0_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_I_reg[11]0_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_I_reg[11]0_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_I_reg[11]0_CARRYOUT_UNCONNECTED ;
  wire [47:36]\NLW_mul_reg_I_reg[11]0_P_UNCONNECTED ;
  wire [47:0]\NLW_mul_reg_I_reg[11]0_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_I_reg[11]0_XOROUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[15]0_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[15]0_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[15]0_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[15]0_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[15]0_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[15]0_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_I_reg[15]0_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_I_reg[15]0_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_I_reg[15]0_CARRYOUT_UNCONNECTED ;
  wire [47:32]\NLW_mul_reg_I_reg[15]0_P_UNCONNECTED ;
  wire [47:0]\NLW_mul_reg_I_reg[15]0_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_I_reg[15]0_XOROUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[3]0_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[3]0_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[3]0_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[3]0_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[3]0_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[3]0_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_I_reg[3]0_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_I_reg[3]0_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_I_reg[3]0_CARRYOUT_UNCONNECTED ;
  wire [47:36]\NLW_mul_reg_I_reg[3]0_P_UNCONNECTED ;
  wire [47:0]\NLW_mul_reg_I_reg[3]0_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_I_reg[3]0_XOROUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[7]0_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[7]0_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[7]0_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[7]0_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[7]0_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_I_reg[7]0_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_I_reg[7]0_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_I_reg[7]0_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_I_reg[7]0_CARRYOUT_UNCONNECTED ;
  wire [47:36]\NLW_mul_reg_I_reg[7]0_P_UNCONNECTED ;
  wire [47:0]\NLW_mul_reg_I_reg[7]0_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_I_reg[7]0_XOROUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[11]0_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[11]0_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[11]0_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[11]0_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[11]0_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[11]0_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_Q_reg[11]0_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_Q_reg[11]0_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_Q_reg[11]0_CARRYOUT_UNCONNECTED ;
  wire [47:36]\NLW_mul_reg_Q_reg[11]0_P_UNCONNECTED ;
  wire [47:0]\NLW_mul_reg_Q_reg[11]0_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_Q_reg[11]0_XOROUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[15]0_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[15]0_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[15]0_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[15]0_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[15]0_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[15]0_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_Q_reg[15]0_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_Q_reg[15]0_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_Q_reg[15]0_CARRYOUT_UNCONNECTED ;
  wire [47:32]\NLW_mul_reg_Q_reg[15]0_P_UNCONNECTED ;
  wire [47:0]\NLW_mul_reg_Q_reg[15]0_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_Q_reg[15]0_XOROUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[3]0_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[3]0_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[3]0_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[3]0_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[3]0_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[3]0_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_Q_reg[3]0_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_Q_reg[3]0_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_Q_reg[3]0_CARRYOUT_UNCONNECTED ;
  wire [47:36]\NLW_mul_reg_Q_reg[3]0_P_UNCONNECTED ;
  wire [47:0]\NLW_mul_reg_Q_reg[3]0_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_Q_reg[3]0_XOROUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[7]0_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[7]0_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[7]0_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[7]0_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[7]0_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[7]0_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_Q_reg[7]0_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_Q_reg[7]0_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_Q_reg[7]0_CARRYOUT_UNCONNECTED ;
  wire [47:36]\NLW_mul_reg_Q_reg[7]0_P_UNCONNECTED ;
  wire [47:0]\NLW_mul_reg_Q_reg[7]0_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_Q_reg[7]0_XOROUT_UNCONNECTED ;
  wire [7:7]\NLW_tail_tmp_reg[24]_i_1_CO_UNCONNECTED ;

  (* CHECK_LICENSE_TYPE = "axis_data_fifo_0,axis_data_fifo_v2_0_7_top,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "axis_data_fifo_v2_0_7_top,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_0__xdcDup__1 axis_data_fifo_I
       (.almost_empty(NLW_axis_data_fifo_I_almost_empty_UNCONNECTED),
        .almost_full(NLW_axis_data_fifo_I_almost_full_UNCONNECTED),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(filter2fifo_ready_reg_n_0),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(clk),
        .s_axis_aresetn(FIFO_reset),
        .s_axis_tdata(input_I),
        .s_axis_tready(NLW_axis_data_fifo_I_s_axis_tready_UNCONNECTED),
        .s_axis_tvalid(data_in_valid));
  (* CHECK_LICENSE_TYPE = "axis_data_fifo_0,axis_data_fifo_v2_0_7_top,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "axis_data_fifo_v2_0_7_top,Vivado 2021.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_0 axis_data_fifo_Q
       (.almost_empty(NLW_axis_data_fifo_Q_almost_empty_UNCONNECTED),
        .almost_full(NLW_axis_data_fifo_Q_almost_full_UNCONNECTED),
        .m_axis_tdata({axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_3,axis_data_fifo_Q_n_4,axis_data_fifo_Q_n_5,axis_data_fifo_Q_n_6,axis_data_fifo_Q_n_7,axis_data_fifo_Q_n_8,axis_data_fifo_Q_n_9,axis_data_fifo_Q_n_10,axis_data_fifo_Q_n_11,axis_data_fifo_Q_n_12,axis_data_fifo_Q_n_13,axis_data_fifo_Q_n_14,axis_data_fifo_Q_n_15,axis_data_fifo_Q_n_16,axis_data_fifo_Q_n_17}),
        .m_axis_tready(filter2fifo_ready_reg_n_0),
        .m_axis_tvalid(axis_data_fifo_Q_n_1),
        .s_axis_aclk(clk),
        .s_axis_aresetn(FIFO_reset),
        .s_axis_tdata(input_Q),
        .s_axis_tready(NLW_axis_data_fifo_Q_s_axis_tready_UNCONNECTED),
        .s_axis_tvalid(data_in_valid));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \coeff_reg[0][10]_i_1 
       (.I0(phase_counter[0]),
        .I1(phase_counter[1]),
        .O(\coeff[3] [10]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \coeff_reg[0][11]_i_1 
       (.I0(phase_counter[0]),
        .I1(phase_counter[1]),
        .O(\coeff[3] [11]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \coeff_reg[0][12]_i_1 
       (.I0(phase_counter[0]),
        .I1(phase_counter[1]),
        .O(\coeff[3] [12]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \coeff_reg[0][13]_i_1 
       (.I0(phase_counter[1]),
        .I1(phase_counter[0]),
        .O(\coeff[3] [13]));
  LUT1 #(
    .INIT(2'h1)) 
    \coeff_reg[0][14]_i_1 
       (.I0(phase_counter[1]),
        .O(\coeff[3] [14]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \coeff_reg[0][9]_i_1 
       (.I0(phase_counter[0]),
        .O(\coeff_reg[0][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \coeff_reg[1][0]_i_1 
       (.I0(phase_counter[1]),
        .I1(phase_counter[0]),
        .O(\coeff[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \coeff_reg[1][10]_i_1 
       (.I0(phase_counter[1]),
        .I1(phase_counter[0]),
        .O(\coeff[7] [10]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \coeff_reg[1][14]_i_1 
       (.I0(phase_counter[1]),
        .I1(phase_counter[0]),
        .O(\coeff_reg[1][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \coeff_reg[2][0]_i_1 
       (.I0(phase_counter[1]),
        .I1(phase_counter[0]),
        .O(\coeff_reg[2][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \coeff_reg[3][13]_i_1 
       (.I0(phase_counter[0]),
        .I1(phase_counter[1]),
        .O(\coeff_reg[3][13]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[0][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\coeff[3] [10]),
        .Q(\coeff_reg_reg[0] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[0][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\coeff[3] [11]),
        .Q(\coeff_reg_reg[0] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[0][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\coeff[3] [12]),
        .Q(\coeff_reg_reg[0] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[0][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\coeff[3] [13]),
        .Q(\coeff_reg_reg[0] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[0][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\coeff[3] [14]),
        .Q(\coeff_reg_reg[0] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[0][9] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\coeff_reg[0][9]_i_1_n_0 ),
        .Q(\coeff_reg_reg[0] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[1][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\coeff[7] [0]),
        .Q(\coeff_reg_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[1][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\coeff[7] [10]),
        .Q(\coeff_reg_reg[1] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[1][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\coeff_reg[1][14]_i_1_n_0 ),
        .Q(\coeff_reg_reg[1] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[2][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\coeff_reg[2][0]_i_1_n_0 ),
        .Q(\coeff_reg_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[2][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(phase_counter[0]),
        .Q(\coeff_reg_reg[2] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[2][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(phase_counter[1]),
        .Q(\coeff_reg_reg[2] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[3][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\coeff_reg[3][13]_i_1_n_0 ),
        .Q(\coeff_reg_reg[3] ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_I[0]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_I_reg_n_0_[0][0] ),
        .I3(\data_out_I_reg[0]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_I_reg[0]_i_3_n_0 ),
        .O(p_0_in[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[0]_i_10 
       (.I0(\mul_reg_I_reg[13] [0]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[12] [0]),
        .O(\data_out_I[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[0]_i_11 
       (.I0(\mul_reg_I_reg[15]0_n_105 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[14] [0]),
        .O(\data_out_I[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[0]_i_12 
       (.I0(\mul_reg_I_reg[1] [0]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg_n_0_[0][0] ),
        .O(\data_out_I[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[0]_i_13 
       (.I0(\mul_reg_I_reg[3]0_n_105 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[2] [0]),
        .O(\data_out_I[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[0]_i_14 
       (.I0(\mul_reg_I_reg[5] [0]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[4] [0]),
        .O(\data_out_I[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[0]_i_15 
       (.I0(\mul_reg_I_reg[7]0_n_105 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[6] [0]),
        .O(\data_out_I[0]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[0]_i_8 
       (.I0(\mul_reg_I_reg[9] [0]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[8] [0]),
        .O(\data_out_I[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[0]_i_9 
       (.I0(\mul_reg_I_reg[11]0_n_105 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[10] [0]),
        .O(\data_out_I[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_I[10]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_I_reg_n_0_[0][10] ),
        .I3(\data_out_I_reg[10]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_I_reg[10]_i_3_n_0 ),
        .O(p_0_in[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[10]_i_10 
       (.I0(\mul_reg_I_reg[13] [10]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[12] [10]),
        .O(\data_out_I[10]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[10]_i_11 
       (.I0(\mul_reg_I_reg[15]0_n_95 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[14] [10]),
        .O(\data_out_I[10]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[10]_i_12 
       (.I0(\mul_reg_I_reg[1] [10]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg_n_0_[0][10] ),
        .O(\data_out_I[10]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[10]_i_13 
       (.I0(\mul_reg_I_reg[3]0_n_95 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[2] [10]),
        .O(\data_out_I[10]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[10]_i_14 
       (.I0(\mul_reg_I_reg[5] [10]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[4] [10]),
        .O(\data_out_I[10]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[10]_i_15 
       (.I0(\mul_reg_I_reg[7]0_n_95 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[6] [10]),
        .O(\data_out_I[10]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[10]_i_8 
       (.I0(\mul_reg_I_reg[9] [10]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[8] [10]),
        .O(\data_out_I[10]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[10]_i_9 
       (.I0(\mul_reg_I_reg[11]0_n_95 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[10] [10]),
        .O(\data_out_I[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_I[11]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_I_reg_n_0_[0][11] ),
        .I3(\data_out_I_reg[11]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_I_reg[11]_i_3_n_0 ),
        .O(p_0_in[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[11]_i_10 
       (.I0(\mul_reg_I_reg[13] [11]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[12] [11]),
        .O(\data_out_I[11]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[11]_i_11 
       (.I0(\mul_reg_I_reg[15]0_n_94 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[14] [11]),
        .O(\data_out_I[11]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[11]_i_12 
       (.I0(\mul_reg_I_reg[1] [11]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg_n_0_[0][11] ),
        .O(\data_out_I[11]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[11]_i_13 
       (.I0(\mul_reg_I_reg[3]0_n_94 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[2] [11]),
        .O(\data_out_I[11]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[11]_i_14 
       (.I0(\mul_reg_I_reg[5] [11]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[4] [11]),
        .O(\data_out_I[11]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[11]_i_15 
       (.I0(\mul_reg_I_reg[7]0_n_94 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[6] [11]),
        .O(\data_out_I[11]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[11]_i_8 
       (.I0(\mul_reg_I_reg[9] [11]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[8] [11]),
        .O(\data_out_I[11]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[11]_i_9 
       (.I0(\mul_reg_I_reg[11]0_n_94 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[10] [11]),
        .O(\data_out_I[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_I[12]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_I_reg_n_0_[0][12] ),
        .I3(\data_out_I_reg[12]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_I_reg[12]_i_3_n_0 ),
        .O(p_0_in[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[12]_i_10 
       (.I0(\mul_reg_I_reg[13] [12]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[12] [12]),
        .O(\data_out_I[12]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[12]_i_11 
       (.I0(\mul_reg_I_reg[15]0_n_93 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[14] [12]),
        .O(\data_out_I[12]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[12]_i_12 
       (.I0(\mul_reg_I_reg[1] [12]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg_n_0_[0][12] ),
        .O(\data_out_I[12]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[12]_i_13 
       (.I0(\mul_reg_I_reg[3]0_n_93 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[2] [12]),
        .O(\data_out_I[12]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[12]_i_14 
       (.I0(\mul_reg_I_reg[5] [12]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[4] [12]),
        .O(\data_out_I[12]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[12]_i_15 
       (.I0(\mul_reg_I_reg[7]0_n_93 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[6] [12]),
        .O(\data_out_I[12]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[12]_i_8 
       (.I0(\mul_reg_I_reg[9] [12]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[8] [12]),
        .O(\data_out_I[12]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[12]_i_9 
       (.I0(\mul_reg_I_reg[11]0_n_93 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[10] [12]),
        .O(\data_out_I[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_I[13]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_I_reg_n_0_[0][13] ),
        .I3(\data_out_I_reg[13]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_I_reg[13]_i_3_n_0 ),
        .O(p_0_in[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[13]_i_10 
       (.I0(\mul_reg_I_reg[13] [13]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[12] [13]),
        .O(\data_out_I[13]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[13]_i_11 
       (.I0(\mul_reg_I_reg[15]0_n_92 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[14] [13]),
        .O(\data_out_I[13]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[13]_i_12 
       (.I0(\mul_reg_I_reg[1] [13]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg_n_0_[0][13] ),
        .O(\data_out_I[13]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[13]_i_13 
       (.I0(\mul_reg_I_reg[3]0_n_92 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[2] [13]),
        .O(\data_out_I[13]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[13]_i_14 
       (.I0(\mul_reg_I_reg[5] [13]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[4] [13]),
        .O(\data_out_I[13]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[13]_i_15 
       (.I0(\mul_reg_I_reg[7]0_n_92 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[6] [13]),
        .O(\data_out_I[13]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[13]_i_8 
       (.I0(\mul_reg_I_reg[9] [13]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[8] [13]),
        .O(\data_out_I[13]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[13]_i_9 
       (.I0(\mul_reg_I_reg[11]0_n_92 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[10] [13]),
        .O(\data_out_I[13]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_I[14]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_I_reg_n_0_[0][14] ),
        .I3(\data_out_I_reg[14]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_I_reg[14]_i_3_n_0 ),
        .O(p_0_in[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[14]_i_10 
       (.I0(\mul_reg_I_reg[13] [14]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[12] [14]),
        .O(\data_out_I[14]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[14]_i_11 
       (.I0(\mul_reg_I_reg[15]0_n_91 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[14] [14]),
        .O(\data_out_I[14]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[14]_i_12 
       (.I0(\mul_reg_I_reg[1] [14]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg_n_0_[0][14] ),
        .O(\data_out_I[14]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[14]_i_13 
       (.I0(\mul_reg_I_reg[3]0_n_91 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[2] [14]),
        .O(\data_out_I[14]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[14]_i_14 
       (.I0(\mul_reg_I_reg[5] [14]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[4] [14]),
        .O(\data_out_I[14]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[14]_i_15 
       (.I0(\mul_reg_I_reg[7]0_n_91 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[6] [14]),
        .O(\data_out_I[14]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[14]_i_8 
       (.I0(\mul_reg_I_reg[9] [14]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[8] [14]),
        .O(\data_out_I[14]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[14]_i_9 
       (.I0(\mul_reg_I_reg[11]0_n_91 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[10] [14]),
        .O(\data_out_I[14]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000007070777)) 
    \data_out_I[15]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(tail_tmp2),
        .I3(phase_counter[1]),
        .I4(phase_counter[0]),
        .I5(reset),
        .O(\data_out_I[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[15]_i_10 
       (.I0(\mul_reg_I_reg[9] [15]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[8] [15]),
        .O(\data_out_I[15]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[15]_i_11 
       (.I0(\mul_reg_I_reg[11]0_n_90 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[10] [15]),
        .O(\data_out_I[15]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[15]_i_12 
       (.I0(\mul_reg_I_reg[13] [15]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[12] [15]),
        .O(\data_out_I[15]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[15]_i_13 
       (.I0(\mul_reg_I_reg[15]0_n_90 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[14] [15]),
        .O(\data_out_I[15]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[15]_i_14 
       (.I0(\mul_reg_I_reg[1] [15]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg_n_0_[0][15] ),
        .O(\data_out_I[15]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[15]_i_15 
       (.I0(\mul_reg_I_reg[3]0_n_90 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[2] [15]),
        .O(\data_out_I[15]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[15]_i_16 
       (.I0(\mul_reg_I_reg[5] [15]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[4] [15]),
        .O(\data_out_I[15]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[15]_i_17 
       (.I0(\mul_reg_I_reg[7]0_n_90 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[6] [15]),
        .O(\data_out_I[15]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out_I[15]_i_2 
       (.I0(reset),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_I[15]_i_3 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_I_reg_n_0_[0][15] ),
        .I3(\data_out_I_reg[15]_i_4_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_I_reg[15]_i_5_n_0 ),
        .O(p_0_in[15]));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_I[1]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_I_reg_n_0_[0][1] ),
        .I3(\data_out_I_reg[1]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_I_reg[1]_i_3_n_0 ),
        .O(p_0_in[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[1]_i_10 
       (.I0(\mul_reg_I_reg[13] [1]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[12] [1]),
        .O(\data_out_I[1]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[1]_i_11 
       (.I0(\mul_reg_I_reg[15]0_n_104 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[14] [1]),
        .O(\data_out_I[1]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[1]_i_12 
       (.I0(\mul_reg_I_reg[1] [1]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg_n_0_[0][1] ),
        .O(\data_out_I[1]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[1]_i_13 
       (.I0(\mul_reg_I_reg[3]0_n_104 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[2] [1]),
        .O(\data_out_I[1]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[1]_i_14 
       (.I0(\mul_reg_I_reg[5] [1]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[4] [1]),
        .O(\data_out_I[1]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[1]_i_15 
       (.I0(\mul_reg_I_reg[7]0_n_104 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[6] [1]),
        .O(\data_out_I[1]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[1]_i_8 
       (.I0(\mul_reg_I_reg[9] [1]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[8] [1]),
        .O(\data_out_I[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[1]_i_9 
       (.I0(\mul_reg_I_reg[11]0_n_104 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[10] [1]),
        .O(\data_out_I[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_I[2]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_I_reg_n_0_[0][2] ),
        .I3(\data_out_I_reg[2]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_I_reg[2]_i_3_n_0 ),
        .O(p_0_in[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[2]_i_10 
       (.I0(\mul_reg_I_reg[13] [2]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[12] [2]),
        .O(\data_out_I[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[2]_i_11 
       (.I0(\mul_reg_I_reg[15]0_n_103 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[14] [2]),
        .O(\data_out_I[2]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[2]_i_12 
       (.I0(\mul_reg_I_reg[1] [2]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg_n_0_[0][2] ),
        .O(\data_out_I[2]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[2]_i_13 
       (.I0(\mul_reg_I_reg[3]0_n_103 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[2] [2]),
        .O(\data_out_I[2]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[2]_i_14 
       (.I0(\mul_reg_I_reg[5] [2]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[4] [2]),
        .O(\data_out_I[2]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[2]_i_15 
       (.I0(\mul_reg_I_reg[7]0_n_103 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[6] [2]),
        .O(\data_out_I[2]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[2]_i_8 
       (.I0(\mul_reg_I_reg[9] [2]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[8] [2]),
        .O(\data_out_I[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[2]_i_9 
       (.I0(\mul_reg_I_reg[11]0_n_103 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[10] [2]),
        .O(\data_out_I[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_I[3]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_I_reg_n_0_[0][3] ),
        .I3(\data_out_I_reg[3]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_I_reg[3]_i_3_n_0 ),
        .O(p_0_in[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[3]_i_10 
       (.I0(\mul_reg_I_reg[13] [3]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[12] [3]),
        .O(\data_out_I[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[3]_i_11 
       (.I0(\mul_reg_I_reg[15]0_n_102 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[14] [3]),
        .O(\data_out_I[3]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[3]_i_12 
       (.I0(\mul_reg_I_reg[1] [3]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg_n_0_[0][3] ),
        .O(\data_out_I[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[3]_i_13 
       (.I0(\mul_reg_I_reg[3]0_n_102 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[2] [3]),
        .O(\data_out_I[3]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[3]_i_14 
       (.I0(\mul_reg_I_reg[5] [3]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[4] [3]),
        .O(\data_out_I[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[3]_i_15 
       (.I0(\mul_reg_I_reg[7]0_n_102 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[6] [3]),
        .O(\data_out_I[3]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[3]_i_8 
       (.I0(\mul_reg_I_reg[9] [3]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[8] [3]),
        .O(\data_out_I[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[3]_i_9 
       (.I0(\mul_reg_I_reg[11]0_n_102 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[10] [3]),
        .O(\data_out_I[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_I[4]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_I_reg_n_0_[0][4] ),
        .I3(\data_out_I_reg[4]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_I_reg[4]_i_3_n_0 ),
        .O(p_0_in[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[4]_i_10 
       (.I0(\mul_reg_I_reg[13] [4]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[12] [4]),
        .O(\data_out_I[4]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[4]_i_11 
       (.I0(\mul_reg_I_reg[15]0_n_101 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[14] [4]),
        .O(\data_out_I[4]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[4]_i_12 
       (.I0(\mul_reg_I_reg[1] [4]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg_n_0_[0][4] ),
        .O(\data_out_I[4]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[4]_i_13 
       (.I0(\mul_reg_I_reg[3]0_n_101 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[2] [4]),
        .O(\data_out_I[4]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[4]_i_14 
       (.I0(\mul_reg_I_reg[5] [4]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[4] [4]),
        .O(\data_out_I[4]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[4]_i_15 
       (.I0(\mul_reg_I_reg[7]0_n_101 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[6] [4]),
        .O(\data_out_I[4]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[4]_i_8 
       (.I0(\mul_reg_I_reg[9] [4]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[8] [4]),
        .O(\data_out_I[4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[4]_i_9 
       (.I0(\mul_reg_I_reg[11]0_n_101 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[10] [4]),
        .O(\data_out_I[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_I[5]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_I_reg_n_0_[0][5] ),
        .I3(\data_out_I_reg[5]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_I_reg[5]_i_3_n_0 ),
        .O(p_0_in[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[5]_i_10 
       (.I0(\mul_reg_I_reg[13] [5]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[12] [5]),
        .O(\data_out_I[5]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[5]_i_11 
       (.I0(\mul_reg_I_reg[15]0_n_100 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[14] [5]),
        .O(\data_out_I[5]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[5]_i_12 
       (.I0(\mul_reg_I_reg[1] [5]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg_n_0_[0][5] ),
        .O(\data_out_I[5]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[5]_i_13 
       (.I0(\mul_reg_I_reg[3]0_n_100 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[2] [5]),
        .O(\data_out_I[5]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[5]_i_14 
       (.I0(\mul_reg_I_reg[5] [5]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[4] [5]),
        .O(\data_out_I[5]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[5]_i_15 
       (.I0(\mul_reg_I_reg[7]0_n_100 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[6] [5]),
        .O(\data_out_I[5]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[5]_i_8 
       (.I0(\mul_reg_I_reg[9] [5]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[8] [5]),
        .O(\data_out_I[5]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[5]_i_9 
       (.I0(\mul_reg_I_reg[11]0_n_100 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[10] [5]),
        .O(\data_out_I[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_I[6]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_I_reg_n_0_[0][6] ),
        .I3(\data_out_I_reg[6]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_I_reg[6]_i_3_n_0 ),
        .O(p_0_in[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[6]_i_10 
       (.I0(\mul_reg_I_reg[13] [6]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[12] [6]),
        .O(\data_out_I[6]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[6]_i_11 
       (.I0(\mul_reg_I_reg[15]0_n_99 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[14] [6]),
        .O(\data_out_I[6]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[6]_i_12 
       (.I0(\mul_reg_I_reg[1] [6]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg_n_0_[0][6] ),
        .O(\data_out_I[6]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[6]_i_13 
       (.I0(\mul_reg_I_reg[3]0_n_99 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[2] [6]),
        .O(\data_out_I[6]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[6]_i_14 
       (.I0(\mul_reg_I_reg[5] [6]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[4] [6]),
        .O(\data_out_I[6]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[6]_i_15 
       (.I0(\mul_reg_I_reg[7]0_n_99 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[6] [6]),
        .O(\data_out_I[6]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[6]_i_8 
       (.I0(\mul_reg_I_reg[9] [6]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[8] [6]),
        .O(\data_out_I[6]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[6]_i_9 
       (.I0(\mul_reg_I_reg[11]0_n_99 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[10] [6]),
        .O(\data_out_I[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_I[7]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_I_reg_n_0_[0][7] ),
        .I3(\data_out_I_reg[7]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_I_reg[7]_i_3_n_0 ),
        .O(p_0_in[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[7]_i_10 
       (.I0(\mul_reg_I_reg[13] [7]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[12] [7]),
        .O(\data_out_I[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[7]_i_11 
       (.I0(\mul_reg_I_reg[15]0_n_98 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[14] [7]),
        .O(\data_out_I[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[7]_i_12 
       (.I0(\mul_reg_I_reg[1] [7]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg_n_0_[0][7] ),
        .O(\data_out_I[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[7]_i_13 
       (.I0(\mul_reg_I_reg[3]0_n_98 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[2] [7]),
        .O(\data_out_I[7]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[7]_i_14 
       (.I0(\mul_reg_I_reg[5] [7]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[4] [7]),
        .O(\data_out_I[7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[7]_i_15 
       (.I0(\mul_reg_I_reg[7]0_n_98 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[6] [7]),
        .O(\data_out_I[7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[7]_i_8 
       (.I0(\mul_reg_I_reg[9] [7]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[8] [7]),
        .O(\data_out_I[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[7]_i_9 
       (.I0(\mul_reg_I_reg[11]0_n_98 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[10] [7]),
        .O(\data_out_I[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_I[8]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_I_reg_n_0_[0][8] ),
        .I3(\data_out_I_reg[8]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_I_reg[8]_i_3_n_0 ),
        .O(p_0_in[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[8]_i_10 
       (.I0(\mul_reg_I_reg[13] [8]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[12] [8]),
        .O(\data_out_I[8]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[8]_i_11 
       (.I0(\mul_reg_I_reg[15]0_n_97 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[14] [8]),
        .O(\data_out_I[8]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[8]_i_12 
       (.I0(\mul_reg_I_reg[1] [8]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg_n_0_[0][8] ),
        .O(\data_out_I[8]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[8]_i_13 
       (.I0(\mul_reg_I_reg[3]0_n_97 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[2] [8]),
        .O(\data_out_I[8]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[8]_i_14 
       (.I0(\mul_reg_I_reg[5] [8]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[4] [8]),
        .O(\data_out_I[8]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[8]_i_15 
       (.I0(\mul_reg_I_reg[7]0_n_97 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[6] [8]),
        .O(\data_out_I[8]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[8]_i_8 
       (.I0(\mul_reg_I_reg[9] [8]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[8] [8]),
        .O(\data_out_I[8]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[8]_i_9 
       (.I0(\mul_reg_I_reg[11]0_n_97 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[10] [8]),
        .O(\data_out_I[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_I[9]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_I_reg_n_0_[0][9] ),
        .I3(\data_out_I_reg[9]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_I_reg[9]_i_3_n_0 ),
        .O(p_0_in[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[9]_i_10 
       (.I0(\mul_reg_I_reg[13] [9]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[12] [9]),
        .O(\data_out_I[9]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[9]_i_11 
       (.I0(\mul_reg_I_reg[15]0_n_96 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[14] [9]),
        .O(\data_out_I[9]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[9]_i_12 
       (.I0(\mul_reg_I_reg[1] [9]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg_n_0_[0][9] ),
        .O(\data_out_I[9]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[9]_i_13 
       (.I0(\mul_reg_I_reg[3]0_n_96 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[2] [9]),
        .O(\data_out_I[9]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[9]_i_14 
       (.I0(\mul_reg_I_reg[5] [9]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[4] [9]),
        .O(\data_out_I[9]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[9]_i_15 
       (.I0(\mul_reg_I_reg[7]0_n_96 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[6] [9]),
        .O(\data_out_I[9]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_I[9]_i_8 
       (.I0(\mul_reg_I_reg[9] [9]),
        .I1(\tail_tmp_reg[0]_rep_n_0 ),
        .I2(\mul_reg_I_reg[8] [9]),
        .O(\data_out_I[9]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_I[9]_i_9 
       (.I0(\mul_reg_I_reg[11]0_n_96 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .I2(\tail_tmp_reg[0]_rep_n_0 ),
        .I3(\mul_reg_I_reg[10] [9]),
        .O(\data_out_I[9]_i_9_n_0 ));
  FDRE \data_out_I_reg[0] 
       (.C(clk),
        .CE(p_1_in),
        .D(p_0_in[0]),
        .Q(data_out_I[0]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_I_reg[0]_i_2 
       (.I0(\data_out_I_reg[0]_i_4_n_0 ),
        .I1(\data_out_I_reg[0]_i_5_n_0 ),
        .O(\data_out_I_reg[0]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_I_reg[0]_i_3 
       (.I0(\data_out_I_reg[0]_i_6_n_0 ),
        .I1(\data_out_I_reg[0]_i_7_n_0 ),
        .O(\data_out_I_reg[0]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_I_reg[0]_i_4 
       (.I0(\data_out_I[0]_i_8_n_0 ),
        .I1(\data_out_I[0]_i_9_n_0 ),
        .O(\data_out_I_reg[0]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[0]_i_5 
       (.I0(\data_out_I[0]_i_10_n_0 ),
        .I1(\data_out_I[0]_i_11_n_0 ),
        .O(\data_out_I_reg[0]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[0]_i_6 
       (.I0(\data_out_I[0]_i_12_n_0 ),
        .I1(\data_out_I[0]_i_13_n_0 ),
        .O(\data_out_I_reg[0]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[0]_i_7 
       (.I0(\data_out_I[0]_i_14_n_0 ),
        .I1(\data_out_I[0]_i_15_n_0 ),
        .O(\data_out_I_reg[0]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_I_reg[10] 
       (.C(clk),
        .CE(p_1_in),
        .D(p_0_in[10]),
        .Q(data_out_I[10]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_I_reg[10]_i_2 
       (.I0(\data_out_I_reg[10]_i_4_n_0 ),
        .I1(\data_out_I_reg[10]_i_5_n_0 ),
        .O(\data_out_I_reg[10]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_I_reg[10]_i_3 
       (.I0(\data_out_I_reg[10]_i_6_n_0 ),
        .I1(\data_out_I_reg[10]_i_7_n_0 ),
        .O(\data_out_I_reg[10]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_I_reg[10]_i_4 
       (.I0(\data_out_I[10]_i_8_n_0 ),
        .I1(\data_out_I[10]_i_9_n_0 ),
        .O(\data_out_I_reg[10]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[10]_i_5 
       (.I0(\data_out_I[10]_i_10_n_0 ),
        .I1(\data_out_I[10]_i_11_n_0 ),
        .O(\data_out_I_reg[10]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[10]_i_6 
       (.I0(\data_out_I[10]_i_12_n_0 ),
        .I1(\data_out_I[10]_i_13_n_0 ),
        .O(\data_out_I_reg[10]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[10]_i_7 
       (.I0(\data_out_I[10]_i_14_n_0 ),
        .I1(\data_out_I[10]_i_15_n_0 ),
        .O(\data_out_I_reg[10]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_I_reg[11] 
       (.C(clk),
        .CE(p_1_in),
        .D(p_0_in[11]),
        .Q(data_out_I[11]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_I_reg[11]_i_2 
       (.I0(\data_out_I_reg[11]_i_4_n_0 ),
        .I1(\data_out_I_reg[11]_i_5_n_0 ),
        .O(\data_out_I_reg[11]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_I_reg[11]_i_3 
       (.I0(\data_out_I_reg[11]_i_6_n_0 ),
        .I1(\data_out_I_reg[11]_i_7_n_0 ),
        .O(\data_out_I_reg[11]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_I_reg[11]_i_4 
       (.I0(\data_out_I[11]_i_8_n_0 ),
        .I1(\data_out_I[11]_i_9_n_0 ),
        .O(\data_out_I_reg[11]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[11]_i_5 
       (.I0(\data_out_I[11]_i_10_n_0 ),
        .I1(\data_out_I[11]_i_11_n_0 ),
        .O(\data_out_I_reg[11]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[11]_i_6 
       (.I0(\data_out_I[11]_i_12_n_0 ),
        .I1(\data_out_I[11]_i_13_n_0 ),
        .O(\data_out_I_reg[11]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[11]_i_7 
       (.I0(\data_out_I[11]_i_14_n_0 ),
        .I1(\data_out_I[11]_i_15_n_0 ),
        .O(\data_out_I_reg[11]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_I_reg[12] 
       (.C(clk),
        .CE(p_1_in),
        .D(p_0_in[12]),
        .Q(data_out_I[12]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_I_reg[12]_i_2 
       (.I0(\data_out_I_reg[12]_i_4_n_0 ),
        .I1(\data_out_I_reg[12]_i_5_n_0 ),
        .O(\data_out_I_reg[12]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_I_reg[12]_i_3 
       (.I0(\data_out_I_reg[12]_i_6_n_0 ),
        .I1(\data_out_I_reg[12]_i_7_n_0 ),
        .O(\data_out_I_reg[12]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_I_reg[12]_i_4 
       (.I0(\data_out_I[12]_i_8_n_0 ),
        .I1(\data_out_I[12]_i_9_n_0 ),
        .O(\data_out_I_reg[12]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[12]_i_5 
       (.I0(\data_out_I[12]_i_10_n_0 ),
        .I1(\data_out_I[12]_i_11_n_0 ),
        .O(\data_out_I_reg[12]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[12]_i_6 
       (.I0(\data_out_I[12]_i_12_n_0 ),
        .I1(\data_out_I[12]_i_13_n_0 ),
        .O(\data_out_I_reg[12]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[12]_i_7 
       (.I0(\data_out_I[12]_i_14_n_0 ),
        .I1(\data_out_I[12]_i_15_n_0 ),
        .O(\data_out_I_reg[12]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_I_reg[13] 
       (.C(clk),
        .CE(p_1_in),
        .D(p_0_in[13]),
        .Q(data_out_I[13]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_I_reg[13]_i_2 
       (.I0(\data_out_I_reg[13]_i_4_n_0 ),
        .I1(\data_out_I_reg[13]_i_5_n_0 ),
        .O(\data_out_I_reg[13]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_I_reg[13]_i_3 
       (.I0(\data_out_I_reg[13]_i_6_n_0 ),
        .I1(\data_out_I_reg[13]_i_7_n_0 ),
        .O(\data_out_I_reg[13]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_I_reg[13]_i_4 
       (.I0(\data_out_I[13]_i_8_n_0 ),
        .I1(\data_out_I[13]_i_9_n_0 ),
        .O(\data_out_I_reg[13]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[13]_i_5 
       (.I0(\data_out_I[13]_i_10_n_0 ),
        .I1(\data_out_I[13]_i_11_n_0 ),
        .O(\data_out_I_reg[13]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[13]_i_6 
       (.I0(\data_out_I[13]_i_12_n_0 ),
        .I1(\data_out_I[13]_i_13_n_0 ),
        .O(\data_out_I_reg[13]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[13]_i_7 
       (.I0(\data_out_I[13]_i_14_n_0 ),
        .I1(\data_out_I[13]_i_15_n_0 ),
        .O(\data_out_I_reg[13]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_I_reg[14] 
       (.C(clk),
        .CE(p_1_in),
        .D(p_0_in[14]),
        .Q(data_out_I[14]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_I_reg[14]_i_2 
       (.I0(\data_out_I_reg[14]_i_4_n_0 ),
        .I1(\data_out_I_reg[14]_i_5_n_0 ),
        .O(\data_out_I_reg[14]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_I_reg[14]_i_3 
       (.I0(\data_out_I_reg[14]_i_6_n_0 ),
        .I1(\data_out_I_reg[14]_i_7_n_0 ),
        .O(\data_out_I_reg[14]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_I_reg[14]_i_4 
       (.I0(\data_out_I[14]_i_8_n_0 ),
        .I1(\data_out_I[14]_i_9_n_0 ),
        .O(\data_out_I_reg[14]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[14]_i_5 
       (.I0(\data_out_I[14]_i_10_n_0 ),
        .I1(\data_out_I[14]_i_11_n_0 ),
        .O(\data_out_I_reg[14]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[14]_i_6 
       (.I0(\data_out_I[14]_i_12_n_0 ),
        .I1(\data_out_I[14]_i_13_n_0 ),
        .O(\data_out_I_reg[14]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[14]_i_7 
       (.I0(\data_out_I[14]_i_14_n_0 ),
        .I1(\data_out_I[14]_i_15_n_0 ),
        .O(\data_out_I_reg[14]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_I_reg[15] 
       (.C(clk),
        .CE(p_1_in),
        .D(p_0_in[15]),
        .Q(data_out_I[15]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_I_reg[15]_i_4 
       (.I0(\data_out_I_reg[15]_i_6_n_0 ),
        .I1(\data_out_I_reg[15]_i_7_n_0 ),
        .O(\data_out_I_reg[15]_i_4_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_I_reg[15]_i_5 
       (.I0(\data_out_I_reg[15]_i_8_n_0 ),
        .I1(\data_out_I_reg[15]_i_9_n_0 ),
        .O(\data_out_I_reg[15]_i_5_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_I_reg[15]_i_6 
       (.I0(\data_out_I[15]_i_10_n_0 ),
        .I1(\data_out_I[15]_i_11_n_0 ),
        .O(\data_out_I_reg[15]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[15]_i_7 
       (.I0(\data_out_I[15]_i_12_n_0 ),
        .I1(\data_out_I[15]_i_13_n_0 ),
        .O(\data_out_I_reg[15]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[15]_i_8 
       (.I0(\data_out_I[15]_i_14_n_0 ),
        .I1(\data_out_I[15]_i_15_n_0 ),
        .O(\data_out_I_reg[15]_i_8_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[15]_i_9 
       (.I0(\data_out_I[15]_i_16_n_0 ),
        .I1(\data_out_I[15]_i_17_n_0 ),
        .O(\data_out_I_reg[15]_i_9_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_I_reg[1] 
       (.C(clk),
        .CE(p_1_in),
        .D(p_0_in[1]),
        .Q(data_out_I[1]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_I_reg[1]_i_2 
       (.I0(\data_out_I_reg[1]_i_4_n_0 ),
        .I1(\data_out_I_reg[1]_i_5_n_0 ),
        .O(\data_out_I_reg[1]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_I_reg[1]_i_3 
       (.I0(\data_out_I_reg[1]_i_6_n_0 ),
        .I1(\data_out_I_reg[1]_i_7_n_0 ),
        .O(\data_out_I_reg[1]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_I_reg[1]_i_4 
       (.I0(\data_out_I[1]_i_8_n_0 ),
        .I1(\data_out_I[1]_i_9_n_0 ),
        .O(\data_out_I_reg[1]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[1]_i_5 
       (.I0(\data_out_I[1]_i_10_n_0 ),
        .I1(\data_out_I[1]_i_11_n_0 ),
        .O(\data_out_I_reg[1]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[1]_i_6 
       (.I0(\data_out_I[1]_i_12_n_0 ),
        .I1(\data_out_I[1]_i_13_n_0 ),
        .O(\data_out_I_reg[1]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[1]_i_7 
       (.I0(\data_out_I[1]_i_14_n_0 ),
        .I1(\data_out_I[1]_i_15_n_0 ),
        .O(\data_out_I_reg[1]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_I_reg[2] 
       (.C(clk),
        .CE(p_1_in),
        .D(p_0_in[2]),
        .Q(data_out_I[2]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_I_reg[2]_i_2 
       (.I0(\data_out_I_reg[2]_i_4_n_0 ),
        .I1(\data_out_I_reg[2]_i_5_n_0 ),
        .O(\data_out_I_reg[2]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_I_reg[2]_i_3 
       (.I0(\data_out_I_reg[2]_i_6_n_0 ),
        .I1(\data_out_I_reg[2]_i_7_n_0 ),
        .O(\data_out_I_reg[2]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_I_reg[2]_i_4 
       (.I0(\data_out_I[2]_i_8_n_0 ),
        .I1(\data_out_I[2]_i_9_n_0 ),
        .O(\data_out_I_reg[2]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[2]_i_5 
       (.I0(\data_out_I[2]_i_10_n_0 ),
        .I1(\data_out_I[2]_i_11_n_0 ),
        .O(\data_out_I_reg[2]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[2]_i_6 
       (.I0(\data_out_I[2]_i_12_n_0 ),
        .I1(\data_out_I[2]_i_13_n_0 ),
        .O(\data_out_I_reg[2]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[2]_i_7 
       (.I0(\data_out_I[2]_i_14_n_0 ),
        .I1(\data_out_I[2]_i_15_n_0 ),
        .O(\data_out_I_reg[2]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_I_reg[3] 
       (.C(clk),
        .CE(p_1_in),
        .D(p_0_in[3]),
        .Q(data_out_I[3]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_I_reg[3]_i_2 
       (.I0(\data_out_I_reg[3]_i_4_n_0 ),
        .I1(\data_out_I_reg[3]_i_5_n_0 ),
        .O(\data_out_I_reg[3]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_I_reg[3]_i_3 
       (.I0(\data_out_I_reg[3]_i_6_n_0 ),
        .I1(\data_out_I_reg[3]_i_7_n_0 ),
        .O(\data_out_I_reg[3]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_I_reg[3]_i_4 
       (.I0(\data_out_I[3]_i_8_n_0 ),
        .I1(\data_out_I[3]_i_9_n_0 ),
        .O(\data_out_I_reg[3]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[3]_i_5 
       (.I0(\data_out_I[3]_i_10_n_0 ),
        .I1(\data_out_I[3]_i_11_n_0 ),
        .O(\data_out_I_reg[3]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[3]_i_6 
       (.I0(\data_out_I[3]_i_12_n_0 ),
        .I1(\data_out_I[3]_i_13_n_0 ),
        .O(\data_out_I_reg[3]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[3]_i_7 
       (.I0(\data_out_I[3]_i_14_n_0 ),
        .I1(\data_out_I[3]_i_15_n_0 ),
        .O(\data_out_I_reg[3]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_I_reg[4] 
       (.C(clk),
        .CE(p_1_in),
        .D(p_0_in[4]),
        .Q(data_out_I[4]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_I_reg[4]_i_2 
       (.I0(\data_out_I_reg[4]_i_4_n_0 ),
        .I1(\data_out_I_reg[4]_i_5_n_0 ),
        .O(\data_out_I_reg[4]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_I_reg[4]_i_3 
       (.I0(\data_out_I_reg[4]_i_6_n_0 ),
        .I1(\data_out_I_reg[4]_i_7_n_0 ),
        .O(\data_out_I_reg[4]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_I_reg[4]_i_4 
       (.I0(\data_out_I[4]_i_8_n_0 ),
        .I1(\data_out_I[4]_i_9_n_0 ),
        .O(\data_out_I_reg[4]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[4]_i_5 
       (.I0(\data_out_I[4]_i_10_n_0 ),
        .I1(\data_out_I[4]_i_11_n_0 ),
        .O(\data_out_I_reg[4]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[4]_i_6 
       (.I0(\data_out_I[4]_i_12_n_0 ),
        .I1(\data_out_I[4]_i_13_n_0 ),
        .O(\data_out_I_reg[4]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[4]_i_7 
       (.I0(\data_out_I[4]_i_14_n_0 ),
        .I1(\data_out_I[4]_i_15_n_0 ),
        .O(\data_out_I_reg[4]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_I_reg[5] 
       (.C(clk),
        .CE(p_1_in),
        .D(p_0_in[5]),
        .Q(data_out_I[5]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_I_reg[5]_i_2 
       (.I0(\data_out_I_reg[5]_i_4_n_0 ),
        .I1(\data_out_I_reg[5]_i_5_n_0 ),
        .O(\data_out_I_reg[5]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_I_reg[5]_i_3 
       (.I0(\data_out_I_reg[5]_i_6_n_0 ),
        .I1(\data_out_I_reg[5]_i_7_n_0 ),
        .O(\data_out_I_reg[5]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_I_reg[5]_i_4 
       (.I0(\data_out_I[5]_i_8_n_0 ),
        .I1(\data_out_I[5]_i_9_n_0 ),
        .O(\data_out_I_reg[5]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[5]_i_5 
       (.I0(\data_out_I[5]_i_10_n_0 ),
        .I1(\data_out_I[5]_i_11_n_0 ),
        .O(\data_out_I_reg[5]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[5]_i_6 
       (.I0(\data_out_I[5]_i_12_n_0 ),
        .I1(\data_out_I[5]_i_13_n_0 ),
        .O(\data_out_I_reg[5]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[5]_i_7 
       (.I0(\data_out_I[5]_i_14_n_0 ),
        .I1(\data_out_I[5]_i_15_n_0 ),
        .O(\data_out_I_reg[5]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_I_reg[6] 
       (.C(clk),
        .CE(p_1_in),
        .D(p_0_in[6]),
        .Q(data_out_I[6]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_I_reg[6]_i_2 
       (.I0(\data_out_I_reg[6]_i_4_n_0 ),
        .I1(\data_out_I_reg[6]_i_5_n_0 ),
        .O(\data_out_I_reg[6]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_I_reg[6]_i_3 
       (.I0(\data_out_I_reg[6]_i_6_n_0 ),
        .I1(\data_out_I_reg[6]_i_7_n_0 ),
        .O(\data_out_I_reg[6]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_I_reg[6]_i_4 
       (.I0(\data_out_I[6]_i_8_n_0 ),
        .I1(\data_out_I[6]_i_9_n_0 ),
        .O(\data_out_I_reg[6]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[6]_i_5 
       (.I0(\data_out_I[6]_i_10_n_0 ),
        .I1(\data_out_I[6]_i_11_n_0 ),
        .O(\data_out_I_reg[6]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[6]_i_6 
       (.I0(\data_out_I[6]_i_12_n_0 ),
        .I1(\data_out_I[6]_i_13_n_0 ),
        .O(\data_out_I_reg[6]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[6]_i_7 
       (.I0(\data_out_I[6]_i_14_n_0 ),
        .I1(\data_out_I[6]_i_15_n_0 ),
        .O(\data_out_I_reg[6]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_I_reg[7] 
       (.C(clk),
        .CE(p_1_in),
        .D(p_0_in[7]),
        .Q(data_out_I[7]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_I_reg[7]_i_2 
       (.I0(\data_out_I_reg[7]_i_4_n_0 ),
        .I1(\data_out_I_reg[7]_i_5_n_0 ),
        .O(\data_out_I_reg[7]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_I_reg[7]_i_3 
       (.I0(\data_out_I_reg[7]_i_6_n_0 ),
        .I1(\data_out_I_reg[7]_i_7_n_0 ),
        .O(\data_out_I_reg[7]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_I_reg[7]_i_4 
       (.I0(\data_out_I[7]_i_8_n_0 ),
        .I1(\data_out_I[7]_i_9_n_0 ),
        .O(\data_out_I_reg[7]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[7]_i_5 
       (.I0(\data_out_I[7]_i_10_n_0 ),
        .I1(\data_out_I[7]_i_11_n_0 ),
        .O(\data_out_I_reg[7]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[7]_i_6 
       (.I0(\data_out_I[7]_i_12_n_0 ),
        .I1(\data_out_I[7]_i_13_n_0 ),
        .O(\data_out_I_reg[7]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[7]_i_7 
       (.I0(\data_out_I[7]_i_14_n_0 ),
        .I1(\data_out_I[7]_i_15_n_0 ),
        .O(\data_out_I_reg[7]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_I_reg[8] 
       (.C(clk),
        .CE(p_1_in),
        .D(p_0_in[8]),
        .Q(data_out_I[8]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_I_reg[8]_i_2 
       (.I0(\data_out_I_reg[8]_i_4_n_0 ),
        .I1(\data_out_I_reg[8]_i_5_n_0 ),
        .O(\data_out_I_reg[8]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_I_reg[8]_i_3 
       (.I0(\data_out_I_reg[8]_i_6_n_0 ),
        .I1(\data_out_I_reg[8]_i_7_n_0 ),
        .O(\data_out_I_reg[8]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_I_reg[8]_i_4 
       (.I0(\data_out_I[8]_i_8_n_0 ),
        .I1(\data_out_I[8]_i_9_n_0 ),
        .O(\data_out_I_reg[8]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[8]_i_5 
       (.I0(\data_out_I[8]_i_10_n_0 ),
        .I1(\data_out_I[8]_i_11_n_0 ),
        .O(\data_out_I_reg[8]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[8]_i_6 
       (.I0(\data_out_I[8]_i_12_n_0 ),
        .I1(\data_out_I[8]_i_13_n_0 ),
        .O(\data_out_I_reg[8]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[8]_i_7 
       (.I0(\data_out_I[8]_i_14_n_0 ),
        .I1(\data_out_I[8]_i_15_n_0 ),
        .O(\data_out_I_reg[8]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_I_reg[9] 
       (.C(clk),
        .CE(p_1_in),
        .D(p_0_in[9]),
        .Q(data_out_I[9]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_I_reg[9]_i_2 
       (.I0(\data_out_I_reg[9]_i_4_n_0 ),
        .I1(\data_out_I_reg[9]_i_5_n_0 ),
        .O(\data_out_I_reg[9]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_I_reg[9]_i_3 
       (.I0(\data_out_I_reg[9]_i_6_n_0 ),
        .I1(\data_out_I_reg[9]_i_7_n_0 ),
        .O(\data_out_I_reg[9]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_I_reg[9]_i_4 
       (.I0(\data_out_I[9]_i_8_n_0 ),
        .I1(\data_out_I[9]_i_9_n_0 ),
        .O(\data_out_I_reg[9]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[9]_i_5 
       (.I0(\data_out_I[9]_i_10_n_0 ),
        .I1(\data_out_I[9]_i_11_n_0 ),
        .O(\data_out_I_reg[9]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[9]_i_6 
       (.I0(\data_out_I[9]_i_12_n_0 ),
        .I1(\data_out_I[9]_i_13_n_0 ),
        .O(\data_out_I_reg[9]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_I_reg[9]_i_7 
       (.I0(\data_out_I[9]_i_14_n_0 ),
        .I1(\data_out_I[9]_i_15_n_0 ),
        .O(\data_out_I_reg[9]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_Q[0]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_Q_reg_n_0_[0][0] ),
        .I3(\data_out_Q_reg[0]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_Q_reg[0]_i_3_n_0 ),
        .O(\data_out_Q[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[0]_i_10 
       (.I0(\mul_reg_Q_reg[13] [0]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[12] [0]),
        .O(\data_out_Q[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[0]_i_11 
       (.I0(\mul_reg_Q_reg[15]0_n_105 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[14] [0]),
        .O(\data_out_Q[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[0]_i_12 
       (.I0(\mul_reg_Q_reg[1] [0]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg_n_0_[0][0] ),
        .O(\data_out_Q[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[0]_i_13 
       (.I0(\mul_reg_Q_reg[3]0_n_105 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[2] [0]),
        .O(\data_out_Q[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[0]_i_14 
       (.I0(\mul_reg_Q_reg[5] [0]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[4] [0]),
        .O(\data_out_Q[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[0]_i_15 
       (.I0(\mul_reg_Q_reg[7]0_n_105 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[6] [0]),
        .O(\data_out_Q[0]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[0]_i_8 
       (.I0(\mul_reg_Q_reg[9] [0]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[8] [0]),
        .O(\data_out_Q[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[0]_i_9 
       (.I0(\mul_reg_Q_reg[11]0_n_105 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[10] [0]),
        .O(\data_out_Q[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_Q[10]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_Q_reg_n_0_[0][10] ),
        .I3(\data_out_Q_reg[10]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_Q_reg[10]_i_3_n_0 ),
        .O(\data_out_Q[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[10]_i_10 
       (.I0(\mul_reg_Q_reg[13] [10]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[12] [10]),
        .O(\data_out_Q[10]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[10]_i_11 
       (.I0(\mul_reg_Q_reg[15]0_n_95 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[14] [10]),
        .O(\data_out_Q[10]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[10]_i_12 
       (.I0(\mul_reg_Q_reg[1] [10]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg_n_0_[0][10] ),
        .O(\data_out_Q[10]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[10]_i_13 
       (.I0(\mul_reg_Q_reg[3]0_n_95 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[2] [10]),
        .O(\data_out_Q[10]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[10]_i_14 
       (.I0(\mul_reg_Q_reg[5] [10]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[4] [10]),
        .O(\data_out_Q[10]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[10]_i_15 
       (.I0(\mul_reg_Q_reg[7]0_n_95 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[6] [10]),
        .O(\data_out_Q[10]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[10]_i_8 
       (.I0(\mul_reg_Q_reg[9] [10]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[8] [10]),
        .O(\data_out_Q[10]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[10]_i_9 
       (.I0(\mul_reg_Q_reg[11]0_n_95 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[10] [10]),
        .O(\data_out_Q[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_Q[11]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_Q_reg_n_0_[0][11] ),
        .I3(\data_out_Q_reg[11]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_Q_reg[11]_i_3_n_0 ),
        .O(\data_out_Q[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[11]_i_10 
       (.I0(\mul_reg_Q_reg[13] [11]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[12] [11]),
        .O(\data_out_Q[11]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[11]_i_11 
       (.I0(\mul_reg_Q_reg[15]0_n_94 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[14] [11]),
        .O(\data_out_Q[11]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[11]_i_12 
       (.I0(\mul_reg_Q_reg[1] [11]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg_n_0_[0][11] ),
        .O(\data_out_Q[11]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[11]_i_13 
       (.I0(\mul_reg_Q_reg[3]0_n_94 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[2] [11]),
        .O(\data_out_Q[11]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[11]_i_14 
       (.I0(\mul_reg_Q_reg[5] [11]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[4] [11]),
        .O(\data_out_Q[11]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[11]_i_15 
       (.I0(\mul_reg_Q_reg[7]0_n_94 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[6] [11]),
        .O(\data_out_Q[11]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[11]_i_8 
       (.I0(\mul_reg_Q_reg[9] [11]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[8] [11]),
        .O(\data_out_Q[11]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[11]_i_9 
       (.I0(\mul_reg_Q_reg[11]0_n_94 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[10] [11]),
        .O(\data_out_Q[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_Q[12]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_Q_reg_n_0_[0][12] ),
        .I3(\data_out_Q_reg[12]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_Q_reg[12]_i_3_n_0 ),
        .O(\data_out_Q[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[12]_i_10 
       (.I0(\mul_reg_Q_reg[13] [12]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[12] [12]),
        .O(\data_out_Q[12]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[12]_i_11 
       (.I0(\mul_reg_Q_reg[15]0_n_93 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[14] [12]),
        .O(\data_out_Q[12]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[12]_i_12 
       (.I0(\mul_reg_Q_reg[1] [12]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg_n_0_[0][12] ),
        .O(\data_out_Q[12]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[12]_i_13 
       (.I0(\mul_reg_Q_reg[3]0_n_93 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[2] [12]),
        .O(\data_out_Q[12]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[12]_i_14 
       (.I0(\mul_reg_Q_reg[5] [12]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[4] [12]),
        .O(\data_out_Q[12]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[12]_i_15 
       (.I0(\mul_reg_Q_reg[7]0_n_93 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[6] [12]),
        .O(\data_out_Q[12]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[12]_i_8 
       (.I0(\mul_reg_Q_reg[9] [12]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[8] [12]),
        .O(\data_out_Q[12]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[12]_i_9 
       (.I0(\mul_reg_Q_reg[11]0_n_93 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[10] [12]),
        .O(\data_out_Q[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_Q[13]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_Q_reg_n_0_[0][13] ),
        .I3(\data_out_Q_reg[13]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_Q_reg[13]_i_3_n_0 ),
        .O(\data_out_Q[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[13]_i_10 
       (.I0(\mul_reg_Q_reg[13] [13]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[12] [13]),
        .O(\data_out_Q[13]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[13]_i_11 
       (.I0(\mul_reg_Q_reg[15]0_n_92 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[14] [13]),
        .O(\data_out_Q[13]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[13]_i_12 
       (.I0(\mul_reg_Q_reg[1] [13]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg_n_0_[0][13] ),
        .O(\data_out_Q[13]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[13]_i_13 
       (.I0(\mul_reg_Q_reg[3]0_n_92 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[2] [13]),
        .O(\data_out_Q[13]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[13]_i_14 
       (.I0(\mul_reg_Q_reg[5] [13]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[4] [13]),
        .O(\data_out_Q[13]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[13]_i_15 
       (.I0(\mul_reg_Q_reg[7]0_n_92 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[6] [13]),
        .O(\data_out_Q[13]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[13]_i_8 
       (.I0(\mul_reg_Q_reg[9] [13]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[8] [13]),
        .O(\data_out_Q[13]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[13]_i_9 
       (.I0(\mul_reg_Q_reg[11]0_n_92 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[10] [13]),
        .O(\data_out_Q[13]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_Q[14]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_Q_reg_n_0_[0][14] ),
        .I3(\data_out_Q_reg[14]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_Q_reg[14]_i_3_n_0 ),
        .O(\data_out_Q[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[14]_i_10 
       (.I0(\mul_reg_Q_reg[13] [14]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[12] [14]),
        .O(\data_out_Q[14]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[14]_i_11 
       (.I0(\mul_reg_Q_reg[15]0_n_91 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[14] [14]),
        .O(\data_out_Q[14]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[14]_i_12 
       (.I0(\mul_reg_Q_reg[1] [14]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg_n_0_[0][14] ),
        .O(\data_out_Q[14]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[14]_i_13 
       (.I0(\mul_reg_Q_reg[3]0_n_91 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[2] [14]),
        .O(\data_out_Q[14]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[14]_i_14 
       (.I0(\mul_reg_Q_reg[5] [14]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[4] [14]),
        .O(\data_out_Q[14]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[14]_i_15 
       (.I0(\mul_reg_Q_reg[7]0_n_91 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[6] [14]),
        .O(\data_out_Q[14]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[14]_i_8 
       (.I0(\mul_reg_Q_reg[9] [14]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[8] [14]),
        .O(\data_out_Q[14]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[14]_i_9 
       (.I0(\mul_reg_Q_reg[11]0_n_91 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[10] [14]),
        .O(\data_out_Q[14]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_Q[15]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_Q_reg_n_0_[0][15] ),
        .I3(\data_out_Q_reg[15]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_Q_reg[15]_i_3_n_0 ),
        .O(\data_out_Q[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[15]_i_10 
       (.I0(\mul_reg_Q_reg[13] [15]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[12] [15]),
        .O(\data_out_Q[15]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[15]_i_11 
       (.I0(\mul_reg_Q_reg[15]0_n_90 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[14] [15]),
        .O(\data_out_Q[15]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[15]_i_12 
       (.I0(\mul_reg_Q_reg[1] [15]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg_n_0_[0][15] ),
        .O(\data_out_Q[15]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[15]_i_13 
       (.I0(\mul_reg_Q_reg[3]0_n_90 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[2] [15]),
        .O(\data_out_Q[15]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[15]_i_14 
       (.I0(\mul_reg_Q_reg[5] [15]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[4] [15]),
        .O(\data_out_Q[15]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[15]_i_15 
       (.I0(\mul_reg_Q_reg[7]0_n_90 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[6] [15]),
        .O(\data_out_Q[15]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[15]_i_8 
       (.I0(\mul_reg_Q_reg[9] [15]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[8] [15]),
        .O(\data_out_Q[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[15]_i_9 
       (.I0(\mul_reg_Q_reg[11]0_n_90 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[10] [15]),
        .O(\data_out_Q[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_Q[1]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_Q_reg_n_0_[0][1] ),
        .I3(\data_out_Q_reg[1]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_Q_reg[1]_i_3_n_0 ),
        .O(\data_out_Q[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[1]_i_10 
       (.I0(\mul_reg_Q_reg[13] [1]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[12] [1]),
        .O(\data_out_Q[1]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[1]_i_11 
       (.I0(\mul_reg_Q_reg[15]0_n_104 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[14] [1]),
        .O(\data_out_Q[1]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[1]_i_12 
       (.I0(\mul_reg_Q_reg[1] [1]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg_n_0_[0][1] ),
        .O(\data_out_Q[1]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[1]_i_13 
       (.I0(\mul_reg_Q_reg[3]0_n_104 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[2] [1]),
        .O(\data_out_Q[1]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[1]_i_14 
       (.I0(\mul_reg_Q_reg[5] [1]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[4] [1]),
        .O(\data_out_Q[1]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[1]_i_15 
       (.I0(\mul_reg_Q_reg[7]0_n_104 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[6] [1]),
        .O(\data_out_Q[1]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[1]_i_8 
       (.I0(\mul_reg_Q_reg[9] [1]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[8] [1]),
        .O(\data_out_Q[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[1]_i_9 
       (.I0(\mul_reg_Q_reg[11]0_n_104 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[10] [1]),
        .O(\data_out_Q[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_Q[2]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_Q_reg_n_0_[0][2] ),
        .I3(\data_out_Q_reg[2]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_Q_reg[2]_i_3_n_0 ),
        .O(\data_out_Q[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[2]_i_10 
       (.I0(\mul_reg_Q_reg[13] [2]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[12] [2]),
        .O(\data_out_Q[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[2]_i_11 
       (.I0(\mul_reg_Q_reg[15]0_n_103 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[14] [2]),
        .O(\data_out_Q[2]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[2]_i_12 
       (.I0(\mul_reg_Q_reg[1] [2]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg_n_0_[0][2] ),
        .O(\data_out_Q[2]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[2]_i_13 
       (.I0(\mul_reg_Q_reg[3]0_n_103 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[2] [2]),
        .O(\data_out_Q[2]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[2]_i_14 
       (.I0(\mul_reg_Q_reg[5] [2]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[4] [2]),
        .O(\data_out_Q[2]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[2]_i_15 
       (.I0(\mul_reg_Q_reg[7]0_n_103 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[6] [2]),
        .O(\data_out_Q[2]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[2]_i_8 
       (.I0(\mul_reg_Q_reg[9] [2]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[8] [2]),
        .O(\data_out_Q[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[2]_i_9 
       (.I0(\mul_reg_Q_reg[11]0_n_103 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[10] [2]),
        .O(\data_out_Q[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_Q[3]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_Q_reg_n_0_[0][3] ),
        .I3(\data_out_Q_reg[3]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_Q_reg[3]_i_3_n_0 ),
        .O(\data_out_Q[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[3]_i_10 
       (.I0(\mul_reg_Q_reg[13] [3]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[12] [3]),
        .O(\data_out_Q[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[3]_i_11 
       (.I0(\mul_reg_Q_reg[15]0_n_102 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[14] [3]),
        .O(\data_out_Q[3]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[3]_i_12 
       (.I0(\mul_reg_Q_reg[1] [3]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg_n_0_[0][3] ),
        .O(\data_out_Q[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[3]_i_13 
       (.I0(\mul_reg_Q_reg[3]0_n_102 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[2] [3]),
        .O(\data_out_Q[3]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[3]_i_14 
       (.I0(\mul_reg_Q_reg[5] [3]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[4] [3]),
        .O(\data_out_Q[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[3]_i_15 
       (.I0(\mul_reg_Q_reg[7]0_n_102 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[6] [3]),
        .O(\data_out_Q[3]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[3]_i_8 
       (.I0(\mul_reg_Q_reg[9] [3]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[8] [3]),
        .O(\data_out_Q[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[3]_i_9 
       (.I0(\mul_reg_Q_reg[11]0_n_102 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[10] [3]),
        .O(\data_out_Q[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_Q[4]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_Q_reg_n_0_[0][4] ),
        .I3(\data_out_Q_reg[4]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_Q_reg[4]_i_3_n_0 ),
        .O(\data_out_Q[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[4]_i_10 
       (.I0(\mul_reg_Q_reg[13] [4]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[12] [4]),
        .O(\data_out_Q[4]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[4]_i_11 
       (.I0(\mul_reg_Q_reg[15]0_n_101 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[14] [4]),
        .O(\data_out_Q[4]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[4]_i_12 
       (.I0(\mul_reg_Q_reg[1] [4]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg_n_0_[0][4] ),
        .O(\data_out_Q[4]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[4]_i_13 
       (.I0(\mul_reg_Q_reg[3]0_n_101 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[2] [4]),
        .O(\data_out_Q[4]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[4]_i_14 
       (.I0(\mul_reg_Q_reg[5] [4]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[4] [4]),
        .O(\data_out_Q[4]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[4]_i_15 
       (.I0(\mul_reg_Q_reg[7]0_n_101 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[6] [4]),
        .O(\data_out_Q[4]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[4]_i_8 
       (.I0(\mul_reg_Q_reg[9] [4]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[8] [4]),
        .O(\data_out_Q[4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[4]_i_9 
       (.I0(\mul_reg_Q_reg[11]0_n_101 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[10] [4]),
        .O(\data_out_Q[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_Q[5]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_Q_reg_n_0_[0][5] ),
        .I3(\data_out_Q_reg[5]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_Q_reg[5]_i_3_n_0 ),
        .O(\data_out_Q[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[5]_i_10 
       (.I0(\mul_reg_Q_reg[13] [5]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[12] [5]),
        .O(\data_out_Q[5]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[5]_i_11 
       (.I0(\mul_reg_Q_reg[15]0_n_100 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[14] [5]),
        .O(\data_out_Q[5]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[5]_i_12 
       (.I0(\mul_reg_Q_reg[1] [5]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg_n_0_[0][5] ),
        .O(\data_out_Q[5]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[5]_i_13 
       (.I0(\mul_reg_Q_reg[3]0_n_100 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[2] [5]),
        .O(\data_out_Q[5]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[5]_i_14 
       (.I0(\mul_reg_Q_reg[5] [5]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[4] [5]),
        .O(\data_out_Q[5]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[5]_i_15 
       (.I0(\mul_reg_Q_reg[7]0_n_100 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[6] [5]),
        .O(\data_out_Q[5]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[5]_i_8 
       (.I0(\mul_reg_Q_reg[9] [5]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[8] [5]),
        .O(\data_out_Q[5]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[5]_i_9 
       (.I0(\mul_reg_Q_reg[11]0_n_100 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[10] [5]),
        .O(\data_out_Q[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_Q[6]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_Q_reg_n_0_[0][6] ),
        .I3(\data_out_Q_reg[6]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_Q_reg[6]_i_3_n_0 ),
        .O(\data_out_Q[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[6]_i_10 
       (.I0(\mul_reg_Q_reg[13] [6]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[12] [6]),
        .O(\data_out_Q[6]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[6]_i_11 
       (.I0(\mul_reg_Q_reg[15]0_n_99 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[14] [6]),
        .O(\data_out_Q[6]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[6]_i_12 
       (.I0(\mul_reg_Q_reg[1] [6]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg_n_0_[0][6] ),
        .O(\data_out_Q[6]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[6]_i_13 
       (.I0(\mul_reg_Q_reg[3]0_n_99 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[2] [6]),
        .O(\data_out_Q[6]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[6]_i_14 
       (.I0(\mul_reg_Q_reg[5] [6]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[4] [6]),
        .O(\data_out_Q[6]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[6]_i_15 
       (.I0(\mul_reg_Q_reg[7]0_n_99 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[6] [6]),
        .O(\data_out_Q[6]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[6]_i_8 
       (.I0(\mul_reg_Q_reg[9] [6]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[8] [6]),
        .O(\data_out_Q[6]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[6]_i_9 
       (.I0(\mul_reg_Q_reg[11]0_n_99 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[10] [6]),
        .O(\data_out_Q[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_Q[7]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_Q_reg_n_0_[0][7] ),
        .I3(\data_out_Q_reg[7]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_Q_reg[7]_i_3_n_0 ),
        .O(\data_out_Q[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[7]_i_10 
       (.I0(\mul_reg_Q_reg[13] [7]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[12] [7]),
        .O(\data_out_Q[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[7]_i_11 
       (.I0(\mul_reg_Q_reg[15]0_n_98 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[14] [7]),
        .O(\data_out_Q[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[7]_i_12 
       (.I0(\mul_reg_Q_reg[1] [7]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg_n_0_[0][7] ),
        .O(\data_out_Q[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[7]_i_13 
       (.I0(\mul_reg_Q_reg[3]0_n_98 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[2] [7]),
        .O(\data_out_Q[7]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[7]_i_14 
       (.I0(\mul_reg_Q_reg[5] [7]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[4] [7]),
        .O(\data_out_Q[7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[7]_i_15 
       (.I0(\mul_reg_Q_reg[7]0_n_98 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[6] [7]),
        .O(\data_out_Q[7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[7]_i_8 
       (.I0(\mul_reg_Q_reg[9] [7]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[8] [7]),
        .O(\data_out_Q[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[7]_i_9 
       (.I0(\mul_reg_Q_reg[11]0_n_98 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[10] [7]),
        .O(\data_out_Q[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_Q[8]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_Q_reg_n_0_[0][8] ),
        .I3(\data_out_Q_reg[8]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_Q_reg[8]_i_3_n_0 ),
        .O(\data_out_Q[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[8]_i_10 
       (.I0(\mul_reg_Q_reg[13] [8]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[12] [8]),
        .O(\data_out_Q[8]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[8]_i_11 
       (.I0(\mul_reg_Q_reg[15]0_n_97 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[14] [8]),
        .O(\data_out_Q[8]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[8]_i_12 
       (.I0(\mul_reg_Q_reg[1] [8]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg_n_0_[0][8] ),
        .O(\data_out_Q[8]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[8]_i_13 
       (.I0(\mul_reg_Q_reg[3]0_n_97 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[2] [8]),
        .O(\data_out_Q[8]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[8]_i_14 
       (.I0(\mul_reg_Q_reg[5] [8]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[4] [8]),
        .O(\data_out_Q[8]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[8]_i_15 
       (.I0(\mul_reg_Q_reg[7]0_n_97 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[6] [8]),
        .O(\data_out_Q[8]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[8]_i_8 
       (.I0(\mul_reg_Q_reg[9] [8]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[8] [8]),
        .O(\data_out_Q[8]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[8]_i_9 
       (.I0(\mul_reg_Q_reg[11]0_n_97 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[10] [8]),
        .O(\data_out_Q[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF780F7F7F7808080)) 
    \data_out_Q[9]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(\mul_reg_Q_reg_n_0_[0][9] ),
        .I3(\data_out_Q_reg[9]_i_2_n_0 ),
        .I4(tail_tmp_reg[3]),
        .I5(\data_out_Q_reg[9]_i_3_n_0 ),
        .O(\data_out_Q[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[9]_i_10 
       (.I0(\mul_reg_Q_reg[13] [9]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[12] [9]),
        .O(\data_out_Q[9]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[9]_i_11 
       (.I0(\mul_reg_Q_reg[15]0_n_96 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[14] [9]),
        .O(\data_out_Q[9]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[9]_i_12 
       (.I0(\mul_reg_Q_reg[1] [9]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg_n_0_[0][9] ),
        .O(\data_out_Q[9]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[9]_i_13 
       (.I0(\mul_reg_Q_reg[3]0_n_96 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[2] [9]),
        .O(\data_out_Q[9]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[9]_i_14 
       (.I0(\mul_reg_Q_reg[5] [9]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[4] [9]),
        .O(\data_out_Q[9]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[9]_i_15 
       (.I0(\mul_reg_Q_reg[7]0_n_96 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[6] [9]),
        .O(\data_out_Q[9]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_Q[9]_i_8 
       (.I0(\mul_reg_Q_reg[9] [9]),
        .I1(tail_tmp_reg[0]),
        .I2(\mul_reg_Q_reg[8] [9]),
        .O(\data_out_Q[9]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \data_out_Q[9]_i_9 
       (.I0(\mul_reg_Q_reg[11]0_n_96 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .I2(tail_tmp_reg[0]),
        .I3(\mul_reg_Q_reg[10] [9]),
        .O(\data_out_Q[9]_i_9_n_0 ));
  FDRE \data_out_Q_reg[0] 
       (.C(clk),
        .CE(p_1_in),
        .D(\data_out_Q[0]_i_1_n_0 ),
        .Q(data_out_Q[0]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_Q_reg[0]_i_2 
       (.I0(\data_out_Q_reg[0]_i_4_n_0 ),
        .I1(\data_out_Q_reg[0]_i_5_n_0 ),
        .O(\data_out_Q_reg[0]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_Q_reg[0]_i_3 
       (.I0(\data_out_Q_reg[0]_i_6_n_0 ),
        .I1(\data_out_Q_reg[0]_i_7_n_0 ),
        .O(\data_out_Q_reg[0]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_Q_reg[0]_i_4 
       (.I0(\data_out_Q[0]_i_8_n_0 ),
        .I1(\data_out_Q[0]_i_9_n_0 ),
        .O(\data_out_Q_reg[0]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[0]_i_5 
       (.I0(\data_out_Q[0]_i_10_n_0 ),
        .I1(\data_out_Q[0]_i_11_n_0 ),
        .O(\data_out_Q_reg[0]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[0]_i_6 
       (.I0(\data_out_Q[0]_i_12_n_0 ),
        .I1(\data_out_Q[0]_i_13_n_0 ),
        .O(\data_out_Q_reg[0]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[0]_i_7 
       (.I0(\data_out_Q[0]_i_14_n_0 ),
        .I1(\data_out_Q[0]_i_15_n_0 ),
        .O(\data_out_Q_reg[0]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_Q_reg[10] 
       (.C(clk),
        .CE(p_1_in),
        .D(\data_out_Q[10]_i_1_n_0 ),
        .Q(data_out_Q[10]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_Q_reg[10]_i_2 
       (.I0(\data_out_Q_reg[10]_i_4_n_0 ),
        .I1(\data_out_Q_reg[10]_i_5_n_0 ),
        .O(\data_out_Q_reg[10]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_Q_reg[10]_i_3 
       (.I0(\data_out_Q_reg[10]_i_6_n_0 ),
        .I1(\data_out_Q_reg[10]_i_7_n_0 ),
        .O(\data_out_Q_reg[10]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_Q_reg[10]_i_4 
       (.I0(\data_out_Q[10]_i_8_n_0 ),
        .I1(\data_out_Q[10]_i_9_n_0 ),
        .O(\data_out_Q_reg[10]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[10]_i_5 
       (.I0(\data_out_Q[10]_i_10_n_0 ),
        .I1(\data_out_Q[10]_i_11_n_0 ),
        .O(\data_out_Q_reg[10]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[10]_i_6 
       (.I0(\data_out_Q[10]_i_12_n_0 ),
        .I1(\data_out_Q[10]_i_13_n_0 ),
        .O(\data_out_Q_reg[10]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[10]_i_7 
       (.I0(\data_out_Q[10]_i_14_n_0 ),
        .I1(\data_out_Q[10]_i_15_n_0 ),
        .O(\data_out_Q_reg[10]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_Q_reg[11] 
       (.C(clk),
        .CE(p_1_in),
        .D(\data_out_Q[11]_i_1_n_0 ),
        .Q(data_out_Q[11]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_Q_reg[11]_i_2 
       (.I0(\data_out_Q_reg[11]_i_4_n_0 ),
        .I1(\data_out_Q_reg[11]_i_5_n_0 ),
        .O(\data_out_Q_reg[11]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_Q_reg[11]_i_3 
       (.I0(\data_out_Q_reg[11]_i_6_n_0 ),
        .I1(\data_out_Q_reg[11]_i_7_n_0 ),
        .O(\data_out_Q_reg[11]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_Q_reg[11]_i_4 
       (.I0(\data_out_Q[11]_i_8_n_0 ),
        .I1(\data_out_Q[11]_i_9_n_0 ),
        .O(\data_out_Q_reg[11]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[11]_i_5 
       (.I0(\data_out_Q[11]_i_10_n_0 ),
        .I1(\data_out_Q[11]_i_11_n_0 ),
        .O(\data_out_Q_reg[11]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[11]_i_6 
       (.I0(\data_out_Q[11]_i_12_n_0 ),
        .I1(\data_out_Q[11]_i_13_n_0 ),
        .O(\data_out_Q_reg[11]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[11]_i_7 
       (.I0(\data_out_Q[11]_i_14_n_0 ),
        .I1(\data_out_Q[11]_i_15_n_0 ),
        .O(\data_out_Q_reg[11]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_Q_reg[12] 
       (.C(clk),
        .CE(p_1_in),
        .D(\data_out_Q[12]_i_1_n_0 ),
        .Q(data_out_Q[12]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_Q_reg[12]_i_2 
       (.I0(\data_out_Q_reg[12]_i_4_n_0 ),
        .I1(\data_out_Q_reg[12]_i_5_n_0 ),
        .O(\data_out_Q_reg[12]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_Q_reg[12]_i_3 
       (.I0(\data_out_Q_reg[12]_i_6_n_0 ),
        .I1(\data_out_Q_reg[12]_i_7_n_0 ),
        .O(\data_out_Q_reg[12]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_Q_reg[12]_i_4 
       (.I0(\data_out_Q[12]_i_8_n_0 ),
        .I1(\data_out_Q[12]_i_9_n_0 ),
        .O(\data_out_Q_reg[12]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[12]_i_5 
       (.I0(\data_out_Q[12]_i_10_n_0 ),
        .I1(\data_out_Q[12]_i_11_n_0 ),
        .O(\data_out_Q_reg[12]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[12]_i_6 
       (.I0(\data_out_Q[12]_i_12_n_0 ),
        .I1(\data_out_Q[12]_i_13_n_0 ),
        .O(\data_out_Q_reg[12]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[12]_i_7 
       (.I0(\data_out_Q[12]_i_14_n_0 ),
        .I1(\data_out_Q[12]_i_15_n_0 ),
        .O(\data_out_Q_reg[12]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_Q_reg[13] 
       (.C(clk),
        .CE(p_1_in),
        .D(\data_out_Q[13]_i_1_n_0 ),
        .Q(data_out_Q[13]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_Q_reg[13]_i_2 
       (.I0(\data_out_Q_reg[13]_i_4_n_0 ),
        .I1(\data_out_Q_reg[13]_i_5_n_0 ),
        .O(\data_out_Q_reg[13]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_Q_reg[13]_i_3 
       (.I0(\data_out_Q_reg[13]_i_6_n_0 ),
        .I1(\data_out_Q_reg[13]_i_7_n_0 ),
        .O(\data_out_Q_reg[13]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_Q_reg[13]_i_4 
       (.I0(\data_out_Q[13]_i_8_n_0 ),
        .I1(\data_out_Q[13]_i_9_n_0 ),
        .O(\data_out_Q_reg[13]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[13]_i_5 
       (.I0(\data_out_Q[13]_i_10_n_0 ),
        .I1(\data_out_Q[13]_i_11_n_0 ),
        .O(\data_out_Q_reg[13]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[13]_i_6 
       (.I0(\data_out_Q[13]_i_12_n_0 ),
        .I1(\data_out_Q[13]_i_13_n_0 ),
        .O(\data_out_Q_reg[13]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[13]_i_7 
       (.I0(\data_out_Q[13]_i_14_n_0 ),
        .I1(\data_out_Q[13]_i_15_n_0 ),
        .O(\data_out_Q_reg[13]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_Q_reg[14] 
       (.C(clk),
        .CE(p_1_in),
        .D(\data_out_Q[14]_i_1_n_0 ),
        .Q(data_out_Q[14]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_Q_reg[14]_i_2 
       (.I0(\data_out_Q_reg[14]_i_4_n_0 ),
        .I1(\data_out_Q_reg[14]_i_5_n_0 ),
        .O(\data_out_Q_reg[14]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_Q_reg[14]_i_3 
       (.I0(\data_out_Q_reg[14]_i_6_n_0 ),
        .I1(\data_out_Q_reg[14]_i_7_n_0 ),
        .O(\data_out_Q_reg[14]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_Q_reg[14]_i_4 
       (.I0(\data_out_Q[14]_i_8_n_0 ),
        .I1(\data_out_Q[14]_i_9_n_0 ),
        .O(\data_out_Q_reg[14]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[14]_i_5 
       (.I0(\data_out_Q[14]_i_10_n_0 ),
        .I1(\data_out_Q[14]_i_11_n_0 ),
        .O(\data_out_Q_reg[14]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[14]_i_6 
       (.I0(\data_out_Q[14]_i_12_n_0 ),
        .I1(\data_out_Q[14]_i_13_n_0 ),
        .O(\data_out_Q_reg[14]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[14]_i_7 
       (.I0(\data_out_Q[14]_i_14_n_0 ),
        .I1(\data_out_Q[14]_i_15_n_0 ),
        .O(\data_out_Q_reg[14]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_Q_reg[15] 
       (.C(clk),
        .CE(p_1_in),
        .D(\data_out_Q[15]_i_1_n_0 ),
        .Q(data_out_Q[15]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_Q_reg[15]_i_2 
       (.I0(\data_out_Q_reg[15]_i_4_n_0 ),
        .I1(\data_out_Q_reg[15]_i_5_n_0 ),
        .O(\data_out_Q_reg[15]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_Q_reg[15]_i_3 
       (.I0(\data_out_Q_reg[15]_i_6_n_0 ),
        .I1(\data_out_Q_reg[15]_i_7_n_0 ),
        .O(\data_out_Q_reg[15]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_Q_reg[15]_i_4 
       (.I0(\data_out_Q[15]_i_8_n_0 ),
        .I1(\data_out_Q[15]_i_9_n_0 ),
        .O(\data_out_Q_reg[15]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[15]_i_5 
       (.I0(\data_out_Q[15]_i_10_n_0 ),
        .I1(\data_out_Q[15]_i_11_n_0 ),
        .O(\data_out_Q_reg[15]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[15]_i_6 
       (.I0(\data_out_Q[15]_i_12_n_0 ),
        .I1(\data_out_Q[15]_i_13_n_0 ),
        .O(\data_out_Q_reg[15]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[15]_i_7 
       (.I0(\data_out_Q[15]_i_14_n_0 ),
        .I1(\data_out_Q[15]_i_15_n_0 ),
        .O(\data_out_Q_reg[15]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_Q_reg[1] 
       (.C(clk),
        .CE(p_1_in),
        .D(\data_out_Q[1]_i_1_n_0 ),
        .Q(data_out_Q[1]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_Q_reg[1]_i_2 
       (.I0(\data_out_Q_reg[1]_i_4_n_0 ),
        .I1(\data_out_Q_reg[1]_i_5_n_0 ),
        .O(\data_out_Q_reg[1]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_Q_reg[1]_i_3 
       (.I0(\data_out_Q_reg[1]_i_6_n_0 ),
        .I1(\data_out_Q_reg[1]_i_7_n_0 ),
        .O(\data_out_Q_reg[1]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_Q_reg[1]_i_4 
       (.I0(\data_out_Q[1]_i_8_n_0 ),
        .I1(\data_out_Q[1]_i_9_n_0 ),
        .O(\data_out_Q_reg[1]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[1]_i_5 
       (.I0(\data_out_Q[1]_i_10_n_0 ),
        .I1(\data_out_Q[1]_i_11_n_0 ),
        .O(\data_out_Q_reg[1]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[1]_i_6 
       (.I0(\data_out_Q[1]_i_12_n_0 ),
        .I1(\data_out_Q[1]_i_13_n_0 ),
        .O(\data_out_Q_reg[1]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[1]_i_7 
       (.I0(\data_out_Q[1]_i_14_n_0 ),
        .I1(\data_out_Q[1]_i_15_n_0 ),
        .O(\data_out_Q_reg[1]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_Q_reg[2] 
       (.C(clk),
        .CE(p_1_in),
        .D(\data_out_Q[2]_i_1_n_0 ),
        .Q(data_out_Q[2]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_Q_reg[2]_i_2 
       (.I0(\data_out_Q_reg[2]_i_4_n_0 ),
        .I1(\data_out_Q_reg[2]_i_5_n_0 ),
        .O(\data_out_Q_reg[2]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_Q_reg[2]_i_3 
       (.I0(\data_out_Q_reg[2]_i_6_n_0 ),
        .I1(\data_out_Q_reg[2]_i_7_n_0 ),
        .O(\data_out_Q_reg[2]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_Q_reg[2]_i_4 
       (.I0(\data_out_Q[2]_i_8_n_0 ),
        .I1(\data_out_Q[2]_i_9_n_0 ),
        .O(\data_out_Q_reg[2]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[2]_i_5 
       (.I0(\data_out_Q[2]_i_10_n_0 ),
        .I1(\data_out_Q[2]_i_11_n_0 ),
        .O(\data_out_Q_reg[2]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[2]_i_6 
       (.I0(\data_out_Q[2]_i_12_n_0 ),
        .I1(\data_out_Q[2]_i_13_n_0 ),
        .O(\data_out_Q_reg[2]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[2]_i_7 
       (.I0(\data_out_Q[2]_i_14_n_0 ),
        .I1(\data_out_Q[2]_i_15_n_0 ),
        .O(\data_out_Q_reg[2]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_Q_reg[3] 
       (.C(clk),
        .CE(p_1_in),
        .D(\data_out_Q[3]_i_1_n_0 ),
        .Q(data_out_Q[3]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_Q_reg[3]_i_2 
       (.I0(\data_out_Q_reg[3]_i_4_n_0 ),
        .I1(\data_out_Q_reg[3]_i_5_n_0 ),
        .O(\data_out_Q_reg[3]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_Q_reg[3]_i_3 
       (.I0(\data_out_Q_reg[3]_i_6_n_0 ),
        .I1(\data_out_Q_reg[3]_i_7_n_0 ),
        .O(\data_out_Q_reg[3]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_Q_reg[3]_i_4 
       (.I0(\data_out_Q[3]_i_8_n_0 ),
        .I1(\data_out_Q[3]_i_9_n_0 ),
        .O(\data_out_Q_reg[3]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[3]_i_5 
       (.I0(\data_out_Q[3]_i_10_n_0 ),
        .I1(\data_out_Q[3]_i_11_n_0 ),
        .O(\data_out_Q_reg[3]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[3]_i_6 
       (.I0(\data_out_Q[3]_i_12_n_0 ),
        .I1(\data_out_Q[3]_i_13_n_0 ),
        .O(\data_out_Q_reg[3]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[3]_i_7 
       (.I0(\data_out_Q[3]_i_14_n_0 ),
        .I1(\data_out_Q[3]_i_15_n_0 ),
        .O(\data_out_Q_reg[3]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_Q_reg[4] 
       (.C(clk),
        .CE(p_1_in),
        .D(\data_out_Q[4]_i_1_n_0 ),
        .Q(data_out_Q[4]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_Q_reg[4]_i_2 
       (.I0(\data_out_Q_reg[4]_i_4_n_0 ),
        .I1(\data_out_Q_reg[4]_i_5_n_0 ),
        .O(\data_out_Q_reg[4]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_Q_reg[4]_i_3 
       (.I0(\data_out_Q_reg[4]_i_6_n_0 ),
        .I1(\data_out_Q_reg[4]_i_7_n_0 ),
        .O(\data_out_Q_reg[4]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_Q_reg[4]_i_4 
       (.I0(\data_out_Q[4]_i_8_n_0 ),
        .I1(\data_out_Q[4]_i_9_n_0 ),
        .O(\data_out_Q_reg[4]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[4]_i_5 
       (.I0(\data_out_Q[4]_i_10_n_0 ),
        .I1(\data_out_Q[4]_i_11_n_0 ),
        .O(\data_out_Q_reg[4]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[4]_i_6 
       (.I0(\data_out_Q[4]_i_12_n_0 ),
        .I1(\data_out_Q[4]_i_13_n_0 ),
        .O(\data_out_Q_reg[4]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[4]_i_7 
       (.I0(\data_out_Q[4]_i_14_n_0 ),
        .I1(\data_out_Q[4]_i_15_n_0 ),
        .O(\data_out_Q_reg[4]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_Q_reg[5] 
       (.C(clk),
        .CE(p_1_in),
        .D(\data_out_Q[5]_i_1_n_0 ),
        .Q(data_out_Q[5]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_Q_reg[5]_i_2 
       (.I0(\data_out_Q_reg[5]_i_4_n_0 ),
        .I1(\data_out_Q_reg[5]_i_5_n_0 ),
        .O(\data_out_Q_reg[5]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_Q_reg[5]_i_3 
       (.I0(\data_out_Q_reg[5]_i_6_n_0 ),
        .I1(\data_out_Q_reg[5]_i_7_n_0 ),
        .O(\data_out_Q_reg[5]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_Q_reg[5]_i_4 
       (.I0(\data_out_Q[5]_i_8_n_0 ),
        .I1(\data_out_Q[5]_i_9_n_0 ),
        .O(\data_out_Q_reg[5]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[5]_i_5 
       (.I0(\data_out_Q[5]_i_10_n_0 ),
        .I1(\data_out_Q[5]_i_11_n_0 ),
        .O(\data_out_Q_reg[5]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[5]_i_6 
       (.I0(\data_out_Q[5]_i_12_n_0 ),
        .I1(\data_out_Q[5]_i_13_n_0 ),
        .O(\data_out_Q_reg[5]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[5]_i_7 
       (.I0(\data_out_Q[5]_i_14_n_0 ),
        .I1(\data_out_Q[5]_i_15_n_0 ),
        .O(\data_out_Q_reg[5]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_Q_reg[6] 
       (.C(clk),
        .CE(p_1_in),
        .D(\data_out_Q[6]_i_1_n_0 ),
        .Q(data_out_Q[6]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_Q_reg[6]_i_2 
       (.I0(\data_out_Q_reg[6]_i_4_n_0 ),
        .I1(\data_out_Q_reg[6]_i_5_n_0 ),
        .O(\data_out_Q_reg[6]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_Q_reg[6]_i_3 
       (.I0(\data_out_Q_reg[6]_i_6_n_0 ),
        .I1(\data_out_Q_reg[6]_i_7_n_0 ),
        .O(\data_out_Q_reg[6]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_Q_reg[6]_i_4 
       (.I0(\data_out_Q[6]_i_8_n_0 ),
        .I1(\data_out_Q[6]_i_9_n_0 ),
        .O(\data_out_Q_reg[6]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[6]_i_5 
       (.I0(\data_out_Q[6]_i_10_n_0 ),
        .I1(\data_out_Q[6]_i_11_n_0 ),
        .O(\data_out_Q_reg[6]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[6]_i_6 
       (.I0(\data_out_Q[6]_i_12_n_0 ),
        .I1(\data_out_Q[6]_i_13_n_0 ),
        .O(\data_out_Q_reg[6]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[6]_i_7 
       (.I0(\data_out_Q[6]_i_14_n_0 ),
        .I1(\data_out_Q[6]_i_15_n_0 ),
        .O(\data_out_Q_reg[6]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_Q_reg[7] 
       (.C(clk),
        .CE(p_1_in),
        .D(\data_out_Q[7]_i_1_n_0 ),
        .Q(data_out_Q[7]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_Q_reg[7]_i_2 
       (.I0(\data_out_Q_reg[7]_i_4_n_0 ),
        .I1(\data_out_Q_reg[7]_i_5_n_0 ),
        .O(\data_out_Q_reg[7]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_Q_reg[7]_i_3 
       (.I0(\data_out_Q_reg[7]_i_6_n_0 ),
        .I1(\data_out_Q_reg[7]_i_7_n_0 ),
        .O(\data_out_Q_reg[7]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_Q_reg[7]_i_4 
       (.I0(\data_out_Q[7]_i_8_n_0 ),
        .I1(\data_out_Q[7]_i_9_n_0 ),
        .O(\data_out_Q_reg[7]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[7]_i_5 
       (.I0(\data_out_Q[7]_i_10_n_0 ),
        .I1(\data_out_Q[7]_i_11_n_0 ),
        .O(\data_out_Q_reg[7]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[7]_i_6 
       (.I0(\data_out_Q[7]_i_12_n_0 ),
        .I1(\data_out_Q[7]_i_13_n_0 ),
        .O(\data_out_Q_reg[7]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[7]_i_7 
       (.I0(\data_out_Q[7]_i_14_n_0 ),
        .I1(\data_out_Q[7]_i_15_n_0 ),
        .O(\data_out_Q_reg[7]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_Q_reg[8] 
       (.C(clk),
        .CE(p_1_in),
        .D(\data_out_Q[8]_i_1_n_0 ),
        .Q(data_out_Q[8]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_Q_reg[8]_i_2 
       (.I0(\data_out_Q_reg[8]_i_4_n_0 ),
        .I1(\data_out_Q_reg[8]_i_5_n_0 ),
        .O(\data_out_Q_reg[8]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_Q_reg[8]_i_3 
       (.I0(\data_out_Q_reg[8]_i_6_n_0 ),
        .I1(\data_out_Q_reg[8]_i_7_n_0 ),
        .O(\data_out_Q_reg[8]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_Q_reg[8]_i_4 
       (.I0(\data_out_Q[8]_i_8_n_0 ),
        .I1(\data_out_Q[8]_i_9_n_0 ),
        .O(\data_out_Q_reg[8]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[8]_i_5 
       (.I0(\data_out_Q[8]_i_10_n_0 ),
        .I1(\data_out_Q[8]_i_11_n_0 ),
        .O(\data_out_Q_reg[8]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[8]_i_6 
       (.I0(\data_out_Q[8]_i_12_n_0 ),
        .I1(\data_out_Q[8]_i_13_n_0 ),
        .O(\data_out_Q_reg[8]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[8]_i_7 
       (.I0(\data_out_Q[8]_i_14_n_0 ),
        .I1(\data_out_Q[8]_i_15_n_0 ),
        .O(\data_out_Q_reg[8]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  FDRE \data_out_Q_reg[9] 
       (.C(clk),
        .CE(p_1_in),
        .D(\data_out_Q[9]_i_1_n_0 ),
        .Q(data_out_Q[9]),
        .R(\data_out_I[15]_i_1_n_0 ));
  MUXF8 \data_out_Q_reg[9]_i_2 
       (.I0(\data_out_Q_reg[9]_i_4_n_0 ),
        .I1(\data_out_Q_reg[9]_i_5_n_0 ),
        .O(\data_out_Q_reg[9]_i_2_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF8 \data_out_Q_reg[9]_i_3 
       (.I0(\data_out_Q_reg[9]_i_6_n_0 ),
        .I1(\data_out_Q_reg[9]_i_7_n_0 ),
        .O(\data_out_Q_reg[9]_i_3_n_0 ),
        .S(tail_tmp_reg[2]));
  MUXF7 \data_out_Q_reg[9]_i_4 
       (.I0(\data_out_Q[9]_i_8_n_0 ),
        .I1(\data_out_Q[9]_i_9_n_0 ),
        .O(\data_out_Q_reg[9]_i_4_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[9]_i_5 
       (.I0(\data_out_Q[9]_i_10_n_0 ),
        .I1(\data_out_Q[9]_i_11_n_0 ),
        .O(\data_out_Q_reg[9]_i_5_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[9]_i_6 
       (.I0(\data_out_Q[9]_i_12_n_0 ),
        .I1(\data_out_Q[9]_i_13_n_0 ),
        .O(\data_out_Q_reg[9]_i_6_n_0 ),
        .S(tail_tmp_reg[1]));
  MUXF7 \data_out_Q_reg[9]_i_7 
       (.I0(\data_out_Q[9]_i_14_n_0 ),
        .I1(\data_out_Q[9]_i_15_n_0 ),
        .O(\data_out_Q_reg[9]_i_7_n_0 ),
        .S(tail_tmp_reg[1]));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    data_out_valid_i_1
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(tail_tmp2),
        .I3(phase_counter[1]),
        .I4(phase_counter[0]),
        .O(data_out_valid_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid_i_10
       (.I0(tail_tmp_reg[4]),
        .I1(tail_tmp_reg[5]),
        .O(data_out_valid_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid_i_11
       (.I0(tail_tmp_reg[18]),
        .I1(tail_tmp_reg[19]),
        .O(data_out_valid_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid_i_12
       (.I0(tail_tmp_reg[16]),
        .I1(tail_tmp_reg[17]),
        .O(data_out_valid_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid_i_13
       (.I0(tail_tmp_reg[14]),
        .I1(tail_tmp_reg[15]),
        .O(data_out_valid_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid_i_14
       (.I0(tail_tmp_reg[12]),
        .I1(tail_tmp_reg[13]),
        .O(data_out_valid_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid_i_15
       (.I0(tail_tmp_reg[10]),
        .I1(tail_tmp_reg[11]),
        .O(data_out_valid_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid_i_16
       (.I0(tail_tmp_reg[8]),
        .I1(tail_tmp_reg[9]),
        .O(data_out_valid_i_16_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid_i_17
       (.I0(tail_tmp_reg[6]),
        .I1(tail_tmp_reg[7]),
        .O(data_out_valid_i_17_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    data_out_valid_i_18
       (.I0(tail_tmp_reg[4]),
        .I1(tail_tmp_reg[5]),
        .O(data_out_valid_i_18_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid_i_4
       (.I0(tail_tmp_reg[30]),
        .I1(tail_tmp_reg[31]),
        .O(data_out_valid_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid_i_5
       (.I0(tail_tmp_reg[28]),
        .I1(tail_tmp_reg[29]),
        .O(data_out_valid_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid_i_6
       (.I0(tail_tmp_reg[26]),
        .I1(tail_tmp_reg[27]),
        .O(data_out_valid_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid_i_7
       (.I0(tail_tmp_reg[24]),
        .I1(tail_tmp_reg[25]),
        .O(data_out_valid_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid_i_8
       (.I0(tail_tmp_reg[22]),
        .I1(tail_tmp_reg[23]),
        .O(data_out_valid_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_valid_i_9
       (.I0(tail_tmp_reg[20]),
        .I1(tail_tmp_reg[21]),
        .O(data_out_valid_i_9_n_0));
  FDCE data_out_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(data_out_valid_i_1_n_0),
        .Q(data_out_valid));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 data_out_valid_reg_i_2
       (.CI(data_out_valid_reg_i_3_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_data_out_valid_reg_i_2_CO_UNCONNECTED[7:6],tail_tmp2,data_out_valid_reg_i_2_n_3,data_out_valid_reg_i_2_n_4,data_out_valid_reg_i_2_n_5,data_out_valid_reg_i_2_n_6,data_out_valid_reg_i_2_n_7}),
        .DI({1'b0,1'b0,tail_tmp_reg[31],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_data_out_valid_reg_i_2_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,data_out_valid_i_4_n_0,data_out_valid_i_5_n_0,data_out_valid_i_6_n_0,data_out_valid_i_7_n_0,data_out_valid_i_8_n_0,data_out_valid_i_9_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 data_out_valid_reg_i_3
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({data_out_valid_reg_i_3_n_0,data_out_valid_reg_i_3_n_1,data_out_valid_reg_i_3_n_2,data_out_valid_reg_i_3_n_3,data_out_valid_reg_i_3_n_4,data_out_valid_reg_i_3_n_5,data_out_valid_reg_i_3_n_6,data_out_valid_reg_i_3_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,data_out_valid_i_10_n_0}),
        .O(NLW_data_out_valid_reg_i_3_O_UNCONNECTED[7:0]),
        .S({data_out_valid_i_11_n_0,data_out_valid_i_12_n_0,data_out_valid_i_13_n_0,data_out_valid_i_14_n_0,data_out_valid_i_15_n_0,data_out_valid_i_16_n_0,data_out_valid_i_17_n_0,data_out_valid_i_18_n_0}));
  LUT6 #(
    .INIT(64'hF0FFF077F077F077)) 
    filter2fifo_ready_i_1
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(filter2fifo_ready_reg_n_0),
        .I3(reset),
        .I4(phase_counter[0]),
        .I5(phase_counter[1]),
        .O(filter2fifo_ready_i_1_n_0));
  FDRE filter2fifo_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(filter2fifo_ready_i_1_n_0),
        .Q(filter2fifo_ready_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][0]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_105 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [0]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][10]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_95 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [10]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][11]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_94 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [11]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][12]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_93 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [12]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][13]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_92 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [13]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][14]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_91 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [14]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][15]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_90 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [15]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][16]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_89 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [16]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][17]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_88 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [17]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][18]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_87 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [18]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][19]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_86 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [19]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][1]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_104 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [1]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][20]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_85 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [20]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][21]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_84 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [21]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][22]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_83 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [22]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][23]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_82 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [23]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][24]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_81 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [24]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][25]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_80 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [25]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][26]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_79 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [26]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][27]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_78 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [27]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][28]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_77 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [28]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][29]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_76 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [29]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][2]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_103 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][30]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_75 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [30]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][31]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_74 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [31]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][32]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_73 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [32]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][33]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_72 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [33]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][34]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_71 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [34]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][35]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_70 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [35]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][3]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_102 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [3]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][4]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_101 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [4]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][5]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_100 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [5]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][6]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_99 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [6]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][7]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_98 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [7]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][8]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_97 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [8]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][9]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_96 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[11] [9]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][0]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_105 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [0]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][10]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_95 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [10]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][11]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_94 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [11]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][12]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_93 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [12]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][13]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_92 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [13]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][14]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_91 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [14]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][15]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_90 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [15]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][16]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_89 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [16]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][17]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_88 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [17]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][18]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_87 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [18]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][19]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_86 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [19]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][1]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_104 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [1]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][20]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_85 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [20]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][21]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_84 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [21]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][22]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_83 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [22]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][23]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_82 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [23]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][24]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_81 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [24]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][25]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_80 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [25]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][26]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_79 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [26]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][27]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_78 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [27]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][28]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_77 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [28]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][29]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_76 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [29]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][2]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_103 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [2]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][30]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_75 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [30]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][31]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_74 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [31]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][3]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_102 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [3]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][4]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_101 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [4]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][5]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_100 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [5]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][6]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_99 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [6]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][7]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_98 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [7]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][8]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_97 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [8]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][9]_i_1 
       (.I0(\mul_reg_I_reg[15]0_n_96 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[15] [9]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][0]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_105 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][10]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_95 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[3] [10]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][11]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_94 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[3] [11]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][12]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_93 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[3] [12]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][13]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_92 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[3] [13]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][14]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_91 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[3] [14]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][15]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_90 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[3] [15]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][1]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_104 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][2]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_103 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[3] [2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][3]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_102 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[3] [3]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][4]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_101 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[3] [4]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][5]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_100 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[3] [5]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][6]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_99 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[3] [6]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][7]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_98 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[3] [7]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][8]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_97 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[3] [8]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][9]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_96 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[3] [9]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][0]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_105 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][10]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_95 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [10]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][11]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_94 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [11]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][12]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_93 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [12]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][13]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_92 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [13]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][14]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_91 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [14]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][15]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_90 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [15]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][16]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_89 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [16]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][17]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_88 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [17]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][18]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_87 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [18]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][19]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_86 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [19]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][1]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_104 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][20]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_85 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [20]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][21]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_84 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [21]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][22]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_83 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [22]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][23]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_82 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [23]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][24]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_81 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [24]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][25]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_80 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [25]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][26]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_79 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [26]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][27]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_78 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [27]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][28]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_77 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [28]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][29]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_76 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [29]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][2]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_103 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][30]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_75 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [30]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][31]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_74 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [31]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][32]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_73 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [32]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][33]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_72 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [33]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][34]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_71 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [34]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][35]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_70 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [35]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][3]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_102 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][4]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_101 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][5]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_100 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][6]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_99 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][7]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_98 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][8]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_97 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [8]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][9]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_96 ),
        .I1(\mul_reg_I_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_I_reg[7] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [0]),
        .Q(\mul_reg_I_reg_n_0_[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [10]),
        .Q(\mul_reg_I_reg_n_0_[0][10] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [11]),
        .Q(\mul_reg_I_reg_n_0_[0][11] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [12]),
        .Q(\mul_reg_I_reg_n_0_[0][12] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [13]),
        .Q(\mul_reg_I_reg_n_0_[0][13] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [14]),
        .Q(\mul_reg_I_reg_n_0_[0][14] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][15] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [15]),
        .Q(\mul_reg_I_reg_n_0_[0][15] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][1] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [1]),
        .Q(\mul_reg_I_reg_n_0_[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][2] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [2]),
        .Q(\mul_reg_I_reg_n_0_[0][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][3] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [3]),
        .Q(\mul_reg_I_reg_n_0_[0][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][4] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [4]),
        .Q(\mul_reg_I_reg_n_0_[0][4] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][5] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [5]),
        .Q(\mul_reg_I_reg_n_0_[0][5] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][6] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [6]),
        .Q(\mul_reg_I_reg_n_0_[0][6] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][7] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [7]),
        .Q(\mul_reg_I_reg_n_0_[0][7] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][8] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [8]),
        .Q(\mul_reg_I_reg_n_0_[0][8] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][9] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [9]),
        .Q(\mul_reg_I_reg_n_0_[0][9] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [0]),
        .Q(\mul_reg_I_reg[10] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [10]),
        .Q(\mul_reg_I_reg[10] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [11]),
        .Q(\mul_reg_I_reg[10] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [12]),
        .Q(\mul_reg_I_reg[10] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [13]),
        .Q(\mul_reg_I_reg[10] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [14]),
        .Q(\mul_reg_I_reg[10] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][15] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [15]),
        .Q(\mul_reg_I_reg[10] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][16] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [16]),
        .Q(\mul_reg_I_reg[10] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][17] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [17]),
        .Q(\mul_reg_I_reg[10] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][18] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [18]),
        .Q(\mul_reg_I_reg[10] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][19] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [19]),
        .Q(\mul_reg_I_reg[10] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][1] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [1]),
        .Q(\mul_reg_I_reg[10] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][20] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [20]),
        .Q(\mul_reg_I_reg[10] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][21] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [21]),
        .Q(\mul_reg_I_reg[10] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][22] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [22]),
        .Q(\mul_reg_I_reg[10] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][23] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [23]),
        .Q(\mul_reg_I_reg[10] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][24] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [24]),
        .Q(\mul_reg_I_reg[10] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][25] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [25]),
        .Q(\mul_reg_I_reg[10] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][26] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [26]),
        .Q(\mul_reg_I_reg[10] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][27] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [27]),
        .Q(\mul_reg_I_reg[10] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][28] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [28]),
        .Q(\mul_reg_I_reg[10] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][29] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [29]),
        .Q(\mul_reg_I_reg[10] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][2] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [2]),
        .Q(\mul_reg_I_reg[10] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][30] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [30]),
        .Q(\mul_reg_I_reg[10] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][31] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [31]),
        .Q(\mul_reg_I_reg[10] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][32] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [32]),
        .Q(\mul_reg_I_reg[10] [32]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][33] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [33]),
        .Q(\mul_reg_I_reg[10] [33]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][34] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [34]),
        .Q(\mul_reg_I_reg[10] [34]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][35] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [35]),
        .Q(\mul_reg_I_reg[10] [35]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][3] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [3]),
        .Q(\mul_reg_I_reg[10] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][4] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [4]),
        .Q(\mul_reg_I_reg[10] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][5] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [5]),
        .Q(\mul_reg_I_reg[10] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][6] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [6]),
        .Q(\mul_reg_I_reg[10] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][7] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [7]),
        .Q(\mul_reg_I_reg[10] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][8] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [8]),
        .Q(\mul_reg_I_reg[10] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][9] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [9]),
        .Q(\mul_reg_I_reg[10] [9]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
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
    \mul_reg_I_reg[11]0 
       (.A({m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_I_reg[11]0_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\coeff_reg_reg[0] [11],1'b0,\coeff_reg_reg[2] [12:11],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [10],\coeff_reg_reg[2] [12:11],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [10],\coeff_reg_reg[2] [12:11],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [10],\coeff_reg_reg[2] [0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_I_reg[11]0_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\mul_reg_I_reg[12] }),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_I_reg[11]0_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_I_reg[11]0_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
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
        .CEP(filter2fifo_ready1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_I_reg[11]0_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_I_reg[11]0_OVERFLOW_UNCONNECTED ),
        .P({\NLW_mul_reg_I_reg[11]0_P_UNCONNECTED [47:36],\mul_reg_I_reg[11]0_n_70 ,\mul_reg_I_reg[11]0_n_71 ,\mul_reg_I_reg[11]0_n_72 ,\mul_reg_I_reg[11]0_n_73 ,\mul_reg_I_reg[11]0_n_74 ,\mul_reg_I_reg[11]0_n_75 ,\mul_reg_I_reg[11]0_n_76 ,\mul_reg_I_reg[11]0_n_77 ,\mul_reg_I_reg[11]0_n_78 ,\mul_reg_I_reg[11]0_n_79 ,\mul_reg_I_reg[11]0_n_80 ,\mul_reg_I_reg[11]0_n_81 ,\mul_reg_I_reg[11]0_n_82 ,\mul_reg_I_reg[11]0_n_83 ,\mul_reg_I_reg[11]0_n_84 ,\mul_reg_I_reg[11]0_n_85 ,\mul_reg_I_reg[11]0_n_86 ,\mul_reg_I_reg[11]0_n_87 ,\mul_reg_I_reg[11]0_n_88 ,\mul_reg_I_reg[11]0_n_89 ,\mul_reg_I_reg[11]0_n_90 ,\mul_reg_I_reg[11]0_n_91 ,\mul_reg_I_reg[11]0_n_92 ,\mul_reg_I_reg[11]0_n_93 ,\mul_reg_I_reg[11]0_n_94 ,\mul_reg_I_reg[11]0_n_95 ,\mul_reg_I_reg[11]0_n_96 ,\mul_reg_I_reg[11]0_n_97 ,\mul_reg_I_reg[11]0_n_98 ,\mul_reg_I_reg[11]0_n_99 ,\mul_reg_I_reg[11]0_n_100 ,\mul_reg_I_reg[11]0_n_101 ,\mul_reg_I_reg[11]0_n_102 ,\mul_reg_I_reg[11]0_n_103 ,\mul_reg_I_reg[11]0_n_104 ,\mul_reg_I_reg[11]0_n_105 }),
        .PATTERNBDETECT(\NLW_mul_reg_I_reg[11]0_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_I_reg[11]0_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_mul_reg_I_reg[11]0_PCOUT_UNCONNECTED [47:0]),
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
        .UNDERFLOW(\NLW_mul_reg_I_reg[11]0_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_mul_reg_I_reg[11]0_XOROUT_UNCONNECTED [7:0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [0]),
        .Q(\mul_reg_I_reg[12] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [10]),
        .Q(\mul_reg_I_reg[12] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [11]),
        .Q(\mul_reg_I_reg[12] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [12]),
        .Q(\mul_reg_I_reg[12] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [13]),
        .Q(\mul_reg_I_reg[12] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [14]),
        .Q(\mul_reg_I_reg[12] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][15] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [15]),
        .Q(\mul_reg_I_reg[12] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][16] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [16]),
        .Q(\mul_reg_I_reg[12] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][17] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [17]),
        .Q(\mul_reg_I_reg[12] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][18] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [18]),
        .Q(\mul_reg_I_reg[12] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][19] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [19]),
        .Q(\mul_reg_I_reg[12] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][1] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [1]),
        .Q(\mul_reg_I_reg[12] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][20] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [20]),
        .Q(\mul_reg_I_reg[12] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][21] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [21]),
        .Q(\mul_reg_I_reg[12] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][22] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [22]),
        .Q(\mul_reg_I_reg[12] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][23] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [23]),
        .Q(\mul_reg_I_reg[12] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][24] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [24]),
        .Q(\mul_reg_I_reg[12] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][25] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [25]),
        .Q(\mul_reg_I_reg[12] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][26] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [26]),
        .Q(\mul_reg_I_reg[12] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][27] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [27]),
        .Q(\mul_reg_I_reg[12] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][28] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [28]),
        .Q(\mul_reg_I_reg[12] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][29] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [29]),
        .Q(\mul_reg_I_reg[12] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][2] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [2]),
        .Q(\mul_reg_I_reg[12] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][30] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [30]),
        .Q(\mul_reg_I_reg[12] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][31] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [31]),
        .Q(\mul_reg_I_reg[12] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][3] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [3]),
        .Q(\mul_reg_I_reg[12] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][4] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [4]),
        .Q(\mul_reg_I_reg[12] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][5] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [5]),
        .Q(\mul_reg_I_reg[12] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][6] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [6]),
        .Q(\mul_reg_I_reg[12] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][7] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [7]),
        .Q(\mul_reg_I_reg[12] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][8] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [8]),
        .Q(\mul_reg_I_reg[12] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][9] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [9]),
        .Q(\mul_reg_I_reg[12] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [0]),
        .Q(\mul_reg_I_reg[13] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [10]),
        .Q(\mul_reg_I_reg[13] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [11]),
        .Q(\mul_reg_I_reg[13] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [12]),
        .Q(\mul_reg_I_reg[13] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [13]),
        .Q(\mul_reg_I_reg[13] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [14]),
        .Q(\mul_reg_I_reg[13] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][15] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [15]),
        .Q(\mul_reg_I_reg[13] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][16] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [16]),
        .Q(\mul_reg_I_reg[13] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][17] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [17]),
        .Q(\mul_reg_I_reg[13] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][18] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [18]),
        .Q(\mul_reg_I_reg[13] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][19] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [19]),
        .Q(\mul_reg_I_reg[13] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][1] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [1]),
        .Q(\mul_reg_I_reg[13] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][20] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [20]),
        .Q(\mul_reg_I_reg[13] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][21] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [21]),
        .Q(\mul_reg_I_reg[13] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][22] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [22]),
        .Q(\mul_reg_I_reg[13] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][23] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [23]),
        .Q(\mul_reg_I_reg[13] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][24] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [24]),
        .Q(\mul_reg_I_reg[13] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][25] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [25]),
        .Q(\mul_reg_I_reg[13] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][26] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [26]),
        .Q(\mul_reg_I_reg[13] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][27] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [27]),
        .Q(\mul_reg_I_reg[13] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][28] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [28]),
        .Q(\mul_reg_I_reg[13] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][29] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [29]),
        .Q(\mul_reg_I_reg[13] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][2] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [2]),
        .Q(\mul_reg_I_reg[13] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][30] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [30]),
        .Q(\mul_reg_I_reg[13] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][31] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [31]),
        .Q(\mul_reg_I_reg[13] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][3] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [3]),
        .Q(\mul_reg_I_reg[13] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][4] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [4]),
        .Q(\mul_reg_I_reg[13] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][5] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [5]),
        .Q(\mul_reg_I_reg[13] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][6] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [6]),
        .Q(\mul_reg_I_reg[13] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][7] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [7]),
        .Q(\mul_reg_I_reg[13] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][8] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [8]),
        .Q(\mul_reg_I_reg[13] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][9] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [9]),
        .Q(\mul_reg_I_reg[13] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [0]),
        .Q(\mul_reg_I_reg[14] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [10]),
        .Q(\mul_reg_I_reg[14] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [11]),
        .Q(\mul_reg_I_reg[14] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [12]),
        .Q(\mul_reg_I_reg[14] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [13]),
        .Q(\mul_reg_I_reg[14] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [14]),
        .Q(\mul_reg_I_reg[14] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][15] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [15]),
        .Q(\mul_reg_I_reg[14] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][16] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [16]),
        .Q(\mul_reg_I_reg[14] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][17] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [17]),
        .Q(\mul_reg_I_reg[14] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][18] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [18]),
        .Q(\mul_reg_I_reg[14] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][19] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [19]),
        .Q(\mul_reg_I_reg[14] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][1] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [1]),
        .Q(\mul_reg_I_reg[14] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][20] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [20]),
        .Q(\mul_reg_I_reg[14] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][21] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [21]),
        .Q(\mul_reg_I_reg[14] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][22] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [22]),
        .Q(\mul_reg_I_reg[14] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][23] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [23]),
        .Q(\mul_reg_I_reg[14] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][24] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [24]),
        .Q(\mul_reg_I_reg[14] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][25] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [25]),
        .Q(\mul_reg_I_reg[14] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][26] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [26]),
        .Q(\mul_reg_I_reg[14] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][27] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [27]),
        .Q(\mul_reg_I_reg[14] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][28] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [28]),
        .Q(\mul_reg_I_reg[14] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][29] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [29]),
        .Q(\mul_reg_I_reg[14] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][2] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [2]),
        .Q(\mul_reg_I_reg[14] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][30] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [30]),
        .Q(\mul_reg_I_reg[14] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][31] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [31]),
        .Q(\mul_reg_I_reg[14] [31]));
  FDCE \mul_reg_I_reg[14][31]_i_2 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(1'b1),
        .Q(\mul_reg_I_reg[14][31]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][3] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [3]),
        .Q(\mul_reg_I_reg[14] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][4] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [4]),
        .Q(\mul_reg_I_reg[14] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][5] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [5]),
        .Q(\mul_reg_I_reg[14] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][6] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [6]),
        .Q(\mul_reg_I_reg[14] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][7] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [7]),
        .Q(\mul_reg_I_reg[14] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][8] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [8]),
        .Q(\mul_reg_I_reg[14] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][9] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [9]),
        .Q(\mul_reg_I_reg[14] [9]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
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
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \mul_reg_I_reg[15]0 
       (.A({m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_I_reg[15]0_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\coeff_reg_reg[2] [12],\coeff_reg_reg[3] ,\coeff_reg_reg[1] [10],\coeff_reg_reg[1] [14],\coeff_reg_reg[0] [10],\coeff_reg_reg[2] [11],\coeff_reg_reg[1] [10],\coeff_reg_reg[1] [14],\coeff_reg_reg[0] [10],\coeff_reg_reg[2] [11],\coeff_reg_reg[1] [10],\coeff_reg_reg[1] [14],\coeff_reg_reg[0] [10],\coeff_reg_reg[2] [11],\coeff_reg_reg[1] [10]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_I_reg[15]0_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_I_reg[15]0_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_I_reg[15]0_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
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
        .CEP(filter2fifo_ready1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_I_reg[15]0_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_I_reg[15]0_OVERFLOW_UNCONNECTED ),
        .P({\NLW_mul_reg_I_reg[15]0_P_UNCONNECTED [47:32],\mul_reg_I_reg[15]0_n_74 ,\mul_reg_I_reg[15]0_n_75 ,\mul_reg_I_reg[15]0_n_76 ,\mul_reg_I_reg[15]0_n_77 ,\mul_reg_I_reg[15]0_n_78 ,\mul_reg_I_reg[15]0_n_79 ,\mul_reg_I_reg[15]0_n_80 ,\mul_reg_I_reg[15]0_n_81 ,\mul_reg_I_reg[15]0_n_82 ,\mul_reg_I_reg[15]0_n_83 ,\mul_reg_I_reg[15]0_n_84 ,\mul_reg_I_reg[15]0_n_85 ,\mul_reg_I_reg[15]0_n_86 ,\mul_reg_I_reg[15]0_n_87 ,\mul_reg_I_reg[15]0_n_88 ,\mul_reg_I_reg[15]0_n_89 ,\mul_reg_I_reg[15]0_n_90 ,\mul_reg_I_reg[15]0_n_91 ,\mul_reg_I_reg[15]0_n_92 ,\mul_reg_I_reg[15]0_n_93 ,\mul_reg_I_reg[15]0_n_94 ,\mul_reg_I_reg[15]0_n_95 ,\mul_reg_I_reg[15]0_n_96 ,\mul_reg_I_reg[15]0_n_97 ,\mul_reg_I_reg[15]0_n_98 ,\mul_reg_I_reg[15]0_n_99 ,\mul_reg_I_reg[15]0_n_100 ,\mul_reg_I_reg[15]0_n_101 ,\mul_reg_I_reg[15]0_n_102 ,\mul_reg_I_reg[15]0_n_103 ,\mul_reg_I_reg[15]0_n_104 ,\mul_reg_I_reg[15]0_n_105 }),
        .PATTERNBDETECT(\NLW_mul_reg_I_reg[15]0_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_I_reg[15]0_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_mul_reg_I_reg[15]0_PCOUT_UNCONNECTED [47:0]),
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
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [0]),
        .Q(\mul_reg_I_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [10]),
        .Q(\mul_reg_I_reg[1] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [11]),
        .Q(\mul_reg_I_reg[1] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [12]),
        .Q(\mul_reg_I_reg[1] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [13]),
        .Q(\mul_reg_I_reg[1] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [14]),
        .Q(\mul_reg_I_reg[1] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][15] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [15]),
        .Q(\mul_reg_I_reg[1] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][1] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [1]),
        .Q(\mul_reg_I_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][2] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [2]),
        .Q(\mul_reg_I_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][3] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [3]),
        .Q(\mul_reg_I_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][4] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [4]),
        .Q(\mul_reg_I_reg[1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][5] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [5]),
        .Q(\mul_reg_I_reg[1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][6] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [6]),
        .Q(\mul_reg_I_reg[1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][7] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [7]),
        .Q(\mul_reg_I_reg[1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][8] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [8]),
        .Q(\mul_reg_I_reg[1] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][9] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [9]),
        .Q(\mul_reg_I_reg[1] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [0]),
        .Q(\mul_reg_I_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [10]),
        .Q(\mul_reg_I_reg[2] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [11]),
        .Q(\mul_reg_I_reg[2] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [12]),
        .Q(\mul_reg_I_reg[2] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [13]),
        .Q(\mul_reg_I_reg[2] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [14]),
        .Q(\mul_reg_I_reg[2] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][15] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [15]),
        .Q(\mul_reg_I_reg[2] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][1] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [1]),
        .Q(\mul_reg_I_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][2] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [2]),
        .Q(\mul_reg_I_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][3] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [3]),
        .Q(\mul_reg_I_reg[2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][4] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [4]),
        .Q(\mul_reg_I_reg[2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][5] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [5]),
        .Q(\mul_reg_I_reg[2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][6] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [6]),
        .Q(\mul_reg_I_reg[2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][7] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [7]),
        .Q(\mul_reg_I_reg[2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][8] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [8]),
        .Q(\mul_reg_I_reg[2] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][9] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [9]),
        .Q(\mul_reg_I_reg[2] [9]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
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
    \mul_reg_I_reg[3]0 
       (.A({m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_I_reg[3]0_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\coeff_reg_reg[0] ,\coeff_reg_reg[0] [12:9],\coeff_reg_reg[0] [12:9],\coeff_reg_reg[0] [12]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_I_reg[3]0_BCOUT_UNCONNECTED [17:0]),
        .C({\mul_reg_I_reg[4] [35],\mul_reg_I_reg[4] [35],\mul_reg_I_reg[4] [35],\mul_reg_I_reg[4] [35],\mul_reg_I_reg[4] [35],\mul_reg_I_reg[4] [35],\mul_reg_I_reg[4] [35],\mul_reg_I_reg[4] [35],\mul_reg_I_reg[4] [35],\mul_reg_I_reg[4] [35],\mul_reg_I_reg[4] [35],\mul_reg_I_reg[4] [35],\mul_reg_I_reg[4] }),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_I_reg[3]0_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_I_reg[3]0_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
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
        .CEP(filter2fifo_ready1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_I_reg[3]0_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_I_reg[3]0_OVERFLOW_UNCONNECTED ),
        .P({\NLW_mul_reg_I_reg[3]0_P_UNCONNECTED [47:36],\mul_reg_I_reg[3]0_n_70 ,\mul_reg_I_reg[3]0_n_71 ,\mul_reg_I_reg[3]0_n_72 ,\mul_reg_I_reg[3]0_n_73 ,\mul_reg_I_reg[3]0_n_74 ,\mul_reg_I_reg[3]0_n_75 ,\mul_reg_I_reg[3]0_n_76 ,\mul_reg_I_reg[3]0_n_77 ,\mul_reg_I_reg[3]0_n_78 ,\mul_reg_I_reg[3]0_n_79 ,\mul_reg_I_reg[3]0_n_80 ,\mul_reg_I_reg[3]0_n_81 ,\mul_reg_I_reg[3]0_n_82 ,\mul_reg_I_reg[3]0_n_83 ,\mul_reg_I_reg[3]0_n_84 ,\mul_reg_I_reg[3]0_n_85 ,\mul_reg_I_reg[3]0_n_86 ,\mul_reg_I_reg[3]0_n_87 ,\mul_reg_I_reg[3]0_n_88 ,\mul_reg_I_reg[3]0_n_89 ,\mul_reg_I_reg[3]0_n_90 ,\mul_reg_I_reg[3]0_n_91 ,\mul_reg_I_reg[3]0_n_92 ,\mul_reg_I_reg[3]0_n_93 ,\mul_reg_I_reg[3]0_n_94 ,\mul_reg_I_reg[3]0_n_95 ,\mul_reg_I_reg[3]0_n_96 ,\mul_reg_I_reg[3]0_n_97 ,\mul_reg_I_reg[3]0_n_98 ,\mul_reg_I_reg[3]0_n_99 ,\mul_reg_I_reg[3]0_n_100 ,\mul_reg_I_reg[3]0_n_101 ,\mul_reg_I_reg[3]0_n_102 ,\mul_reg_I_reg[3]0_n_103 ,\mul_reg_I_reg[3]0_n_104 ,\mul_reg_I_reg[3]0_n_105 }),
        .PATTERNBDETECT(\NLW_mul_reg_I_reg[3]0_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_I_reg[3]0_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_mul_reg_I_reg[3]0_PCOUT_UNCONNECTED [47:0]),
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
        .UNDERFLOW(\NLW_mul_reg_I_reg[3]0_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_mul_reg_I_reg[3]0_XOROUT_UNCONNECTED [7:0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [0]),
        .Q(\mul_reg_I_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [10]),
        .Q(\mul_reg_I_reg[4] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [11]),
        .Q(\mul_reg_I_reg[4] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [12]),
        .Q(\mul_reg_I_reg[4] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [13]),
        .Q(\mul_reg_I_reg[4] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [14]),
        .Q(\mul_reg_I_reg[4] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][15] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [15]),
        .Q(\mul_reg_I_reg[4] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][16] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [16]),
        .Q(\mul_reg_I_reg[4] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][17] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [17]),
        .Q(\mul_reg_I_reg[4] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][18] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [18]),
        .Q(\mul_reg_I_reg[4] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][19] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [19]),
        .Q(\mul_reg_I_reg[4] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][1] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [1]),
        .Q(\mul_reg_I_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][20] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [20]),
        .Q(\mul_reg_I_reg[4] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][21] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [21]),
        .Q(\mul_reg_I_reg[4] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][22] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [22]),
        .Q(\mul_reg_I_reg[4] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][23] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [23]),
        .Q(\mul_reg_I_reg[4] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][24] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [24]),
        .Q(\mul_reg_I_reg[4] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][25] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [25]),
        .Q(\mul_reg_I_reg[4] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][26] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [26]),
        .Q(\mul_reg_I_reg[4] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][27] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [27]),
        .Q(\mul_reg_I_reg[4] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][28] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [28]),
        .Q(\mul_reg_I_reg[4] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][29] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [29]),
        .Q(\mul_reg_I_reg[4] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][2] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [2]),
        .Q(\mul_reg_I_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][30] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [30]),
        .Q(\mul_reg_I_reg[4] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][31] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [31]),
        .Q(\mul_reg_I_reg[4] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][32] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [32]),
        .Q(\mul_reg_I_reg[4] [32]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][33] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [33]),
        .Q(\mul_reg_I_reg[4] [33]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][34] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [34]),
        .Q(\mul_reg_I_reg[4] [34]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][35] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [35]),
        .Q(\mul_reg_I_reg[4] [35]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][3] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [3]),
        .Q(\mul_reg_I_reg[4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][4] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [4]),
        .Q(\mul_reg_I_reg[4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][5] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [5]),
        .Q(\mul_reg_I_reg[4] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][6] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [6]),
        .Q(\mul_reg_I_reg[4] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][7] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [7]),
        .Q(\mul_reg_I_reg[4] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][8] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [8]),
        .Q(\mul_reg_I_reg[4] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][9] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [9]),
        .Q(\mul_reg_I_reg[4] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [0]),
        .Q(\mul_reg_I_reg[5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [10]),
        .Q(\mul_reg_I_reg[5] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [11]),
        .Q(\mul_reg_I_reg[5] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [12]),
        .Q(\mul_reg_I_reg[5] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [13]),
        .Q(\mul_reg_I_reg[5] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [14]),
        .Q(\mul_reg_I_reg[5] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][15] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [15]),
        .Q(\mul_reg_I_reg[5] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][16] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [16]),
        .Q(\mul_reg_I_reg[5] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][17] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [17]),
        .Q(\mul_reg_I_reg[5] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][18] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [18]),
        .Q(\mul_reg_I_reg[5] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][19] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [19]),
        .Q(\mul_reg_I_reg[5] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][1] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [1]),
        .Q(\mul_reg_I_reg[5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][20] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [20]),
        .Q(\mul_reg_I_reg[5] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][21] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [21]),
        .Q(\mul_reg_I_reg[5] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][22] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [22]),
        .Q(\mul_reg_I_reg[5] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][23] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [23]),
        .Q(\mul_reg_I_reg[5] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][24] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [24]),
        .Q(\mul_reg_I_reg[5] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][25] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [25]),
        .Q(\mul_reg_I_reg[5] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][26] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [26]),
        .Q(\mul_reg_I_reg[5] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][27] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [27]),
        .Q(\mul_reg_I_reg[5] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][28] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [28]),
        .Q(\mul_reg_I_reg[5] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][29] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [29]),
        .Q(\mul_reg_I_reg[5] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][2] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [2]),
        .Q(\mul_reg_I_reg[5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][30] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [30]),
        .Q(\mul_reg_I_reg[5] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][31] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [31]),
        .Q(\mul_reg_I_reg[5] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][32] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [32]),
        .Q(\mul_reg_I_reg[5] [32]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][33] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [33]),
        .Q(\mul_reg_I_reg[5] [33]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][34] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [34]),
        .Q(\mul_reg_I_reg[5] [34]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][35] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [35]),
        .Q(\mul_reg_I_reg[5] [35]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][3] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [3]),
        .Q(\mul_reg_I_reg[5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][4] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [4]),
        .Q(\mul_reg_I_reg[5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][5] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [5]),
        .Q(\mul_reg_I_reg[5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][6] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [6]),
        .Q(\mul_reg_I_reg[5] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][7] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [7]),
        .Q(\mul_reg_I_reg[5] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][8] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [8]),
        .Q(\mul_reg_I_reg[5] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][9] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [9]),
        .Q(\mul_reg_I_reg[5] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [0]),
        .Q(\mul_reg_I_reg[6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [10]),
        .Q(\mul_reg_I_reg[6] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [11]),
        .Q(\mul_reg_I_reg[6] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [12]),
        .Q(\mul_reg_I_reg[6] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [13]),
        .Q(\mul_reg_I_reg[6] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [14]),
        .Q(\mul_reg_I_reg[6] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][15] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [15]),
        .Q(\mul_reg_I_reg[6] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][16] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [16]),
        .Q(\mul_reg_I_reg[6] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][17] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [17]),
        .Q(\mul_reg_I_reg[6] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][18] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [18]),
        .Q(\mul_reg_I_reg[6] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][19] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [19]),
        .Q(\mul_reg_I_reg[6] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][1] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [1]),
        .Q(\mul_reg_I_reg[6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][20] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [20]),
        .Q(\mul_reg_I_reg[6] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][21] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [21]),
        .Q(\mul_reg_I_reg[6] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][22] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [22]),
        .Q(\mul_reg_I_reg[6] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][23] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [23]),
        .Q(\mul_reg_I_reg[6] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][24] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [24]),
        .Q(\mul_reg_I_reg[6] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][25] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [25]),
        .Q(\mul_reg_I_reg[6] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][26] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [26]),
        .Q(\mul_reg_I_reg[6] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][27] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [27]),
        .Q(\mul_reg_I_reg[6] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][28] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [28]),
        .Q(\mul_reg_I_reg[6] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][29] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [29]),
        .Q(\mul_reg_I_reg[6] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][2] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [2]),
        .Q(\mul_reg_I_reg[6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][30] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [30]),
        .Q(\mul_reg_I_reg[6] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][31] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [31]),
        .Q(\mul_reg_I_reg[6] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][32] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [32]),
        .Q(\mul_reg_I_reg[6] [32]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][33] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [33]),
        .Q(\mul_reg_I_reg[6] [33]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][34] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [34]),
        .Q(\mul_reg_I_reg[6] [34]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][35] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [35]),
        .Q(\mul_reg_I_reg[6] [35]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][3] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [3]),
        .Q(\mul_reg_I_reg[6] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][4] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [4]),
        .Q(\mul_reg_I_reg[6] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][5] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [5]),
        .Q(\mul_reg_I_reg[6] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][6] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [6]),
        .Q(\mul_reg_I_reg[6] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][7] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [7]),
        .Q(\mul_reg_I_reg[6] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][8] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [8]),
        .Q(\mul_reg_I_reg[6] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][9] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [9]),
        .Q(\mul_reg_I_reg[6] [9]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
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
    \mul_reg_I_reg[7]0 
       (.A({m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata[15],m_axis_tdata}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_I_reg[7]0_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\coeff_reg_reg[1] [14],1'b0,\coeff_reg_reg[0] [14],\coeff_reg_reg[0] [9],\coeff_reg_reg[1] [10],\coeff_reg_reg[0] [12],\coeff_reg_reg[0] [14],\coeff_reg_reg[0] [9],\coeff_reg_reg[1] [10],\coeff_reg_reg[0] [12],\coeff_reg_reg[0] [14],\coeff_reg_reg[0] [9],\coeff_reg_reg[1] [10],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_I_reg[7]0_BCOUT_UNCONNECTED [17:0]),
        .C({\mul_reg_I_reg[8] [35],\mul_reg_I_reg[8] [35],\mul_reg_I_reg[8] [35],\mul_reg_I_reg[8] [35],\mul_reg_I_reg[8] [35],\mul_reg_I_reg[8] [35],\mul_reg_I_reg[8] [35],\mul_reg_I_reg[8] [35],\mul_reg_I_reg[8] [35],\mul_reg_I_reg[8] [35],\mul_reg_I_reg[8] [35],\mul_reg_I_reg[8] [35],\mul_reg_I_reg[8] }),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_I_reg[7]0_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_I_reg[7]0_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
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
        .CEP(filter2fifo_ready1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_I_reg[7]0_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_I_reg[7]0_OVERFLOW_UNCONNECTED ),
        .P({\NLW_mul_reg_I_reg[7]0_P_UNCONNECTED [47:36],\mul_reg_I_reg[7]0_n_70 ,\mul_reg_I_reg[7]0_n_71 ,\mul_reg_I_reg[7]0_n_72 ,\mul_reg_I_reg[7]0_n_73 ,\mul_reg_I_reg[7]0_n_74 ,\mul_reg_I_reg[7]0_n_75 ,\mul_reg_I_reg[7]0_n_76 ,\mul_reg_I_reg[7]0_n_77 ,\mul_reg_I_reg[7]0_n_78 ,\mul_reg_I_reg[7]0_n_79 ,\mul_reg_I_reg[7]0_n_80 ,\mul_reg_I_reg[7]0_n_81 ,\mul_reg_I_reg[7]0_n_82 ,\mul_reg_I_reg[7]0_n_83 ,\mul_reg_I_reg[7]0_n_84 ,\mul_reg_I_reg[7]0_n_85 ,\mul_reg_I_reg[7]0_n_86 ,\mul_reg_I_reg[7]0_n_87 ,\mul_reg_I_reg[7]0_n_88 ,\mul_reg_I_reg[7]0_n_89 ,\mul_reg_I_reg[7]0_n_90 ,\mul_reg_I_reg[7]0_n_91 ,\mul_reg_I_reg[7]0_n_92 ,\mul_reg_I_reg[7]0_n_93 ,\mul_reg_I_reg[7]0_n_94 ,\mul_reg_I_reg[7]0_n_95 ,\mul_reg_I_reg[7]0_n_96 ,\mul_reg_I_reg[7]0_n_97 ,\mul_reg_I_reg[7]0_n_98 ,\mul_reg_I_reg[7]0_n_99 ,\mul_reg_I_reg[7]0_n_100 ,\mul_reg_I_reg[7]0_n_101 ,\mul_reg_I_reg[7]0_n_102 ,\mul_reg_I_reg[7]0_n_103 ,\mul_reg_I_reg[7]0_n_104 ,\mul_reg_I_reg[7]0_n_105 }),
        .PATTERNBDETECT(\NLW_mul_reg_I_reg[7]0_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_I_reg[7]0_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_mul_reg_I_reg[7]0_PCOUT_UNCONNECTED [47:0]),
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
        .UNDERFLOW(\NLW_mul_reg_I_reg[7]0_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_mul_reg_I_reg[7]0_XOROUT_UNCONNECTED [7:0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [0]),
        .Q(\mul_reg_I_reg[8] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [10]),
        .Q(\mul_reg_I_reg[8] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [11]),
        .Q(\mul_reg_I_reg[8] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [12]),
        .Q(\mul_reg_I_reg[8] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [13]),
        .Q(\mul_reg_I_reg[8] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [14]),
        .Q(\mul_reg_I_reg[8] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][15] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [15]),
        .Q(\mul_reg_I_reg[8] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][16] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [16]),
        .Q(\mul_reg_I_reg[8] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][17] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [17]),
        .Q(\mul_reg_I_reg[8] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][18] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [18]),
        .Q(\mul_reg_I_reg[8] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][19] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [19]),
        .Q(\mul_reg_I_reg[8] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][1] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [1]),
        .Q(\mul_reg_I_reg[8] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][20] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [20]),
        .Q(\mul_reg_I_reg[8] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][21] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [21]),
        .Q(\mul_reg_I_reg[8] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][22] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [22]),
        .Q(\mul_reg_I_reg[8] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][23] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [23]),
        .Q(\mul_reg_I_reg[8] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][24] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [24]),
        .Q(\mul_reg_I_reg[8] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][25] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [25]),
        .Q(\mul_reg_I_reg[8] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][26] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [26]),
        .Q(\mul_reg_I_reg[8] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][27] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [27]),
        .Q(\mul_reg_I_reg[8] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][28] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [28]),
        .Q(\mul_reg_I_reg[8] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][29] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [29]),
        .Q(\mul_reg_I_reg[8] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][2] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [2]),
        .Q(\mul_reg_I_reg[8] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][30] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [30]),
        .Q(\mul_reg_I_reg[8] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][31] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [31]),
        .Q(\mul_reg_I_reg[8] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][32] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [32]),
        .Q(\mul_reg_I_reg[8] [32]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][33] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [33]),
        .Q(\mul_reg_I_reg[8] [33]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][34] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [34]),
        .Q(\mul_reg_I_reg[8] [34]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][35] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [35]),
        .Q(\mul_reg_I_reg[8] [35]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][3] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [3]),
        .Q(\mul_reg_I_reg[8] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][4] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [4]),
        .Q(\mul_reg_I_reg[8] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][5] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [5]),
        .Q(\mul_reg_I_reg[8] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][6] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [6]),
        .Q(\mul_reg_I_reg[8] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][7] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [7]),
        .Q(\mul_reg_I_reg[8] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][8] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [8]),
        .Q(\mul_reg_I_reg[8] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][9] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [9]),
        .Q(\mul_reg_I_reg[8] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [0]),
        .Q(\mul_reg_I_reg[9] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [10]),
        .Q(\mul_reg_I_reg[9] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [11]),
        .Q(\mul_reg_I_reg[9] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [12]),
        .Q(\mul_reg_I_reg[9] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [13]),
        .Q(\mul_reg_I_reg[9] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [14]),
        .Q(\mul_reg_I_reg[9] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][15] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [15]),
        .Q(\mul_reg_I_reg[9] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][16] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [16]),
        .Q(\mul_reg_I_reg[9] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][17] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [17]),
        .Q(\mul_reg_I_reg[9] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][18] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [18]),
        .Q(\mul_reg_I_reg[9] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][19] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [19]),
        .Q(\mul_reg_I_reg[9] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][1] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [1]),
        .Q(\mul_reg_I_reg[9] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][20] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [20]),
        .Q(\mul_reg_I_reg[9] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][21] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [21]),
        .Q(\mul_reg_I_reg[9] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][22] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [22]),
        .Q(\mul_reg_I_reg[9] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][23] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [23]),
        .Q(\mul_reg_I_reg[9] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][24] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [24]),
        .Q(\mul_reg_I_reg[9] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][25] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [25]),
        .Q(\mul_reg_I_reg[9] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][26] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [26]),
        .Q(\mul_reg_I_reg[9] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][27] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [27]),
        .Q(\mul_reg_I_reg[9] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][28] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [28]),
        .Q(\mul_reg_I_reg[9] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][29] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [29]),
        .Q(\mul_reg_I_reg[9] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][2] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [2]),
        .Q(\mul_reg_I_reg[9] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][30] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [30]),
        .Q(\mul_reg_I_reg[9] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][31] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [31]),
        .Q(\mul_reg_I_reg[9] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][32] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [32]),
        .Q(\mul_reg_I_reg[9] [32]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][33] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [33]),
        .Q(\mul_reg_I_reg[9] [33]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][34] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [34]),
        .Q(\mul_reg_I_reg[9] [34]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][35] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [35]),
        .Q(\mul_reg_I_reg[9] [35]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][3] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [3]),
        .Q(\mul_reg_I_reg[9] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][4] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [4]),
        .Q(\mul_reg_I_reg[9] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][5] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [5]),
        .Q(\mul_reg_I_reg[9] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][6] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [6]),
        .Q(\mul_reg_I_reg[9] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][7] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [7]),
        .Q(\mul_reg_I_reg[9] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][8] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [8]),
        .Q(\mul_reg_I_reg[9] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][9] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [9]),
        .Q(\mul_reg_I_reg[9] [9]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][0]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_105 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [0]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][10]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_95 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [10]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][11]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_94 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [11]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][12]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_93 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [12]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][13]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_92 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [13]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][14]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_91 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [14]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][15]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_90 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [15]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][16]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_89 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [16]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][17]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_88 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [17]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][18]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_87 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [18]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][19]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_86 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [19]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][1]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_104 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [1]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][20]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_85 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [20]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][21]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_84 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [21]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][22]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_83 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [22]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][23]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_82 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [23]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][24]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_81 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [24]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][25]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_80 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [25]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][26]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_79 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [26]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][27]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_78 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [27]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][28]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_77 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [28]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][29]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_76 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [29]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][2]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_103 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [2]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][30]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_75 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [30]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][31]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_74 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [31]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][32]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_73 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [32]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][33]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_72 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [33]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][34]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_71 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [34]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][35]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_70 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [35]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][3]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_102 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [3]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][4]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_101 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [4]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][5]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_100 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [5]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][6]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_99 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [6]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][7]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_98 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [7]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][8]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_97 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [8]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[10][9]_i_1 
       (.I0(\mul_reg_Q_reg[11]0_n_96 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[11] [9]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][0]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_105 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [0]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][10]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_95 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [10]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][11]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_94 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [11]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][12]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_93 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [12]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][13]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_92 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [13]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][14]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_91 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [14]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][15]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_90 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [15]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][16]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_89 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [16]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][17]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_88 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [17]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][18]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_87 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [18]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][19]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_86 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [19]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][1]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_104 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [1]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][20]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_85 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [20]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][21]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_84 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [21]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][22]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_83 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [22]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][23]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_82 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [23]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][24]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_81 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [24]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][25]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_80 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [25]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][26]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_79 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [26]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][27]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_78 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [27]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][28]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_77 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [28]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][29]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_76 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [29]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][2]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_103 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [2]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][30]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_75 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [30]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][31]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_74 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [31]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][3]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_102 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [3]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][4]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_101 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [4]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][5]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_100 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [5]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][6]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_99 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [6]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][7]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_98 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [7]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][8]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_97 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [8]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[14][9]_i_1 
       (.I0(\mul_reg_Q_reg[15]0_n_96 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[15] [9]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[2][0]_i_1 
       (.I0(\mul_reg_Q_reg[3]0_n_105 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[2][10]_i_1 
       (.I0(\mul_reg_Q_reg[3]0_n_95 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[3] [10]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[2][11]_i_1 
       (.I0(\mul_reg_Q_reg[3]0_n_94 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[3] [11]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[2][12]_i_1 
       (.I0(\mul_reg_Q_reg[3]0_n_93 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[3] [12]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[2][13]_i_1 
       (.I0(\mul_reg_Q_reg[3]0_n_92 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[3] [13]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[2][14]_i_1 
       (.I0(\mul_reg_Q_reg[3]0_n_91 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[3] [14]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[2][15]_i_1 
       (.I0(\mul_reg_Q_reg[3]0_n_90 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[3] [15]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[2][1]_i_1 
       (.I0(\mul_reg_Q_reg[3]0_n_104 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[2][2]_i_1 
       (.I0(\mul_reg_Q_reg[3]0_n_103 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[3] [2]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[2][3]_i_1 
       (.I0(\mul_reg_Q_reg[3]0_n_102 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[3] [3]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[2][4]_i_1 
       (.I0(\mul_reg_Q_reg[3]0_n_101 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[3] [4]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[2][5]_i_1 
       (.I0(\mul_reg_Q_reg[3]0_n_100 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[3] [5]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[2][6]_i_1 
       (.I0(\mul_reg_Q_reg[3]0_n_99 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[3] [6]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[2][7]_i_1 
       (.I0(\mul_reg_Q_reg[3]0_n_98 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[3] [7]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[2][8]_i_1 
       (.I0(\mul_reg_Q_reg[3]0_n_97 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[3] [8]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[2][9]_i_1 
       (.I0(\mul_reg_Q_reg[3]0_n_96 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[3] [9]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][0]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_105 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][10]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_95 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [10]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][11]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_94 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [11]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][12]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_93 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [12]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][13]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_92 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [13]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][14]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_91 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [14]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][15]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_90 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [15]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][16]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_89 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [16]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][17]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_88 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [17]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][18]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_87 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [18]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][19]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_86 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [19]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][1]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_104 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][20]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_85 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [20]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][21]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_84 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [21]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][22]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_83 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [22]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][23]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_82 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [23]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][24]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_81 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [24]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][25]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_80 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [25]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][26]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_79 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [26]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][27]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_78 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [27]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][28]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_77 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [28]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][29]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_76 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [29]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][2]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_103 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][30]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_75 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [30]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][31]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_74 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [31]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][32]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_73 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [32]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][33]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_72 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [33]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][34]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_71 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [34]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][35]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_70 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [35]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][3]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_102 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][4]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_101 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][5]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_100 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][6]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_99 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][7]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_98 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][8]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_97 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [8]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_Q[6][9]_i_1 
       (.I0(\mul_reg_Q_reg[7]0_n_96 ),
        .I1(\mul_reg_Q_reg[14][31]_i_2_n_0 ),
        .O(\mul_reg_Q_reg[7] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[0][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[1] [0]),
        .Q(\mul_reg_Q_reg_n_0_[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[0][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[1] [10]),
        .Q(\mul_reg_Q_reg_n_0_[0][10] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[0][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[1] [11]),
        .Q(\mul_reg_Q_reg_n_0_[0][11] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[0][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[1] [12]),
        .Q(\mul_reg_Q_reg_n_0_[0][12] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[0][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[1] [13]),
        .Q(\mul_reg_Q_reg_n_0_[0][13] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[0][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[1] [14]),
        .Q(\mul_reg_Q_reg_n_0_[0][14] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[0][15] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[1] [15]),
        .Q(\mul_reg_Q_reg_n_0_[0][15] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[0][1] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[1] [1]),
        .Q(\mul_reg_Q_reg_n_0_[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[0][2] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[1] [2]),
        .Q(\mul_reg_Q_reg_n_0_[0][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[0][3] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[1] [3]),
        .Q(\mul_reg_Q_reg_n_0_[0][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[0][4] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[1] [4]),
        .Q(\mul_reg_Q_reg_n_0_[0][4] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[0][5] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[1] [5]),
        .Q(\mul_reg_Q_reg_n_0_[0][5] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[0][6] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[1] [6]),
        .Q(\mul_reg_Q_reg_n_0_[0][6] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[0][7] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[1] [7]),
        .Q(\mul_reg_Q_reg_n_0_[0][7] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[0][8] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[1] [8]),
        .Q(\mul_reg_Q_reg_n_0_[0][8] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[0][9] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[1] [9]),
        .Q(\mul_reg_Q_reg_n_0_[0][9] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [0]),
        .Q(\mul_reg_Q_reg[10] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [10]),
        .Q(\mul_reg_Q_reg[10] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [11]),
        .Q(\mul_reg_Q_reg[10] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [12]),
        .Q(\mul_reg_Q_reg[10] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [13]),
        .Q(\mul_reg_Q_reg[10] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [14]),
        .Q(\mul_reg_Q_reg[10] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][15] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [15]),
        .Q(\mul_reg_Q_reg[10] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][16] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [16]),
        .Q(\mul_reg_Q_reg[10] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][17] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [17]),
        .Q(\mul_reg_Q_reg[10] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][18] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [18]),
        .Q(\mul_reg_Q_reg[10] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][19] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [19]),
        .Q(\mul_reg_Q_reg[10] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][1] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [1]),
        .Q(\mul_reg_Q_reg[10] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][20] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [20]),
        .Q(\mul_reg_Q_reg[10] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][21] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [21]),
        .Q(\mul_reg_Q_reg[10] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][22] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [22]),
        .Q(\mul_reg_Q_reg[10] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][23] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [23]),
        .Q(\mul_reg_Q_reg[10] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][24] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [24]),
        .Q(\mul_reg_Q_reg[10] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][25] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [25]),
        .Q(\mul_reg_Q_reg[10] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][26] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [26]),
        .Q(\mul_reg_Q_reg[10] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][27] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [27]),
        .Q(\mul_reg_Q_reg[10] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][28] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [28]),
        .Q(\mul_reg_Q_reg[10] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][29] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [29]),
        .Q(\mul_reg_Q_reg[10] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][2] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [2]),
        .Q(\mul_reg_Q_reg[10] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][30] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [30]),
        .Q(\mul_reg_Q_reg[10] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][31] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [31]),
        .Q(\mul_reg_Q_reg[10] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][32] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [32]),
        .Q(\mul_reg_Q_reg[10] [32]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][33] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [33]),
        .Q(\mul_reg_Q_reg[10] [33]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][34] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [34]),
        .Q(\mul_reg_Q_reg[10] [34]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][35] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [35]),
        .Q(\mul_reg_Q_reg[10] [35]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][3] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [3]),
        .Q(\mul_reg_Q_reg[10] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][4] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [4]),
        .Q(\mul_reg_Q_reg[10] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][5] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [5]),
        .Q(\mul_reg_Q_reg[10] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][6] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [6]),
        .Q(\mul_reg_Q_reg[10] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][7] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [7]),
        .Q(\mul_reg_Q_reg[10] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][8] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [8]),
        .Q(\mul_reg_Q_reg[10] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][9] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[11] [9]),
        .Q(\mul_reg_Q_reg[10] [9]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
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
    \mul_reg_Q_reg[11]0 
       (.A({axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_3,axis_data_fifo_Q_n_4,axis_data_fifo_Q_n_5,axis_data_fifo_Q_n_6,axis_data_fifo_Q_n_7,axis_data_fifo_Q_n_8,axis_data_fifo_Q_n_9,axis_data_fifo_Q_n_10,axis_data_fifo_Q_n_11,axis_data_fifo_Q_n_12,axis_data_fifo_Q_n_13,axis_data_fifo_Q_n_14,axis_data_fifo_Q_n_15,axis_data_fifo_Q_n_16,axis_data_fifo_Q_n_17}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_Q_reg[11]0_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\coeff_reg_reg[0] [11],1'b0,\coeff_reg_reg[2] [12:11],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [10],\coeff_reg_reg[2] [12:11],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [10],\coeff_reg_reg[2] [12:11],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [10],\coeff_reg_reg[2] [0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_Q_reg[11]0_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\mul_reg_Q_reg[12] }),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_Q_reg[11]0_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_Q_reg[11]0_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
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
        .CEP(filter2fifo_ready1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_Q_reg[11]0_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_Q_reg[11]0_OVERFLOW_UNCONNECTED ),
        .P({\NLW_mul_reg_Q_reg[11]0_P_UNCONNECTED [47:36],\mul_reg_Q_reg[11]0_n_70 ,\mul_reg_Q_reg[11]0_n_71 ,\mul_reg_Q_reg[11]0_n_72 ,\mul_reg_Q_reg[11]0_n_73 ,\mul_reg_Q_reg[11]0_n_74 ,\mul_reg_Q_reg[11]0_n_75 ,\mul_reg_Q_reg[11]0_n_76 ,\mul_reg_Q_reg[11]0_n_77 ,\mul_reg_Q_reg[11]0_n_78 ,\mul_reg_Q_reg[11]0_n_79 ,\mul_reg_Q_reg[11]0_n_80 ,\mul_reg_Q_reg[11]0_n_81 ,\mul_reg_Q_reg[11]0_n_82 ,\mul_reg_Q_reg[11]0_n_83 ,\mul_reg_Q_reg[11]0_n_84 ,\mul_reg_Q_reg[11]0_n_85 ,\mul_reg_Q_reg[11]0_n_86 ,\mul_reg_Q_reg[11]0_n_87 ,\mul_reg_Q_reg[11]0_n_88 ,\mul_reg_Q_reg[11]0_n_89 ,\mul_reg_Q_reg[11]0_n_90 ,\mul_reg_Q_reg[11]0_n_91 ,\mul_reg_Q_reg[11]0_n_92 ,\mul_reg_Q_reg[11]0_n_93 ,\mul_reg_Q_reg[11]0_n_94 ,\mul_reg_Q_reg[11]0_n_95 ,\mul_reg_Q_reg[11]0_n_96 ,\mul_reg_Q_reg[11]0_n_97 ,\mul_reg_Q_reg[11]0_n_98 ,\mul_reg_Q_reg[11]0_n_99 ,\mul_reg_Q_reg[11]0_n_100 ,\mul_reg_Q_reg[11]0_n_101 ,\mul_reg_Q_reg[11]0_n_102 ,\mul_reg_Q_reg[11]0_n_103 ,\mul_reg_Q_reg[11]0_n_104 ,\mul_reg_Q_reg[11]0_n_105 }),
        .PATTERNBDETECT(\NLW_mul_reg_Q_reg[11]0_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_Q_reg[11]0_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_mul_reg_Q_reg[11]0_PCOUT_UNCONNECTED [47:0]),
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
        .UNDERFLOW(\NLW_mul_reg_Q_reg[11]0_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_mul_reg_Q_reg[11]0_XOROUT_UNCONNECTED [7:0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [0]),
        .Q(\mul_reg_Q_reg[12] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [10]),
        .Q(\mul_reg_Q_reg[12] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [11]),
        .Q(\mul_reg_Q_reg[12] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [12]),
        .Q(\mul_reg_Q_reg[12] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [13]),
        .Q(\mul_reg_Q_reg[12] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [14]),
        .Q(\mul_reg_Q_reg[12] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][15] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [15]),
        .Q(\mul_reg_Q_reg[12] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][16] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [16]),
        .Q(\mul_reg_Q_reg[12] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][17] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [17]),
        .Q(\mul_reg_Q_reg[12] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][18] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [18]),
        .Q(\mul_reg_Q_reg[12] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][19] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [19]),
        .Q(\mul_reg_Q_reg[12] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][1] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [1]),
        .Q(\mul_reg_Q_reg[12] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][20] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [20]),
        .Q(\mul_reg_Q_reg[12] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][21] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [21]),
        .Q(\mul_reg_Q_reg[12] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][22] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [22]),
        .Q(\mul_reg_Q_reg[12] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][23] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [23]),
        .Q(\mul_reg_Q_reg[12] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][24] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [24]),
        .Q(\mul_reg_Q_reg[12] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][25] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [25]),
        .Q(\mul_reg_Q_reg[12] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][26] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [26]),
        .Q(\mul_reg_Q_reg[12] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][27] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [27]),
        .Q(\mul_reg_Q_reg[12] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][28] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [28]),
        .Q(\mul_reg_Q_reg[12] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][29] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [29]),
        .Q(\mul_reg_Q_reg[12] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][2] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [2]),
        .Q(\mul_reg_Q_reg[12] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][30] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [30]),
        .Q(\mul_reg_Q_reg[12] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][31] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [31]),
        .Q(\mul_reg_Q_reg[12] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][3] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [3]),
        .Q(\mul_reg_Q_reg[12] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][4] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [4]),
        .Q(\mul_reg_Q_reg[12] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][5] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [5]),
        .Q(\mul_reg_Q_reg[12] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][6] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [6]),
        .Q(\mul_reg_Q_reg[12] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][7] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [7]),
        .Q(\mul_reg_Q_reg[12] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][8] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [8]),
        .Q(\mul_reg_Q_reg[12] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[12][9] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[13] [9]),
        .Q(\mul_reg_Q_reg[12] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [0]),
        .Q(\mul_reg_Q_reg[13] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [10]),
        .Q(\mul_reg_Q_reg[13] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [11]),
        .Q(\mul_reg_Q_reg[13] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [12]),
        .Q(\mul_reg_Q_reg[13] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [13]),
        .Q(\mul_reg_Q_reg[13] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [14]),
        .Q(\mul_reg_Q_reg[13] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][15] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [15]),
        .Q(\mul_reg_Q_reg[13] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][16] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [16]),
        .Q(\mul_reg_Q_reg[13] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][17] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [17]),
        .Q(\mul_reg_Q_reg[13] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][18] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [18]),
        .Q(\mul_reg_Q_reg[13] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][19] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [19]),
        .Q(\mul_reg_Q_reg[13] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][1] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [1]),
        .Q(\mul_reg_Q_reg[13] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][20] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [20]),
        .Q(\mul_reg_Q_reg[13] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][21] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [21]),
        .Q(\mul_reg_Q_reg[13] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][22] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [22]),
        .Q(\mul_reg_Q_reg[13] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][23] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [23]),
        .Q(\mul_reg_Q_reg[13] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][24] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [24]),
        .Q(\mul_reg_Q_reg[13] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][25] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [25]),
        .Q(\mul_reg_Q_reg[13] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][26] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [26]),
        .Q(\mul_reg_Q_reg[13] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][27] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [27]),
        .Q(\mul_reg_Q_reg[13] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][28] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [28]),
        .Q(\mul_reg_Q_reg[13] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][29] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [29]),
        .Q(\mul_reg_Q_reg[13] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][2] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [2]),
        .Q(\mul_reg_Q_reg[13] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][30] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [30]),
        .Q(\mul_reg_Q_reg[13] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][31] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [31]),
        .Q(\mul_reg_Q_reg[13] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][3] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [3]),
        .Q(\mul_reg_Q_reg[13] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][4] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [4]),
        .Q(\mul_reg_Q_reg[13] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][5] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [5]),
        .Q(\mul_reg_Q_reg[13] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][6] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [6]),
        .Q(\mul_reg_Q_reg[13] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][7] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [7]),
        .Q(\mul_reg_Q_reg[13] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][8] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [8]),
        .Q(\mul_reg_Q_reg[13] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][9] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[14] [9]),
        .Q(\mul_reg_Q_reg[13] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [0]),
        .Q(\mul_reg_Q_reg[14] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [10]),
        .Q(\mul_reg_Q_reg[14] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [11]),
        .Q(\mul_reg_Q_reg[14] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [12]),
        .Q(\mul_reg_Q_reg[14] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [13]),
        .Q(\mul_reg_Q_reg[14] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [14]),
        .Q(\mul_reg_Q_reg[14] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][15] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [15]),
        .Q(\mul_reg_Q_reg[14] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][16] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [16]),
        .Q(\mul_reg_Q_reg[14] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][17] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [17]),
        .Q(\mul_reg_Q_reg[14] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][18] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [18]),
        .Q(\mul_reg_Q_reg[14] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][19] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [19]),
        .Q(\mul_reg_Q_reg[14] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][1] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [1]),
        .Q(\mul_reg_Q_reg[14] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][20] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [20]),
        .Q(\mul_reg_Q_reg[14] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][21] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [21]),
        .Q(\mul_reg_Q_reg[14] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][22] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [22]),
        .Q(\mul_reg_Q_reg[14] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][23] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [23]),
        .Q(\mul_reg_Q_reg[14] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][24] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [24]),
        .Q(\mul_reg_Q_reg[14] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][25] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [25]),
        .Q(\mul_reg_Q_reg[14] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][26] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [26]),
        .Q(\mul_reg_Q_reg[14] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][27] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [27]),
        .Q(\mul_reg_Q_reg[14] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][28] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [28]),
        .Q(\mul_reg_Q_reg[14] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][29] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [29]),
        .Q(\mul_reg_Q_reg[14] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][2] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [2]),
        .Q(\mul_reg_Q_reg[14] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][30] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [30]),
        .Q(\mul_reg_Q_reg[14] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][31] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [31]),
        .Q(\mul_reg_Q_reg[14] [31]));
  FDCE \mul_reg_Q_reg[14][31]_i_2 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(1'b1),
        .Q(\mul_reg_Q_reg[14][31]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][3] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [3]),
        .Q(\mul_reg_Q_reg[14] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][4] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [4]),
        .Q(\mul_reg_Q_reg[14] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][5] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [5]),
        .Q(\mul_reg_Q_reg[14] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][6] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [6]),
        .Q(\mul_reg_Q_reg[14] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][7] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [7]),
        .Q(\mul_reg_Q_reg[14] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][8] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [8]),
        .Q(\mul_reg_Q_reg[14] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][9] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[15] [9]),
        .Q(\mul_reg_Q_reg[14] [9]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
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
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \mul_reg_Q_reg[15]0 
       (.A({axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_3,axis_data_fifo_Q_n_4,axis_data_fifo_Q_n_5,axis_data_fifo_Q_n_6,axis_data_fifo_Q_n_7,axis_data_fifo_Q_n_8,axis_data_fifo_Q_n_9,axis_data_fifo_Q_n_10,axis_data_fifo_Q_n_11,axis_data_fifo_Q_n_12,axis_data_fifo_Q_n_13,axis_data_fifo_Q_n_14,axis_data_fifo_Q_n_15,axis_data_fifo_Q_n_16,axis_data_fifo_Q_n_17}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_Q_reg[15]0_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\coeff_reg_reg[2] [12],\coeff_reg_reg[3] ,\coeff_reg_reg[1] [10],\coeff_reg_reg[1] [14],\coeff_reg_reg[0] [10],\coeff_reg_reg[2] [11],\coeff_reg_reg[1] [10],\coeff_reg_reg[1] [14],\coeff_reg_reg[0] [10],\coeff_reg_reg[2] [11],\coeff_reg_reg[1] [10],\coeff_reg_reg[1] [14],\coeff_reg_reg[0] [10],\coeff_reg_reg[2] [11],\coeff_reg_reg[1] [10]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_Q_reg[15]0_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_Q_reg[15]0_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_Q_reg[15]0_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
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
        .CEP(filter2fifo_ready1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_Q_reg[15]0_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_Q_reg[15]0_OVERFLOW_UNCONNECTED ),
        .P({\NLW_mul_reg_Q_reg[15]0_P_UNCONNECTED [47:32],\mul_reg_Q_reg[15]0_n_74 ,\mul_reg_Q_reg[15]0_n_75 ,\mul_reg_Q_reg[15]0_n_76 ,\mul_reg_Q_reg[15]0_n_77 ,\mul_reg_Q_reg[15]0_n_78 ,\mul_reg_Q_reg[15]0_n_79 ,\mul_reg_Q_reg[15]0_n_80 ,\mul_reg_Q_reg[15]0_n_81 ,\mul_reg_Q_reg[15]0_n_82 ,\mul_reg_Q_reg[15]0_n_83 ,\mul_reg_Q_reg[15]0_n_84 ,\mul_reg_Q_reg[15]0_n_85 ,\mul_reg_Q_reg[15]0_n_86 ,\mul_reg_Q_reg[15]0_n_87 ,\mul_reg_Q_reg[15]0_n_88 ,\mul_reg_Q_reg[15]0_n_89 ,\mul_reg_Q_reg[15]0_n_90 ,\mul_reg_Q_reg[15]0_n_91 ,\mul_reg_Q_reg[15]0_n_92 ,\mul_reg_Q_reg[15]0_n_93 ,\mul_reg_Q_reg[15]0_n_94 ,\mul_reg_Q_reg[15]0_n_95 ,\mul_reg_Q_reg[15]0_n_96 ,\mul_reg_Q_reg[15]0_n_97 ,\mul_reg_Q_reg[15]0_n_98 ,\mul_reg_Q_reg[15]0_n_99 ,\mul_reg_Q_reg[15]0_n_100 ,\mul_reg_Q_reg[15]0_n_101 ,\mul_reg_Q_reg[15]0_n_102 ,\mul_reg_Q_reg[15]0_n_103 ,\mul_reg_Q_reg[15]0_n_104 ,\mul_reg_Q_reg[15]0_n_105 }),
        .PATTERNBDETECT(\NLW_mul_reg_Q_reg[15]0_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_Q_reg[15]0_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_mul_reg_Q_reg[15]0_PCOUT_UNCONNECTED [47:0]),
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
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[1][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[2] [0]),
        .Q(\mul_reg_Q_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[1][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[2] [10]),
        .Q(\mul_reg_Q_reg[1] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[1][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[2] [11]),
        .Q(\mul_reg_Q_reg[1] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[1][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[2] [12]),
        .Q(\mul_reg_Q_reg[1] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[1][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[2] [13]),
        .Q(\mul_reg_Q_reg[1] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[1][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[2] [14]),
        .Q(\mul_reg_Q_reg[1] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[1][15] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[2] [15]),
        .Q(\mul_reg_Q_reg[1] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[1][1] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[2] [1]),
        .Q(\mul_reg_Q_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[1][2] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[2] [2]),
        .Q(\mul_reg_Q_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[1][3] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[2] [3]),
        .Q(\mul_reg_Q_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[1][4] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[2] [4]),
        .Q(\mul_reg_Q_reg[1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[1][5] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[2] [5]),
        .Q(\mul_reg_Q_reg[1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[1][6] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[2] [6]),
        .Q(\mul_reg_Q_reg[1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[1][7] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[2] [7]),
        .Q(\mul_reg_Q_reg[1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[1][8] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[2] [8]),
        .Q(\mul_reg_Q_reg[1] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[1][9] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[2] [9]),
        .Q(\mul_reg_Q_reg[1] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[2][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[3] [0]),
        .Q(\mul_reg_Q_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[2][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[3] [10]),
        .Q(\mul_reg_Q_reg[2] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[2][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[3] [11]),
        .Q(\mul_reg_Q_reg[2] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[2][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[3] [12]),
        .Q(\mul_reg_Q_reg[2] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[2][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[3] [13]),
        .Q(\mul_reg_Q_reg[2] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[2][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[3] [14]),
        .Q(\mul_reg_Q_reg[2] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[2][15] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[3] [15]),
        .Q(\mul_reg_Q_reg[2] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[2][1] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[3] [1]),
        .Q(\mul_reg_Q_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[2][2] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[3] [2]),
        .Q(\mul_reg_Q_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[2][3] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[3] [3]),
        .Q(\mul_reg_Q_reg[2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[2][4] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[3] [4]),
        .Q(\mul_reg_Q_reg[2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[2][5] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[3] [5]),
        .Q(\mul_reg_Q_reg[2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[2][6] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[3] [6]),
        .Q(\mul_reg_Q_reg[2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[2][7] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[3] [7]),
        .Q(\mul_reg_Q_reg[2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[2][8] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[3] [8]),
        .Q(\mul_reg_Q_reg[2] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[2][9] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[3] [9]),
        .Q(\mul_reg_Q_reg[2] [9]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
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
    \mul_reg_Q_reg[3]0 
       (.A({axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_3,axis_data_fifo_Q_n_4,axis_data_fifo_Q_n_5,axis_data_fifo_Q_n_6,axis_data_fifo_Q_n_7,axis_data_fifo_Q_n_8,axis_data_fifo_Q_n_9,axis_data_fifo_Q_n_10,axis_data_fifo_Q_n_11,axis_data_fifo_Q_n_12,axis_data_fifo_Q_n_13,axis_data_fifo_Q_n_14,axis_data_fifo_Q_n_15,axis_data_fifo_Q_n_16,axis_data_fifo_Q_n_17}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_Q_reg[3]0_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\coeff_reg_reg[0] ,\coeff_reg_reg[0] [12:9],\coeff_reg_reg[0] [12:9],\coeff_reg_reg[0] [12]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_Q_reg[3]0_BCOUT_UNCONNECTED [17:0]),
        .C({\mul_reg_Q_reg[4] [35],\mul_reg_Q_reg[4] [35],\mul_reg_Q_reg[4] [35],\mul_reg_Q_reg[4] [35],\mul_reg_Q_reg[4] [35],\mul_reg_Q_reg[4] [35],\mul_reg_Q_reg[4] [35],\mul_reg_Q_reg[4] [35],\mul_reg_Q_reg[4] [35],\mul_reg_Q_reg[4] [35],\mul_reg_Q_reg[4] [35],\mul_reg_Q_reg[4] [35],\mul_reg_Q_reg[4] }),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_Q_reg[3]0_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_Q_reg[3]0_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
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
        .CEP(filter2fifo_ready1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_Q_reg[3]0_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_Q_reg[3]0_OVERFLOW_UNCONNECTED ),
        .P({\NLW_mul_reg_Q_reg[3]0_P_UNCONNECTED [47:36],\mul_reg_Q_reg[3]0_n_70 ,\mul_reg_Q_reg[3]0_n_71 ,\mul_reg_Q_reg[3]0_n_72 ,\mul_reg_Q_reg[3]0_n_73 ,\mul_reg_Q_reg[3]0_n_74 ,\mul_reg_Q_reg[3]0_n_75 ,\mul_reg_Q_reg[3]0_n_76 ,\mul_reg_Q_reg[3]0_n_77 ,\mul_reg_Q_reg[3]0_n_78 ,\mul_reg_Q_reg[3]0_n_79 ,\mul_reg_Q_reg[3]0_n_80 ,\mul_reg_Q_reg[3]0_n_81 ,\mul_reg_Q_reg[3]0_n_82 ,\mul_reg_Q_reg[3]0_n_83 ,\mul_reg_Q_reg[3]0_n_84 ,\mul_reg_Q_reg[3]0_n_85 ,\mul_reg_Q_reg[3]0_n_86 ,\mul_reg_Q_reg[3]0_n_87 ,\mul_reg_Q_reg[3]0_n_88 ,\mul_reg_Q_reg[3]0_n_89 ,\mul_reg_Q_reg[3]0_n_90 ,\mul_reg_Q_reg[3]0_n_91 ,\mul_reg_Q_reg[3]0_n_92 ,\mul_reg_Q_reg[3]0_n_93 ,\mul_reg_Q_reg[3]0_n_94 ,\mul_reg_Q_reg[3]0_n_95 ,\mul_reg_Q_reg[3]0_n_96 ,\mul_reg_Q_reg[3]0_n_97 ,\mul_reg_Q_reg[3]0_n_98 ,\mul_reg_Q_reg[3]0_n_99 ,\mul_reg_Q_reg[3]0_n_100 ,\mul_reg_Q_reg[3]0_n_101 ,\mul_reg_Q_reg[3]0_n_102 ,\mul_reg_Q_reg[3]0_n_103 ,\mul_reg_Q_reg[3]0_n_104 ,\mul_reg_Q_reg[3]0_n_105 }),
        .PATTERNBDETECT(\NLW_mul_reg_Q_reg[3]0_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_Q_reg[3]0_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_mul_reg_Q_reg[3]0_PCOUT_UNCONNECTED [47:0]),
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
        .UNDERFLOW(\NLW_mul_reg_Q_reg[3]0_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_mul_reg_Q_reg[3]0_XOROUT_UNCONNECTED [7:0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [0]),
        .Q(\mul_reg_Q_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [10]),
        .Q(\mul_reg_Q_reg[4] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [11]),
        .Q(\mul_reg_Q_reg[4] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [12]),
        .Q(\mul_reg_Q_reg[4] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [13]),
        .Q(\mul_reg_Q_reg[4] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [14]),
        .Q(\mul_reg_Q_reg[4] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][15] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [15]),
        .Q(\mul_reg_Q_reg[4] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][16] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [16]),
        .Q(\mul_reg_Q_reg[4] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][17] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [17]),
        .Q(\mul_reg_Q_reg[4] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][18] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [18]),
        .Q(\mul_reg_Q_reg[4] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][19] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [19]),
        .Q(\mul_reg_Q_reg[4] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][1] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [1]),
        .Q(\mul_reg_Q_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][20] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [20]),
        .Q(\mul_reg_Q_reg[4] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][21] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [21]),
        .Q(\mul_reg_Q_reg[4] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][22] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [22]),
        .Q(\mul_reg_Q_reg[4] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][23] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [23]),
        .Q(\mul_reg_Q_reg[4] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][24] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [24]),
        .Q(\mul_reg_Q_reg[4] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][25] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [25]),
        .Q(\mul_reg_Q_reg[4] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][26] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [26]),
        .Q(\mul_reg_Q_reg[4] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][27] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [27]),
        .Q(\mul_reg_Q_reg[4] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][28] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [28]),
        .Q(\mul_reg_Q_reg[4] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][29] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [29]),
        .Q(\mul_reg_Q_reg[4] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][2] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [2]),
        .Q(\mul_reg_Q_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][30] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [30]),
        .Q(\mul_reg_Q_reg[4] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][31] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [31]),
        .Q(\mul_reg_Q_reg[4] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][32] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [32]),
        .Q(\mul_reg_Q_reg[4] [32]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][33] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [33]),
        .Q(\mul_reg_Q_reg[4] [33]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][34] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [34]),
        .Q(\mul_reg_Q_reg[4] [34]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][35] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [35]),
        .Q(\mul_reg_Q_reg[4] [35]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][3] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [3]),
        .Q(\mul_reg_Q_reg[4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][4] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [4]),
        .Q(\mul_reg_Q_reg[4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][5] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [5]),
        .Q(\mul_reg_Q_reg[4] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][6] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [6]),
        .Q(\mul_reg_Q_reg[4] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][7] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [7]),
        .Q(\mul_reg_Q_reg[4] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][8] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [8]),
        .Q(\mul_reg_Q_reg[4] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[4][9] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[5] [9]),
        .Q(\mul_reg_Q_reg[4] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [0]),
        .Q(\mul_reg_Q_reg[5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [10]),
        .Q(\mul_reg_Q_reg[5] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [11]),
        .Q(\mul_reg_Q_reg[5] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [12]),
        .Q(\mul_reg_Q_reg[5] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [13]),
        .Q(\mul_reg_Q_reg[5] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [14]),
        .Q(\mul_reg_Q_reg[5] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][15] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [15]),
        .Q(\mul_reg_Q_reg[5] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][16] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [16]),
        .Q(\mul_reg_Q_reg[5] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][17] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [17]),
        .Q(\mul_reg_Q_reg[5] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][18] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [18]),
        .Q(\mul_reg_Q_reg[5] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][19] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [19]),
        .Q(\mul_reg_Q_reg[5] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][1] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [1]),
        .Q(\mul_reg_Q_reg[5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][20] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [20]),
        .Q(\mul_reg_Q_reg[5] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][21] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [21]),
        .Q(\mul_reg_Q_reg[5] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][22] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [22]),
        .Q(\mul_reg_Q_reg[5] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][23] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [23]),
        .Q(\mul_reg_Q_reg[5] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][24] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [24]),
        .Q(\mul_reg_Q_reg[5] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][25] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [25]),
        .Q(\mul_reg_Q_reg[5] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][26] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [26]),
        .Q(\mul_reg_Q_reg[5] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][27] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [27]),
        .Q(\mul_reg_Q_reg[5] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][28] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [28]),
        .Q(\mul_reg_Q_reg[5] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][29] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [29]),
        .Q(\mul_reg_Q_reg[5] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][2] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [2]),
        .Q(\mul_reg_Q_reg[5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][30] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [30]),
        .Q(\mul_reg_Q_reg[5] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][31] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [31]),
        .Q(\mul_reg_Q_reg[5] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][32] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [32]),
        .Q(\mul_reg_Q_reg[5] [32]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][33] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [33]),
        .Q(\mul_reg_Q_reg[5] [33]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][34] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [34]),
        .Q(\mul_reg_Q_reg[5] [34]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][35] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [35]),
        .Q(\mul_reg_Q_reg[5] [35]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][3] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [3]),
        .Q(\mul_reg_Q_reg[5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][4] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [4]),
        .Q(\mul_reg_Q_reg[5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][5] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [5]),
        .Q(\mul_reg_Q_reg[5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][6] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [6]),
        .Q(\mul_reg_Q_reg[5] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][7] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [7]),
        .Q(\mul_reg_Q_reg[5] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][8] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [8]),
        .Q(\mul_reg_Q_reg[5] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][9] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[6] [9]),
        .Q(\mul_reg_Q_reg[5] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [0]),
        .Q(\mul_reg_Q_reg[6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [10]),
        .Q(\mul_reg_Q_reg[6] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [11]),
        .Q(\mul_reg_Q_reg[6] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [12]),
        .Q(\mul_reg_Q_reg[6] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [13]),
        .Q(\mul_reg_Q_reg[6] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [14]),
        .Q(\mul_reg_Q_reg[6] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][15] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [15]),
        .Q(\mul_reg_Q_reg[6] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][16] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [16]),
        .Q(\mul_reg_Q_reg[6] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][17] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [17]),
        .Q(\mul_reg_Q_reg[6] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][18] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [18]),
        .Q(\mul_reg_Q_reg[6] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][19] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [19]),
        .Q(\mul_reg_Q_reg[6] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][1] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [1]),
        .Q(\mul_reg_Q_reg[6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][20] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [20]),
        .Q(\mul_reg_Q_reg[6] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][21] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [21]),
        .Q(\mul_reg_Q_reg[6] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][22] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [22]),
        .Q(\mul_reg_Q_reg[6] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][23] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [23]),
        .Q(\mul_reg_Q_reg[6] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][24] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [24]),
        .Q(\mul_reg_Q_reg[6] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][25] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [25]),
        .Q(\mul_reg_Q_reg[6] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][26] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [26]),
        .Q(\mul_reg_Q_reg[6] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][27] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [27]),
        .Q(\mul_reg_Q_reg[6] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][28] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [28]),
        .Q(\mul_reg_Q_reg[6] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][29] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [29]),
        .Q(\mul_reg_Q_reg[6] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][2] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [2]),
        .Q(\mul_reg_Q_reg[6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][30] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [30]),
        .Q(\mul_reg_Q_reg[6] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][31] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [31]),
        .Q(\mul_reg_Q_reg[6] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][32] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [32]),
        .Q(\mul_reg_Q_reg[6] [32]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][33] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [33]),
        .Q(\mul_reg_Q_reg[6] [33]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][34] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [34]),
        .Q(\mul_reg_Q_reg[6] [34]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][35] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [35]),
        .Q(\mul_reg_Q_reg[6] [35]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][3] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [3]),
        .Q(\mul_reg_Q_reg[6] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][4] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [4]),
        .Q(\mul_reg_Q_reg[6] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][5] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [5]),
        .Q(\mul_reg_Q_reg[6] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][6] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [6]),
        .Q(\mul_reg_Q_reg[6] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][7] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [7]),
        .Q(\mul_reg_Q_reg[6] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][8] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [8]),
        .Q(\mul_reg_Q_reg[6] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][9] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[7] [9]),
        .Q(\mul_reg_Q_reg[6] [9]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
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
    \mul_reg_Q_reg[7]0 
       (.A({axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_2,axis_data_fifo_Q_n_3,axis_data_fifo_Q_n_4,axis_data_fifo_Q_n_5,axis_data_fifo_Q_n_6,axis_data_fifo_Q_n_7,axis_data_fifo_Q_n_8,axis_data_fifo_Q_n_9,axis_data_fifo_Q_n_10,axis_data_fifo_Q_n_11,axis_data_fifo_Q_n_12,axis_data_fifo_Q_n_13,axis_data_fifo_Q_n_14,axis_data_fifo_Q_n_15,axis_data_fifo_Q_n_16,axis_data_fifo_Q_n_17}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_Q_reg[7]0_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\coeff_reg_reg[1] [14],1'b0,\coeff_reg_reg[0] [14],\coeff_reg_reg[0] [9],\coeff_reg_reg[1] [10],\coeff_reg_reg[0] [12],\coeff_reg_reg[0] [14],\coeff_reg_reg[0] [9],\coeff_reg_reg[1] [10],\coeff_reg_reg[0] [12],\coeff_reg_reg[0] [14],\coeff_reg_reg[0] [9],\coeff_reg_reg[1] [10],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_Q_reg[7]0_BCOUT_UNCONNECTED [17:0]),
        .C({\mul_reg_Q_reg[8] [35],\mul_reg_Q_reg[8] [35],\mul_reg_Q_reg[8] [35],\mul_reg_Q_reg[8] [35],\mul_reg_Q_reg[8] [35],\mul_reg_Q_reg[8] [35],\mul_reg_Q_reg[8] [35],\mul_reg_Q_reg[8] [35],\mul_reg_Q_reg[8] [35],\mul_reg_Q_reg[8] [35],\mul_reg_Q_reg[8] [35],\mul_reg_Q_reg[8] [35],\mul_reg_Q_reg[8] }),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_Q_reg[7]0_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_Q_reg[7]0_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
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
        .CEP(filter2fifo_ready1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_Q_reg[7]0_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_Q_reg[7]0_OVERFLOW_UNCONNECTED ),
        .P({\NLW_mul_reg_Q_reg[7]0_P_UNCONNECTED [47:36],\mul_reg_Q_reg[7]0_n_70 ,\mul_reg_Q_reg[7]0_n_71 ,\mul_reg_Q_reg[7]0_n_72 ,\mul_reg_Q_reg[7]0_n_73 ,\mul_reg_Q_reg[7]0_n_74 ,\mul_reg_Q_reg[7]0_n_75 ,\mul_reg_Q_reg[7]0_n_76 ,\mul_reg_Q_reg[7]0_n_77 ,\mul_reg_Q_reg[7]0_n_78 ,\mul_reg_Q_reg[7]0_n_79 ,\mul_reg_Q_reg[7]0_n_80 ,\mul_reg_Q_reg[7]0_n_81 ,\mul_reg_Q_reg[7]0_n_82 ,\mul_reg_Q_reg[7]0_n_83 ,\mul_reg_Q_reg[7]0_n_84 ,\mul_reg_Q_reg[7]0_n_85 ,\mul_reg_Q_reg[7]0_n_86 ,\mul_reg_Q_reg[7]0_n_87 ,\mul_reg_Q_reg[7]0_n_88 ,\mul_reg_Q_reg[7]0_n_89 ,\mul_reg_Q_reg[7]0_n_90 ,\mul_reg_Q_reg[7]0_n_91 ,\mul_reg_Q_reg[7]0_n_92 ,\mul_reg_Q_reg[7]0_n_93 ,\mul_reg_Q_reg[7]0_n_94 ,\mul_reg_Q_reg[7]0_n_95 ,\mul_reg_Q_reg[7]0_n_96 ,\mul_reg_Q_reg[7]0_n_97 ,\mul_reg_Q_reg[7]0_n_98 ,\mul_reg_Q_reg[7]0_n_99 ,\mul_reg_Q_reg[7]0_n_100 ,\mul_reg_Q_reg[7]0_n_101 ,\mul_reg_Q_reg[7]0_n_102 ,\mul_reg_Q_reg[7]0_n_103 ,\mul_reg_Q_reg[7]0_n_104 ,\mul_reg_Q_reg[7]0_n_105 }),
        .PATTERNBDETECT(\NLW_mul_reg_Q_reg[7]0_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_Q_reg[7]0_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_mul_reg_Q_reg[7]0_PCOUT_UNCONNECTED [47:0]),
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
        .UNDERFLOW(\NLW_mul_reg_Q_reg[7]0_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_mul_reg_Q_reg[7]0_XOROUT_UNCONNECTED [7:0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [0]),
        .Q(\mul_reg_Q_reg[8] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [10]),
        .Q(\mul_reg_Q_reg[8] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [11]),
        .Q(\mul_reg_Q_reg[8] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [12]),
        .Q(\mul_reg_Q_reg[8] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [13]),
        .Q(\mul_reg_Q_reg[8] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [14]),
        .Q(\mul_reg_Q_reg[8] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][15] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [15]),
        .Q(\mul_reg_Q_reg[8] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][16] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [16]),
        .Q(\mul_reg_Q_reg[8] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][17] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [17]),
        .Q(\mul_reg_Q_reg[8] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][18] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [18]),
        .Q(\mul_reg_Q_reg[8] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][19] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [19]),
        .Q(\mul_reg_Q_reg[8] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][1] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [1]),
        .Q(\mul_reg_Q_reg[8] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][20] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [20]),
        .Q(\mul_reg_Q_reg[8] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][21] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [21]),
        .Q(\mul_reg_Q_reg[8] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][22] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [22]),
        .Q(\mul_reg_Q_reg[8] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][23] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [23]),
        .Q(\mul_reg_Q_reg[8] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][24] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [24]),
        .Q(\mul_reg_Q_reg[8] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][25] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [25]),
        .Q(\mul_reg_Q_reg[8] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][26] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [26]),
        .Q(\mul_reg_Q_reg[8] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][27] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [27]),
        .Q(\mul_reg_Q_reg[8] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][28] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [28]),
        .Q(\mul_reg_Q_reg[8] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][29] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [29]),
        .Q(\mul_reg_Q_reg[8] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][2] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [2]),
        .Q(\mul_reg_Q_reg[8] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][30] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [30]),
        .Q(\mul_reg_Q_reg[8] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][31] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [31]),
        .Q(\mul_reg_Q_reg[8] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][32] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [32]),
        .Q(\mul_reg_Q_reg[8] [32]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][33] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [33]),
        .Q(\mul_reg_Q_reg[8] [33]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][34] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [34]),
        .Q(\mul_reg_Q_reg[8] [34]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][35] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [35]),
        .Q(\mul_reg_Q_reg[8] [35]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][3] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [3]),
        .Q(\mul_reg_Q_reg[8] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][4] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [4]),
        .Q(\mul_reg_Q_reg[8] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][5] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [5]),
        .Q(\mul_reg_Q_reg[8] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][6] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [6]),
        .Q(\mul_reg_Q_reg[8] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][7] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [7]),
        .Q(\mul_reg_Q_reg[8] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][8] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [8]),
        .Q(\mul_reg_Q_reg[8] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[8][9] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[9] [9]),
        .Q(\mul_reg_Q_reg[8] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [0]),
        .Q(\mul_reg_Q_reg[9] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][10] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [10]),
        .Q(\mul_reg_Q_reg[9] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][11] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [11]),
        .Q(\mul_reg_Q_reg[9] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][12] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [12]),
        .Q(\mul_reg_Q_reg[9] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][13] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [13]),
        .Q(\mul_reg_Q_reg[9] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][14] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [14]),
        .Q(\mul_reg_Q_reg[9] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][15] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [15]),
        .Q(\mul_reg_Q_reg[9] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][16] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [16]),
        .Q(\mul_reg_Q_reg[9] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][17] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [17]),
        .Q(\mul_reg_Q_reg[9] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][18] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [18]),
        .Q(\mul_reg_Q_reg[9] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][19] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [19]),
        .Q(\mul_reg_Q_reg[9] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][1] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [1]),
        .Q(\mul_reg_Q_reg[9] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][20] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [20]),
        .Q(\mul_reg_Q_reg[9] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][21] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [21]),
        .Q(\mul_reg_Q_reg[9] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][22] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [22]),
        .Q(\mul_reg_Q_reg[9] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][23] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [23]),
        .Q(\mul_reg_Q_reg[9] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][24] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [24]),
        .Q(\mul_reg_Q_reg[9] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][25] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [25]),
        .Q(\mul_reg_Q_reg[9] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][26] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [26]),
        .Q(\mul_reg_Q_reg[9] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][27] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [27]),
        .Q(\mul_reg_Q_reg[9] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][28] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [28]),
        .Q(\mul_reg_Q_reg[9] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][29] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [29]),
        .Q(\mul_reg_Q_reg[9] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][2] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [2]),
        .Q(\mul_reg_Q_reg[9] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][30] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [30]),
        .Q(\mul_reg_Q_reg[9] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][31] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [31]),
        .Q(\mul_reg_Q_reg[9] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][32] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [32]),
        .Q(\mul_reg_Q_reg[9] [32]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][33] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [33]),
        .Q(\mul_reg_Q_reg[9] [33]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][34] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [34]),
        .Q(\mul_reg_Q_reg[9] [34]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][35] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [35]),
        .Q(\mul_reg_Q_reg[9] [35]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][3] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [3]),
        .Q(\mul_reg_Q_reg[9] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][4] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [4]),
        .Q(\mul_reg_Q_reg[9] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][5] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [5]),
        .Q(\mul_reg_Q_reg[9] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][6] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [6]),
        .Q(\mul_reg_Q_reg[9] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][7] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [7]),
        .Q(\mul_reg_Q_reg[9] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][8] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [8]),
        .Q(\mul_reg_Q_reg[9] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][9] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\mul_reg_Q_reg[10] [9]),
        .Q(\mul_reg_Q_reg[9] [9]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \phase_counter[0]_i_1 
       (.I0(phase_counter[0]),
        .O(\phase_counter[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \phase_counter[1]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .O(filter2fifo_ready1));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_counter[1]_i_2 
       (.I0(phase_counter[1]),
        .I1(phase_counter[0]),
        .O(\phase_counter[1]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_counter_reg[0] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\phase_counter[0]_i_1_n_0 ),
        .Q(phase_counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \phase_counter_reg[1] 
       (.C(clk),
        .CE(filter2fifo_ready1),
        .CLR(reset),
        .D(\phase_counter[1]_i_2_n_0 ),
        .Q(phase_counter[1]));
  LUT3 #(
    .INIT(8'h08)) 
    \tail_tmp[0]_i_1 
       (.I0(m_axis_tvalid),
        .I1(axis_data_fifo_Q_n_1),
        .I2(reset),
        .O(\tail_tmp[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00A8)) 
    \tail_tmp[0]_i_2 
       (.I0(tail_tmp2),
        .I1(phase_counter[1]),
        .I2(phase_counter[0]),
        .I3(reset),
        .O(\tail_tmp[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tail_tmp[0]_i_4 
       (.I0(tail_tmp_reg[0]),
        .O(\tail_tmp[0]_i_4_n_0 ));
  (* ORIG_CELL_NAME = "tail_tmp_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[0] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[0]_i_3_n_15 ),
        .Q(tail_tmp_reg[0]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \tail_tmp_reg[0]_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\tail_tmp_reg[0]_i_3_n_0 ,\tail_tmp_reg[0]_i_3_n_1 ,\tail_tmp_reg[0]_i_3_n_2 ,\tail_tmp_reg[0]_i_3_n_3 ,\tail_tmp_reg[0]_i_3_n_4 ,\tail_tmp_reg[0]_i_3_n_5 ,\tail_tmp_reg[0]_i_3_n_6 ,\tail_tmp_reg[0]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\tail_tmp_reg[0]_i_3_n_8 ,\tail_tmp_reg[0]_i_3_n_9 ,\tail_tmp_reg[0]_i_3_n_10 ,\tail_tmp_reg[0]_i_3_n_11 ,\tail_tmp_reg[0]_i_3_n_12 ,\tail_tmp_reg[0]_i_3_n_13 ,\tail_tmp_reg[0]_i_3_n_14 ,\tail_tmp_reg[0]_i_3_n_15 }),
        .S({tail_tmp_reg[7:1],\tail_tmp[0]_i_4_n_0 }));
  (* ORIG_CELL_NAME = "tail_tmp_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[0]_rep 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[0]_i_3_n_15 ),
        .Q(\tail_tmp_reg[0]_rep_n_0 ),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[10] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[8]_i_1_n_13 ),
        .Q(tail_tmp_reg[10]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[11] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[8]_i_1_n_12 ),
        .Q(tail_tmp_reg[11]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[12] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[8]_i_1_n_11 ),
        .Q(tail_tmp_reg[12]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[13] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[8]_i_1_n_10 ),
        .Q(tail_tmp_reg[13]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[14] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[8]_i_1_n_9 ),
        .Q(tail_tmp_reg[14]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[15] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[8]_i_1_n_8 ),
        .Q(tail_tmp_reg[15]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[16] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[16]_i_1_n_15 ),
        .Q(tail_tmp_reg[16]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \tail_tmp_reg[16]_i_1 
       (.CI(\tail_tmp_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tail_tmp_reg[16]_i_1_n_0 ,\tail_tmp_reg[16]_i_1_n_1 ,\tail_tmp_reg[16]_i_1_n_2 ,\tail_tmp_reg[16]_i_1_n_3 ,\tail_tmp_reg[16]_i_1_n_4 ,\tail_tmp_reg[16]_i_1_n_5 ,\tail_tmp_reg[16]_i_1_n_6 ,\tail_tmp_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\tail_tmp_reg[16]_i_1_n_8 ,\tail_tmp_reg[16]_i_1_n_9 ,\tail_tmp_reg[16]_i_1_n_10 ,\tail_tmp_reg[16]_i_1_n_11 ,\tail_tmp_reg[16]_i_1_n_12 ,\tail_tmp_reg[16]_i_1_n_13 ,\tail_tmp_reg[16]_i_1_n_14 ,\tail_tmp_reg[16]_i_1_n_15 }),
        .S(tail_tmp_reg[23:16]));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[17] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[16]_i_1_n_14 ),
        .Q(tail_tmp_reg[17]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[18] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[16]_i_1_n_13 ),
        .Q(tail_tmp_reg[18]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[19] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[16]_i_1_n_12 ),
        .Q(tail_tmp_reg[19]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[1] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[0]_i_3_n_14 ),
        .Q(tail_tmp_reg[1]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[20] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[16]_i_1_n_11 ),
        .Q(tail_tmp_reg[20]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[21] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[16]_i_1_n_10 ),
        .Q(tail_tmp_reg[21]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[22] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[16]_i_1_n_9 ),
        .Q(tail_tmp_reg[22]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[23] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[16]_i_1_n_8 ),
        .Q(tail_tmp_reg[23]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[24] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[24]_i_1_n_15 ),
        .Q(tail_tmp_reg[24]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \tail_tmp_reg[24]_i_1 
       (.CI(\tail_tmp_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tail_tmp_reg[24]_i_1_CO_UNCONNECTED [7],\tail_tmp_reg[24]_i_1_n_1 ,\tail_tmp_reg[24]_i_1_n_2 ,\tail_tmp_reg[24]_i_1_n_3 ,\tail_tmp_reg[24]_i_1_n_4 ,\tail_tmp_reg[24]_i_1_n_5 ,\tail_tmp_reg[24]_i_1_n_6 ,\tail_tmp_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\tail_tmp_reg[24]_i_1_n_8 ,\tail_tmp_reg[24]_i_1_n_9 ,\tail_tmp_reg[24]_i_1_n_10 ,\tail_tmp_reg[24]_i_1_n_11 ,\tail_tmp_reg[24]_i_1_n_12 ,\tail_tmp_reg[24]_i_1_n_13 ,\tail_tmp_reg[24]_i_1_n_14 ,\tail_tmp_reg[24]_i_1_n_15 }),
        .S(tail_tmp_reg[31:24]));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[25] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[24]_i_1_n_14 ),
        .Q(tail_tmp_reg[25]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[26] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[24]_i_1_n_13 ),
        .Q(tail_tmp_reg[26]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[27] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[24]_i_1_n_12 ),
        .Q(tail_tmp_reg[27]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[28] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[24]_i_1_n_11 ),
        .Q(tail_tmp_reg[28]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[29] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[24]_i_1_n_10 ),
        .Q(tail_tmp_reg[29]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[2] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[0]_i_3_n_13 ),
        .Q(tail_tmp_reg[2]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[30] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[24]_i_1_n_9 ),
        .Q(tail_tmp_reg[30]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[31] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[24]_i_1_n_8 ),
        .Q(tail_tmp_reg[31]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[3] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[0]_i_3_n_12 ),
        .Q(tail_tmp_reg[3]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[4] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[0]_i_3_n_11 ),
        .Q(tail_tmp_reg[4]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[5] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[0]_i_3_n_10 ),
        .Q(tail_tmp_reg[5]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[6] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[0]_i_3_n_9 ),
        .Q(tail_tmp_reg[6]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[7] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[0]_i_3_n_8 ),
        .Q(tail_tmp_reg[7]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[8] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[8]_i_1_n_15 ),
        .Q(tail_tmp_reg[8]),
        .R(\tail_tmp[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \tail_tmp_reg[8]_i_1 
       (.CI(\tail_tmp_reg[0]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tail_tmp_reg[8]_i_1_n_0 ,\tail_tmp_reg[8]_i_1_n_1 ,\tail_tmp_reg[8]_i_1_n_2 ,\tail_tmp_reg[8]_i_1_n_3 ,\tail_tmp_reg[8]_i_1_n_4 ,\tail_tmp_reg[8]_i_1_n_5 ,\tail_tmp_reg[8]_i_1_n_6 ,\tail_tmp_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\tail_tmp_reg[8]_i_1_n_8 ,\tail_tmp_reg[8]_i_1_n_9 ,\tail_tmp_reg[8]_i_1_n_10 ,\tail_tmp_reg[8]_i_1_n_11 ,\tail_tmp_reg[8]_i_1_n_12 ,\tail_tmp_reg[8]_i_1_n_13 ,\tail_tmp_reg[8]_i_1_n_14 ,\tail_tmp_reg[8]_i_1_n_15 }),
        .S(tail_tmp_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \tail_tmp_reg[9] 
       (.C(clk),
        .CE(\tail_tmp[0]_i_2_n_0 ),
        .D(\tail_tmp_reg[8]_i_1_n_14 ),
        .Q(tail_tmp_reg[9]),
        .R(\tail_tmp[0]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "axis_data_fifo_0,axis_data_fifo_v2_0_7_top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axis_data_fifo_v2_0_7_top,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_0
   (s_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    almost_empty,
    almost_full);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_RSTIF RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_aresetn;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_CLKIF CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_CLKIF, ASSOCIATED_BUSIF S_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input s_axis_aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [15:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [15:0]m_axis_tdata;
  output almost_empty;
  output almost_full;

  wire \<const0> ;
  wire [15:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [15:0]s_axis_tdata;
  wire s_axis_tvalid;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign s_axis_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_v2_0_7_top inst
       (.m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* CHECK_LICENSE_TYPE = "axis_data_fifo_0,axis_data_fifo_v2_0_7_top,{}" *) (* ORIG_REF_NAME = "axis_data_fifo_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "axis_data_fifo_v2_0_7_top,Vivado 2021.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_0__xdcDup__1
   (s_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    almost_empty,
    almost_full);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_RSTIF RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_aresetn;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_CLKIF CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_CLKIF, ASSOCIATED_BUSIF S_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input s_axis_aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [15:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [15:0]m_axis_tdata;
  output almost_empty;
  output almost_full;

  wire \<const0> ;
  wire [15:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [15:0]s_axis_tdata;
  wire s_axis_tvalid;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign s_axis_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_v2_0_7_top__xdcDup__1 inst
       (.m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_v2_0_7_top
   (m_axis_tvalid,
    m_axis_tdata,
    s_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tdata,
    m_axis_tready);
  output m_axis_tvalid;
  output [15:0]m_axis_tdata;
  input s_axis_aresetn;
  input s_axis_aclk;
  input s_axis_tvalid;
  input [15:0]s_axis_tdata;
  input m_axis_tready;

  wire \gen_fifo.xpm_fifo_axis_inst_n_0 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_26 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_27 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_28 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_29 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_30 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_31 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_32 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_33 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_34 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_35 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_36 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_37 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_38 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_39 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_40 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_41 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_42 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_43 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_44 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_45 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_46 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_47 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_48 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_49 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_50 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_51 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_52 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_53 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_54 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_55 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_56 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_57 ;
  wire [15:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [15:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tlast_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tuser_UNCONNECTED ;

  (* AXIS_DATA_WIDTH = "24" *) 
  (* AXIS_FINAL_DATA_WIDTH = "24" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_SYNC_STAGES = "3" *) 
  (* CLOCKING_MODE = "common_clock" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_AXIS = "16'b0001100000001000" *) 
  (* EN_ADV_FEATURE_AXIS_INT = "16'b0001100000001000" *) 
  (* EN_ALMOST_EMPTY_INT = "1'b1" *) 
  (* EN_ALMOST_FULL_INT = "1'b1" *) 
  (* EN_DATA_VALID_INT = "1'b1" *) 
  (* FIFO_DEPTH = "4096" *) 
  (* FIFO_MEMORY_TYPE = "block" *) 
  (* LOG_DEPTH_AXIS = "12" *) 
  (* PACKET_FIFO = "false" *) 
  (* PKT_SIZE_LT8 = "1'b0" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "11" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "2" *) 
  (* P_PKT_MODE = "0" *) 
  (* RD_DATA_COUNT_WIDTH = "13" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* TDATA_OFFSET = "16" *) 
  (* TDATA_WIDTH = "16" *) 
  (* TDEST_OFFSET = "22" *) 
  (* TDEST_WIDTH = "1" *) 
  (* TID_OFFSET = "21" *) 
  (* TID_WIDTH = "1" *) 
  (* TKEEP_OFFSET = "20" *) 
  (* TSTRB_OFFSET = "18" *) 
  (* TUSER_MAX_WIDTH = "4073" *) 
  (* TUSER_OFFSET = "23" *) 
  (* TUSER_WIDTH = "1" *) 
  (* USE_ADV_FEATURES = "825765944" *) 
  (* USE_ADV_FEATURES_INT = "825765944" *) 
  (* WR_DATA_COUNT_WIDTH = "13" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis \gen_fifo.xpm_fifo_axis_inst 
       (.almost_empty_axis(\gen_fifo.xpm_fifo_axis_inst_n_55 ),
        .almost_full_axis(\gen_fifo.xpm_fifo_axis_inst_n_40 ),
        .dbiterr_axis(\gen_fifo.xpm_fifo_axis_inst_n_57 ),
        .injectdbiterr_axis(1'b0),
        .injectsbiterr_axis(1'b0),
        .m_aclk(s_axis_aclk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED [0]),
        .m_axis_tid(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED [0]),
        .m_axis_tkeep(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED [1:0]),
        .m_axis_tlast(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tlast_UNCONNECTED ),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED [1:0]),
        .m_axis_tuser(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tuser_UNCONNECTED [0]),
        .m_axis_tvalid(m_axis_tvalid),
        .prog_empty_axis(\gen_fifo.xpm_fifo_axis_inst_n_41 ),
        .prog_full_axis(\gen_fifo.xpm_fifo_axis_inst_n_26 ),
        .rd_data_count_axis({\gen_fifo.xpm_fifo_axis_inst_n_42 ,\gen_fifo.xpm_fifo_axis_inst_n_43 ,\gen_fifo.xpm_fifo_axis_inst_n_44 ,\gen_fifo.xpm_fifo_axis_inst_n_45 ,\gen_fifo.xpm_fifo_axis_inst_n_46 ,\gen_fifo.xpm_fifo_axis_inst_n_47 ,\gen_fifo.xpm_fifo_axis_inst_n_48 ,\gen_fifo.xpm_fifo_axis_inst_n_49 ,\gen_fifo.xpm_fifo_axis_inst_n_50 ,\gen_fifo.xpm_fifo_axis_inst_n_51 ,\gen_fifo.xpm_fifo_axis_inst_n_52 ,\gen_fifo.xpm_fifo_axis_inst_n_53 ,\gen_fifo.xpm_fifo_axis_inst_n_54 }),
        .s_aclk(s_axis_aclk),
        .s_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep({1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(\gen_fifo.xpm_fifo_axis_inst_n_0 ),
        .s_axis_tstrb({1'b0,1'b0}),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid),
        .sbiterr_axis(\gen_fifo.xpm_fifo_axis_inst_n_56 ),
        .wr_data_count_axis({\gen_fifo.xpm_fifo_axis_inst_n_27 ,\gen_fifo.xpm_fifo_axis_inst_n_28 ,\gen_fifo.xpm_fifo_axis_inst_n_29 ,\gen_fifo.xpm_fifo_axis_inst_n_30 ,\gen_fifo.xpm_fifo_axis_inst_n_31 ,\gen_fifo.xpm_fifo_axis_inst_n_32 ,\gen_fifo.xpm_fifo_axis_inst_n_33 ,\gen_fifo.xpm_fifo_axis_inst_n_34 ,\gen_fifo.xpm_fifo_axis_inst_n_35 ,\gen_fifo.xpm_fifo_axis_inst_n_36 ,\gen_fifo.xpm_fifo_axis_inst_n_37 ,\gen_fifo.xpm_fifo_axis_inst_n_38 ,\gen_fifo.xpm_fifo_axis_inst_n_39 }));
endmodule

(* ORIG_REF_NAME = "axis_data_fifo_v2_0_7_top" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_v2_0_7_top__xdcDup__1
   (m_axis_tvalid,
    m_axis_tdata,
    s_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tdata,
    m_axis_tready);
  output m_axis_tvalid;
  output [15:0]m_axis_tdata;
  input s_axis_aresetn;
  input s_axis_aclk;
  input s_axis_tvalid;
  input [15:0]s_axis_tdata;
  input m_axis_tready;

  wire \gen_fifo.xpm_fifo_axis_inst_n_0 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_26 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_27 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_28 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_29 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_30 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_31 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_32 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_33 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_34 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_35 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_36 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_37 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_38 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_39 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_40 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_41 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_42 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_43 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_44 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_45 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_46 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_47 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_48 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_49 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_50 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_51 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_52 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_53 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_54 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_55 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_56 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_57 ;
  wire [15:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [15:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tlast_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tuser_UNCONNECTED ;

  (* AXIS_DATA_WIDTH = "24" *) 
  (* AXIS_FINAL_DATA_WIDTH = "24" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_SYNC_STAGES = "3" *) 
  (* CLOCKING_MODE = "common_clock" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_AXIS = "16'b0001100000001000" *) 
  (* EN_ADV_FEATURE_AXIS_INT = "16'b0001100000001000" *) 
  (* EN_ALMOST_EMPTY_INT = "1'b1" *) 
  (* EN_ALMOST_FULL_INT = "1'b1" *) 
  (* EN_DATA_VALID_INT = "1'b1" *) 
  (* FIFO_DEPTH = "4096" *) 
  (* FIFO_MEMORY_TYPE = "block" *) 
  (* LOG_DEPTH_AXIS = "12" *) 
  (* PACKET_FIFO = "false" *) 
  (* PKT_SIZE_LT8 = "1'b0" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "11" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "2" *) 
  (* P_PKT_MODE = "0" *) 
  (* RD_DATA_COUNT_WIDTH = "13" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* TDATA_OFFSET = "16" *) 
  (* TDATA_WIDTH = "16" *) 
  (* TDEST_OFFSET = "22" *) 
  (* TDEST_WIDTH = "1" *) 
  (* TID_OFFSET = "21" *) 
  (* TID_WIDTH = "1" *) 
  (* TKEEP_OFFSET = "20" *) 
  (* TSTRB_OFFSET = "18" *) 
  (* TUSER_MAX_WIDTH = "4073" *) 
  (* TUSER_OFFSET = "23" *) 
  (* TUSER_WIDTH = "1" *) 
  (* USE_ADV_FEATURES = "825765944" *) 
  (* USE_ADV_FEATURES_INT = "825765944" *) 
  (* WR_DATA_COUNT_WIDTH = "13" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1 \gen_fifo.xpm_fifo_axis_inst 
       (.almost_empty_axis(\gen_fifo.xpm_fifo_axis_inst_n_55 ),
        .almost_full_axis(\gen_fifo.xpm_fifo_axis_inst_n_40 ),
        .dbiterr_axis(\gen_fifo.xpm_fifo_axis_inst_n_57 ),
        .injectdbiterr_axis(1'b0),
        .injectsbiterr_axis(1'b0),
        .m_aclk(s_axis_aclk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED [0]),
        .m_axis_tid(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED [0]),
        .m_axis_tkeep(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED [1:0]),
        .m_axis_tlast(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tlast_UNCONNECTED ),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED [1:0]),
        .m_axis_tuser(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tuser_UNCONNECTED [0]),
        .m_axis_tvalid(m_axis_tvalid),
        .prog_empty_axis(\gen_fifo.xpm_fifo_axis_inst_n_41 ),
        .prog_full_axis(\gen_fifo.xpm_fifo_axis_inst_n_26 ),
        .rd_data_count_axis({\gen_fifo.xpm_fifo_axis_inst_n_42 ,\gen_fifo.xpm_fifo_axis_inst_n_43 ,\gen_fifo.xpm_fifo_axis_inst_n_44 ,\gen_fifo.xpm_fifo_axis_inst_n_45 ,\gen_fifo.xpm_fifo_axis_inst_n_46 ,\gen_fifo.xpm_fifo_axis_inst_n_47 ,\gen_fifo.xpm_fifo_axis_inst_n_48 ,\gen_fifo.xpm_fifo_axis_inst_n_49 ,\gen_fifo.xpm_fifo_axis_inst_n_50 ,\gen_fifo.xpm_fifo_axis_inst_n_51 ,\gen_fifo.xpm_fifo_axis_inst_n_52 ,\gen_fifo.xpm_fifo_axis_inst_n_53 ,\gen_fifo.xpm_fifo_axis_inst_n_54 }),
        .s_aclk(s_axis_aclk),
        .s_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep({1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(\gen_fifo.xpm_fifo_axis_inst_n_0 ),
        .s_axis_tstrb({1'b0,1'b0}),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid),
        .sbiterr_axis(\gen_fifo.xpm_fifo_axis_inst_n_56 ),
        .wr_data_count_axis({\gen_fifo.xpm_fifo_axis_inst_n_27 ,\gen_fifo.xpm_fifo_axis_inst_n_28 ,\gen_fifo.xpm_fifo_axis_inst_n_29 ,\gen_fifo.xpm_fifo_axis_inst_n_30 ,\gen_fifo.xpm_fifo_axis_inst_n_31 ,\gen_fifo.xpm_fifo_axis_inst_n_32 ,\gen_fifo.xpm_fifo_axis_inst_n_33 ,\gen_fifo.xpm_fifo_axis_inst_n_34 ,\gen_fifo.xpm_fifo_axis_inst_n_35 ,\gen_fifo.xpm_fifo_axis_inst_n_36 ,\gen_fifo.xpm_fifo_axis_inst_n_37 ,\gen_fifo.xpm_fifo_axis_inst_n_38 ,\gen_fifo.xpm_fifo_axis_inst_n_39 }));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "4" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [3:0]syncstages_ff;

  assign dest_rst = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "4" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [3:0]syncstages_ff;

  assign dest_rst = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0
   (Q,
    ram_wr_en_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[1]_0 ,
    rst_d1,
    wr_clk);
  output [11:0]Q;
  input ram_wr_en_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[1]_0 ;
  input rst_d1;
  input wr_clk;

  wire [11:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[10]_i_1_n_0 ;
  wire \count_value_i[11]_i_1_n_0 ;
  wire \count_value_i[11]_i_2_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[8]_i_1_n_0 ;
  wire \count_value_i[9]_i_1_n_0 ;
  wire \count_value_i[9]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire ram_wr_en_i;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1 
       (.I0(Q[8]),
        .I1(\count_value_i[11]_i_2_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[11]_i_1 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(\count_value_i[11]_i_2_n_0 ),
        .I3(Q[8]),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(\count_value_i[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[11]_i_2 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[1]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_i),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[10]_i_1_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[11]_i_1_n_0 ),
        .Q(Q[11]),
        .R(\count_value_i_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .S(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_7
   (Q,
    ram_wr_en_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[1]_0 ,
    rst_d1,
    wr_clk);
  output [11:0]Q;
  input ram_wr_en_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[1]_0 ;
  input rst_d1;
  input wr_clk;

  wire [11:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[10]_i_1_n_0 ;
  wire \count_value_i[11]_i_1_n_0 ;
  wire \count_value_i[11]_i_2_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[8]_i_1_n_0 ;
  wire \count_value_i[9]_i_1_n_0 ;
  wire \count_value_i[9]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire ram_wr_en_i;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1 
       (.I0(Q[8]),
        .I1(\count_value_i[11]_i_2_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[11]_i_1 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(\count_value_i[11]_i_2_n_0 ),
        .I3(Q[8]),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(\count_value_i[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[11]_i_2 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[1]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_i),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[10]_i_1_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[11]_i_1_n_0 ),
        .Q(Q[11]),
        .R(\count_value_i_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .S(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2
   (going_afull,
    Q,
    leaving_empty0,
    going_full1,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    \count_value_i_reg[0]_0 ,
    ram_wr_en_i,
    \count_value_i_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 ,
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 ,
    clr_full,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ,
    \count_value_i_reg[11]_0 ,
    wr_clk);
  output going_afull;
  output [11:0]Q;
  output leaving_empty0;
  output going_full1;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input \count_value_i_reg[0]_0 ;
  input ram_wr_en_i;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [11:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 ;
  input [11:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 ;
  input [11:0]\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 ;
  input clr_full;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  input [0:0]\count_value_i_reg[11]_0 ;
  input wr_clk;

  wire [11:0]Q;
  wire clr_full;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[10]_i_1__2_n_0 ;
  wire \count_value_i[11]_i_1__2_n_0 ;
  wire \count_value_i[11]_i_2__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_2__2_n_0 ;
  wire \count_value_i[7]_i_1__2_n_0 ;
  wire \count_value_i[8]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_2__2_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[11]_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire [11:0]\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 ;
  wire \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_8_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12_n_0 ;
  wire [11:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 ;
  wire [11:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  wire going_afull;
  wire going_full1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_wr_en_i;
  wire rd_en;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1__2 
       (.I0(Q[8]),
        .I1(\count_value_i[11]_i_2__2_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[11]_i_1__2 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(\count_value_i[11]_i_2__2_n_0 ),
        .I3(Q[8]),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(\count_value_i[11]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[11]_i_2__2 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2__2_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[11]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__2 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 [1]),
        .I2(\count_value_i_reg[1]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__2 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__2 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__2 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[10]_i_1__2_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[11]_i_1__2_n_0 ),
        .Q(Q[11]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[7]_i_1__2_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[8]_i_1__2_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[9]_i_1__2_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[11]_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3 
       (.I0(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_5_n_0 ),
        .I1(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_6_n_0 ),
        .I2(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_7_n_0 ),
        .I3(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_8_n_0 ),
        .I4(\count_value_i_reg[0]_0 ),
        .I5(ram_wr_en_i),
        .O(going_afull));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_5 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [6]),
        .I2(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_6 
       (.I0(Q[9]),
        .I1(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [9]),
        .I2(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [11]),
        .I3(Q[11]),
        .I4(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [10]),
        .I5(Q[10]),
        .O(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_7 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [0]),
        .I2(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_8 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [3]),
        .I2(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B2A2A2A)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(leaving_empty0),
        .I3(going_full1),
        .I4(ram_wr_en_i),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ));
  LUT6 #(
    .INIT(64'hFFAAAAAAFFFFBFBF)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1 
       (.I0(clr_full),
        .I1(ram_wr_en_i),
        .I2(going_full1),
        .I3(leaving_empty0),
        .I4(\count_value_i_reg[0]_0 ),
        .I5(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11 
       (.I0(Q[9]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [9]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [11]),
        .I3(Q[11]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [10]),
        .I5(Q[10]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [6]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ),
        .O(going_full1));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0 ),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0 ),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11_n_0 ),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12_n_0 ),
        .O(leaving_empty0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7 
       (.I0(Q[9]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 [9]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 [11]),
        .I3(Q[11]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 [10]),
        .I5(Q[10]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 [6]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_0
   (Q,
    ram_empty_i0,
    ram_wr_en_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[0]_0 ,
    rst_d1,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    leaving_empty0,
    ram_empty_i,
    \gen_pntr_flags_cc.ram_empty_i_i_2_0 ,
    wr_clk);
  output [11:0]Q;
  output ram_empty_i0;
  input ram_wr_en_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input rst_d1;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input leaving_empty0;
  input ram_empty_i;
  input [11:0]\gen_pntr_flags_cc.ram_empty_i_i_2_0 ;
  input wr_clk;

  wire [11:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[10]_i_1__0_n_0 ;
  wire \count_value_i[11]_i_1__0_n_0 ;
  wire \count_value_i[11]_i_2__0_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_2__0_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire [11:0]\gen_pntr_flags_cc.ram_empty_i_i_2_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire going_empty1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_i;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1__0 
       (.I0(Q[8]),
        .I1(\count_value_i[11]_i_2__0_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[11]_i_1__0 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(\count_value_i[11]_i_2__0_n_0 ),
        .I3(Q[8]),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(\count_value_i[11]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[11]_i_2__0 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2__0_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[11]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__0 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__0 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__0_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_i),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[10]_i_1__0_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[11]_i_1__0_n_0 ),
        .Q(Q[11]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[9]_i_1__0_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(going_empty1),
        .I2(leaving_empty0),
        .I3(ram_wr_en_i),
        .I4(ram_empty_i),
        .O(ram_empty_i0));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ),
        .I3(\gen_pntr_flags_cc.ram_empty_i_i_6_n_0 ),
        .O(going_empty1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_5 
       (.I0(Q[9]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [9]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [11]),
        .I3(Q[11]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [10]),
        .I5(Q[10]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_6 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [6]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_6_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_2
   (going_afull,
    Q,
    leaving_empty0,
    going_full1,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    \count_value_i_reg[0]_0 ,
    ram_wr_en_i,
    \count_value_i_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 ,
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 ,
    clr_full,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ,
    \count_value_i_reg[11]_0 ,
    wr_clk);
  output going_afull;
  output [11:0]Q;
  output leaving_empty0;
  output going_full1;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input \count_value_i_reg[0]_0 ;
  input ram_wr_en_i;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [11:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 ;
  input [11:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 ;
  input [11:0]\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 ;
  input clr_full;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  input [0:0]\count_value_i_reg[11]_0 ;
  input wr_clk;

  wire [11:0]Q;
  wire clr_full;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[10]_i_1__2_n_0 ;
  wire \count_value_i[11]_i_1__2_n_0 ;
  wire \count_value_i[11]_i_2__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_2__2_n_0 ;
  wire \count_value_i[7]_i_1__2_n_0 ;
  wire \count_value_i[8]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_2__2_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[11]_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire [11:0]\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 ;
  wire \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_8_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12_n_0 ;
  wire [11:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 ;
  wire [11:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  wire going_afull;
  wire going_full1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_wr_en_i;
  wire rd_en;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1__2 
       (.I0(Q[8]),
        .I1(\count_value_i[11]_i_2__2_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[11]_i_1__2 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(\count_value_i[11]_i_2__2_n_0 ),
        .I3(Q[8]),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(\count_value_i[11]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[11]_i_2__2 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2__2_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[11]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__2 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 [1]),
        .I2(\count_value_i_reg[1]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__2 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__2 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__2 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[10]_i_1__2_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[11]_i_1__2_n_0 ),
        .Q(Q[11]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[7]_i_1__2_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[8]_i_1__2_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[9]_i_1__2_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[11]_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3 
       (.I0(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_5_n_0 ),
        .I1(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_6_n_0 ),
        .I2(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_7_n_0 ),
        .I3(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_8_n_0 ),
        .I4(\count_value_i_reg[0]_0 ),
        .I5(ram_wr_en_i),
        .O(going_afull));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_5 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [6]),
        .I2(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_6 
       (.I0(Q[9]),
        .I1(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [9]),
        .I2(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [11]),
        .I3(Q[11]),
        .I4(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [10]),
        .I5(Q[10]),
        .O(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_7 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [0]),
        .I2(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_8 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [3]),
        .I2(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B2A2A2A)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(leaving_empty0),
        .I3(going_full1),
        .I4(ram_wr_en_i),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ));
  LUT6 #(
    .INIT(64'hFFAAAAAAFFFFBFBF)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1 
       (.I0(clr_full),
        .I1(ram_wr_en_i),
        .I2(going_full1),
        .I3(leaving_empty0),
        .I4(\count_value_i_reg[0]_0 ),
        .I5(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11 
       (.I0(Q[9]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [9]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [11]),
        .I3(Q[11]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [10]),
        .I5(Q[10]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [6]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ),
        .O(going_full1));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0 ),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0 ),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11_n_0 ),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12_n_0 ),
        .O(leaving_empty0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7 
       (.I0(Q[9]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 [9]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 [11]),
        .I3(Q[11]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 [10]),
        .I5(Q[10]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 [6]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_5
   (Q,
    ram_empty_i0,
    ram_wr_en_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[0]_0 ,
    rst_d1,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    leaving_empty0,
    ram_empty_i,
    \gen_pntr_flags_cc.ram_empty_i_i_2_0 ,
    wr_clk);
  output [11:0]Q;
  output ram_empty_i0;
  input ram_wr_en_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input rst_d1;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input leaving_empty0;
  input ram_empty_i;
  input [11:0]\gen_pntr_flags_cc.ram_empty_i_i_2_0 ;
  input wr_clk;

  wire [11:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[10]_i_1__0_n_0 ;
  wire \count_value_i[11]_i_1__0_n_0 ;
  wire \count_value_i[11]_i_2__0_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_2__0_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire [11:0]\gen_pntr_flags_cc.ram_empty_i_i_2_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire going_empty1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_i;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1__0 
       (.I0(Q[8]),
        .I1(\count_value_i[11]_i_2__0_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[11]_i_1__0 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(\count_value_i[11]_i_2__0_n_0 ),
        .I3(Q[8]),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(\count_value_i[11]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[11]_i_2__0 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2__0_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[11]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__0 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__0 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__0_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_i),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[10]_i_1__0_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[11]_i_1__0_n_0 ),
        .Q(Q[11]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[9]_i_1__0_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(going_empty1),
        .I2(leaving_empty0),
        .I3(ram_wr_en_i),
        .I4(ram_empty_i),
        .O(ram_empty_i0));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ),
        .I3(\gen_pntr_flags_cc.ram_empty_i_i_6_n_0 ),
        .O(going_empty1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_5 
       (.I0(Q[9]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [9]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [11]),
        .I3(Q[11]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [10]),
        .I5(Q[10]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_6 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [6]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_6_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3
   (Q,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[1]_0 ,
    wr_clk);
  output [11:0]Q;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[1]_0 ;
  input wr_clk;

  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [11:0]Q;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[10]_i_1__3_n_0 ;
  wire \count_value_i[11]_i_1__3_n_0 ;
  wire \count_value_i[11]_i_2__3_n_0 ;
  wire \count_value_i[1]_i_1__3_n_0 ;
  wire \count_value_i[2]_i_1__3_n_0 ;
  wire \count_value_i[3]_i_1__3_n_0 ;
  wire \count_value_i[4]_i_1__3_n_0 ;
  wire \count_value_i[5]_i_1__3_n_0 ;
  wire \count_value_i[6]_i_1__3_n_0 ;
  wire \count_value_i[6]_i_2__3_n_0 ;
  wire \count_value_i[7]_i_1__3_n_0 ;
  wire \count_value_i[8]_i_1__3_n_0 ;
  wire \count_value_i[9]_i_1__3_n_0 ;
  wire \count_value_i[9]_i_2__3_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__3 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1__3 
       (.I0(Q[8]),
        .I1(\count_value_i[11]_i_2__3_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[11]_i_1__3 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(\count_value_i[11]_i_2__3_n_0 ),
        .I3(Q[8]),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(\count_value_i[11]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[11]_i_2__3 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2__3_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[11]_i_2__3_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__3 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__3 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__3_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__3 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__3_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__3 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__3 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__3_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__3 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__3_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__3 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__3_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__3 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[10]_i_1__3_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[11]_i_1__3_n_0 ),
        .Q(Q[11]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__3_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__3_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__3_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[4]_i_1__3_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[5]_i_1__3_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[6]_i_1__3_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[7]_i_1__3_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[8]_i_1__3_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[9]_i_1__3_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_1
   (Q,
    ram_wr_en_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[1]_0 ,
    rst_d1,
    wr_clk);
  output [11:0]Q;
  input ram_wr_en_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[1]_0 ;
  input rst_d1;
  input wr_clk;

  wire [11:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[10]_i_1__1_n_0 ;
  wire \count_value_i[11]_i_1__1_n_0 ;
  wire \count_value_i[11]_i_2__1_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_2__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[8]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_2__1_n_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire ram_wr_en_i;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1__1 
       (.I0(Q[8]),
        .I1(\count_value_i[11]_i_2__1_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[11]_i_1__1 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(\count_value_i[11]_i_2__1_n_0 ),
        .I3(Q[8]),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(\count_value_i[11]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[11]_i_2__1 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2__1_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[11]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__1_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__1 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[1]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__1_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_i),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[10]_i_1__1_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[11]_i_1__1_n_0 ),
        .Q(Q[11]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[8]_i_1__1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[9]_i_1__1_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_3
   (Q,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[1]_0 ,
    wr_clk);
  output [11:0]Q;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[1]_0 ;
  input wr_clk;

  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [11:0]Q;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[10]_i_1__3_n_0 ;
  wire \count_value_i[11]_i_1__3_n_0 ;
  wire \count_value_i[11]_i_2__3_n_0 ;
  wire \count_value_i[1]_i_1__3_n_0 ;
  wire \count_value_i[2]_i_1__3_n_0 ;
  wire \count_value_i[3]_i_1__3_n_0 ;
  wire \count_value_i[4]_i_1__3_n_0 ;
  wire \count_value_i[5]_i_1__3_n_0 ;
  wire \count_value_i[6]_i_1__3_n_0 ;
  wire \count_value_i[6]_i_2__3_n_0 ;
  wire \count_value_i[7]_i_1__3_n_0 ;
  wire \count_value_i[8]_i_1__3_n_0 ;
  wire \count_value_i[9]_i_1__3_n_0 ;
  wire \count_value_i[9]_i_2__3_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__3 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1__3 
       (.I0(Q[8]),
        .I1(\count_value_i[11]_i_2__3_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[11]_i_1__3 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(\count_value_i[11]_i_2__3_n_0 ),
        .I3(Q[8]),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(\count_value_i[11]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[11]_i_2__3 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2__3_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[11]_i_2__3_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__3 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__3 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__3_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__3 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__3_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__3 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__3 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__3_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__3 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__3_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__3 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__3_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__3 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[10]_i_1__3_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[11]_i_1__3_n_0 ),
        .Q(Q[11]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__3_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__3_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__3_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[4]_i_1__3_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[5]_i_1__3_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[6]_i_1__3_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[7]_i_1__3_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[8]_i_1__3_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[9]_i_1__3_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_6
   (Q,
    ram_wr_en_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[1]_0 ,
    rst_d1,
    wr_clk);
  output [11:0]Q;
  input ram_wr_en_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[1]_0 ;
  input rst_d1;
  input wr_clk;

  wire [11:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[10]_i_1__1_n_0 ;
  wire \count_value_i[11]_i_1__1_n_0 ;
  wire \count_value_i[11]_i_2__1_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_2__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[8]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_2__1_n_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire ram_wr_en_i;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1__1 
       (.I0(Q[8]),
        .I1(\count_value_i[11]_i_2__1_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[11]_i_1__1 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(\count_value_i[11]_i_2__1_n_0 ),
        .I3(Q[8]),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(\count_value_i[11]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[11]_i_2__1 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2__1_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[11]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__1_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__1 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[1]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__1_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_i),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[10]_i_1__1_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[11]_i_1__1_n_0 ),
        .Q(Q[11]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[8]_i_1__1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[9]_i_1__1_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[1]_0 ));
endmodule

(* AXIS_DATA_WIDTH = "24" *) (* AXIS_FINAL_DATA_WIDTH = "24" *) (* CASCADE_HEIGHT = "0" *) 
(* CDC_SYNC_STAGES = "3" *) (* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_AXIS = "16'b0001100000001000" *) (* EN_ADV_FEATURE_AXIS_INT = "16'b0001100000001000" *) (* EN_ALMOST_EMPTY_INT = "1'b1" *) 
(* EN_ALMOST_FULL_INT = "1'b1" *) (* EN_DATA_VALID_INT = "1'b1" *) (* FIFO_DEPTH = "4096" *) 
(* FIFO_MEMORY_TYPE = "block" *) (* LOG_DEPTH_AXIS = "12" *) (* PACKET_FIFO = "false" *) 
(* PKT_SIZE_LT8 = "1'b0" *) (* PROG_EMPTY_THRESH = "5" *) (* PROG_FULL_THRESH = "11" *) 
(* P_COMMON_CLOCK = "1" *) (* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "2" *) 
(* P_PKT_MODE = "0" *) (* RD_DATA_COUNT_WIDTH = "13" *) (* RELATED_CLOCKS = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* TDATA_OFFSET = "16" *) (* TDATA_WIDTH = "16" *) 
(* TDEST_OFFSET = "22" *) (* TDEST_WIDTH = "1" *) (* TID_OFFSET = "21" *) 
(* TID_WIDTH = "1" *) (* TKEEP_OFFSET = "20" *) (* TSTRB_OFFSET = "18" *) 
(* TUSER_MAX_WIDTH = "4073" *) (* TUSER_OFFSET = "23" *) (* TUSER_WIDTH = "1" *) 
(* USE_ADV_FEATURES = "825765944" *) (* USE_ADV_FEATURES_INT = "825765944" *) (* WR_DATA_COUNT_WIDTH = "13" *) 
(* XPM_MODULE = "TRUE" *) (* dont_touch = "true" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis
   (s_aresetn,
    s_aclk,
    m_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    prog_full_axis,
    wr_data_count_axis,
    almost_full_axis,
    prog_empty_axis,
    rd_data_count_axis,
    almost_empty_axis,
    injectsbiterr_axis,
    injectdbiterr_axis,
    sbiterr_axis,
    dbiterr_axis);
  input s_aresetn;
  input s_aclk;
  input m_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input [15:0]s_axis_tdata;
  input [1:0]s_axis_tstrb;
  input [1:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [15:0]m_axis_tdata;
  output [1:0]m_axis_tstrb;
  output [1:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output prog_full_axis;
  output [12:0]wr_data_count_axis;
  output almost_full_axis;
  output prog_empty_axis;
  output [12:0]rd_data_count_axis;
  output almost_empty_axis;
  input injectsbiterr_axis;
  input injectdbiterr_axis;
  output sbiterr_axis;
  output dbiterr_axis;

  wire \<const0> ;
  wire almost_empty_axis;
  wire almost_full_axis;
  wire \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ;
  wire [15:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [1:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [1:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire rst_axis;
  wire s_aclk;
  wire s_aresetn;
  wire [15:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [1:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [1:0]s_axis_tstrb;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire xpm_fifo_base_inst_i_1_n_0;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [12:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [12:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign dbiterr_axis = \<const0> ;
  assign prog_empty_axis = \<const0> ;
  assign prog_full_axis = \<const0> ;
  assign rd_data_count_axis[12] = \<const0> ;
  assign rd_data_count_axis[11] = \<const0> ;
  assign rd_data_count_axis[10] = \<const0> ;
  assign rd_data_count_axis[9] = \<const0> ;
  assign rd_data_count_axis[8] = \<const0> ;
  assign rd_data_count_axis[7] = \<const0> ;
  assign rd_data_count_axis[6] = \<const0> ;
  assign rd_data_count_axis[5] = \<const0> ;
  assign rd_data_count_axis[4] = \<const0> ;
  assign rd_data_count_axis[3] = \<const0> ;
  assign rd_data_count_axis[2] = \<const0> ;
  assign rd_data_count_axis[1] = \<const0> ;
  assign rd_data_count_axis[0] = \<const0> ;
  assign sbiterr_axis = \<const0> ;
  assign wr_data_count_axis[12] = \<const0> ;
  assign wr_data_count_axis[11] = \<const0> ;
  assign wr_data_count_axis[10] = \<const0> ;
  assign wr_data_count_axis[9] = \<const0> ;
  assign wr_data_count_axis[8] = \<const0> ;
  assign wr_data_count_axis[7] = \<const0> ;
  assign wr_data_count_axis[6] = \<const0> ;
  assign wr_data_count_axis[5] = \<const0> ;
  assign wr_data_count_axis[4] = \<const0> ;
  assign wr_data_count_axis[3] = \<const0> ;
  assign wr_data_count_axis[2] = \<const0> ;
  assign wr_data_count_axis[1] = \<const0> ;
  assign wr_data_count_axis[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst \gaxis_rst_sync.xpm_cdc_sync_rst_inst 
       (.dest_clk(s_aclk),
        .dest_rst(rst_axis),
        .src_rst(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1 
       (.I0(s_aresetn),
        .O(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "3" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001100000001000" *) 
  (* EN_AE = "1'b1" *) 
  (* EN_AF = "1'b1" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b0" *) 
  (* EN_PE = "1'b0" *) 
  (* EN_PF = "1'b0" *) 
  (* EN_RDC = "1'b0" *) 
  (* EN_UF = "1'b0" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b0" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "2" *) 
  (* FIFO_MEM_TYPE = "2" *) 
  (* FIFO_READ_DEPTH = "4096" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "98304" *) 
  (* FIFO_WRITE_DEPTH = "4096" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "3" *) 
  (* PE_THRESH_MAX = "4091" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "9" *) 
  (* PF_THRESH_MAX = "4091" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "11" *) 
  (* RD_DATA_COUNT_WIDTH = "13" *) 
  (* RD_DC_WIDTH_EXT = "13" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "12" *) 
  (* READ_DATA_WIDTH = "24" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "825765944" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "24" *) 
  (* WR_DATA_COUNT_WIDTH = "13" *) 
  (* WR_DC_WIDTH_EXT = "13" *) 
  (* WR_DEPTH_LOG = "12" *) 
  (* WR_PNTR_WIDTH = "12" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "5" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base xpm_fifo_base_inst
       (.almost_empty(almost_empty_axis),
        .almost_full(almost_full_axis),
        .data_valid(m_axis_tvalid),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din({s_axis_tlast,s_axis_tuser,s_axis_tdest,s_axis_tid,s_axis_tkeep,s_axis_tstrb,s_axis_tdata}),
        .dout({m_axis_tlast,m_axis_tuser,m_axis_tdest,m_axis_tid,m_axis_tkeep,m_axis_tstrb,m_axis_tdata}),
        .empty(NLW_xpm_fifo_base_inst_empty_UNCONNECTED),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(s_axis_tready),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(1'b0),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[12:0]),
        .rd_en(xpm_fifo_base_inst_i_1_n_0),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst_axis),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(s_aclk),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[12:0]),
        .wr_en(s_axis_tvalid),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    xpm_fifo_base_inst_i_1
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .O(xpm_fifo_base_inst_i_1_n_0));
endmodule

(* AXIS_DATA_WIDTH = "24" *) (* AXIS_FINAL_DATA_WIDTH = "24" *) (* CASCADE_HEIGHT = "0" *) 
(* CDC_SYNC_STAGES = "3" *) (* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_AXIS = "16'b0001100000001000" *) (* EN_ADV_FEATURE_AXIS_INT = "16'b0001100000001000" *) (* EN_ALMOST_EMPTY_INT = "1'b1" *) 
(* EN_ALMOST_FULL_INT = "1'b1" *) (* EN_DATA_VALID_INT = "1'b1" *) (* FIFO_DEPTH = "4096" *) 
(* FIFO_MEMORY_TYPE = "block" *) (* LOG_DEPTH_AXIS = "12" *) (* ORIG_REF_NAME = "xpm_fifo_axis" *) 
(* PACKET_FIFO = "false" *) (* PKT_SIZE_LT8 = "1'b0" *) (* PROG_EMPTY_THRESH = "5" *) 
(* PROG_FULL_THRESH = "11" *) (* P_COMMON_CLOCK = "1" *) (* P_ECC_MODE = "0" *) 
(* P_FIFO_MEMORY_TYPE = "2" *) (* P_PKT_MODE = "0" *) (* RD_DATA_COUNT_WIDTH = "13" *) 
(* RELATED_CLOCKS = "0" *) (* SIM_ASSERT_CHK = "0" *) (* TDATA_OFFSET = "16" *) 
(* TDATA_WIDTH = "16" *) (* TDEST_OFFSET = "22" *) (* TDEST_WIDTH = "1" *) 
(* TID_OFFSET = "21" *) (* TID_WIDTH = "1" *) (* TKEEP_OFFSET = "20" *) 
(* TSTRB_OFFSET = "18" *) (* TUSER_MAX_WIDTH = "4073" *) (* TUSER_OFFSET = "23" *) 
(* TUSER_WIDTH = "1" *) (* USE_ADV_FEATURES = "825765944" *) (* USE_ADV_FEATURES_INT = "825765944" *) 
(* WR_DATA_COUNT_WIDTH = "13" *) (* XPM_MODULE = "TRUE" *) (* dont_touch = "true" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__xdcDup__1
   (s_aresetn,
    s_aclk,
    m_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    prog_full_axis,
    wr_data_count_axis,
    almost_full_axis,
    prog_empty_axis,
    rd_data_count_axis,
    almost_empty_axis,
    injectsbiterr_axis,
    injectdbiterr_axis,
    sbiterr_axis,
    dbiterr_axis);
  input s_aresetn;
  input s_aclk;
  input m_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input [15:0]s_axis_tdata;
  input [1:0]s_axis_tstrb;
  input [1:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [15:0]m_axis_tdata;
  output [1:0]m_axis_tstrb;
  output [1:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output prog_full_axis;
  output [12:0]wr_data_count_axis;
  output almost_full_axis;
  output prog_empty_axis;
  output [12:0]rd_data_count_axis;
  output almost_empty_axis;
  input injectsbiterr_axis;
  input injectdbiterr_axis;
  output sbiterr_axis;
  output dbiterr_axis;

  wire \<const0> ;
  wire almost_empty_axis;
  wire almost_full_axis;
  wire \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ;
  wire [15:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [1:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [1:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire rst_axis;
  wire s_aclk;
  wire s_aresetn;
  wire [15:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [1:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [1:0]s_axis_tstrb;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire xpm_fifo_base_inst_i_1_n_0;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [12:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [12:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign dbiterr_axis = \<const0> ;
  assign prog_empty_axis = \<const0> ;
  assign prog_full_axis = \<const0> ;
  assign rd_data_count_axis[12] = \<const0> ;
  assign rd_data_count_axis[11] = \<const0> ;
  assign rd_data_count_axis[10] = \<const0> ;
  assign rd_data_count_axis[9] = \<const0> ;
  assign rd_data_count_axis[8] = \<const0> ;
  assign rd_data_count_axis[7] = \<const0> ;
  assign rd_data_count_axis[6] = \<const0> ;
  assign rd_data_count_axis[5] = \<const0> ;
  assign rd_data_count_axis[4] = \<const0> ;
  assign rd_data_count_axis[3] = \<const0> ;
  assign rd_data_count_axis[2] = \<const0> ;
  assign rd_data_count_axis[1] = \<const0> ;
  assign rd_data_count_axis[0] = \<const0> ;
  assign sbiterr_axis = \<const0> ;
  assign wr_data_count_axis[12] = \<const0> ;
  assign wr_data_count_axis[11] = \<const0> ;
  assign wr_data_count_axis[10] = \<const0> ;
  assign wr_data_count_axis[9] = \<const0> ;
  assign wr_data_count_axis[8] = \<const0> ;
  assign wr_data_count_axis[7] = \<const0> ;
  assign wr_data_count_axis[6] = \<const0> ;
  assign wr_data_count_axis[5] = \<const0> ;
  assign wr_data_count_axis[4] = \<const0> ;
  assign wr_data_count_axis[3] = \<const0> ;
  assign wr_data_count_axis[2] = \<const0> ;
  assign wr_data_count_axis[1] = \<const0> ;
  assign wr_data_count_axis[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2 \gaxis_rst_sync.xpm_cdc_sync_rst_inst 
       (.dest_clk(s_aclk),
        .dest_rst(rst_axis),
        .src_rst(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1 
       (.I0(s_aresetn),
        .O(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "3" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001100000001000" *) 
  (* EN_AE = "1'b1" *) 
  (* EN_AF = "1'b1" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b0" *) 
  (* EN_PE = "1'b0" *) 
  (* EN_PF = "1'b0" *) 
  (* EN_RDC = "1'b0" *) 
  (* EN_UF = "1'b0" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b0" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "2" *) 
  (* FIFO_MEM_TYPE = "2" *) 
  (* FIFO_READ_DEPTH = "4096" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "98304" *) 
  (* FIFO_WRITE_DEPTH = "4096" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "3" *) 
  (* PE_THRESH_MAX = "4091" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "9" *) 
  (* PF_THRESH_MAX = "4091" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "11" *) 
  (* RD_DATA_COUNT_WIDTH = "13" *) 
  (* RD_DC_WIDTH_EXT = "13" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "12" *) 
  (* READ_DATA_WIDTH = "24" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "825765944" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "24" *) 
  (* WR_DATA_COUNT_WIDTH = "13" *) 
  (* WR_DC_WIDTH_EXT = "13" *) 
  (* WR_DEPTH_LOG = "12" *) 
  (* WR_PNTR_WIDTH = "12" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "5" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2 xpm_fifo_base_inst
       (.almost_empty(almost_empty_axis),
        .almost_full(almost_full_axis),
        .data_valid(m_axis_tvalid),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din({s_axis_tlast,s_axis_tuser,s_axis_tdest,s_axis_tid,s_axis_tkeep,s_axis_tstrb,s_axis_tdata}),
        .dout({m_axis_tlast,m_axis_tuser,m_axis_tdest,m_axis_tid,m_axis_tkeep,m_axis_tstrb,m_axis_tdata}),
        .empty(NLW_xpm_fifo_base_inst_empty_UNCONNECTED),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(s_axis_tready),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(1'b0),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[12:0]),
        .rd_en(xpm_fifo_base_inst_i_1_n_0),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst_axis),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(s_aclk),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[12:0]),
        .wr_en(s_axis_tvalid),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    xpm_fifo_base_inst_i_1
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .O(xpm_fifo_base_inst_i_1_n_0));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "3" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0001100000001000" *) (* EN_AE = "1'b1" *) (* EN_AF = "1'b1" *) 
(* EN_DVLD = "1'b1" *) (* EN_OF = "1'b0" *) (* EN_PE = "1'b0" *) 
(* EN_PF = "1'b0" *) (* EN_RDC = "1'b0" *) (* EN_UF = "1'b0" *) 
(* EN_WACK = "1'b0" *) (* EN_WDC = "1'b0" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "2" *) (* FIFO_MEM_TYPE = "2" *) (* FIFO_READ_DEPTH = "4096" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "98304" *) (* FIFO_WRITE_DEPTH = "4096" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* PE_THRESH_ADJ = "3" *) 
(* PE_THRESH_MAX = "4091" *) (* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "9" *) 
(* PF_THRESH_MAX = "4091" *) (* PF_THRESH_MIN = "5" *) (* PROG_EMPTY_THRESH = "5" *) 
(* PROG_FULL_THRESH = "11" *) (* RD_DATA_COUNT_WIDTH = "13" *) (* RD_DC_WIDTH_EXT = "13" *) 
(* RD_LATENCY = "2" *) (* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "12" *) 
(* READ_DATA_WIDTH = "24" *) (* READ_MODE = "1" *) (* READ_MODE_LL = "1" *) 
(* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_ADV_FEATURES = "825765944" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "24" *) (* WR_DATA_COUNT_WIDTH = "13" *) 
(* WR_DC_WIDTH_EXT = "13" *) (* WR_DEPTH_LOG = "12" *) (* WR_PNTR_WIDTH = "12" *) 
(* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "5" *) (* XPM_MODULE = "TRUE" *) 
(* both_stages_valid = "3" *) (* invalid = "0" *) (* keep_hierarchy = "soft" *) 
(* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [23:0]din;
  output full;
  output full_n;
  output prog_full;
  output [12:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [23:0]dout;
  output empty;
  output prog_empty;
  output [12:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire aempty_fwft_i0;
  wire almost_empty;
  wire almost_full;
  wire clr_full;
  wire [11:0]count_value_i__0;
  wire [1:0]curr_fwft_state;
  wire data_valid;
  wire data_valid_fwft1;
  wire [23:0]din;
  wire [23:0]dout;
  wire full_n;
  wire \gen_fwft.empty_fwft_i_reg_n_0 ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ;
  wire going_afull;
  wire going_full1;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_i;
  wire rd_en;
  wire [11:0]rd_pntr_ext;
  wire rdp_inst_n_15;
  wire rdp_inst_n_16;
  wire rdpp1_inst_n_12;
  wire rst;
  wire rst_d1;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire [11:0]wr_pntr_ext;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_10;
  wire wrpp1_inst_n_11;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire wrpp1_inst_n_5;
  wire wrpp1_inst_n_6;
  wire wrpp1_inst_n_7;
  wire wrpp1_inst_n_8;
  wire wrpp1_inst_n_9;
  wire wrpp2_inst_n_0;
  wire wrpp2_inst_n_1;
  wire wrpp2_inst_n_10;
  wire wrpp2_inst_n_11;
  wire wrpp2_inst_n_2;
  wire wrpp2_inst_n_3;
  wire wrpp2_inst_n_4;
  wire wrpp2_inst_n_5;
  wire wrpp2_inst_n_6;
  wire wrpp2_inst_n_7;
  wire wrpp2_inst_n_8;
  wire wrpp2_inst_n_9;
  wire xpm_fifo_rst_inst_n_0;
  wire xpm_fifo_rst_inst_n_2;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [23:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign dbiterr = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[12] = \<const0> ;
  assign rd_data_count[11] = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[12] = \<const0> ;
  assign wr_data_count[11] = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h3FF0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_2));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_2));
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_2));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hFDDD4000)) 
    \gen_fwft.gae_fwft.aempty_fwft_i_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(ram_empty_i),
        .I2(curr_fwft_state[1]),
        .I3(rd_en),
        .I4(almost_empty),
        .O(aempty_fwft_i0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.gae_fwft.aempty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .Q(almost_empty),
        .S(xpm_fifo_rst_inst_n_2));
  LUT4 #(
    .INIT(16'h3575)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(rd_en),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ),
        .Q(data_valid),
        .R(xpm_fifo_rst_inst_n_2));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(xpm_fifo_rst_inst_n_0),
        .Q(almost_full),
        .S(xpm_fifo_rst_inst_n_2));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_16),
        .Q(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_15),
        .Q(full_n),
        .R(xpm_fifo_rst_inst_n_2));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_2));
  (* ADDR_WIDTH_A = "12" *) 
  (* ADDR_WIDTH_B = "12" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "24" *) 
  (* BYTE_WRITE_WIDTH_B = "24" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "23" *) 
  (* \MEM.ADDRESS_SPACE_END  = "4095" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "24" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "98304" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "4096" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "24" *) 
  (* P_MIN_WIDTH_DATA_A = "24" *) 
  (* P_MIN_WIDTH_DATA_B = "24" *) 
  (* P_MIN_WIDTH_DATA_ECC = "24" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "24" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "no" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "12" *) 
  (* P_WIDTH_ADDR_READ_B = "12" *) 
  (* P_WIDTH_ADDR_WRITE_A = "12" *) 
  (* P_WIDTH_ADDR_WRITE_B = "12" *) 
  (* P_WIDTH_COL_WRITE_A = "24" *) 
  (* P_WIDTH_COL_WRITE_B = "24" *) 
  (* READ_DATA_WIDTH_A = "24" *) 
  (* READ_DATA_WIDTH_B = "24" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "24" *) 
  (* WRITE_DATA_WIDTH_B = "24" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "24" *) 
  (* rstb_loop_iter = "24" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [23:0]),
        .doutb(dout),
        .ena(1'b0),
        .enb(rdpp1_inst_n_12),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_2),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_i),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2 rdp_inst
       (.Q(rd_pntr_ext),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (rdpp1_inst_n_12),
        .\count_value_i_reg[11]_0 (xpm_fifo_rst_inst_n_2),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 ({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5,wrpp2_inst_n_6,wrpp2_inst_n_7,wrpp2_inst_n_8,wrpp2_inst_n_9,wrpp2_inst_n_10,wrpp2_inst_n_11}),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_15),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (rdp_inst_n_16),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9,wrpp1_inst_n_10,wrpp1_inst_n_11}),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 (wr_pntr_ext),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .going_afull(going_afull),
        .going_full1(going_full1),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_i(ram_wr_en_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3 rdpp1_inst
       (.\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdpp1_inst_n_12),
        .Q(count_value_i__0),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[1]_0 (xpm_fifo_rst_inst_n_2),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_2),
        .clr_full(clr_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_0 wrp_inst
       (.Q(wr_pntr_ext),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_2),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.ram_empty_i_i_2_0 (count_value_i__0),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdpp1_inst_n_12),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .ram_wr_en_i(ram_wr_en_i),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_1 wrpp1_inst
       (.Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9,wrpp1_inst_n_10,wrpp1_inst_n_11}),
        .\count_value_i_reg[1]_0 (xpm_fifo_rst_inst_n_2),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .ram_wr_en_i(ram_wr_en_i),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0 wrpp2_inst
       (.Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5,wrpp2_inst_n_6,wrpp2_inst_n_7,wrpp2_inst_n_8,wrpp2_inst_n_9,wrpp2_inst_n_10,wrpp2_inst_n_11}),
        .\count_value_i_reg[1]_0 (xpm_fifo_rst_inst_n_2),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .ram_wr_en_i(ram_wr_en_i),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst xpm_fifo_rst_inst
       (.Q(curr_fwft_state),
        .almost_full(almost_full),
        .\count_value_i_reg[11] (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 (xpm_fifo_rst_inst_n_2),
        .going_afull(going_afull),
        .going_full1(going_full1),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_i(ram_wr_en_i),
        .rd_en(rd_en),
        .rst(rst),
        .rst_d1(rst_d1),
        .\syncstages_ff_reg[3] (xpm_fifo_rst_inst_n_0),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "3" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0001100000001000" *) (* EN_AE = "1'b1" *) (* EN_AF = "1'b1" *) 
(* EN_DVLD = "1'b1" *) (* EN_OF = "1'b0" *) (* EN_PE = "1'b0" *) 
(* EN_PF = "1'b0" *) (* EN_RDC = "1'b0" *) (* EN_UF = "1'b0" *) 
(* EN_WACK = "1'b0" *) (* EN_WDC = "1'b0" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "2" *) (* FIFO_MEM_TYPE = "2" *) (* FIFO_READ_DEPTH = "4096" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "98304" *) (* FIFO_WRITE_DEPTH = "4096" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) 
(* PE_THRESH_ADJ = "3" *) (* PE_THRESH_MAX = "4091" *) (* PE_THRESH_MIN = "5" *) 
(* PF_THRESH_ADJ = "9" *) (* PF_THRESH_MAX = "4091" *) (* PF_THRESH_MIN = "5" *) 
(* PROG_EMPTY_THRESH = "5" *) (* PROG_FULL_THRESH = "11" *) (* RD_DATA_COUNT_WIDTH = "13" *) 
(* RD_DC_WIDTH_EXT = "13" *) (* RD_LATENCY = "2" *) (* RD_MODE = "1" *) 
(* RD_PNTR_WIDTH = "12" *) (* READ_DATA_WIDTH = "24" *) (* READ_MODE = "1" *) 
(* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "825765944" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "24" *) 
(* WR_DATA_COUNT_WIDTH = "13" *) (* WR_DC_WIDTH_EXT = "13" *) (* WR_DEPTH_LOG = "12" *) 
(* WR_PNTR_WIDTH = "12" *) (* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "5" *) 
(* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) (* invalid = "0" *) 
(* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [23:0]din;
  output full;
  output full_n;
  output prog_full;
  output [12:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [23:0]dout;
  output empty;
  output prog_empty;
  output [12:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire aempty_fwft_i0;
  wire almost_empty;
  wire almost_full;
  wire clr_full;
  wire [11:0]count_value_i__0;
  wire [1:0]curr_fwft_state;
  wire data_valid;
  wire data_valid_fwft1;
  wire [23:0]din;
  wire [23:0]dout;
  wire full_n;
  wire \gen_fwft.empty_fwft_i_reg_n_0 ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ;
  wire going_afull;
  wire going_full1;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_i;
  wire rd_en;
  wire [11:0]rd_pntr_ext;
  wire rdp_inst_n_15;
  wire rdp_inst_n_16;
  wire rdpp1_inst_n_12;
  wire rst;
  wire rst_d1;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire [11:0]wr_pntr_ext;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_10;
  wire wrpp1_inst_n_11;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire wrpp1_inst_n_5;
  wire wrpp1_inst_n_6;
  wire wrpp1_inst_n_7;
  wire wrpp1_inst_n_8;
  wire wrpp1_inst_n_9;
  wire wrpp2_inst_n_0;
  wire wrpp2_inst_n_1;
  wire wrpp2_inst_n_10;
  wire wrpp2_inst_n_11;
  wire wrpp2_inst_n_2;
  wire wrpp2_inst_n_3;
  wire wrpp2_inst_n_4;
  wire wrpp2_inst_n_5;
  wire wrpp2_inst_n_6;
  wire wrpp2_inst_n_7;
  wire wrpp2_inst_n_8;
  wire wrpp2_inst_n_9;
  wire xpm_fifo_rst_inst_n_0;
  wire xpm_fifo_rst_inst_n_2;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [23:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign dbiterr = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[12] = \<const0> ;
  assign rd_data_count[11] = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[12] = \<const0> ;
  assign wr_data_count[11] = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h3FF0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_2));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_2));
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_2));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFDDD4000)) 
    \gen_fwft.gae_fwft.aempty_fwft_i_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(ram_empty_i),
        .I2(curr_fwft_state[1]),
        .I3(rd_en),
        .I4(almost_empty),
        .O(aempty_fwft_i0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.gae_fwft.aempty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .Q(almost_empty),
        .S(xpm_fifo_rst_inst_n_2));
  LUT4 #(
    .INIT(16'h3575)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(rd_en),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ),
        .Q(data_valid),
        .R(xpm_fifo_rst_inst_n_2));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(xpm_fifo_rst_inst_n_0),
        .Q(almost_full),
        .S(xpm_fifo_rst_inst_n_2));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_16),
        .Q(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_15),
        .Q(full_n),
        .R(xpm_fifo_rst_inst_n_2));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_2));
  (* ADDR_WIDTH_A = "12" *) 
  (* ADDR_WIDTH_B = "12" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "24" *) 
  (* BYTE_WRITE_WIDTH_B = "24" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "23" *) 
  (* \MEM.ADDRESS_SPACE_END  = "4095" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "24" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "98304" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "4096" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "24" *) 
  (* P_MIN_WIDTH_DATA_A = "24" *) 
  (* P_MIN_WIDTH_DATA_B = "24" *) 
  (* P_MIN_WIDTH_DATA_ECC = "24" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "24" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "no" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "12" *) 
  (* P_WIDTH_ADDR_READ_B = "12" *) 
  (* P_WIDTH_ADDR_WRITE_A = "12" *) 
  (* P_WIDTH_ADDR_WRITE_B = "12" *) 
  (* P_WIDTH_COL_WRITE_A = "24" *) 
  (* P_WIDTH_COL_WRITE_B = "24" *) 
  (* READ_DATA_WIDTH_A = "24" *) 
  (* READ_DATA_WIDTH_B = "24" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "24" *) 
  (* WRITE_DATA_WIDTH_B = "24" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "24" *) 
  (* rstb_loop_iter = "24" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2 \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [23:0]),
        .doutb(dout),
        .ena(1'b0),
        .enb(rdpp1_inst_n_12),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_2),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_i),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_2 rdp_inst
       (.Q(rd_pntr_ext),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (rdpp1_inst_n_12),
        .\count_value_i_reg[11]_0 (xpm_fifo_rst_inst_n_2),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 ({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5,wrpp2_inst_n_6,wrpp2_inst_n_7,wrpp2_inst_n_8,wrpp2_inst_n_9,wrpp2_inst_n_10,wrpp2_inst_n_11}),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_15),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (rdp_inst_n_16),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3_0 ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9,wrpp1_inst_n_10,wrpp1_inst_n_11}),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 (wr_pntr_ext),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .going_afull(going_afull),
        .going_full1(going_full1),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_i(ram_wr_en_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_3 rdpp1_inst
       (.\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdpp1_inst_n_12),
        .Q(count_value_i__0),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[1]_0 (xpm_fifo_rst_inst_n_2),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit_4 rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_2),
        .clr_full(clr_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_5 wrp_inst
       (.Q(wr_pntr_ext),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_2),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.ram_empty_i_i_2_0 (count_value_i__0),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdpp1_inst_n_12),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .ram_wr_en_i(ram_wr_en_i),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_6 wrpp1_inst
       (.Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9,wrpp1_inst_n_10,wrpp1_inst_n_11}),
        .\count_value_i_reg[1]_0 (xpm_fifo_rst_inst_n_2),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .ram_wr_en_i(ram_wr_en_i),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_7 wrpp2_inst
       (.Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5,wrpp2_inst_n_6,wrpp2_inst_n_7,wrpp2_inst_n_8,wrpp2_inst_n_9,wrpp2_inst_n_10,wrpp2_inst_n_11}),
        .\count_value_i_reg[1]_0 (xpm_fifo_rst_inst_n_2),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .ram_wr_en_i(ram_wr_en_i),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst_8 xpm_fifo_rst_inst
       (.Q(curr_fwft_state),
        .almost_full(almost_full),
        .\count_value_i_reg[11] (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 (xpm_fifo_rst_inst_n_2),
        .going_afull(going_afull),
        .going_full1(going_full1),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_i(ram_wr_en_i),
        .rd_en(rd_en),
        .rst(rst),
        .rst_d1(rst_d1),
        .\syncstages_ff_reg[3] (xpm_fifo_rst_inst_n_0),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
   (rst_d1,
    clr_full,
    Q,
    wr_clk,
    rst);
  output rst_d1;
  output clr_full;
  input [0:0]Q;
  input wr_clk;
  input rst;

  wire [0:0]Q;
  wire clr_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit_4
   (rst_d1,
    clr_full,
    Q,
    wr_clk,
    rst);
  output rst_d1;
  output clr_full;
  input [0:0]Q;
  input wr_clk;
  input rst;

  wire [0:0]Q;
  wire clr_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
   (\syncstages_ff_reg[3] ,
    ram_wr_en_i,
    \gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ,
    going_full1,
    going_afull,
    rst,
    almost_full,
    ram_empty_i,
    rd_en,
    Q,
    wr_en,
    \count_value_i_reg[11] ,
    rst_d1,
    wr_clk);
  output \syncstages_ff_reg[3] ;
  output ram_wr_en_i;
  output [0:0]\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ;
  input going_full1;
  input going_afull;
  input rst;
  input almost_full;
  input ram_empty_i;
  input rd_en;
  input [1:0]Q;
  input wr_en;
  input \count_value_i_reg[11] ;
  input rst_d1;
  input wr_clk;

  wire [1:0]Q;
  wire almost_full;
  wire \count_value_i_reg[11] ;
  wire \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_2_n_0 ;
  wire \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4_n_0 ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire [0:0]\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ;
  wire going_afull;
  wire going_full1;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire ram_empty_i;
  wire ram_wr_en_i;
  wire rd_en;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire \syncstages_ff_reg[3] ;
  wire wr_clk;
  wire wr_en;

  LUT6 #(
    .INIT(64'h00FF00F7000000F0)) 
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_1 
       (.I0(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_2_n_0 ),
        .I1(going_full1),
        .I2(going_afull),
        .I3(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4_n_0 ),
        .I4(rst),
        .I5(almost_full),
        .O(\syncstages_ff_reg[3] ));
  LUT5 #(
    .INIT(32'h00005455)) 
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_2 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(ram_wr_en_i),
        .O(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4 
       (.I0(\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ),
        .I1(rst_d1),
        .I2(rst),
        .O(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ),
        .S(rst_i));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[11] ),
        .I2(\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ),
        .I3(rst_d1),
        .O(ram_wr_en_i));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst_8
   (\syncstages_ff_reg[3] ,
    ram_wr_en_i,
    \gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ,
    going_full1,
    going_afull,
    rst,
    almost_full,
    ram_empty_i,
    rd_en,
    Q,
    wr_en,
    \count_value_i_reg[11] ,
    rst_d1,
    wr_clk);
  output \syncstages_ff_reg[3] ;
  output ram_wr_en_i;
  output [0:0]\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ;
  input going_full1;
  input going_afull;
  input rst;
  input almost_full;
  input ram_empty_i;
  input rd_en;
  input [1:0]Q;
  input wr_en;
  input \count_value_i_reg[11] ;
  input rst_d1;
  input wr_clk;

  wire [1:0]Q;
  wire almost_full;
  wire \count_value_i_reg[11] ;
  wire \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_2_n_0 ;
  wire \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4_n_0 ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire [0:0]\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ;
  wire going_afull;
  wire going_full1;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire ram_empty_i;
  wire ram_wr_en_i;
  wire rd_en;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire \syncstages_ff_reg[3] ;
  wire wr_clk;
  wire wr_en;

  LUT6 #(
    .INIT(64'h00FF00F7000000F0)) 
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_1 
       (.I0(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_2_n_0 ),
        .I1(going_full1),
        .I2(going_afull),
        .I3(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4_n_0 ),
        .I4(rst),
        .I5(almost_full),
        .O(\syncstages_ff_reg[3] ));
  LUT5 #(
    .INIT(32'h00005455)) 
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_2 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(ram_wr_en_i),
        .O(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4 
       (.I0(\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ),
        .I1(rst_d1),
        .I2(rst),
        .O(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ),
        .S(rst_i));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[11] ),
        .I2(\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ),
        .I3(rst_d1),
        .O(ram_wr_en_i));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ADDR_WIDTH_A = "12" *) (* ADDR_WIDTH_B = "12" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "24" *) (* BYTE_WRITE_WIDTH_B = "24" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* IGNORE_INIT_SYNTH = "0" *) 
(* MAX_NUM_CHAR = "0" *) (* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) 
(* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "2" *) (* MEMORY_SIZE = "98304" *) 
(* MEMORY_TYPE = "1" *) (* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "4096" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "block" *) 
(* P_MIN_WIDTH_DATA = "24" *) (* P_MIN_WIDTH_DATA_A = "24" *) (* P_MIN_WIDTH_DATA_B = "24" *) 
(* P_MIN_WIDTH_DATA_ECC = "24" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "24" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "no" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "12" *) 
(* P_WIDTH_ADDR_READ_B = "12" *) (* P_WIDTH_ADDR_WRITE_A = "12" *) (* P_WIDTH_ADDR_WRITE_B = "12" *) 
(* P_WIDTH_COL_WRITE_A = "24" *) (* P_WIDTH_COL_WRITE_B = "24" *) (* READ_DATA_WIDTH_A = "24" *) 
(* READ_DATA_WIDTH_B = "24" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "24" *) (* WRITE_DATA_WIDTH_B = "24" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "24" *) 
(* rstb_loop_iter = "24" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [11:0]addra;
  input [23:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [23:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [11:0]addrb;
  input [23:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [23:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire [23:0]dina;
  wire [23:0]doutb;
  wire enb;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_1_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_2_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_138 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_139 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_52 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_53 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_54 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_55 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_56 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_57 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_58 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_59 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_60 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_61 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_62 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_63 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_64 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_65 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_66 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_67 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_126 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_127 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_128 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_129 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_130 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_131 ;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED ;
  wire [31:16]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED ;
  wire [3:2]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTADOUT_UNCONNECTED ;
  wire [31:16]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED ;
  wire [3:2]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTADOUT_UNCONNECTED ;
  wire [31:6]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_RDADDRECC_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][18] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_131 ),
        .Q(doutb[18]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][19] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_130 ),
        .Q(doutb[19]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][20] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_129 ),
        .Q(doutb[20]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][21] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_128 ),
        .Q(doutb[21]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][22] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_127 ),
        .Q(doutb[22]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][23] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_126 ),
        .Q(doutb[23]),
        .R(rstb));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "17" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "17" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "98304" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("FIRST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0 
       (.ADDRARDADDR({addra[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED [31:16],\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_52 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_53 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_54 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_55 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_56 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_57 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_58 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_59 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_60 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_61 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_62 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_63 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_64 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_65 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_66 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_67 }),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED [3:2],\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_138 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_139 }),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_0 ),
        .CASOUTSBITERR(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_1 ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[15:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,dina[17:16]}),
        .DINPBDINP({1'b0,1'b0,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTBDOUT_UNCONNECTED [31:0]),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_1_n_0 ),
        .ENBWREN(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_2_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_1 
       (.I0(addra[11]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_2 
       (.I0(enb),
        .I1(addrb[11]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3 
       (.I0(wea),
        .I1(addra[11]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0 ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "2048" *) 
  (* \MEM.PORTA.ADDRESS_END  = "4095" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "17" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "2048" *) 
  (* \MEM.PORTB.ADDRESS_END  = "4095" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "17" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "98304" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2048" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("LAST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1 
       (.ADDRARDADDR({addra[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_52 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_53 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_54 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_55 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_56 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_57 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_58 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_59 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_60 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_61 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_62 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_63 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_64 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_65 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_66 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_67 }),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_138 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_139 }),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_0 ),
        .CASINSBITERR(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_1 ),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1_n_0 ),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(enb),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[15:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,dina[17:16]}),
        .DINPBDINP({1'b0,1'b0,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTBDOUT_UNCONNECTED [31:16],doutb[15:0]}),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPBDOUTP_UNCONNECTED [3:2],doutb[17:16]}),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(addra[11]),
        .ENBWREN(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1 
       (.I0(addrb[11]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2 
       (.I0(enb),
        .I1(addrb[11]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3 
       (.I0(wea),
        .I1(addra[11]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0 ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "4095" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d6" *) 
  (* \MEM.PORTA.DATA_LSB  = "18" *) 
  (* \MEM.PORTA.DATA_MSB  = "23" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "4095" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d6" *) 
  (* \MEM.PORTB.DATA_LSB  = "18" *) 
  (* \MEM.PORTB.DATA_MSB  = "23" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "98304" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[23:18]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTBDOUT_UNCONNECTED [31:6],\gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_126 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_127 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_128 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_129 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_130 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_131 }),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ADDR_WIDTH_A = "12" *) (* ADDR_WIDTH_B = "12" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "24" *) (* BYTE_WRITE_WIDTH_B = "24" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* IGNORE_INIT_SYNTH = "0" *) 
(* MAX_NUM_CHAR = "0" *) (* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) 
(* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "2" *) (* MEMORY_SIZE = "98304" *) 
(* MEMORY_TYPE = "1" *) (* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) 
(* ORIG_REF_NAME = "xpm_memory_base" *) (* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) 
(* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "4096" *) (* P_MEMORY_OPT = "yes" *) 
(* P_MEMORY_PRIMITIVE = "block" *) (* P_MIN_WIDTH_DATA = "24" *) (* P_MIN_WIDTH_DATA_A = "24" *) 
(* P_MIN_WIDTH_DATA_B = "24" *) (* P_MIN_WIDTH_DATA_ECC = "24" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) 
(* P_MIN_WIDTH_DATA_SHFT = "24" *) (* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) 
(* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) 
(* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "no" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
(* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
(* P_WIDTH_ADDR_READ_A = "12" *) (* P_WIDTH_ADDR_READ_B = "12" *) (* P_WIDTH_ADDR_WRITE_A = "12" *) 
(* P_WIDTH_ADDR_WRITE_B = "12" *) (* P_WIDTH_COL_WRITE_A = "24" *) (* P_WIDTH_COL_WRITE_B = "24" *) 
(* READ_DATA_WIDTH_A = "24" *) (* READ_DATA_WIDTH_B = "24" *) (* READ_LATENCY_A = "2" *) 
(* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "" *) 
(* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "24" *) 
(* WRITE_DATA_WIDTH_B = "24" *) (* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) 
(* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
(* rsta_loop_iter = "24" *) (* rstb_loop_iter = "24" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [11:0]addra;
  input [23:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [23:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [11:0]addrb;
  input [23:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [23:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire [23:0]dina;
  wire [23:0]doutb;
  wire enb;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_1_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_2_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_138 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_139 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_52 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_53 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_54 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_55 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_56 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_57 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_58 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_59 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_60 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_61 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_62 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_63 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_64 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_65 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_66 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_67 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_126 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_127 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_128 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_129 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_130 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_131 ;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED ;
  wire [31:16]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED ;
  wire [3:2]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTADOUT_UNCONNECTED ;
  wire [31:16]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED ;
  wire [3:2]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTADOUT_UNCONNECTED ;
  wire [31:6]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_RDADDRECC_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][18] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_131 ),
        .Q(doutb[18]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][19] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_130 ),
        .Q(doutb[19]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][20] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_129 ),
        .Q(doutb[20]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][21] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_128 ),
        .Q(doutb[21]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][22] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_127 ),
        .Q(doutb[22]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][23] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_126 ),
        .Q(doutb[23]),
        .R(rstb));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "17" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "17" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "98304" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("FIRST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0 
       (.ADDRARDADDR({addra[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED [31:16],\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_52 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_53 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_54 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_55 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_56 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_57 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_58 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_59 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_60 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_61 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_62 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_63 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_64 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_65 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_66 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_67 }),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED [3:2],\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_138 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_139 }),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_0 ),
        .CASOUTSBITERR(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_1 ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[15:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,dina[17:16]}),
        .DINPBDINP({1'b0,1'b0,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTBDOUT_UNCONNECTED [31:0]),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_1_n_0 ),
        .ENBWREN(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_2_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_1 
       (.I0(addra[11]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_2 
       (.I0(enb),
        .I1(addrb[11]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3 
       (.I0(wea),
        .I1(addra[11]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0 ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "2048" *) 
  (* \MEM.PORTA.ADDRESS_END  = "4095" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "17" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "2048" *) 
  (* \MEM.PORTB.ADDRESS_END  = "4095" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "17" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "98304" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "2048" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("LAST"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1 
       (.ADDRARDADDR({addra[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb[10:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_52 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_53 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_54 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_55 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_56 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_57 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_58 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_59 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_60 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_61 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_62 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_63 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_64 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_65 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_66 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_67 }),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_138 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_139 }),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_0 ),
        .CASINSBITERR(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_1 ),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1_n_0 ),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(enb),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[15:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,dina[17:16]}),
        .DINPBDINP({1'b0,1'b0,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTBDOUT_UNCONNECTED [31:16],doutb[15:0]}),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPBDOUTP_UNCONNECTED [3:2],doutb[17:16]}),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(addra[11]),
        .ENBWREN(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1 
       (.I0(addrb[11]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2 
       (.I0(enb),
        .I1(addrb[11]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3 
       (.I0(wea),
        .I1(addra[11]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0 ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "4095" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d6" *) 
  (* \MEM.PORTA.DATA_LSB  = "18" *) 
  (* \MEM.PORTA.DATA_MSB  = "23" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "4095" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d6" *) 
  (* \MEM.PORTB.DATA_LSB  = "18" *) 
  (* \MEM.PORTB.DATA_MSB  = "23" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "98304" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[23:18]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTBDOUT_UNCONNECTED [31:6],\gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_126 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_127 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_128 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_129 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_130 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_2_n_131 }),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
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
