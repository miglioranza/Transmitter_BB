// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Fri Apr  4 13:56:29 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_block_interleaver_0_0_sim_netlist.v
// Design      : Design_2_block_interleaver_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Design_2_block_interleaver_0_0,block_interleaver,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "block_interleaver,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    data_in,
    data_in_ready,
    write_en,
    code_rate,
    data_out,
    data_out_ready,
    current_code_rate,
    read_valid);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Design_2_clk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [31:0]data_in;
  input data_in_ready;
  input write_en;
  input [1:0]code_rate;
  output [31:0]data_out;
  output data_out_ready;
  output [1:0]current_code_rate;
  output read_valid;

  wire clk;
  wire [1:0]code_rate;
  wire [1:0]current_code_rate;
  wire [31:0]data_in;
  wire data_in_ready;
  wire [31:0]data_out;
  wire data_out_ready;
  wire read_valid;
  wire rst;
  wire write_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_block_interleaver U0
       (.clk(clk),
        .code_rate(code_rate),
        .current_code_rate(current_code_rate),
        .data_in(data_in),
        .data_in_ready(data_in_ready),
        .data_out(data_out),
        .data_out_ready(data_out_ready),
        .read_valid(read_valid),
        .rst(rst),
        .write_en(write_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_block_interleaver
   (data_out,
    current_code_rate,
    data_out_ready,
    read_valid,
    data_in_ready,
    clk,
    rst,
    data_in,
    write_en,
    code_rate);
  output [31:0]data_out;
  output [1:0]current_code_rate;
  output data_out_ready;
  output read_valid;
  input data_in_ready;
  input clk;
  input rst;
  input [31:0]data_in;
  input write_en;
  input [1:0]code_rate;

  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire busy_i_1_n_0;
  wire busy_reg_n_0;
  wire clk;
  wire [1:0]code_rate;
  wire col_cnt;
  wire \col_cnt[0]_i_1_n_0 ;
  wire \col_cnt[1]_i_1_n_0 ;
  wire \col_cnt[2]_i_1_n_0 ;
  wire \col_cnt[3]_i_2_n_0 ;
  wire \col_cnt_reg_n_0_[0] ;
  wire \col_cnt_reg_n_0_[1] ;
  wire \col_cnt_reg_n_0_[2] ;
  wire \col_cnt_reg_n_0_[3] ;
  wire [1:0]current_code_rate;
  wire current_code_rate0;
  wire [31:0]data_in;
  wire data_in_ready;
  wire [31:0]data_out;
  wire \data_out[31]_i_1_n_0 ;
  wire data_out_ready;
  wire data_out_ready1;
  wire \data_out_ready1_inferred__1/i__carry__0_n_6 ;
  wire \data_out_ready1_inferred__1/i__carry__0_n_7 ;
  wire \data_out_ready1_inferred__1/i__carry_n_0 ;
  wire \data_out_ready1_inferred__1/i__carry_n_1 ;
  wire \data_out_ready1_inferred__1/i__carry_n_2 ;
  wire \data_out_ready1_inferred__1/i__carry_n_3 ;
  wire \data_out_ready1_inferred__1/i__carry_n_4 ;
  wire \data_out_ready1_inferred__1/i__carry_n_5 ;
  wire \data_out_ready1_inferred__1/i__carry_n_6 ;
  wire \data_out_ready1_inferred__1/i__carry_n_7 ;
  wire [31:1]data_out_ready2;
  wire data_out_ready_i_1_n_0;
  wire data_out_ready_i_2_n_0;
  wire i__carry__0_i_10_n_0;
  wire i__carry__0_i_11_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_2;
  wire i__carry__0_i_4_n_3;
  wire i__carry__0_i_4_n_4;
  wire i__carry__0_i_4_n_5;
  wire i__carry__0_i_4_n_6;
  wire i__carry__0_i_4_n_7;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__0_i_9_n_0;
  wire i__carry_i_10_n_0;
  wire i__carry_i_10_n_1;
  wire i__carry_i_10_n_2;
  wire i__carry_i_10_n_3;
  wire i__carry_i_10_n_4;
  wire i__carry_i_10_n_5;
  wire i__carry_i_10_n_6;
  wire i__carry_i_10_n_7;
  wire i__carry_i_11_n_0;
  wire i__carry_i_11_n_1;
  wire i__carry_i_11_n_2;
  wire i__carry_i_11_n_3;
  wire i__carry_i_11_n_4;
  wire i__carry_i_11_n_5;
  wire i__carry_i_11_n_6;
  wire i__carry_i_11_n_7;
  wire i__carry_i_12_n_0;
  wire i__carry_i_13_n_0;
  wire i__carry_i_14_n_0;
  wire i__carry_i_15_n_0;
  wire i__carry_i_16_n_0;
  wire i__carry_i_17_n_0;
  wire i__carry_i_18_n_0;
  wire i__carry_i_19_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_20_n_0;
  wire i__carry_i_21_n_0;
  wire i__carry_i_22_n_0;
  wire i__carry_i_23_n_0;
  wire i__carry_i_24_n_0;
  wire i__carry_i_25_n_0;
  wire i__carry_i_26_n_0;
  wire i__carry_i_27_n_0;
  wire i__carry_i_28_n_0;
  wire i__carry_i_29_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_30_n_0;
  wire i__carry_i_31_n_0;
  wire i__carry_i_32_n_0;
  wire i__carry_i_33_n_0;
  wire i__carry_i_34_n_0;
  wire i__carry_i_35_n_0;
  wire i__carry_i_36_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire i__carry_i_9_n_0;
  wire i__carry_i_9_n_1;
  wire i__carry_i_9_n_2;
  wire i__carry_i_9_n_3;
  wire i__carry_i_9_n_4;
  wire i__carry_i_9_n_5;
  wire i__carry_i_9_n_6;
  wire i__carry_i_9_n_7;
  wire [5:1]in13;
  wire p_0_in;
  wire p_0_in_carry_n_4;
  wire p_0_in_carry_n_5;
  wire p_0_in_carry_n_6;
  wire p_0_in_carry_n_7;
  wire [31:0]p_1_out;
  wire p_6_in;
  wire p_6_in_carry_i_1_n_0;
  wire p_6_in_carry_i_2_n_0;
  wire p_6_in_carry_n_7;
  wire \read_addr[0]_i_1_n_0 ;
  wire \read_addr[1]_i_1_n_0 ;
  wire \read_addr[1]_i_2_n_0 ;
  wire \read_addr[2]_i_1_n_0 ;
  wire \read_addr[2]_i_2_n_0 ;
  wire \read_addr[2]_i_3_n_0 ;
  wire \read_addr[3]_i_1_n_0 ;
  wire \read_addr[3]_i_2_n_0 ;
  wire \read_addr[3]_i_3_n_0 ;
  wire \read_addr[4]_i_1_n_0 ;
  wire \read_addr[4]_i_2_n_0 ;
  wire \read_addr[4]_i_3_n_0 ;
  wire \read_addr[4]_i_4_n_0 ;
  wire \read_addr[5]_i_1_n_0 ;
  wire \read_addr[5]_i_2_n_0 ;
  wire \read_addr[5]_i_3_n_0 ;
  wire [5:0]read_addr_reg;
  wire read_valid;
  wire read_valid_i_1_n_0;
  wire [3:0]row_cnt;
  wire \row_cnt[0]_i_1_n_0 ;
  wire \row_cnt[1]_i_1_n_0 ;
  wire \row_cnt[2]_i_1_n_0 ;
  wire \row_cnt[3]_i_1_n_0 ;
  wire \row_index[0]_i_10_n_0 ;
  wire \row_index[0]_i_11_n_0 ;
  wire \row_index[0]_i_1_n_0 ;
  wire \row_index[0]_i_3_n_0 ;
  wire \row_index[0]_i_4_n_0 ;
  wire \row_index[0]_i_5_n_0 ;
  wire \row_index[0]_i_6_n_0 ;
  wire \row_index[0]_i_7_n_0 ;
  wire \row_index[0]_i_8_n_0 ;
  wire \row_index[0]_i_9_n_0 ;
  wire \row_index[16]_i_2_n_0 ;
  wire \row_index[16]_i_3_n_0 ;
  wire \row_index[16]_i_4_n_0 ;
  wire \row_index[16]_i_5_n_0 ;
  wire \row_index[16]_i_6_n_0 ;
  wire \row_index[16]_i_7_n_0 ;
  wire \row_index[16]_i_8_n_0 ;
  wire \row_index[16]_i_9_n_0 ;
  wire \row_index[24]_i_2_n_0 ;
  wire \row_index[24]_i_3_n_0 ;
  wire \row_index[24]_i_4_n_0 ;
  wire \row_index[24]_i_5_n_0 ;
  wire \row_index[24]_i_6_n_0 ;
  wire \row_index[24]_i_7_n_0 ;
  wire \row_index[24]_i_8_n_0 ;
  wire \row_index[24]_i_9_n_0 ;
  wire \row_index[8]_i_2_n_0 ;
  wire \row_index[8]_i_3_n_0 ;
  wire \row_index[8]_i_4_n_0 ;
  wire \row_index[8]_i_5_n_0 ;
  wire \row_index[8]_i_6_n_0 ;
  wire \row_index[8]_i_7_n_0 ;
  wire \row_index[8]_i_8_n_0 ;
  wire \row_index[8]_i_9_n_0 ;
  wire [31:0]row_index_reg;
  wire \row_index_reg[0]_i_2_n_0 ;
  wire \row_index_reg[0]_i_2_n_1 ;
  wire \row_index_reg[0]_i_2_n_10 ;
  wire \row_index_reg[0]_i_2_n_11 ;
  wire \row_index_reg[0]_i_2_n_12 ;
  wire \row_index_reg[0]_i_2_n_13 ;
  wire \row_index_reg[0]_i_2_n_14 ;
  wire \row_index_reg[0]_i_2_n_15 ;
  wire \row_index_reg[0]_i_2_n_2 ;
  wire \row_index_reg[0]_i_2_n_3 ;
  wire \row_index_reg[0]_i_2_n_4 ;
  wire \row_index_reg[0]_i_2_n_5 ;
  wire \row_index_reg[0]_i_2_n_6 ;
  wire \row_index_reg[0]_i_2_n_7 ;
  wire \row_index_reg[0]_i_2_n_8 ;
  wire \row_index_reg[0]_i_2_n_9 ;
  wire \row_index_reg[16]_i_1_n_0 ;
  wire \row_index_reg[16]_i_1_n_1 ;
  wire \row_index_reg[16]_i_1_n_10 ;
  wire \row_index_reg[16]_i_1_n_11 ;
  wire \row_index_reg[16]_i_1_n_12 ;
  wire \row_index_reg[16]_i_1_n_13 ;
  wire \row_index_reg[16]_i_1_n_14 ;
  wire \row_index_reg[16]_i_1_n_15 ;
  wire \row_index_reg[16]_i_1_n_2 ;
  wire \row_index_reg[16]_i_1_n_3 ;
  wire \row_index_reg[16]_i_1_n_4 ;
  wire \row_index_reg[16]_i_1_n_5 ;
  wire \row_index_reg[16]_i_1_n_6 ;
  wire \row_index_reg[16]_i_1_n_7 ;
  wire \row_index_reg[16]_i_1_n_8 ;
  wire \row_index_reg[16]_i_1_n_9 ;
  wire \row_index_reg[24]_i_1_n_1 ;
  wire \row_index_reg[24]_i_1_n_10 ;
  wire \row_index_reg[24]_i_1_n_11 ;
  wire \row_index_reg[24]_i_1_n_12 ;
  wire \row_index_reg[24]_i_1_n_13 ;
  wire \row_index_reg[24]_i_1_n_14 ;
  wire \row_index_reg[24]_i_1_n_15 ;
  wire \row_index_reg[24]_i_1_n_2 ;
  wire \row_index_reg[24]_i_1_n_3 ;
  wire \row_index_reg[24]_i_1_n_4 ;
  wire \row_index_reg[24]_i_1_n_5 ;
  wire \row_index_reg[24]_i_1_n_6 ;
  wire \row_index_reg[24]_i_1_n_7 ;
  wire \row_index_reg[24]_i_1_n_8 ;
  wire \row_index_reg[24]_i_1_n_9 ;
  wire \row_index_reg[8]_i_1_n_0 ;
  wire \row_index_reg[8]_i_1_n_1 ;
  wire \row_index_reg[8]_i_1_n_10 ;
  wire \row_index_reg[8]_i_1_n_11 ;
  wire \row_index_reg[8]_i_1_n_12 ;
  wire \row_index_reg[8]_i_1_n_13 ;
  wire \row_index_reg[8]_i_1_n_14 ;
  wire \row_index_reg[8]_i_1_n_15 ;
  wire \row_index_reg[8]_i_1_n_2 ;
  wire \row_index_reg[8]_i_1_n_3 ;
  wire \row_index_reg[8]_i_1_n_4 ;
  wire \row_index_reg[8]_i_1_n_5 ;
  wire \row_index_reg[8]_i_1_n_6 ;
  wire \row_index_reg[8]_i_1_n_7 ;
  wire \row_index_reg[8]_i_1_n_8 ;
  wire \row_index_reg[8]_i_1_n_9 ;
  wire rst;
  wire [5:0]write_addr;
  wire \write_addr[0]_i_1_n_0 ;
  wire \write_addr[1]_i_1_n_0 ;
  wire \write_addr[2]_i_1_n_0 ;
  wire \write_addr[3]_i_1_n_0 ;
  wire \write_addr[4]_i_1_n_0 ;
  wire \write_addr[5]_i_2_n_0 ;
  wire write_addr__0;
  wire write_en;
  wire [7:0]\NLW_data_out_ready1_inferred__1/i__carry_O_UNCONNECTED ;
  wire [7:3]\NLW_data_out_ready1_inferred__1/i__carry__0_CO_UNCONNECTED ;
  wire [7:0]\NLW_data_out_ready1_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [7:6]NLW_i__carry__0_i_4_CO_UNCONNECTED;
  wire [7:7]NLW_i__carry__0_i_4_O_UNCONNECTED;
  wire NLW_memory_reg_0_63_0_6_DOH_UNCONNECTED;
  wire NLW_memory_reg_0_63_14_20_DOH_UNCONNECTED;
  wire NLW_memory_reg_0_63_21_27_DOH_UNCONNECTED;
  wire NLW_memory_reg_0_63_28_31_DOE_UNCONNECTED;
  wire NLW_memory_reg_0_63_28_31_DOF_UNCONNECTED;
  wire NLW_memory_reg_0_63_28_31_DOG_UNCONNECTED;
  wire NLW_memory_reg_0_63_28_31_DOH_UNCONNECTED;
  wire NLW_memory_reg_0_63_7_13_DOH_UNCONNECTED;
  wire [7:4]NLW_p_0_in_carry_CO_UNCONNECTED;
  wire [7:5]NLW_p_0_in_carry_O_UNCONNECTED;
  wire [7:2]NLW_p_6_in_carry_CO_UNCONNECTED;
  wire [7:0]NLW_p_6_in_carry_O_UNCONNECTED;
  wire [7:7]\NLW_row_index_reg[24]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h88888888F8888888)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(write_en),
        .I2(data_out_ready_i_2_n_0),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(data_in_ready),
        .I5(busy_reg_n_0),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,write:010,read:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .PRE(rst),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "idle:001,write:010,read:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .CLR(rst),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "idle:001,write:010,read:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .CLR(rst),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  LUT4 #(
    .INIT(16'hBF40)) 
    busy_i_1
       (.I0(rst),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(data_in_ready),
        .I3(busy_reg_n_0),
        .O(busy_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    busy_reg
       (.C(clk),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .Q(busy_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000DFFF)) 
    \col_cnt[0]_i_1 
       (.I0(data_out_ready1),
        .I1(\col_cnt_reg_n_0_[3] ),
        .I2(\col_cnt_reg_n_0_[2] ),
        .I3(\col_cnt_reg_n_0_[1] ),
        .I4(\col_cnt_reg_n_0_[0] ),
        .O(\col_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00FFDF00)) 
    \col_cnt[1]_i_1 
       (.I0(data_out_ready1),
        .I1(\col_cnt_reg_n_0_[3] ),
        .I2(\col_cnt_reg_n_0_[2] ),
        .I3(\col_cnt_reg_n_0_[1] ),
        .I4(\col_cnt_reg_n_0_[0] ),
        .O(\col_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0FDFF000)) 
    \col_cnt[2]_i_1 
       (.I0(data_out_ready1),
        .I1(\col_cnt_reg_n_0_[3] ),
        .I2(\col_cnt_reg_n_0_[1] ),
        .I3(\col_cnt_reg_n_0_[0] ),
        .I4(\col_cnt_reg_n_0_[2] ),
        .O(\col_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0808080800000800)) 
    \col_cnt[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(data_in_ready),
        .I2(busy_reg_n_0),
        .I3(data_out_ready1),
        .I4(\read_addr[4]_i_3_n_0 ),
        .I5(data_out_ready_i_2_n_0),
        .O(col_cnt));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \col_cnt[3]_i_2 
       (.I0(\col_cnt_reg_n_0_[0] ),
        .I1(\col_cnt_reg_n_0_[1] ),
        .I2(\col_cnt_reg_n_0_[2] ),
        .I3(\col_cnt_reg_n_0_[3] ),
        .O(\col_cnt[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \col_cnt_reg[0] 
       (.C(clk),
        .CE(col_cnt),
        .CLR(rst),
        .D(\col_cnt[0]_i_1_n_0 ),
        .Q(\col_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \col_cnt_reg[1] 
       (.C(clk),
        .CE(col_cnt),
        .CLR(rst),
        .D(\col_cnt[1]_i_1_n_0 ),
        .Q(\col_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \col_cnt_reg[2] 
       (.C(clk),
        .CE(col_cnt),
        .CLR(rst),
        .D(\col_cnt[2]_i_1_n_0 ),
        .Q(\col_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \col_cnt_reg[3] 
       (.C(clk),
        .CE(col_cnt),
        .CLR(rst),
        .D(\col_cnt[3]_i_2_n_0 ),
        .Q(\col_cnt_reg_n_0_[3] ));
  LUT3 #(
    .INIT(8'h08)) 
    \current_code_rate[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(write_en),
        .I2(rst),
        .O(current_code_rate0));
  FDRE #(
    .INIT(1'b0)) 
    \current_code_rate_reg[0] 
       (.C(clk),
        .CE(current_code_rate0),
        .D(code_rate[0]),
        .Q(current_code_rate[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_code_rate_reg[1] 
       (.C(clk),
        .CE(current_code_rate0),
        .D(code_rate[1]),
        .Q(current_code_rate[1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \data_out[31]_i_1 
       (.I0(busy_reg_n_0),
        .I1(data_in_ready),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\data_out[31]_i_1_n_0 ));
  CARRY8 \data_out_ready1_inferred__1/i__carry 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\data_out_ready1_inferred__1/i__carry_n_0 ,\data_out_ready1_inferred__1/i__carry_n_1 ,\data_out_ready1_inferred__1/i__carry_n_2 ,\data_out_ready1_inferred__1/i__carry_n_3 ,\data_out_ready1_inferred__1/i__carry_n_4 ,\data_out_ready1_inferred__1/i__carry_n_5 ,\data_out_ready1_inferred__1/i__carry_n_6 ,\data_out_ready1_inferred__1/i__carry_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_data_out_ready1_inferred__1/i__carry_O_UNCONNECTED [7:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  CARRY8 \data_out_ready1_inferred__1/i__carry__0 
       (.CI(\data_out_ready1_inferred__1/i__carry_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_data_out_ready1_inferred__1/i__carry__0_CO_UNCONNECTED [7:3],data_out_ready1,\data_out_ready1_inferred__1/i__carry__0_n_6 ,\data_out_ready1_inferred__1/i__carry__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_data_out_ready1_inferred__1/i__carry__0_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAEAAA)) 
    data_out_ready_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(data_out_ready_i_2_n_0),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(data_in_ready),
        .I4(busy_reg_n_0),
        .I5(data_out_ready),
        .O(data_out_ready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    data_out_ready_i_2
       (.I0(\col_cnt_reg_n_0_[0] ),
        .I1(\col_cnt_reg_n_0_[1] ),
        .I2(\col_cnt_reg_n_0_[2] ),
        .I3(\col_cnt_reg_n_0_[3] ),
        .I4(data_out_ready1),
        .O(data_out_ready_i_2_n_0));
  FDCE data_out_ready_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(data_out_ready_i_1_n_0),
        .Q(data_out_ready));
  FDCE \data_out_reg[0] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[0]),
        .Q(data_out[0]));
  FDCE \data_out_reg[10] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[10]),
        .Q(data_out[10]));
  FDCE \data_out_reg[11] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[11]),
        .Q(data_out[11]));
  FDCE \data_out_reg[12] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[12]),
        .Q(data_out[12]));
  FDCE \data_out_reg[13] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[13]),
        .Q(data_out[13]));
  FDCE \data_out_reg[14] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[14]),
        .Q(data_out[14]));
  FDCE \data_out_reg[15] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[15]),
        .Q(data_out[15]));
  FDCE \data_out_reg[16] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[16]),
        .Q(data_out[16]));
  FDCE \data_out_reg[17] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[17]),
        .Q(data_out[17]));
  FDCE \data_out_reg[18] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[18]),
        .Q(data_out[18]));
  FDCE \data_out_reg[19] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[19]),
        .Q(data_out[19]));
  FDCE \data_out_reg[1] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[1]),
        .Q(data_out[1]));
  FDCE \data_out_reg[20] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[20]),
        .Q(data_out[20]));
  FDCE \data_out_reg[21] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[21]),
        .Q(data_out[21]));
  FDCE \data_out_reg[22] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[22]),
        .Q(data_out[22]));
  FDCE \data_out_reg[23] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[23]),
        .Q(data_out[23]));
  FDCE \data_out_reg[24] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[24]),
        .Q(data_out[24]));
  FDCE \data_out_reg[25] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[25]),
        .Q(data_out[25]));
  FDCE \data_out_reg[26] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[26]),
        .Q(data_out[26]));
  FDCE \data_out_reg[27] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[27]),
        .Q(data_out[27]));
  FDCE \data_out_reg[28] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[28]),
        .Q(data_out[28]));
  FDCE \data_out_reg[29] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[29]),
        .Q(data_out[29]));
  FDCE \data_out_reg[2] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[2]),
        .Q(data_out[2]));
  FDCE \data_out_reg[30] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[30]),
        .Q(data_out[30]));
  FDCE \data_out_reg[31] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[31]),
        .Q(data_out[31]));
  FDCE \data_out_reg[3] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[3]),
        .Q(data_out[3]));
  FDCE \data_out_reg[4] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[4]),
        .Q(data_out[4]));
  FDCE \data_out_reg[5] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[5]),
        .Q(data_out[5]));
  FDCE \data_out_reg[6] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[6]),
        .Q(data_out[6]));
  FDCE \data_out_reg[7] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[7]),
        .Q(data_out[7]));
  FDCE \data_out_reg[8] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[8]),
        .Q(data_out[8]));
  FDCE \data_out_reg[9] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_out[9]),
        .Q(data_out[9]));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_1
       (.I0(data_out_ready2[30]),
        .I1(data_out_ready2[31]),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_10
       (.I0(row_index_reg[26]),
        .O(i__carry__0_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_11
       (.I0(row_index_reg[25]),
        .O(i__carry__0_i_11_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_2
       (.I0(data_out_ready2[28]),
        .I1(data_out_ready2[27]),
        .I2(data_out_ready2[29]),
        .O(i__carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_3
       (.I0(data_out_ready2[25]),
        .I1(data_out_ready2[24]),
        .I2(data_out_ready2[26]),
        .O(i__carry__0_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 i__carry__0_i_4
       (.CI(i__carry_i_9_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_i__carry__0_i_4_CO_UNCONNECTED[7:6],i__carry__0_i_4_n_2,i__carry__0_i_4_n_3,i__carry__0_i_4_n_4,i__carry__0_i_4_n_5,i__carry__0_i_4_n_6,i__carry__0_i_4_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_i__carry__0_i_4_O_UNCONNECTED[7],data_out_ready2[31:25]}),
        .S({1'b0,i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0,i__carry__0_i_9_n_0,i__carry__0_i_10_n_0,i__carry__0_i_11_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_5
       (.I0(row_index_reg[31]),
        .O(i__carry__0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_6
       (.I0(row_index_reg[30]),
        .O(i__carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_7
       (.I0(row_index_reg[29]),
        .O(i__carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_8
       (.I0(row_index_reg[28]),
        .O(i__carry__0_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_9
       (.I0(row_index_reg[27]),
        .O(i__carry__0_i_9_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_1
       (.I0(data_out_ready2[22]),
        .I1(data_out_ready2[21]),
        .I2(data_out_ready2[23]),
        .O(i__carry_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 i__carry_i_10
       (.CI(i__carry_i_11_n_0),
        .CI_TOP(1'b0),
        .CO({i__carry_i_10_n_0,i__carry_i_10_n_1,i__carry_i_10_n_2,i__carry_i_10_n_3,i__carry_i_10_n_4,i__carry_i_10_n_5,i__carry_i_10_n_6,i__carry_i_10_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data_out_ready2[16:9]),
        .S({i__carry_i_20_n_0,i__carry_i_21_n_0,i__carry_i_22_n_0,i__carry_i_23_n_0,i__carry_i_24_n_0,i__carry_i_25_n_0,i__carry_i_26_n_0,i__carry_i_27_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 i__carry_i_11
       (.CI(i__carry_i_28_n_0),
        .CI_TOP(1'b0),
        .CO({i__carry_i_11_n_0,i__carry_i_11_n_1,i__carry_i_11_n_2,i__carry_i_11_n_3,i__carry_i_11_n_4,i__carry_i_11_n_5,i__carry_i_11_n_6,i__carry_i_11_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data_out_ready2[8:1]),
        .S({i__carry_i_29_n_0,i__carry_i_30_n_0,i__carry_i_31_n_0,i__carry_i_32_n_0,i__carry_i_33_n_0,i__carry_i_34_n_0,i__carry_i_35_n_0,i__carry_i_36_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_12
       (.I0(row_index_reg[24]),
        .O(i__carry_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_13
       (.I0(row_index_reg[23]),
        .O(i__carry_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_14
       (.I0(row_index_reg[22]),
        .O(i__carry_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_15
       (.I0(row_index_reg[21]),
        .O(i__carry_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_16
       (.I0(row_index_reg[20]),
        .O(i__carry_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_17
       (.I0(row_index_reg[19]),
        .O(i__carry_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_18
       (.I0(row_index_reg[18]),
        .O(i__carry_i_18_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_19
       (.I0(row_index_reg[17]),
        .O(i__carry_i_19_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_2
       (.I0(data_out_ready2[19]),
        .I1(data_out_ready2[18]),
        .I2(data_out_ready2[20]),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_20
       (.I0(row_index_reg[16]),
        .O(i__carry_i_20_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_21
       (.I0(row_index_reg[15]),
        .O(i__carry_i_21_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_22
       (.I0(row_index_reg[14]),
        .O(i__carry_i_22_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_23
       (.I0(row_index_reg[13]),
        .O(i__carry_i_23_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_24
       (.I0(row_index_reg[12]),
        .O(i__carry_i_24_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_25
       (.I0(row_index_reg[11]),
        .O(i__carry_i_25_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_26
       (.I0(row_index_reg[10]),
        .O(i__carry_i_26_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_27
       (.I0(row_index_reg[9]),
        .O(i__carry_i_27_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_28
       (.I0(row_index_reg[0]),
        .O(i__carry_i_28_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_29
       (.I0(row_index_reg[8]),
        .O(i__carry_i_29_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_3
       (.I0(data_out_ready2[16]),
        .I1(data_out_ready2[15]),
        .I2(data_out_ready2[17]),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_30
       (.I0(row_index_reg[7]),
        .O(i__carry_i_30_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_31
       (.I0(row_index_reg[6]),
        .O(i__carry_i_31_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_32
       (.I0(row_index_reg[5]),
        .O(i__carry_i_32_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_33
       (.I0(row_index_reg[4]),
        .O(i__carry_i_33_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_34
       (.I0(row_index_reg[3]),
        .O(i__carry_i_34_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_35
       (.I0(row_index_reg[2]),
        .O(i__carry_i_35_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_36
       (.I0(row_index_reg[1]),
        .O(i__carry_i_36_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_4
       (.I0(data_out_ready2[13]),
        .I1(data_out_ready2[12]),
        .I2(data_out_ready2[14]),
        .O(i__carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_5
       (.I0(data_out_ready2[10]),
        .I1(data_out_ready2[9]),
        .I2(data_out_ready2[11]),
        .O(i__carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_6
       (.I0(data_out_ready2[7]),
        .I1(data_out_ready2[6]),
        .I2(data_out_ready2[8]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h1001)) 
    i__carry_i_7
       (.I0(data_out_ready2[5]),
        .I1(data_out_ready2[4]),
        .I2(data_out_ready2[3]),
        .I3(row_cnt[3]),
        .O(i__carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_8
       (.I0(row_cnt[2]),
        .I1(data_out_ready2[2]),
        .I2(row_index_reg[0]),
        .I3(row_cnt[0]),
        .I4(data_out_ready2[1]),
        .I5(row_cnt[1]),
        .O(i__carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 i__carry_i_9
       (.CI(i__carry_i_10_n_0),
        .CI_TOP(1'b0),
        .CO({i__carry_i_9_n_0,i__carry_i_9_n_1,i__carry_i_9_n_2,i__carry_i_9_n_3,i__carry_i_9_n_4,i__carry_i_9_n_5,i__carry_i_9_n_6,i__carry_i_9_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data_out_ready2[24:17]),
        .S({i__carry_i_12_n_0,i__carry_i_13_n_0,i__carry_i_14_n_0,i__carry_i_15_n_0,i__carry_i_16_n_0,i__carry_i_17_n_0,i__carry_i_18_n_0,i__carry_i_19_n_0}));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2016" *) 
  (* RTL_RAM_NAME = "U0/memory" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "62" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "6" *) 
  RAM64M8 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    memory_reg_0_63_0_6
       (.ADDRA(read_addr_reg),
        .ADDRB(read_addr_reg),
        .ADDRC(read_addr_reg),
        .ADDRD(read_addr_reg),
        .ADDRE(read_addr_reg),
        .ADDRF(read_addr_reg),
        .ADDRG(read_addr_reg),
        .ADDRH(write_addr),
        .DIA(data_in[0]),
        .DIB(data_in[1]),
        .DIC(data_in[2]),
        .DID(data_in[3]),
        .DIE(data_in[4]),
        .DIF(data_in[5]),
        .DIG(data_in[6]),
        .DIH(1'b0),
        .DOA(p_1_out[0]),
        .DOB(p_1_out[1]),
        .DOC(p_1_out[2]),
        .DOD(p_1_out[3]),
        .DOE(p_1_out[4]),
        .DOF(p_1_out[5]),
        .DOG(p_1_out[6]),
        .DOH(NLW_memory_reg_0_63_0_6_DOH_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  LUT4 #(
    .INIT(16'h00A8)) 
    memory_reg_0_63_0_6_i_1
       (.I0(write_en),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(rst),
        .O(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2016" *) 
  (* RTL_RAM_NAME = "U0/memory" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "62" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "20" *) 
  RAM64M8 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    memory_reg_0_63_14_20
       (.ADDRA(read_addr_reg),
        .ADDRB(read_addr_reg),
        .ADDRC(read_addr_reg),
        .ADDRD(read_addr_reg),
        .ADDRE(read_addr_reg),
        .ADDRF(read_addr_reg),
        .ADDRG(read_addr_reg),
        .ADDRH(write_addr),
        .DIA(data_in[14]),
        .DIB(data_in[15]),
        .DIC(data_in[16]),
        .DID(data_in[17]),
        .DIE(data_in[18]),
        .DIF(data_in[19]),
        .DIG(data_in[20]),
        .DIH(1'b0),
        .DOA(p_1_out[14]),
        .DOB(p_1_out[15]),
        .DOC(p_1_out[16]),
        .DOD(p_1_out[17]),
        .DOE(p_1_out[18]),
        .DOF(p_1_out[19]),
        .DOG(p_1_out[20]),
        .DOH(NLW_memory_reg_0_63_14_20_DOH_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2016" *) 
  (* RTL_RAM_NAME = "U0/memory" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "62" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "27" *) 
  RAM64M8 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    memory_reg_0_63_21_27
       (.ADDRA(read_addr_reg),
        .ADDRB(read_addr_reg),
        .ADDRC(read_addr_reg),
        .ADDRD(read_addr_reg),
        .ADDRE(read_addr_reg),
        .ADDRF(read_addr_reg),
        .ADDRG(read_addr_reg),
        .ADDRH(write_addr),
        .DIA(data_in[21]),
        .DIB(data_in[22]),
        .DIC(data_in[23]),
        .DID(data_in[24]),
        .DIE(data_in[25]),
        .DIF(data_in[26]),
        .DIG(data_in[27]),
        .DIH(1'b0),
        .DOA(p_1_out[21]),
        .DOB(p_1_out[22]),
        .DOC(p_1_out[23]),
        .DOD(p_1_out[24]),
        .DOE(p_1_out[25]),
        .DOF(p_1_out[26]),
        .DOG(p_1_out[27]),
        .DOH(NLW_memory_reg_0_63_21_27_DOH_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2016" *) 
  (* RTL_RAM_NAME = "U0/memory" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "62" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "31" *) 
  RAM64M8 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    memory_reg_0_63_28_31
       (.ADDRA(read_addr_reg),
        .ADDRB(read_addr_reg),
        .ADDRC(read_addr_reg),
        .ADDRD(read_addr_reg),
        .ADDRE(read_addr_reg),
        .ADDRF(read_addr_reg),
        .ADDRG(read_addr_reg),
        .ADDRH(write_addr),
        .DIA(data_in[28]),
        .DIB(data_in[29]),
        .DIC(data_in[30]),
        .DID(data_in[31]),
        .DIE(1'b0),
        .DIF(1'b0),
        .DIG(1'b0),
        .DIH(1'b0),
        .DOA(p_1_out[28]),
        .DOB(p_1_out[29]),
        .DOC(p_1_out[30]),
        .DOD(p_1_out[31]),
        .DOE(NLW_memory_reg_0_63_28_31_DOE_UNCONNECTED),
        .DOF(NLW_memory_reg_0_63_28_31_DOF_UNCONNECTED),
        .DOG(NLW_memory_reg_0_63_28_31_DOG_UNCONNECTED),
        .DOH(NLW_memory_reg_0_63_28_31_DOH_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2016" *) 
  (* RTL_RAM_NAME = "U0/memory" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "62" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "13" *) 
  RAM64M8 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    memory_reg_0_63_7_13
       (.ADDRA(read_addr_reg),
        .ADDRB(read_addr_reg),
        .ADDRC(read_addr_reg),
        .ADDRD(read_addr_reg),
        .ADDRE(read_addr_reg),
        .ADDRF(read_addr_reg),
        .ADDRG(read_addr_reg),
        .ADDRH(write_addr),
        .DIA(data_in[7]),
        .DIB(data_in[8]),
        .DIC(data_in[9]),
        .DID(data_in[10]),
        .DIE(data_in[11]),
        .DIF(data_in[12]),
        .DIG(data_in[13]),
        .DIH(1'b0),
        .DOA(p_1_out[7]),
        .DOB(p_1_out[8]),
        .DOC(p_1_out[9]),
        .DOD(p_1_out[10]),
        .DOE(p_1_out[11]),
        .DOF(p_1_out[12]),
        .DOG(p_1_out[13]),
        .DOH(NLW_memory_reg_0_63_7_13_DOH_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  CARRY8 p_0_in_carry
       (.CI(write_addr[0]),
        .CI_TOP(1'b0),
        .CO({NLW_p_0_in_carry_CO_UNCONNECTED[7:4],p_0_in_carry_n_4,p_0_in_carry_n_5,p_0_in_carry_n_6,p_0_in_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_p_0_in_carry_O_UNCONNECTED[7:5],in13}),
        .S({1'b0,1'b0,1'b0,write_addr[5:1]}));
  CARRY8 p_6_in_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_p_6_in_carry_CO_UNCONNECTED[7:2],p_6_in,p_6_in_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_p_6_in_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_6_in_carry_i_1_n_0,p_6_in_carry_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    p_6_in_carry_i_1
       (.I0(\col_cnt_reg_n_0_[3] ),
        .O(p_6_in_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    p_6_in_carry_i_2
       (.I0(\col_cnt_reg_n_0_[0] ),
        .I1(\col_cnt_reg_n_0_[1] ),
        .I2(\col_cnt_reg_n_0_[2] ),
        .O(p_6_in_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000FF00BFBF00FF)) 
    \read_addr[0]_i_1 
       (.I0(\col_cnt_reg_n_0_[3] ),
        .I1(\col_cnt_reg_n_0_[2] ),
        .I2(\col_cnt_reg_n_0_[1] ),
        .I3(row_cnt[0]),
        .I4(data_out_ready1),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\read_addr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h51010151)) 
    \read_addr[1]_i_1 
       (.I0(data_out_ready_i_2_n_0),
        .I1(\read_addr[1]_i_2_n_0 ),
        .I2(\read_addr[4]_i_3_n_0 ),
        .I3(\col_cnt_reg_n_0_[1] ),
        .I4(\col_cnt_reg_n_0_[0] ),
        .O(\read_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hB0E54F1A)) 
    \read_addr[1]_i_2 
       (.I0(data_out_ready1),
        .I1(row_cnt[0]),
        .I2(\col_cnt_reg_n_0_[0] ),
        .I3(row_cnt[1]),
        .I4(\col_cnt_reg_n_0_[1] ),
        .O(\read_addr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE2222E)) 
    \read_addr[2]_i_1 
       (.I0(\read_addr[2]_i_2_n_0 ),
        .I1(\read_addr[4]_i_3_n_0 ),
        .I2(\col_cnt_reg_n_0_[1] ),
        .I3(\col_cnt_reg_n_0_[0] ),
        .I4(\col_cnt_reg_n_0_[2] ),
        .I5(data_out_ready_i_2_n_0),
        .O(\read_addr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0FF0F0F069696969)) 
    \read_addr[2]_i_2 
       (.I0(\read_addr[2]_i_3_n_0 ),
        .I1(row_cnt[2]),
        .I2(\col_cnt_reg_n_0_[2] ),
        .I3(\col_cnt_reg_n_0_[0] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(data_out_ready1),
        .O(\read_addr[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h40F4)) 
    \read_addr[2]_i_3 
       (.I0(row_cnt[0]),
        .I1(\col_cnt_reg_n_0_[0] ),
        .I2(\col_cnt_reg_n_0_[1] ),
        .I3(row_cnt[1]),
        .O(\read_addr[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h51010151)) 
    \read_addr[3]_i_1 
       (.I0(data_out_ready_i_2_n_0),
        .I1(\read_addr[3]_i_2_n_0 ),
        .I2(\read_addr[4]_i_3_n_0 ),
        .I3(\read_addr[4]_i_2_n_0 ),
        .I4(\col_cnt_reg_n_0_[3] ),
        .O(\read_addr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF099F066F066F099)) 
    \read_addr[3]_i_2 
       (.I0(row_cnt[0]),
        .I1(row_cnt[3]),
        .I2(\read_addr[3]_i_3_n_0 ),
        .I3(data_out_ready1),
        .I4(\read_addr[5]_i_3_n_0 ),
        .I5(\col_cnt_reg_n_0_[3] ),
        .O(\read_addr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h9555)) 
    \read_addr[3]_i_3 
       (.I0(\col_cnt_reg_n_0_[3] ),
        .I1(\col_cnt_reg_n_0_[2] ),
        .I2(\col_cnt_reg_n_0_[1] ),
        .I3(\col_cnt_reg_n_0_[0] ),
        .O(\read_addr[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h202F20202020202F)) 
    \read_addr[4]_i_1 
       (.I0(\col_cnt_reg_n_0_[3] ),
        .I1(\read_addr[4]_i_2_n_0 ),
        .I2(\read_addr[4]_i_3_n_0 ),
        .I3(data_out_ready1),
        .I4(\read_addr[5]_i_2_n_0 ),
        .I5(\read_addr[4]_i_4_n_0 ),
        .O(\read_addr[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \read_addr[4]_i_2 
       (.I0(\col_cnt_reg_n_0_[0] ),
        .I1(\col_cnt_reg_n_0_[1] ),
        .I2(\col_cnt_reg_n_0_[2] ),
        .O(\read_addr[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \read_addr[4]_i_3 
       (.I0(row_cnt[1]),
        .I1(row_cnt[0]),
        .I2(row_cnt[2]),
        .I3(p_6_in),
        .I4(row_cnt[3]),
        .O(\read_addr[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h43CC)) 
    \read_addr[4]_i_4 
       (.I0(row_cnt[2]),
        .I1(row_cnt[1]),
        .I2(row_cnt[0]),
        .I3(row_cnt[3]),
        .O(\read_addr[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1455010015054050)) 
    \read_addr[5]_i_1 
       (.I0(data_out_ready1),
        .I1(row_cnt[0]),
        .I2(row_cnt[1]),
        .I3(row_cnt[3]),
        .I4(row_cnt[2]),
        .I5(\read_addr[5]_i_2_n_0 ),
        .O(\read_addr[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7117)) 
    \read_addr[5]_i_2 
       (.I0(\col_cnt_reg_n_0_[3] ),
        .I1(\read_addr[5]_i_3_n_0 ),
        .I2(row_cnt[0]),
        .I3(row_cnt[3]),
        .O(\read_addr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44D40000FFFF44D4)) 
    \read_addr[5]_i_3 
       (.I0(row_cnt[1]),
        .I1(\col_cnt_reg_n_0_[1] ),
        .I2(\col_cnt_reg_n_0_[0] ),
        .I3(row_cnt[0]),
        .I4(\col_cnt_reg_n_0_[2] ),
        .I5(row_cnt[2]),
        .O(\read_addr[5]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \read_addr_reg[0] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\read_addr[0]_i_1_n_0 ),
        .Q(read_addr_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \read_addr_reg[1] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\read_addr[1]_i_1_n_0 ),
        .Q(read_addr_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \read_addr_reg[2] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\read_addr[2]_i_1_n_0 ),
        .Q(read_addr_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \read_addr_reg[3] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\read_addr[3]_i_1_n_0 ),
        .Q(read_addr_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \read_addr_reg[4] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\read_addr[4]_i_1_n_0 ),
        .Q(read_addr_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \read_addr_reg[5] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\read_addr[5]_i_1_n_0 ),
        .Q(read_addr_reg[5]));
  LUT6 #(
    .INIT(64'hAAAAAABFAAAAAA80)) 
    read_valid_i_1
       (.I0(\data_out[31]_i_1_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(write_en),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(read_valid),
        .O(read_valid_i_1_n_0));
  FDCE read_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(read_valid_i_1_n_0),
        .Q(read_valid));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h000D)) 
    \row_cnt[0]_i_1 
       (.I0(data_out_ready1),
        .I1(\read_addr[4]_i_3_n_0 ),
        .I2(data_out_ready_i_2_n_0),
        .I3(row_cnt[0]),
        .O(\row_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \row_cnt[1]_i_1 
       (.I0(row_cnt[1]),
        .I1(row_cnt[0]),
        .I2(data_out_ready1),
        .O(\row_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \row_cnt[2]_i_1 
       (.I0(data_out_ready1),
        .I1(row_cnt[0]),
        .I2(row_cnt[1]),
        .I3(row_cnt[2]),
        .O(\row_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \row_cnt[3]_i_1 
       (.I0(row_cnt[2]),
        .I1(row_cnt[1]),
        .I2(row_cnt[0]),
        .I3(row_cnt[3]),
        .I4(data_out_ready1),
        .O(\row_cnt[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \row_cnt_reg[0] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\row_cnt[0]_i_1_n_0 ),
        .Q(row_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \row_cnt_reg[1] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\row_cnt[1]_i_1_n_0 ),
        .Q(row_cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \row_cnt_reg[2] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\row_cnt[2]_i_1_n_0 ),
        .Q(row_cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \row_cnt_reg[3] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\row_cnt[3]_i_1_n_0 ),
        .Q(row_cnt[3]));
  LUT6 #(
    .INIT(64'h000000000E000000)) 
    \row_index[0]_i_1 
       (.I0(data_out_ready_i_2_n_0),
        .I1(\read_addr[4]_i_3_n_0 ),
        .I2(busy_reg_n_0),
        .I3(data_in_ready),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(rst),
        .O(\row_index[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[0]_i_10 
       (.I0(row_index_reg[1]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h5555555551555555)) 
    \row_index[0]_i_11 
       (.I0(row_index_reg[0]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    \row_index[0]_i_3 
       (.I0(data_out_ready1),
        .I1(\col_cnt_reg_n_0_[3] ),
        .I2(\col_cnt_reg_n_0_[2] ),
        .I3(\col_cnt_reg_n_0_[1] ),
        .I4(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[0]_i_4 
       (.I0(row_index_reg[7]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[0]_i_5 
       (.I0(row_index_reg[6]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[0]_i_6 
       (.I0(row_index_reg[5]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[0]_i_7 
       (.I0(row_index_reg[4]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[0]_i_8 
       (.I0(row_index_reg[3]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[0]_i_9 
       (.I0(row_index_reg[2]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[16]_i_2 
       (.I0(row_index_reg[23]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[16]_i_3 
       (.I0(row_index_reg[22]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[16]_i_4 
       (.I0(row_index_reg[21]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[16]_i_5 
       (.I0(row_index_reg[20]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[16]_i_6 
       (.I0(row_index_reg[19]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[16]_i_7 
       (.I0(row_index_reg[18]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[16]_i_8 
       (.I0(row_index_reg[17]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[16]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[16]_i_9 
       (.I0(row_index_reg[16]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[24]_i_2 
       (.I0(row_index_reg[31]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[24]_i_3 
       (.I0(row_index_reg[30]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[24]_i_4 
       (.I0(row_index_reg[29]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[24]_i_5 
       (.I0(row_index_reg[28]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[24]_i_6 
       (.I0(row_index_reg[27]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[24]_i_7 
       (.I0(row_index_reg[26]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[24]_i_8 
       (.I0(row_index_reg[25]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[24]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[24]_i_9 
       (.I0(row_index_reg[24]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[24]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[8]_i_2 
       (.I0(row_index_reg[15]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[8]_i_3 
       (.I0(row_index_reg[14]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[8]_i_4 
       (.I0(row_index_reg[13]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[8]_i_5 
       (.I0(row_index_reg[12]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[8]_i_6 
       (.I0(row_index_reg[11]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[8]_i_7 
       (.I0(row_index_reg[10]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[8]_i_8 
       (.I0(row_index_reg[9]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \row_index[8]_i_9 
       (.I0(row_index_reg[8]),
        .I1(data_out_ready1),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(\col_cnt_reg_n_0_[0] ),
        .O(\row_index[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[0] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[0]_i_2_n_15 ),
        .Q(row_index_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \row_index_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\row_index_reg[0]_i_2_n_0 ,\row_index_reg[0]_i_2_n_1 ,\row_index_reg[0]_i_2_n_2 ,\row_index_reg[0]_i_2_n_3 ,\row_index_reg[0]_i_2_n_4 ,\row_index_reg[0]_i_2_n_5 ,\row_index_reg[0]_i_2_n_6 ,\row_index_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\row_index[0]_i_3_n_0 }),
        .O({\row_index_reg[0]_i_2_n_8 ,\row_index_reg[0]_i_2_n_9 ,\row_index_reg[0]_i_2_n_10 ,\row_index_reg[0]_i_2_n_11 ,\row_index_reg[0]_i_2_n_12 ,\row_index_reg[0]_i_2_n_13 ,\row_index_reg[0]_i_2_n_14 ,\row_index_reg[0]_i_2_n_15 }),
        .S({\row_index[0]_i_4_n_0 ,\row_index[0]_i_5_n_0 ,\row_index[0]_i_6_n_0 ,\row_index[0]_i_7_n_0 ,\row_index[0]_i_8_n_0 ,\row_index[0]_i_9_n_0 ,\row_index[0]_i_10_n_0 ,\row_index[0]_i_11_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[10] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[8]_i_1_n_13 ),
        .Q(row_index_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[11] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[8]_i_1_n_12 ),
        .Q(row_index_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[12] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[8]_i_1_n_11 ),
        .Q(row_index_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[13] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[8]_i_1_n_10 ),
        .Q(row_index_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[14] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[8]_i_1_n_9 ),
        .Q(row_index_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[15] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[8]_i_1_n_8 ),
        .Q(row_index_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[16] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[16]_i_1_n_15 ),
        .Q(row_index_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \row_index_reg[16]_i_1 
       (.CI(\row_index_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\row_index_reg[16]_i_1_n_0 ,\row_index_reg[16]_i_1_n_1 ,\row_index_reg[16]_i_1_n_2 ,\row_index_reg[16]_i_1_n_3 ,\row_index_reg[16]_i_1_n_4 ,\row_index_reg[16]_i_1_n_5 ,\row_index_reg[16]_i_1_n_6 ,\row_index_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\row_index_reg[16]_i_1_n_8 ,\row_index_reg[16]_i_1_n_9 ,\row_index_reg[16]_i_1_n_10 ,\row_index_reg[16]_i_1_n_11 ,\row_index_reg[16]_i_1_n_12 ,\row_index_reg[16]_i_1_n_13 ,\row_index_reg[16]_i_1_n_14 ,\row_index_reg[16]_i_1_n_15 }),
        .S({\row_index[16]_i_2_n_0 ,\row_index[16]_i_3_n_0 ,\row_index[16]_i_4_n_0 ,\row_index[16]_i_5_n_0 ,\row_index[16]_i_6_n_0 ,\row_index[16]_i_7_n_0 ,\row_index[16]_i_8_n_0 ,\row_index[16]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[17] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[16]_i_1_n_14 ),
        .Q(row_index_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[18] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[16]_i_1_n_13 ),
        .Q(row_index_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[19] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[16]_i_1_n_12 ),
        .Q(row_index_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[1] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[0]_i_2_n_14 ),
        .Q(row_index_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[20] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[16]_i_1_n_11 ),
        .Q(row_index_reg[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[21] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[16]_i_1_n_10 ),
        .Q(row_index_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[22] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[16]_i_1_n_9 ),
        .Q(row_index_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[23] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[16]_i_1_n_8 ),
        .Q(row_index_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[24] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[24]_i_1_n_15 ),
        .Q(row_index_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \row_index_reg[24]_i_1 
       (.CI(\row_index_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_row_index_reg[24]_i_1_CO_UNCONNECTED [7],\row_index_reg[24]_i_1_n_1 ,\row_index_reg[24]_i_1_n_2 ,\row_index_reg[24]_i_1_n_3 ,\row_index_reg[24]_i_1_n_4 ,\row_index_reg[24]_i_1_n_5 ,\row_index_reg[24]_i_1_n_6 ,\row_index_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\row_index_reg[24]_i_1_n_8 ,\row_index_reg[24]_i_1_n_9 ,\row_index_reg[24]_i_1_n_10 ,\row_index_reg[24]_i_1_n_11 ,\row_index_reg[24]_i_1_n_12 ,\row_index_reg[24]_i_1_n_13 ,\row_index_reg[24]_i_1_n_14 ,\row_index_reg[24]_i_1_n_15 }),
        .S({\row_index[24]_i_2_n_0 ,\row_index[24]_i_3_n_0 ,\row_index[24]_i_4_n_0 ,\row_index[24]_i_5_n_0 ,\row_index[24]_i_6_n_0 ,\row_index[24]_i_7_n_0 ,\row_index[24]_i_8_n_0 ,\row_index[24]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[25] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[24]_i_1_n_14 ),
        .Q(row_index_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[26] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[24]_i_1_n_13 ),
        .Q(row_index_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[27] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[24]_i_1_n_12 ),
        .Q(row_index_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[28] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[24]_i_1_n_11 ),
        .Q(row_index_reg[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[29] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[24]_i_1_n_10 ),
        .Q(row_index_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[2] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[0]_i_2_n_13 ),
        .Q(row_index_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[30] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[24]_i_1_n_9 ),
        .Q(row_index_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[31] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[24]_i_1_n_8 ),
        .Q(row_index_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[3] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[0]_i_2_n_12 ),
        .Q(row_index_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[4] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[0]_i_2_n_11 ),
        .Q(row_index_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[5] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[0]_i_2_n_10 ),
        .Q(row_index_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[6] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[0]_i_2_n_9 ),
        .Q(row_index_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[7] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[0]_i_2_n_8 ),
        .Q(row_index_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[8] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[8]_i_1_n_15 ),
        .Q(row_index_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \row_index_reg[8]_i_1 
       (.CI(\row_index_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\row_index_reg[8]_i_1_n_0 ,\row_index_reg[8]_i_1_n_1 ,\row_index_reg[8]_i_1_n_2 ,\row_index_reg[8]_i_1_n_3 ,\row_index_reg[8]_i_1_n_4 ,\row_index_reg[8]_i_1_n_5 ,\row_index_reg[8]_i_1_n_6 ,\row_index_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\row_index_reg[8]_i_1_n_8 ,\row_index_reg[8]_i_1_n_9 ,\row_index_reg[8]_i_1_n_10 ,\row_index_reg[8]_i_1_n_11 ,\row_index_reg[8]_i_1_n_12 ,\row_index_reg[8]_i_1_n_13 ,\row_index_reg[8]_i_1_n_14 ,\row_index_reg[8]_i_1_n_15 }),
        .S({\row_index[8]_i_2_n_0 ,\row_index[8]_i_3_n_0 ,\row_index[8]_i_4_n_0 ,\row_index[8]_i_5_n_0 ,\row_index[8]_i_6_n_0 ,\row_index[8]_i_7_n_0 ,\row_index[8]_i_8_n_0 ,\row_index[8]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \row_index_reg[9] 
       (.C(clk),
        .CE(\row_index[0]_i_1_n_0 ),
        .D(\row_index_reg[8]_i_1_n_14 ),
        .Q(row_index_reg[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \write_addr[0]_i_1 
       (.I0(write_addr[0]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\write_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \write_addr[1]_i_1 
       (.I0(in13[1]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\write_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \write_addr[2]_i_1 
       (.I0(in13[2]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\write_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \write_addr[3]_i_1 
       (.I0(in13[3]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\write_addr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \write_addr[4]_i_1 
       (.I0(in13[4]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\write_addr[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \write_addr[5]_i_1 
       (.I0(write_en),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(write_addr__0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \write_addr[5]_i_2 
       (.I0(in13[5]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\write_addr[5]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \write_addr_reg[0] 
       (.C(clk),
        .CE(write_addr__0),
        .CLR(rst),
        .D(\write_addr[0]_i_1_n_0 ),
        .Q(write_addr[0]));
  FDCE #(
    .INIT(1'b0)) 
    \write_addr_reg[1] 
       (.C(clk),
        .CE(write_addr__0),
        .CLR(rst),
        .D(\write_addr[1]_i_1_n_0 ),
        .Q(write_addr[1]));
  FDCE #(
    .INIT(1'b0)) 
    \write_addr_reg[2] 
       (.C(clk),
        .CE(write_addr__0),
        .CLR(rst),
        .D(\write_addr[2]_i_1_n_0 ),
        .Q(write_addr[2]));
  FDCE #(
    .INIT(1'b0)) 
    \write_addr_reg[3] 
       (.C(clk),
        .CE(write_addr__0),
        .CLR(rst),
        .D(\write_addr[3]_i_1_n_0 ),
        .Q(write_addr[3]));
  FDCE #(
    .INIT(1'b0)) 
    \write_addr_reg[4] 
       (.C(clk),
        .CE(write_addr__0),
        .CLR(rst),
        .D(\write_addr[4]_i_1_n_0 ),
        .Q(write_addr[4]));
  FDCE #(
    .INIT(1'b0)) 
    \write_addr_reg[5] 
       (.C(clk),
        .CE(write_addr__0),
        .CLR(rst),
        .D(\write_addr[5]_i_2_n_0 ),
        .Q(write_addr[5]));
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
