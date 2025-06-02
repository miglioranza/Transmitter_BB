// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Jun  2 15:45:49 2025
// Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_Pipelined_Polyphase_0_2_sim_netlist.v
// Design      : Design_2_Pipelined_Polyphase_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Design_2_Pipelined_Polyphase_0_2,Pipelined_Polyphase_Filter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Design_2_clk_50MHz, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [15:0]input_I;
  input [15:0]input_Q;
  input data_in_ready;
  input data_in_valid;
  output data_out_ready;
  output data_out_valid;
  output [15:0]data_out_I;
  output [15:0]data_out_Q;

  wire U0_n_16;
  wire clk;
  wire data_in_ready;
  wire data_in_valid;
  wire [15:0]data_out_I;
  wire [15:0]data_out_Q;
  wire data_out_ready;
  wire data_out_valid;
  wire [15:0]input_I;
  wire [15:0]input_Q;
  wire \mul_reg_I_reg[14][35]_i_2_n_0 ;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Pipelined_Polyphase_Filter U0
       (.CEP(U0_n_16),
        .clk(clk),
        .data_in_ready(data_in_ready),
        .data_in_valid(data_in_valid),
        .data_out_I(data_out_I),
        .data_out_Q(data_out_Q),
        .data_out_ready(data_out_ready),
        .data_out_valid(data_out_valid),
        .input_I(input_I),
        .input_Q(input_Q),
        .\mul_reg_I_reg[14][4]_0 (\mul_reg_I_reg[14][35]_i_2_n_0 ),
        .reset(reset));
  FDCE \mul_reg_I_reg[14][35]_i_2 
       (.C(clk),
        .CE(U0_n_16),
        .CLR(reset),
        .D(1'b1),
        .Q(\mul_reg_I_reg[14][35]_i_2_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Pipelined_Polyphase_Filter
   (data_out_Q,
    CEP,
    data_out_ready,
    data_out_valid,
    data_out_I,
    clk,
    \mul_reg_I_reg[14][4]_0 ,
    data_in_ready,
    data_in_valid,
    reset,
    input_I,
    input_Q);
  output [15:0]data_out_Q;
  output CEP;
  output data_out_ready;
  output data_out_valid;
  output [15:0]data_out_I;
  input clk;
  input \mul_reg_I_reg[14][4]_0 ;
  input data_in_ready;
  input data_in_valid;
  input reset;
  input [15:0]input_I;
  input [15:0]input_Q;

  wire CEP;
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
  wire data_input_I0;
  wire [15:0]data_out_I;
  wire \data_out_I[15]_i_1_n_0 ;
  wire [15:0]data_out_Q;
  wire data_out_ready;
  wire data_out_ready0_out;
  wire data_out_valid;
  wire [15:0]input_I;
  wire [15:0]input_Q;
  wire [15:0]\mul_reg_I_reg[0] ;
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
  wire [35:4]\mul_reg_I_reg[12] ;
  wire [35:4]\mul_reg_I_reg[13] ;
  wire [35:4]\mul_reg_I_reg[14] ;
  wire \mul_reg_I_reg[14][4]_0 ;
  wire [35:4]\mul_reg_I_reg[15] ;
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
  wire \mul_reg_Q_reg[0][0]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][10]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][11]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][12]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][13]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][14]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][15]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][1]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][2]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][3]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][4]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][5]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][6]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][7]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][8]_srl3_n_0 ;
  wire \mul_reg_Q_reg[0][9]_srl3_n_0 ;
  wire [15:0]\mul_reg_Q_reg[10] ;
  wire [15:4]\mul_reg_Q_reg[13] ;
  wire [15:4]\mul_reg_Q_reg[14] ;
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
  wire [15:0]\mul_reg_Q_reg[5] ;
  wire [15:0]\mul_reg_Q_reg[6] ;
  wire [15:0]\mul_reg_Q_reg[9] ;
  wire \mul_reg_Q_reg_n_100_[11] ;
  wire \mul_reg_Q_reg_n_100_[3] ;
  wire \mul_reg_Q_reg_n_100_[7] ;
  wire \mul_reg_Q_reg_n_101_[11] ;
  wire \mul_reg_Q_reg_n_101_[3] ;
  wire \mul_reg_Q_reg_n_101_[7] ;
  wire \mul_reg_Q_reg_n_102_[11] ;
  wire \mul_reg_Q_reg_n_102_[3] ;
  wire \mul_reg_Q_reg_n_102_[7] ;
  wire \mul_reg_Q_reg_n_103_[11] ;
  wire \mul_reg_Q_reg_n_103_[3] ;
  wire \mul_reg_Q_reg_n_103_[7] ;
  wire \mul_reg_Q_reg_n_104_[11] ;
  wire \mul_reg_Q_reg_n_104_[3] ;
  wire \mul_reg_Q_reg_n_104_[7] ;
  wire \mul_reg_Q_reg_n_105_[11] ;
  wire \mul_reg_Q_reg_n_105_[3] ;
  wire \mul_reg_Q_reg_n_105_[7] ;
  wire \mul_reg_Q_reg_n_90_[11] ;
  wire \mul_reg_Q_reg_n_90_[3] ;
  wire \mul_reg_Q_reg_n_90_[7] ;
  wire \mul_reg_Q_reg_n_91_[11] ;
  wire \mul_reg_Q_reg_n_91_[3] ;
  wire \mul_reg_Q_reg_n_91_[7] ;
  wire \mul_reg_Q_reg_n_92_[11] ;
  wire \mul_reg_Q_reg_n_92_[3] ;
  wire \mul_reg_Q_reg_n_92_[7] ;
  wire \mul_reg_Q_reg_n_93_[11] ;
  wire \mul_reg_Q_reg_n_93_[3] ;
  wire \mul_reg_Q_reg_n_93_[7] ;
  wire \mul_reg_Q_reg_n_94_[11] ;
  wire \mul_reg_Q_reg_n_94_[3] ;
  wire \mul_reg_Q_reg_n_94_[7] ;
  wire \mul_reg_Q_reg_n_95_[11] ;
  wire \mul_reg_Q_reg_n_95_[3] ;
  wire \mul_reg_Q_reg_n_95_[7] ;
  wire \mul_reg_Q_reg_n_96_[11] ;
  wire \mul_reg_Q_reg_n_96_[3] ;
  wire \mul_reg_Q_reg_n_96_[7] ;
  wire \mul_reg_Q_reg_n_97_[11] ;
  wire \mul_reg_Q_reg_n_97_[3] ;
  wire \mul_reg_Q_reg_n_97_[7] ;
  wire \mul_reg_Q_reg_n_98_[11] ;
  wire \mul_reg_Q_reg_n_98_[3] ;
  wire \mul_reg_Q_reg_n_98_[7] ;
  wire \mul_reg_Q_reg_n_99_[11] ;
  wire \mul_reg_Q_reg_n_99_[3] ;
  wire \mul_reg_Q_reg_n_99_[7] ;
  wire [15:4]p_0_out;
  wire [35:4]p_1_out;
  wire \phase_counter[0]_i_1_n_0 ;
  wire \phase_counter[1]_i_1_n_0 ;
  wire \phase_counter[2]_i_1_n_0 ;
  wire \phase_counter_reg_n_0_[0] ;
  wire \phase_counter_reg_n_0_[1] ;
  wire \phase_counter_reg_n_0_[2] ;
  wire reset;
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
  wire \NLW_mul_reg_Q_reg[11]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[11]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[11]_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[11]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[11]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[11]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_Q_reg[11]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_Q_reg[11]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_Q_reg[11]_CARRYOUT_UNCONNECTED ;
  wire [47:16]\NLW_mul_reg_Q_reg[11]_P_UNCONNECTED ;
  wire [47:0]\NLW_mul_reg_Q_reg[11]_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_Q_reg[11]_XOROUT_UNCONNECTED ;
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
  wire \NLW_mul_reg_Q_reg[3]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[3]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[3]_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[3]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[3]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[3]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_Q_reg[3]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_Q_reg[3]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_Q_reg[3]_CARRYOUT_UNCONNECTED ;
  wire [47:16]\NLW_mul_reg_Q_reg[3]_P_UNCONNECTED ;
  wire [47:0]\NLW_mul_reg_Q_reg[3]_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_Q_reg[3]_XOROUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[7]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[7]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[7]_OVERFLOW_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[7]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[7]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_mul_reg_Q_reg[7]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_mul_reg_Q_reg[7]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_mul_reg_Q_reg[7]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_mul_reg_Q_reg[7]_CARRYOUT_UNCONNECTED ;
  wire [47:16]\NLW_mul_reg_Q_reg[7]_P_UNCONNECTED ;
  wire [47:0]\NLW_mul_reg_Q_reg[7]_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_mul_reg_Q_reg[7]_XOROUT_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0002022200000000)) 
    \__4/i_ 
       (.I0(data_in_ready),
        .I1(reset),
        .I2(\phase_counter_reg_n_0_[1] ),
        .I3(\phase_counter_reg_n_0_[0] ),
        .I4(\phase_counter_reg_n_0_[2] ),
        .I5(data_in_valid),
        .O(data_input_I0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \coeff_reg[0][10]_i_1 
       (.I0(\phase_counter_reg_n_0_[2] ),
        .I1(\phase_counter_reg_n_0_[1] ),
        .I2(\phase_counter_reg_n_0_[0] ),
        .O(\coeff_reg[0][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \coeff_reg[0][11]_i_1 
       (.I0(\phase_counter_reg_n_0_[1] ),
        .I1(\phase_counter_reg_n_0_[0] ),
        .O(\coeff_reg[0][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \coeff_reg[0][12]_i_1 
       (.I0(\phase_counter_reg_n_0_[2] ),
        .I1(\phase_counter_reg_n_0_[1] ),
        .I2(\phase_counter_reg_n_0_[0] ),
        .O(\coeff_reg[0][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \coeff_reg[0][13]_i_1 
       (.I0(\phase_counter_reg_n_0_[2] ),
        .I1(\phase_counter_reg_n_0_[1] ),
        .I2(\phase_counter_reg_n_0_[0] ),
        .O(\coeff_reg[0][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h13)) 
    \coeff_reg[0][14]_i_1 
       (.I0(\phase_counter_reg_n_0_[2] ),
        .I1(\phase_counter_reg_n_0_[1] ),
        .I2(\phase_counter_reg_n_0_[0] ),
        .O(\coeff_reg[0][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \coeff_reg[0][9]_i_1 
       (.I0(\phase_counter_reg_n_0_[2] ),
        .I1(\phase_counter_reg_n_0_[1] ),
        .I2(\phase_counter_reg_n_0_[0] ),
        .O(\coeff_reg[0][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h17)) 
    \coeff_reg[1][0]_i_1 
       (.I0(\phase_counter_reg_n_0_[2] ),
        .I1(\phase_counter_reg_n_0_[1] ),
        .I2(\phase_counter_reg_n_0_[0] ),
        .O(\coeff_reg[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \coeff_reg[1][10]_i_1 
       (.I0(\phase_counter_reg_n_0_[2] ),
        .I1(\phase_counter_reg_n_0_[1] ),
        .I2(\phase_counter_reg_n_0_[0] ),
        .O(\coeff[8] [10]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \coeff_reg[1][14]_i_1 
       (.I0(\phase_counter_reg_n_0_[0] ),
        .I1(\phase_counter_reg_n_0_[1] ),
        .I2(\phase_counter_reg_n_0_[2] ),
        .O(\coeff[8] [14]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \coeff_reg[2][0]_i_1 
       (.I0(\phase_counter_reg_n_0_[2] ),
        .I1(\phase_counter_reg_n_0_[1] ),
        .I2(\phase_counter_reg_n_0_[0] ),
        .O(\coeff_reg[2][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \coeff_reg[2][11]_i_1 
       (.I0(\phase_counter_reg_n_0_[2] ),
        .I1(\phase_counter_reg_n_0_[0] ),
        .O(\coeff_reg[2][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \coeff_reg[2][12]_i_1 
       (.I0(\phase_counter_reg_n_0_[2] ),
        .I1(\phase_counter_reg_n_0_[1] ),
        .O(\coeff_reg[2][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h24)) 
    \coeff_reg[3][12]_i_1 
       (.I0(\phase_counter_reg_n_0_[0] ),
        .I1(\phase_counter_reg_n_0_[1] ),
        .I2(\phase_counter_reg_n_0_[2] ),
        .O(\coeff_reg[3][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hDB)) 
    \coeff_reg[3][13]_i_1 
       (.I0(\phase_counter_reg_n_0_[0] ),
        .I1(\phase_counter_reg_n_0_[1] ),
        .I2(\phase_counter_reg_n_0_[2] ),
        .O(\coeff_reg[3][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h64)) 
    \coeff_reg[3][14]_i_1 
       (.I0(\phase_counter_reg_n_0_[2] ),
        .I1(\phase_counter_reg_n_0_[1] ),
        .I2(\phase_counter_reg_n_0_[0] ),
        .O(\coeff_reg[3][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h58)) 
    \coeff_reg[3][9]_i_1 
       (.I0(\phase_counter_reg_n_0_[2] ),
        .I1(\phase_counter_reg_n_0_[1] ),
        .I2(\phase_counter_reg_n_0_[0] ),
        .O(\coeff_reg[3][9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[0][10] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\coeff_reg[0][10]_i_1_n_0 ),
        .Q(\coeff_reg_reg[0] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[0][11] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\coeff_reg[0][11]_i_1_n_0 ),
        .Q(\coeff_reg_reg[0] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[0][12] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\coeff_reg[0][12]_i_1_n_0 ),
        .Q(\coeff_reg_reg[0] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[0][13] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\coeff_reg[0][13]_i_1_n_0 ),
        .Q(\coeff_reg_reg[0] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[0][14] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\coeff_reg[0][14]_i_1_n_0 ),
        .Q(\coeff_reg_reg[0] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[0][9] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\coeff_reg[0][9]_i_1_n_0 ),
        .Q(\coeff_reg_reg[0] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[1][0] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\coeff_reg[1][0]_i_1_n_0 ),
        .Q(\coeff_reg_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[1][10] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\coeff[8] [10]),
        .Q(\coeff_reg_reg[1] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[1][14] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\coeff[8] [14]),
        .Q(\coeff_reg_reg[1] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[2][0] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\coeff_reg[2][0]_i_1_n_0 ),
        .Q(\coeff_reg_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[2][11] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\coeff_reg[2][11]_i_1_n_0 ),
        .Q(\coeff_reg_reg[2] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[2][12] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\coeff_reg[2][12]_i_1_n_0 ),
        .Q(\coeff_reg_reg[2] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[3][12] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\coeff_reg[3][12]_i_1_n_0 ),
        .Q(\coeff_reg_reg[3] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[3][13] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\coeff_reg[3][13]_i_1_n_0 ),
        .Q(\coeff_reg_reg[3] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[3][14] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\coeff_reg[3][14]_i_1_n_0 ),
        .Q(\coeff_reg_reg[3] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \coeff_reg_reg[3][9] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\coeff_reg[3][9]_i_1_n_0 ),
        .Q(\coeff_reg_reg[3] [9]));
  LUT3 #(
    .INIT(8'h08)) 
    \data_out_I[15]_i_1 
       (.I0(data_in_ready),
        .I1(data_in_valid),
        .I2(reset),
        .O(\data_out_I[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[0] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [0]),
        .Q(data_out_I[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[10] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [10]),
        .Q(data_out_I[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[11] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [11]),
        .Q(data_out_I[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[12] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [12]),
        .Q(data_out_I[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[13] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [13]),
        .Q(data_out_I[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[14] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [14]),
        .Q(data_out_I[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[15] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [15]),
        .Q(data_out_I[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[1] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [1]),
        .Q(data_out_I[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[2] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [2]),
        .Q(data_out_I[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[3] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [3]),
        .Q(data_out_I[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[4] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [4]),
        .Q(data_out_I[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[5] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [5]),
        .Q(data_out_I[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[6] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [6]),
        .Q(data_out_I[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[7] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [7]),
        .Q(data_out_I[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[8] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [8]),
        .Q(data_out_I[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_I_reg[9] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_I_reg[0] [9]),
        .Q(data_out_I[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[0] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][0]_srl3_n_0 ),
        .Q(data_out_Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[10] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][10]_srl3_n_0 ),
        .Q(data_out_Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[11] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][11]_srl3_n_0 ),
        .Q(data_out_Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[12] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][12]_srl3_n_0 ),
        .Q(data_out_Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[13] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][13]_srl3_n_0 ),
        .Q(data_out_Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[14] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][14]_srl3_n_0 ),
        .Q(data_out_Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[15] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][15]_srl3_n_0 ),
        .Q(data_out_Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[1] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][1]_srl3_n_0 ),
        .Q(data_out_Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[2] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][2]_srl3_n_0 ),
        .Q(data_out_Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[3] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][3]_srl3_n_0 ),
        .Q(data_out_Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[4] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][4]_srl3_n_0 ),
        .Q(data_out_Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[5] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][5]_srl3_n_0 ),
        .Q(data_out_Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[6] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][6]_srl3_n_0 ),
        .Q(data_out_Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[7] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][7]_srl3_n_0 ),
        .Q(data_out_Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[8] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][8]_srl3_n_0 ),
        .Q(data_out_Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_Q_reg[9] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[0][9]_srl3_n_0 ),
        .Q(data_out_Q[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAA80AAAA)) 
    data_out_ready_i_1
       (.I0(data_in_ready),
        .I1(\phase_counter_reg_n_0_[0] ),
        .I2(\phase_counter_reg_n_0_[1] ),
        .I3(\phase_counter_reg_n_0_[2] ),
        .I4(data_in_valid),
        .O(data_out_ready0_out));
  FDCE data_out_ready_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(data_out_ready0_out),
        .Q(data_out_ready));
  LUT2 #(
    .INIT(4'h8)) 
    data_out_valid_i_1
       (.I0(data_in_ready),
        .I1(data_in_valid),
        .O(CEP));
  FDCE data_out_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(CEP),
        .Q(data_out_valid));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][0]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_105 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][10]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_95 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [10]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][11]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_94 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [11]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][12]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_93 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [12]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][13]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_92 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [13]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][14]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_91 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [14]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][15]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_90 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [15]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][16]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_89 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [16]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][17]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_88 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [17]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][18]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_87 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [18]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][19]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_86 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [19]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][1]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_104 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][20]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_85 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [20]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][21]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_84 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [21]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][22]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_83 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [22]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][23]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_82 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [23]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][24]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_81 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [24]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][25]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_80 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [25]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][26]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_79 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [26]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][27]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_78 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [27]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][28]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_77 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [28]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][29]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_76 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [29]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][2]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_103 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][30]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_75 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [30]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][31]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_74 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [31]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][32]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_73 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [32]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][33]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_72 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [33]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][34]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_71 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [34]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][35]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_70 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [35]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][3]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_102 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][4]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_101 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][5]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_100 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [5]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][6]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_99 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [6]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][7]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_98 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][8]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_97 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [8]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[10][9]_i_1 
       (.I0(\mul_reg_I_reg[11]0_n_96 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[11] [9]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][10]_i_1 
       (.I0(p_1_out[10]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][11]_i_1 
       (.I0(p_1_out[11]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][12]_i_1 
       (.I0(p_1_out[12]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][13]_i_1 
       (.I0(p_1_out[13]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [13]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][14]_i_1 
       (.I0(p_1_out[14]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [14]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][15]_i_1 
       (.I0(p_1_out[15]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [15]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][16]_i_1 
       (.I0(p_1_out[16]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [16]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][17]_i_1 
       (.I0(p_1_out[17]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [17]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][18]_i_1 
       (.I0(p_1_out[18]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [18]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][19]_i_1 
       (.I0(p_1_out[19]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [19]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][20]_i_1 
       (.I0(p_1_out[20]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [20]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][21]_i_1 
       (.I0(p_1_out[21]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [21]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][22]_i_1 
       (.I0(p_1_out[22]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [22]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][23]_i_1 
       (.I0(p_1_out[23]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [23]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][24]_i_1 
       (.I0(p_1_out[24]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [24]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][25]_i_1 
       (.I0(p_1_out[25]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [25]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][26]_i_1 
       (.I0(p_1_out[26]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [26]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][27]_i_1 
       (.I0(p_1_out[27]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [27]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][28]_i_1 
       (.I0(p_1_out[28]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [28]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][29]_i_1 
       (.I0(p_1_out[29]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [29]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][30]_i_1 
       (.I0(p_1_out[30]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [30]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][31]_i_1 
       (.I0(p_1_out[31]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [31]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][32]_i_1 
       (.I0(p_1_out[32]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [32]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][33]_i_1 
       (.I0(p_1_out[33]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [33]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][34]_i_1 
       (.I0(p_1_out[34]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [34]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][35]_i_1 
       (.I0(p_1_out[35]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [35]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][4]_i_1 
       (.I0(p_1_out[4]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][5]_i_1 
       (.I0(p_1_out[5]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][6]_i_1 
       (.I0(p_1_out[6]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][7]_i_1 
       (.I0(p_1_out[7]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][8]_i_1 
       (.I0(p_1_out[8]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[14][9]_i_1 
       (.I0(p_1_out[9]),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[15] [9]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][0]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_105 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][10]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_95 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[3] [10]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][11]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_94 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[3] [11]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][12]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_93 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[3] [12]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][13]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_92 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[3] [13]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][14]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_91 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[3] [14]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][15]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_90 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[3] [15]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][1]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_104 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][2]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_103 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[3] [2]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][3]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_102 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[3] [3]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][4]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_101 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[3] [4]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][5]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_100 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[3] [5]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][6]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_99 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[3] [6]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][7]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_98 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[3] [7]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][8]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_97 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[3] [8]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[2][9]_i_1 
       (.I0(\mul_reg_I_reg[3]0_n_96 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[3] [9]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][0]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_105 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][10]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_95 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [10]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][11]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_94 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [11]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][12]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_93 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [12]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][13]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_92 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [13]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][14]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_91 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [14]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][15]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_90 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [15]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][16]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_89 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [16]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][17]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_88 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [17]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][18]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_87 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [18]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][19]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_86 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [19]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][1]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_104 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][20]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_85 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [20]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][21]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_84 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [21]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][22]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_83 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [22]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][23]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_82 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [23]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][24]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_81 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [24]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][25]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_80 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [25]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][26]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_79 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [26]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][27]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_78 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [27]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][28]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_77 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [28]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][29]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_76 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [29]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][2]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_103 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][30]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_75 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [30]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][31]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_74 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [31]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][32]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_73 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [32]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][33]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_72 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [33]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][34]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_71 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [34]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][35]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_70 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [35]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][3]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_102 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][4]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_101 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][5]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_100 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][6]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_99 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][7]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_98 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][8]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_97 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [8]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mul_reg_I[6][9]_i_1 
       (.I0(\mul_reg_I_reg[7]0_n_96 ),
        .I1(\mul_reg_I_reg[14][4]_0 ),
        .O(\mul_reg_I_reg[7] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][0] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [0]),
        .Q(\mul_reg_I_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][10] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [10]),
        .Q(\mul_reg_I_reg[0] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][11] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [11]),
        .Q(\mul_reg_I_reg[0] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][12] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [12]),
        .Q(\mul_reg_I_reg[0] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][13] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [13]),
        .Q(\mul_reg_I_reg[0] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][14] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [14]),
        .Q(\mul_reg_I_reg[0] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][15] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [15]),
        .Q(\mul_reg_I_reg[0] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][1] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [1]),
        .Q(\mul_reg_I_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][2] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [2]),
        .Q(\mul_reg_I_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][3] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [3]),
        .Q(\mul_reg_I_reg[0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][4] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [4]),
        .Q(\mul_reg_I_reg[0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][5] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [5]),
        .Q(\mul_reg_I_reg[0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][6] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [6]),
        .Q(\mul_reg_I_reg[0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][7] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [7]),
        .Q(\mul_reg_I_reg[0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][8] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [8]),
        .Q(\mul_reg_I_reg[0] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[0][9] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[1] [9]),
        .Q(\mul_reg_I_reg[0] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][0] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [0]),
        .Q(\mul_reg_I_reg[10] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][10] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [10]),
        .Q(\mul_reg_I_reg[10] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][11] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [11]),
        .Q(\mul_reg_I_reg[10] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][12] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [12]),
        .Q(\mul_reg_I_reg[10] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][13] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [13]),
        .Q(\mul_reg_I_reg[10] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][14] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [14]),
        .Q(\mul_reg_I_reg[10] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][15] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [15]),
        .Q(\mul_reg_I_reg[10] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][16] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [16]),
        .Q(\mul_reg_I_reg[10] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][17] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [17]),
        .Q(\mul_reg_I_reg[10] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][18] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [18]),
        .Q(\mul_reg_I_reg[10] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][19] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [19]),
        .Q(\mul_reg_I_reg[10] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][1] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [1]),
        .Q(\mul_reg_I_reg[10] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][20] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [20]),
        .Q(\mul_reg_I_reg[10] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][21] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [21]),
        .Q(\mul_reg_I_reg[10] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][22] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [22]),
        .Q(\mul_reg_I_reg[10] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][23] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [23]),
        .Q(\mul_reg_I_reg[10] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][24] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [24]),
        .Q(\mul_reg_I_reg[10] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][25] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [25]),
        .Q(\mul_reg_I_reg[10] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][26] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [26]),
        .Q(\mul_reg_I_reg[10] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][27] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [27]),
        .Q(\mul_reg_I_reg[10] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][28] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [28]),
        .Q(\mul_reg_I_reg[10] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][29] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [29]),
        .Q(\mul_reg_I_reg[10] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][2] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [2]),
        .Q(\mul_reg_I_reg[10] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][30] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [30]),
        .Q(\mul_reg_I_reg[10] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][31] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [31]),
        .Q(\mul_reg_I_reg[10] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][32] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [32]),
        .Q(\mul_reg_I_reg[10] [32]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][33] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [33]),
        .Q(\mul_reg_I_reg[10] [33]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][34] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [34]),
        .Q(\mul_reg_I_reg[10] [34]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][35] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [35]),
        .Q(\mul_reg_I_reg[10] [35]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][3] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [3]),
        .Q(\mul_reg_I_reg[10] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][4] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [4]),
        .Q(\mul_reg_I_reg[10] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][5] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [5]),
        .Q(\mul_reg_I_reg[10] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][6] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [6]),
        .Q(\mul_reg_I_reg[10] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][7] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [7]),
        .Q(\mul_reg_I_reg[10] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][8] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [8]),
        .Q(\mul_reg_I_reg[10] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[10][9] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[11] [9]),
        .Q(\mul_reg_I_reg[10] [9]));
  (* KEEP_HIERARCHY = "yes" *) 
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
       (.A({input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_I_reg[11]0_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\coeff_reg_reg[0] [11],1'b0,\coeff_reg_reg[2] [12:11],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [10],\coeff_reg_reg[2] [12:11],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [10],\coeff_reg_reg[2] [12:11],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [10],\coeff_reg_reg[2] [0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_I_reg[11]0_BCOUT_UNCONNECTED [17:0]),
        .C({\mul_reg_I_reg[12] [35],\mul_reg_I_reg[12] [35],\mul_reg_I_reg[12] [35],\mul_reg_I_reg[12] [35],\mul_reg_I_reg[12] [35],\mul_reg_I_reg[12] [35],\mul_reg_I_reg[12] [35],\mul_reg_I_reg[12] [35],\mul_reg_I_reg[12] [35],\mul_reg_I_reg[12] [35],\mul_reg_I_reg[12] [35],\mul_reg_I_reg[12] [35],\mul_reg_I_reg[12] ,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_I_reg[11]0_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_I_reg[11]0_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(data_input_I0),
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
        .CEP(CEP),
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
    \mul_reg_I_reg[12][10] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [10]),
        .Q(\mul_reg_I_reg[12] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][11] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [11]),
        .Q(\mul_reg_I_reg[12] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][12] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [12]),
        .Q(\mul_reg_I_reg[12] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][13] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [13]),
        .Q(\mul_reg_I_reg[12] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][14] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [14]),
        .Q(\mul_reg_I_reg[12] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][15] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [15]),
        .Q(\mul_reg_I_reg[12] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][16] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [16]),
        .Q(\mul_reg_I_reg[12] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][17] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [17]),
        .Q(\mul_reg_I_reg[12] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][18] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [18]),
        .Q(\mul_reg_I_reg[12] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][19] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [19]),
        .Q(\mul_reg_I_reg[12] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][20] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [20]),
        .Q(\mul_reg_I_reg[12] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][21] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [21]),
        .Q(\mul_reg_I_reg[12] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][22] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [22]),
        .Q(\mul_reg_I_reg[12] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][23] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [23]),
        .Q(\mul_reg_I_reg[12] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][24] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [24]),
        .Q(\mul_reg_I_reg[12] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][25] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [25]),
        .Q(\mul_reg_I_reg[12] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][26] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [26]),
        .Q(\mul_reg_I_reg[12] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][27] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [27]),
        .Q(\mul_reg_I_reg[12] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][28] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [28]),
        .Q(\mul_reg_I_reg[12] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][29] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [29]),
        .Q(\mul_reg_I_reg[12] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][30] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [30]),
        .Q(\mul_reg_I_reg[12] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][31] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [31]),
        .Q(\mul_reg_I_reg[12] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][32] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [32]),
        .Q(\mul_reg_I_reg[12] [32]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][33] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [33]),
        .Q(\mul_reg_I_reg[12] [33]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][34] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [34]),
        .Q(\mul_reg_I_reg[12] [34]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][35] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [35]),
        .Q(\mul_reg_I_reg[12] [35]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][4] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [4]),
        .Q(\mul_reg_I_reg[12] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][5] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [5]),
        .Q(\mul_reg_I_reg[12] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][6] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [6]),
        .Q(\mul_reg_I_reg[12] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][7] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [7]),
        .Q(\mul_reg_I_reg[12] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][8] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [8]),
        .Q(\mul_reg_I_reg[12] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[12][9] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[13] [9]),
        .Q(\mul_reg_I_reg[12] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][10] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [10]),
        .Q(\mul_reg_I_reg[13] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][11] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [11]),
        .Q(\mul_reg_I_reg[13] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][12] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [12]),
        .Q(\mul_reg_I_reg[13] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][13] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [13]),
        .Q(\mul_reg_I_reg[13] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][14] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [14]),
        .Q(\mul_reg_I_reg[13] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][15] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [15]),
        .Q(\mul_reg_I_reg[13] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][16] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [16]),
        .Q(\mul_reg_I_reg[13] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][17] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [17]),
        .Q(\mul_reg_I_reg[13] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][18] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [18]),
        .Q(\mul_reg_I_reg[13] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][19] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [19]),
        .Q(\mul_reg_I_reg[13] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][20] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [20]),
        .Q(\mul_reg_I_reg[13] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][21] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [21]),
        .Q(\mul_reg_I_reg[13] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][22] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [22]),
        .Q(\mul_reg_I_reg[13] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][23] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [23]),
        .Q(\mul_reg_I_reg[13] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][24] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [24]),
        .Q(\mul_reg_I_reg[13] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][25] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [25]),
        .Q(\mul_reg_I_reg[13] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][26] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [26]),
        .Q(\mul_reg_I_reg[13] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][27] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [27]),
        .Q(\mul_reg_I_reg[13] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][28] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [28]),
        .Q(\mul_reg_I_reg[13] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][29] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [29]),
        .Q(\mul_reg_I_reg[13] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][30] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [30]),
        .Q(\mul_reg_I_reg[13] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][31] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [31]),
        .Q(\mul_reg_I_reg[13] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][32] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [32]),
        .Q(\mul_reg_I_reg[13] [32]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][33] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [33]),
        .Q(\mul_reg_I_reg[13] [33]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][34] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [34]),
        .Q(\mul_reg_I_reg[13] [34]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][35] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [35]),
        .Q(\mul_reg_I_reg[13] [35]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][4] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [4]),
        .Q(\mul_reg_I_reg[13] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][5] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [5]),
        .Q(\mul_reg_I_reg[13] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][6] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [6]),
        .Q(\mul_reg_I_reg[13] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][7] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [7]),
        .Q(\mul_reg_I_reg[13] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][8] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [8]),
        .Q(\mul_reg_I_reg[13] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[13][9] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[14] [9]),
        .Q(\mul_reg_I_reg[13] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][10] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [10]),
        .Q(\mul_reg_I_reg[14] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][11] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [11]),
        .Q(\mul_reg_I_reg[14] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][12] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [12]),
        .Q(\mul_reg_I_reg[14] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][13] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [13]),
        .Q(\mul_reg_I_reg[14] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][14] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [14]),
        .Q(\mul_reg_I_reg[14] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][15] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [15]),
        .Q(\mul_reg_I_reg[14] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][16] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [16]),
        .Q(\mul_reg_I_reg[14] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][17] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [17]),
        .Q(\mul_reg_I_reg[14] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][18] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [18]),
        .Q(\mul_reg_I_reg[14] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][19] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [19]),
        .Q(\mul_reg_I_reg[14] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][20] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [20]),
        .Q(\mul_reg_I_reg[14] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][21] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [21]),
        .Q(\mul_reg_I_reg[14] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][22] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [22]),
        .Q(\mul_reg_I_reg[14] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][23] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [23]),
        .Q(\mul_reg_I_reg[14] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][24] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [24]),
        .Q(\mul_reg_I_reg[14] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][25] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [25]),
        .Q(\mul_reg_I_reg[14] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][26] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [26]),
        .Q(\mul_reg_I_reg[14] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][27] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [27]),
        .Q(\mul_reg_I_reg[14] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][28] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [28]),
        .Q(\mul_reg_I_reg[14] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][29] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [29]),
        .Q(\mul_reg_I_reg[14] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][30] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [30]),
        .Q(\mul_reg_I_reg[14] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][31] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [31]),
        .Q(\mul_reg_I_reg[14] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][32] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [32]),
        .Q(\mul_reg_I_reg[14] [32]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][33] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [33]),
        .Q(\mul_reg_I_reg[14] [33]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][34] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [34]),
        .Q(\mul_reg_I_reg[14] [34]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][35] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [35]),
        .Q(\mul_reg_I_reg[14] [35]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][4] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [4]),
        .Q(\mul_reg_I_reg[14] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][5] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [5]),
        .Q(\mul_reg_I_reg[14] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][6] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [6]),
        .Q(\mul_reg_I_reg[14] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][7] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [7]),
        .Q(\mul_reg_I_reg[14] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][8] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [8]),
        .Q(\mul_reg_I_reg[14] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[14][9] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[15] [9]),
        .Q(\mul_reg_I_reg[14] [9]));
  (* KEEP_HIERARCHY = "yes" *) 
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
       (.A({input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_I_reg[15]0_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\coeff_reg_reg[3] [14:12],\coeff_reg_reg[1] [14],\phase_counter_reg_n_0_[1] ,\coeff_reg_reg[3] [9],\coeff_reg_reg[3] [12],\coeff_reg_reg[1] [14],\phase_counter_reg_n_0_[1] ,\coeff_reg_reg[3] [9],\coeff_reg_reg[3] [12],\coeff_reg_reg[1] [14],\phase_counter_reg_n_0_[1] ,\coeff_reg_reg[3] [9],\coeff_reg_reg[3] [12]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_I_reg[15]0_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_I_reg[15]0_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_I_reg[15]0_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(data_input_I0),
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
        .CEP(CEP),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_I_reg[15]0_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_I_reg[15]0_OVERFLOW_UNCONNECTED ),
        .P({\NLW_mul_reg_I_reg[15]0_P_UNCONNECTED [47:32],p_1_out}),
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
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [0]),
        .Q(\mul_reg_I_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][10] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [10]),
        .Q(\mul_reg_I_reg[1] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][11] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [11]),
        .Q(\mul_reg_I_reg[1] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][12] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [12]),
        .Q(\mul_reg_I_reg[1] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][13] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [13]),
        .Q(\mul_reg_I_reg[1] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][14] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [14]),
        .Q(\mul_reg_I_reg[1] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][15] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [15]),
        .Q(\mul_reg_I_reg[1] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][1] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [1]),
        .Q(\mul_reg_I_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][2] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [2]),
        .Q(\mul_reg_I_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][3] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [3]),
        .Q(\mul_reg_I_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][4] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [4]),
        .Q(\mul_reg_I_reg[1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][5] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [5]),
        .Q(\mul_reg_I_reg[1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][6] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [6]),
        .Q(\mul_reg_I_reg[1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][7] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [7]),
        .Q(\mul_reg_I_reg[1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][8] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [8]),
        .Q(\mul_reg_I_reg[1] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[1][9] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[2] [9]),
        .Q(\mul_reg_I_reg[1] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][0] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [0]),
        .Q(\mul_reg_I_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][10] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [10]),
        .Q(\mul_reg_I_reg[2] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][11] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [11]),
        .Q(\mul_reg_I_reg[2] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][12] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [12]),
        .Q(\mul_reg_I_reg[2] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][13] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [13]),
        .Q(\mul_reg_I_reg[2] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][14] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [14]),
        .Q(\mul_reg_I_reg[2] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][15] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [15]),
        .Q(\mul_reg_I_reg[2] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][1] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [1]),
        .Q(\mul_reg_I_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][2] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [2]),
        .Q(\mul_reg_I_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][3] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [3]),
        .Q(\mul_reg_I_reg[2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][4] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [4]),
        .Q(\mul_reg_I_reg[2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][5] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [5]),
        .Q(\mul_reg_I_reg[2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][6] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [6]),
        .Q(\mul_reg_I_reg[2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][7] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [7]),
        .Q(\mul_reg_I_reg[2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][8] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [8]),
        .Q(\mul_reg_I_reg[2] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[2][9] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[3] [9]),
        .Q(\mul_reg_I_reg[2] [9]));
  (* KEEP_HIERARCHY = "yes" *) 
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
       (.A({input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I}),
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
        .CEA2(data_input_I0),
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
        .CEP(CEP),
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
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [0]),
        .Q(\mul_reg_I_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][10] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [10]),
        .Q(\mul_reg_I_reg[4] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][11] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [11]),
        .Q(\mul_reg_I_reg[4] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][12] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [12]),
        .Q(\mul_reg_I_reg[4] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][13] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [13]),
        .Q(\mul_reg_I_reg[4] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][14] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [14]),
        .Q(\mul_reg_I_reg[4] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][15] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [15]),
        .Q(\mul_reg_I_reg[4] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][16] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [16]),
        .Q(\mul_reg_I_reg[4] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][17] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [17]),
        .Q(\mul_reg_I_reg[4] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][18] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [18]),
        .Q(\mul_reg_I_reg[4] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][19] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [19]),
        .Q(\mul_reg_I_reg[4] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][1] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [1]),
        .Q(\mul_reg_I_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][20] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [20]),
        .Q(\mul_reg_I_reg[4] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][21] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [21]),
        .Q(\mul_reg_I_reg[4] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][22] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [22]),
        .Q(\mul_reg_I_reg[4] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][23] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [23]),
        .Q(\mul_reg_I_reg[4] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][24] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [24]),
        .Q(\mul_reg_I_reg[4] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][25] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [25]),
        .Q(\mul_reg_I_reg[4] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][26] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [26]),
        .Q(\mul_reg_I_reg[4] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][27] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [27]),
        .Q(\mul_reg_I_reg[4] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][28] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [28]),
        .Q(\mul_reg_I_reg[4] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][29] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [29]),
        .Q(\mul_reg_I_reg[4] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][2] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [2]),
        .Q(\mul_reg_I_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][30] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [30]),
        .Q(\mul_reg_I_reg[4] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][31] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [31]),
        .Q(\mul_reg_I_reg[4] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][32] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [32]),
        .Q(\mul_reg_I_reg[4] [32]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][33] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [33]),
        .Q(\mul_reg_I_reg[4] [33]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][34] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [34]),
        .Q(\mul_reg_I_reg[4] [34]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][35] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [35]),
        .Q(\mul_reg_I_reg[4] [35]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][3] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [3]),
        .Q(\mul_reg_I_reg[4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][4] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [4]),
        .Q(\mul_reg_I_reg[4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][5] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [5]),
        .Q(\mul_reg_I_reg[4] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][6] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [6]),
        .Q(\mul_reg_I_reg[4] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][7] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [7]),
        .Q(\mul_reg_I_reg[4] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][8] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [8]),
        .Q(\mul_reg_I_reg[4] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[4][9] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[5] [9]),
        .Q(\mul_reg_I_reg[4] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][0] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [0]),
        .Q(\mul_reg_I_reg[5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][10] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [10]),
        .Q(\mul_reg_I_reg[5] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][11] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [11]),
        .Q(\mul_reg_I_reg[5] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][12] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [12]),
        .Q(\mul_reg_I_reg[5] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][13] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [13]),
        .Q(\mul_reg_I_reg[5] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][14] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [14]),
        .Q(\mul_reg_I_reg[5] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][15] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [15]),
        .Q(\mul_reg_I_reg[5] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][16] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [16]),
        .Q(\mul_reg_I_reg[5] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][17] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [17]),
        .Q(\mul_reg_I_reg[5] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][18] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [18]),
        .Q(\mul_reg_I_reg[5] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][19] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [19]),
        .Q(\mul_reg_I_reg[5] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][1] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [1]),
        .Q(\mul_reg_I_reg[5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][20] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [20]),
        .Q(\mul_reg_I_reg[5] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][21] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [21]),
        .Q(\mul_reg_I_reg[5] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][22] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [22]),
        .Q(\mul_reg_I_reg[5] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][23] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [23]),
        .Q(\mul_reg_I_reg[5] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][24] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [24]),
        .Q(\mul_reg_I_reg[5] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][25] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [25]),
        .Q(\mul_reg_I_reg[5] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][26] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [26]),
        .Q(\mul_reg_I_reg[5] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][27] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [27]),
        .Q(\mul_reg_I_reg[5] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][28] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [28]),
        .Q(\mul_reg_I_reg[5] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][29] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [29]),
        .Q(\mul_reg_I_reg[5] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][2] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [2]),
        .Q(\mul_reg_I_reg[5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][30] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [30]),
        .Q(\mul_reg_I_reg[5] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][31] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [31]),
        .Q(\mul_reg_I_reg[5] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][32] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [32]),
        .Q(\mul_reg_I_reg[5] [32]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][33] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [33]),
        .Q(\mul_reg_I_reg[5] [33]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][34] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [34]),
        .Q(\mul_reg_I_reg[5] [34]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][35] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [35]),
        .Q(\mul_reg_I_reg[5] [35]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][3] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [3]),
        .Q(\mul_reg_I_reg[5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][4] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [4]),
        .Q(\mul_reg_I_reg[5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][5] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [5]),
        .Q(\mul_reg_I_reg[5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][6] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [6]),
        .Q(\mul_reg_I_reg[5] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][7] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [7]),
        .Q(\mul_reg_I_reg[5] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][8] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [8]),
        .Q(\mul_reg_I_reg[5] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[5][9] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[6] [9]),
        .Q(\mul_reg_I_reg[5] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][0] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [0]),
        .Q(\mul_reg_I_reg[6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][10] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [10]),
        .Q(\mul_reg_I_reg[6] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][11] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [11]),
        .Q(\mul_reg_I_reg[6] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][12] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [12]),
        .Q(\mul_reg_I_reg[6] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][13] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [13]),
        .Q(\mul_reg_I_reg[6] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][14] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [14]),
        .Q(\mul_reg_I_reg[6] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][15] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [15]),
        .Q(\mul_reg_I_reg[6] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][16] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [16]),
        .Q(\mul_reg_I_reg[6] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][17] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [17]),
        .Q(\mul_reg_I_reg[6] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][18] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [18]),
        .Q(\mul_reg_I_reg[6] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][19] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [19]),
        .Q(\mul_reg_I_reg[6] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][1] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [1]),
        .Q(\mul_reg_I_reg[6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][20] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [20]),
        .Q(\mul_reg_I_reg[6] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][21] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [21]),
        .Q(\mul_reg_I_reg[6] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][22] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [22]),
        .Q(\mul_reg_I_reg[6] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][23] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [23]),
        .Q(\mul_reg_I_reg[6] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][24] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [24]),
        .Q(\mul_reg_I_reg[6] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][25] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [25]),
        .Q(\mul_reg_I_reg[6] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][26] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [26]),
        .Q(\mul_reg_I_reg[6] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][27] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [27]),
        .Q(\mul_reg_I_reg[6] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][28] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [28]),
        .Q(\mul_reg_I_reg[6] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][29] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [29]),
        .Q(\mul_reg_I_reg[6] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][2] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [2]),
        .Q(\mul_reg_I_reg[6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][30] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [30]),
        .Q(\mul_reg_I_reg[6] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][31] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [31]),
        .Q(\mul_reg_I_reg[6] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][32] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [32]),
        .Q(\mul_reg_I_reg[6] [32]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][33] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [33]),
        .Q(\mul_reg_I_reg[6] [33]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][34] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [34]),
        .Q(\mul_reg_I_reg[6] [34]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][35] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [35]),
        .Q(\mul_reg_I_reg[6] [35]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][3] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [3]),
        .Q(\mul_reg_I_reg[6] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][4] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [4]),
        .Q(\mul_reg_I_reg[6] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][5] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [5]),
        .Q(\mul_reg_I_reg[6] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][6] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [6]),
        .Q(\mul_reg_I_reg[6] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][7] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [7]),
        .Q(\mul_reg_I_reg[6] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][8] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [8]),
        .Q(\mul_reg_I_reg[6] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[6][9] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[7] [9]),
        .Q(\mul_reg_I_reg[6] [9]));
  (* KEEP_HIERARCHY = "yes" *) 
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
       (.A({input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I[15],input_I}),
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
        .CEA2(data_input_I0),
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
        .CEP(CEP),
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
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [0]),
        .Q(\mul_reg_I_reg[8] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][10] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [10]),
        .Q(\mul_reg_I_reg[8] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][11] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [11]),
        .Q(\mul_reg_I_reg[8] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][12] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [12]),
        .Q(\mul_reg_I_reg[8] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][13] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [13]),
        .Q(\mul_reg_I_reg[8] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][14] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [14]),
        .Q(\mul_reg_I_reg[8] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][15] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [15]),
        .Q(\mul_reg_I_reg[8] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][16] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [16]),
        .Q(\mul_reg_I_reg[8] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][17] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [17]),
        .Q(\mul_reg_I_reg[8] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][18] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [18]),
        .Q(\mul_reg_I_reg[8] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][19] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [19]),
        .Q(\mul_reg_I_reg[8] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][1] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [1]),
        .Q(\mul_reg_I_reg[8] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][20] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [20]),
        .Q(\mul_reg_I_reg[8] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][21] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [21]),
        .Q(\mul_reg_I_reg[8] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][22] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [22]),
        .Q(\mul_reg_I_reg[8] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][23] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [23]),
        .Q(\mul_reg_I_reg[8] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][24] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [24]),
        .Q(\mul_reg_I_reg[8] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][25] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [25]),
        .Q(\mul_reg_I_reg[8] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][26] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [26]),
        .Q(\mul_reg_I_reg[8] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][27] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [27]),
        .Q(\mul_reg_I_reg[8] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][28] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [28]),
        .Q(\mul_reg_I_reg[8] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][29] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [29]),
        .Q(\mul_reg_I_reg[8] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][2] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [2]),
        .Q(\mul_reg_I_reg[8] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][30] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [30]),
        .Q(\mul_reg_I_reg[8] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][31] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [31]),
        .Q(\mul_reg_I_reg[8] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][32] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [32]),
        .Q(\mul_reg_I_reg[8] [32]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][33] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [33]),
        .Q(\mul_reg_I_reg[8] [33]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][34] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [34]),
        .Q(\mul_reg_I_reg[8] [34]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][35] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [35]),
        .Q(\mul_reg_I_reg[8] [35]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][3] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [3]),
        .Q(\mul_reg_I_reg[8] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][4] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [4]),
        .Q(\mul_reg_I_reg[8] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][5] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [5]),
        .Q(\mul_reg_I_reg[8] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][6] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [6]),
        .Q(\mul_reg_I_reg[8] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][7] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [7]),
        .Q(\mul_reg_I_reg[8] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][8] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [8]),
        .Q(\mul_reg_I_reg[8] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[8][9] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[9] [9]),
        .Q(\mul_reg_I_reg[8] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][0] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [0]),
        .Q(\mul_reg_I_reg[9] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][10] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [10]),
        .Q(\mul_reg_I_reg[9] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][11] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [11]),
        .Q(\mul_reg_I_reg[9] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][12] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [12]),
        .Q(\mul_reg_I_reg[9] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][13] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [13]),
        .Q(\mul_reg_I_reg[9] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][14] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [14]),
        .Q(\mul_reg_I_reg[9] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][15] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [15]),
        .Q(\mul_reg_I_reg[9] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][16] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [16]),
        .Q(\mul_reg_I_reg[9] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][17] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [17]),
        .Q(\mul_reg_I_reg[9] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][18] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [18]),
        .Q(\mul_reg_I_reg[9] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][19] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [19]),
        .Q(\mul_reg_I_reg[9] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][1] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [1]),
        .Q(\mul_reg_I_reg[9] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][20] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [20]),
        .Q(\mul_reg_I_reg[9] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][21] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [21]),
        .Q(\mul_reg_I_reg[9] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][22] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [22]),
        .Q(\mul_reg_I_reg[9] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][23] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [23]),
        .Q(\mul_reg_I_reg[9] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][24] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [24]),
        .Q(\mul_reg_I_reg[9] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][25] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [25]),
        .Q(\mul_reg_I_reg[9] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][26] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [26]),
        .Q(\mul_reg_I_reg[9] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][27] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [27]),
        .Q(\mul_reg_I_reg[9] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][28] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [28]),
        .Q(\mul_reg_I_reg[9] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][29] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [29]),
        .Q(\mul_reg_I_reg[9] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][2] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [2]),
        .Q(\mul_reg_I_reg[9] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][30] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [30]),
        .Q(\mul_reg_I_reg[9] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][31] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [31]),
        .Q(\mul_reg_I_reg[9] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][32] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [32]),
        .Q(\mul_reg_I_reg[9] [32]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][33] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [33]),
        .Q(\mul_reg_I_reg[9] [33]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][34] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [34]),
        .Q(\mul_reg_I_reg[9] [34]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][35] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [35]),
        .Q(\mul_reg_I_reg[9] [35]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][3] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [3]),
        .Q(\mul_reg_I_reg[9] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][4] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [4]),
        .Q(\mul_reg_I_reg[9] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][5] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [5]),
        .Q(\mul_reg_I_reg[9] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][6] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [6]),
        .Q(\mul_reg_I_reg[9] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][7] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [7]),
        .Q(\mul_reg_I_reg[9] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][8] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [8]),
        .Q(\mul_reg_I_reg[9] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_reg_I_reg[9][9] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\mul_reg_I_reg[10] [9]),
        .Q(\mul_reg_I_reg[9] [9]));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][0]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_105_[3] ),
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
        .CE(\data_out_I[15]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_95_[3] ),
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
        .CE(\data_out_I[15]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_94_[3] ),
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
        .CE(\data_out_I[15]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_93_[3] ),
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
        .CE(\data_out_I[15]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_92_[3] ),
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
        .CE(\data_out_I[15]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_91_[3] ),
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
        .CE(\data_out_I[15]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_90_[3] ),
        .Q(\mul_reg_Q_reg[0][15]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][1]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][1]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_104_[3] ),
        .Q(\mul_reg_Q_reg[0][1]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][2]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_103_[3] ),
        .Q(\mul_reg_Q_reg[0][2]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_102_[3] ),
        .Q(\mul_reg_Q_reg[0][3]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][4]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][4]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_101_[3] ),
        .Q(\mul_reg_Q_reg[0][4]_srl3_n_0 ));
  (* srl_bus_name = "\U0/mul_reg_Q_reg[0] " *) 
  (* srl_name = "\U0/mul_reg_Q_reg[0][5]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \mul_reg_Q_reg[0][5]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_100_[3] ),
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
        .CE(\data_out_I[15]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_99_[3] ),
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
        .CE(\data_out_I[15]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_98_[3] ),
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
        .CE(\data_out_I[15]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_97_[3] ),
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
        .CE(\data_out_I[15]_i_1_n_0 ),
        .CLK(clk),
        .D(\mul_reg_Q_reg_n_96_[3] ),
        .Q(\mul_reg_Q_reg[0][9]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][0] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_105_[11] ),
        .Q(\mul_reg_Q_reg[10] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][10] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_95_[11] ),
        .Q(\mul_reg_Q_reg[10] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][11] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_94_[11] ),
        .Q(\mul_reg_Q_reg[10] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][12] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_93_[11] ),
        .Q(\mul_reg_Q_reg[10] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][13] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_92_[11] ),
        .Q(\mul_reg_Q_reg[10] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][14] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_91_[11] ),
        .Q(\mul_reg_Q_reg[10] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][15] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_90_[11] ),
        .Q(\mul_reg_Q_reg[10] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][1] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_104_[11] ),
        .Q(\mul_reg_Q_reg[10] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][2] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_103_[11] ),
        .Q(\mul_reg_Q_reg[10] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][3] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_102_[11] ),
        .Q(\mul_reg_Q_reg[10] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][4] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_101_[11] ),
        .Q(\mul_reg_Q_reg[10] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][5] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_100_[11] ),
        .Q(\mul_reg_Q_reg[10] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][6] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_99_[11] ),
        .Q(\mul_reg_Q_reg[10] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][7] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_98_[11] ),
        .Q(\mul_reg_Q_reg[10] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][8] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_97_[11] ),
        .Q(\mul_reg_Q_reg[10] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[10][9] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_96_[11] ),
        .Q(\mul_reg_Q_reg[10] [9]),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
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
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \mul_reg_Q_reg[11] 
       (.A({input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_Q_reg[11]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\coeff_reg_reg[0] [11],1'b0,\coeff_reg_reg[2] [12:11],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [10],\coeff_reg_reg[2] [12:11],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [10],\coeff_reg_reg[2] [12:11],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [10],\coeff_reg_reg[2] [0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_Q_reg[11]_BCOUT_UNCONNECTED [17:0]),
        .C({\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] [15],\mul_reg_Q_reg[13] ,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_Q_reg[11]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_Q_reg[11]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(data_input_I0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(\data_out_I[15]_i_1_n_0 ),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(\data_out_I[15]_i_1_n_0 ),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_Q_reg[11]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_Q_reg[11]_OVERFLOW_UNCONNECTED ),
        .P({\NLW_mul_reg_Q_reg[11]_P_UNCONNECTED [47:16],\mul_reg_Q_reg_n_90_[11] ,\mul_reg_Q_reg_n_91_[11] ,\mul_reg_Q_reg_n_92_[11] ,\mul_reg_Q_reg_n_93_[11] ,\mul_reg_Q_reg_n_94_[11] ,\mul_reg_Q_reg_n_95_[11] ,\mul_reg_Q_reg_n_96_[11] ,\mul_reg_Q_reg_n_97_[11] ,\mul_reg_Q_reg_n_98_[11] ,\mul_reg_Q_reg_n_99_[11] ,\mul_reg_Q_reg_n_100_[11] ,\mul_reg_Q_reg_n_101_[11] ,\mul_reg_Q_reg_n_102_[11] ,\mul_reg_Q_reg_n_103_[11] ,\mul_reg_Q_reg_n_104_[11] ,\mul_reg_Q_reg_n_105_[11] }),
        .PATTERNBDETECT(\NLW_mul_reg_Q_reg[11]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_Q_reg[11]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_mul_reg_Q_reg[11]_PCOUT_UNCONNECTED [47:0]),
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
        .UNDERFLOW(\NLW_mul_reg_Q_reg[11]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_mul_reg_Q_reg[11]_XOROUT_UNCONNECTED [7:0]));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][10] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[14] [10]),
        .Q(\mul_reg_Q_reg[13] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][11] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[14] [11]),
        .Q(\mul_reg_Q_reg[13] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][12] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[14] [12]),
        .Q(\mul_reg_Q_reg[13] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][13] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[14] [13]),
        .Q(\mul_reg_Q_reg[13] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][14] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[14] [14]),
        .Q(\mul_reg_Q_reg[13] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][15] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[14] [15]),
        .Q(\mul_reg_Q_reg[13] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][4] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[14] [4]),
        .Q(\mul_reg_Q_reg[13] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][5] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[14] [5]),
        .Q(\mul_reg_Q_reg[13] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][6] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[14] [6]),
        .Q(\mul_reg_Q_reg[13] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][7] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[14] [7]),
        .Q(\mul_reg_Q_reg[13] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][8] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[14] [8]),
        .Q(\mul_reg_Q_reg[13] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[13][9] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[14] [9]),
        .Q(\mul_reg_Q_reg[13] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][10] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(p_0_out[10]),
        .Q(\mul_reg_Q_reg[14] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][11] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(p_0_out[11]),
        .Q(\mul_reg_Q_reg[14] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][12] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(p_0_out[12]),
        .Q(\mul_reg_Q_reg[14] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][13] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(p_0_out[13]),
        .Q(\mul_reg_Q_reg[14] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][14] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(p_0_out[14]),
        .Q(\mul_reg_Q_reg[14] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][15] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(p_0_out[15]),
        .Q(\mul_reg_Q_reg[14] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][4] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(p_0_out[4]),
        .Q(\mul_reg_Q_reg[14] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][5] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(p_0_out[5]),
        .Q(\mul_reg_Q_reg[14] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][6] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(p_0_out[6]),
        .Q(\mul_reg_Q_reg[14] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][7] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(p_0_out[7]),
        .Q(\mul_reg_Q_reg[14] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][8] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(p_0_out[8]),
        .Q(\mul_reg_Q_reg[14] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[14][9] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(p_0_out[9]),
        .Q(\mul_reg_Q_reg[14] [9]),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
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
       (.A({input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_Q_reg[15]0_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\coeff_reg_reg[3] [14:12],\coeff_reg_reg[1] [14],\phase_counter_reg_n_0_[1] ,\coeff_reg_reg[3] [9],\coeff_reg_reg[3] [12],\coeff_reg_reg[1] [14],\phase_counter_reg_n_0_[1] ,\coeff_reg_reg[3] [9],\coeff_reg_reg[3] [12],\coeff_reg_reg[1] [14],\phase_counter_reg_n_0_[1] ,\coeff_reg_reg[3] [9],\coeff_reg_reg[3] [12]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_Q_reg[15]0_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_Q_reg[15]0_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_Q_reg[15]0_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(data_input_I0),
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
        .CEP(\data_out_I[15]_i_1_n_0 ),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_Q_reg[15]0_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_Q_reg[15]0_OVERFLOW_UNCONNECTED ),
        .P({\NLW_mul_reg_Q_reg[15]0_P_UNCONNECTED [47:32],\mul_reg_Q_reg[15]0_n_74 ,\mul_reg_Q_reg[15]0_n_75 ,\mul_reg_Q_reg[15]0_n_76 ,\mul_reg_Q_reg[15]0_n_77 ,\mul_reg_Q_reg[15]0_n_78 ,\mul_reg_Q_reg[15]0_n_79 ,\mul_reg_Q_reg[15]0_n_80 ,\mul_reg_Q_reg[15]0_n_81 ,\mul_reg_Q_reg[15]0_n_82 ,\mul_reg_Q_reg[15]0_n_83 ,\mul_reg_Q_reg[15]0_n_84 ,\mul_reg_Q_reg[15]0_n_85 ,\mul_reg_Q_reg[15]0_n_86 ,\mul_reg_Q_reg[15]0_n_87 ,\mul_reg_Q_reg[15]0_n_88 ,\mul_reg_Q_reg[15]0_n_89 ,\mul_reg_Q_reg[15]0_n_90 ,\mul_reg_Q_reg[15]0_n_91 ,\mul_reg_Q_reg[15]0_n_92 ,\mul_reg_Q_reg[15]0_n_93 ,p_0_out}),
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
  (* KEEP_HIERARCHY = "yes" *) 
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
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \mul_reg_Q_reg[3] 
       (.A({input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_Q_reg[3]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\coeff_reg_reg[0] ,\coeff_reg_reg[0] [12:9],\coeff_reg_reg[0] [12:9],\coeff_reg_reg[0] [12]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_Q_reg[3]_BCOUT_UNCONNECTED [17:0]),
        .C({\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] [15],\mul_reg_Q_reg[5] }),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_Q_reg[3]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_Q_reg[3]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(data_input_I0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(\data_out_I[15]_i_1_n_0 ),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(\data_out_I[15]_i_1_n_0 ),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_Q_reg[3]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_Q_reg[3]_OVERFLOW_UNCONNECTED ),
        .P({\NLW_mul_reg_Q_reg[3]_P_UNCONNECTED [47:16],\mul_reg_Q_reg_n_90_[3] ,\mul_reg_Q_reg_n_91_[3] ,\mul_reg_Q_reg_n_92_[3] ,\mul_reg_Q_reg_n_93_[3] ,\mul_reg_Q_reg_n_94_[3] ,\mul_reg_Q_reg_n_95_[3] ,\mul_reg_Q_reg_n_96_[3] ,\mul_reg_Q_reg_n_97_[3] ,\mul_reg_Q_reg_n_98_[3] ,\mul_reg_Q_reg_n_99_[3] ,\mul_reg_Q_reg_n_100_[3] ,\mul_reg_Q_reg_n_101_[3] ,\mul_reg_Q_reg_n_102_[3] ,\mul_reg_Q_reg_n_103_[3] ,\mul_reg_Q_reg_n_104_[3] ,\mul_reg_Q_reg_n_105_[3] }),
        .PATTERNBDETECT(\NLW_mul_reg_Q_reg[3]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_Q_reg[3]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_mul_reg_Q_reg[3]_PCOUT_UNCONNECTED [47:0]),
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
        .UNDERFLOW(\NLW_mul_reg_Q_reg[3]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_mul_reg_Q_reg[3]_XOROUT_UNCONNECTED [7:0]));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][0] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[6] [0]),
        .Q(\mul_reg_Q_reg[5] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][10] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[6] [10]),
        .Q(\mul_reg_Q_reg[5] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][11] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[6] [11]),
        .Q(\mul_reg_Q_reg[5] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][12] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[6] [12]),
        .Q(\mul_reg_Q_reg[5] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][13] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[6] [13]),
        .Q(\mul_reg_Q_reg[5] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][14] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[6] [14]),
        .Q(\mul_reg_Q_reg[5] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][15] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[6] [15]),
        .Q(\mul_reg_Q_reg[5] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][1] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[6] [1]),
        .Q(\mul_reg_Q_reg[5] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][2] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[6] [2]),
        .Q(\mul_reg_Q_reg[5] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][3] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[6] [3]),
        .Q(\mul_reg_Q_reg[5] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][4] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[6] [4]),
        .Q(\mul_reg_Q_reg[5] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][5] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[6] [5]),
        .Q(\mul_reg_Q_reg[5] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][6] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[6] [6]),
        .Q(\mul_reg_Q_reg[5] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][7] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[6] [7]),
        .Q(\mul_reg_Q_reg[5] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][8] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[6] [8]),
        .Q(\mul_reg_Q_reg[5] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[5][9] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[6] [9]),
        .Q(\mul_reg_Q_reg[5] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][0] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_105_[7] ),
        .Q(\mul_reg_Q_reg[6] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][10] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_95_[7] ),
        .Q(\mul_reg_Q_reg[6] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][11] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_94_[7] ),
        .Q(\mul_reg_Q_reg[6] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][12] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_93_[7] ),
        .Q(\mul_reg_Q_reg[6] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][13] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_92_[7] ),
        .Q(\mul_reg_Q_reg[6] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][14] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_91_[7] ),
        .Q(\mul_reg_Q_reg[6] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][15] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_90_[7] ),
        .Q(\mul_reg_Q_reg[6] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][1] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_104_[7] ),
        .Q(\mul_reg_Q_reg[6] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][2] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_103_[7] ),
        .Q(\mul_reg_Q_reg[6] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][3] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_102_[7] ),
        .Q(\mul_reg_Q_reg[6] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][4] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_101_[7] ),
        .Q(\mul_reg_Q_reg[6] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][5] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_100_[7] ),
        .Q(\mul_reg_Q_reg[6] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][6] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_99_[7] ),
        .Q(\mul_reg_Q_reg[6] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][7] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_98_[7] ),
        .Q(\mul_reg_Q_reg[6] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][8] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_97_[7] ),
        .Q(\mul_reg_Q_reg[6] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[6][9] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg_n_96_[7] ),
        .Q(\mul_reg_Q_reg[6] [9]),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
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
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \mul_reg_Q_reg[7] 
       (.A({input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q[15],input_Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_mul_reg_Q_reg[7]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,\coeff_reg_reg[1] [14],1'b0,\coeff_reg_reg[0] [14],\coeff_reg_reg[0] [9],\coeff_reg_reg[1] [10],\coeff_reg_reg[0] [12],\coeff_reg_reg[0] [14],\coeff_reg_reg[0] [9],\coeff_reg_reg[1] [10],\coeff_reg_reg[0] [12],\coeff_reg_reg[0] [14],\coeff_reg_reg[0] [9],\coeff_reg_reg[1] [10],\coeff_reg_reg[0] [12],\coeff_reg_reg[1] [0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_mul_reg_Q_reg[7]_BCOUT_UNCONNECTED [17:0]),
        .C({\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] [15],\mul_reg_Q_reg[9] }),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_mul_reg_Q_reg[7]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_mul_reg_Q_reg[7]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(data_input_I0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(\data_out_I[15]_i_1_n_0 ),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(\data_out_I[15]_i_1_n_0 ),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_mul_reg_Q_reg[7]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_mul_reg_Q_reg[7]_OVERFLOW_UNCONNECTED ),
        .P({\NLW_mul_reg_Q_reg[7]_P_UNCONNECTED [47:16],\mul_reg_Q_reg_n_90_[7] ,\mul_reg_Q_reg_n_91_[7] ,\mul_reg_Q_reg_n_92_[7] ,\mul_reg_Q_reg_n_93_[7] ,\mul_reg_Q_reg_n_94_[7] ,\mul_reg_Q_reg_n_95_[7] ,\mul_reg_Q_reg_n_96_[7] ,\mul_reg_Q_reg_n_97_[7] ,\mul_reg_Q_reg_n_98_[7] ,\mul_reg_Q_reg_n_99_[7] ,\mul_reg_Q_reg_n_100_[7] ,\mul_reg_Q_reg_n_101_[7] ,\mul_reg_Q_reg_n_102_[7] ,\mul_reg_Q_reg_n_103_[7] ,\mul_reg_Q_reg_n_104_[7] ,\mul_reg_Q_reg_n_105_[7] }),
        .PATTERNBDETECT(\NLW_mul_reg_Q_reg[7]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_mul_reg_Q_reg[7]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_mul_reg_Q_reg[7]_PCOUT_UNCONNECTED [47:0]),
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
        .UNDERFLOW(\NLW_mul_reg_Q_reg[7]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_mul_reg_Q_reg[7]_XOROUT_UNCONNECTED [7:0]));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][0] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[10] [0]),
        .Q(\mul_reg_Q_reg[9] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][10] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[10] [10]),
        .Q(\mul_reg_Q_reg[9] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][11] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[10] [11]),
        .Q(\mul_reg_Q_reg[9] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][12] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[10] [12]),
        .Q(\mul_reg_Q_reg[9] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][13] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[10] [13]),
        .Q(\mul_reg_Q_reg[9] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][14] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[10] [14]),
        .Q(\mul_reg_Q_reg[9] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][15] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[10] [15]),
        .Q(\mul_reg_Q_reg[9] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][1] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[10] [1]),
        .Q(\mul_reg_Q_reg[9] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][2] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[10] [2]),
        .Q(\mul_reg_Q_reg[9] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][3] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[10] [3]),
        .Q(\mul_reg_Q_reg[9] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][4] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[10] [4]),
        .Q(\mul_reg_Q_reg[9] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][5] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[10] [5]),
        .Q(\mul_reg_Q_reg[9] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][6] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[10] [6]),
        .Q(\mul_reg_Q_reg[9] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][7] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[10] [7]),
        .Q(\mul_reg_Q_reg[9] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][8] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[10] [8]),
        .Q(\mul_reg_Q_reg[9] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mul_reg_Q_reg[9][9] 
       (.C(clk),
        .CE(\data_out_I[15]_i_1_n_0 ),
        .D(\mul_reg_Q_reg[10] [9]),
        .Q(\mul_reg_Q_reg[9] [9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_counter[0]_i_1 
       (.I0(\phase_counter_reg_n_0_[0] ),
        .O(\phase_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \phase_counter[1]_i_1 
       (.I0(\phase_counter_reg_n_0_[1] ),
        .I1(\phase_counter_reg_n_0_[0] ),
        .O(\phase_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h68)) 
    \phase_counter[2]_i_1 
       (.I0(\phase_counter_reg_n_0_[2] ),
        .I1(\phase_counter_reg_n_0_[1] ),
        .I2(\phase_counter_reg_n_0_[0] ),
        .O(\phase_counter[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_counter_reg[0] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\phase_counter[0]_i_1_n_0 ),
        .Q(\phase_counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_counter_reg[1] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\phase_counter[1]_i_1_n_0 ),
        .Q(\phase_counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_counter_reg[2] 
       (.C(clk),
        .CE(CEP),
        .CLR(reset),
        .D(\phase_counter[2]_i_1_n_0 ),
        .Q(\phase_counter_reg_n_0_[2] ));
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
