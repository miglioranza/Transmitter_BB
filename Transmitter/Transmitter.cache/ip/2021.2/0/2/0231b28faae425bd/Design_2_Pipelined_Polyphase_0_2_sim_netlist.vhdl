-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Mon Sep 29 15:25:55 2025
-- Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_Pipelined_Polyphase_0_2_sim_netlist.vhdl
-- Design      : Design_2_Pipelined_Polyphase_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Pipelined_Polyphase_Filter is
  port (
    data_out_Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CEP : out STD_LOGIC;
    data_out_ready : out STD_LOGIC;
    data_out_valid : out STD_LOGIC;
    data_out_I : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    \mul_reg_I_reg[14][4]_0\ : in STD_LOGIC;
    data_in_ready : in STD_LOGIC;
    data_in_valid : in STD_LOGIC;
    reset : in STD_LOGIC;
    input_I : in STD_LOGIC_VECTOR ( 15 downto 0 );
    input_Q : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Pipelined_Polyphase_Filter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Pipelined_Polyphase_Filter is
  signal \^cep\ : STD_LOGIC;
  signal \coeff[8]\ : STD_LOGIC_VECTOR ( 14 downto 10 );
  signal \coeff_reg[0][10]_i_1_n_0\ : STD_LOGIC;
  signal \coeff_reg[0][11]_i_1_n_0\ : STD_LOGIC;
  signal \coeff_reg[0][12]_i_1_n_0\ : STD_LOGIC;
  signal \coeff_reg[0][13]_i_1_n_0\ : STD_LOGIC;
  signal \coeff_reg[0][14]_i_1_n_0\ : STD_LOGIC;
  signal \coeff_reg[0][9]_i_1_n_0\ : STD_LOGIC;
  signal \coeff_reg[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \coeff_reg[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \coeff_reg[2][11]_i_1_n_0\ : STD_LOGIC;
  signal \coeff_reg[2][12]_i_1_n_0\ : STD_LOGIC;
  signal \coeff_reg[3][12]_i_1_n_0\ : STD_LOGIC;
  signal \coeff_reg[3][13]_i_1_n_0\ : STD_LOGIC;
  signal \coeff_reg[3][14]_i_1_n_0\ : STD_LOGIC;
  signal \coeff_reg[3][9]_i_1_n_0\ : STD_LOGIC;
  signal \coeff_reg_reg[0]\ : STD_LOGIC_VECTOR ( 14 downto 9 );
  signal \coeff_reg_reg[1]\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \coeff_reg_reg[2]\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \coeff_reg_reg[3]\ : STD_LOGIC_VECTOR ( 14 downto 9 );
  signal data_input_I0 : STD_LOGIC;
  signal \data_out_I[15]_i_1_n_0\ : STD_LOGIC;
  signal data_out_ready0_out : STD_LOGIC;
  signal \mul_reg_I_reg[0]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mul_reg_I_reg[10]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_I_reg[11]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_I_reg[11]0_n_100\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_101\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_102\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_103\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_104\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_105\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_70\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_71\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_72\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_73\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_74\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_75\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_76\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_77\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_78\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_79\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_80\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_81\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_82\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_83\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_84\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_85\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_86\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_87\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_88\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_89\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_90\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_91\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_92\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_93\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_94\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_95\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_96\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_97\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_98\ : STD_LOGIC;
  signal \mul_reg_I_reg[11]0_n_99\ : STD_LOGIC;
  signal \mul_reg_I_reg[12]\ : STD_LOGIC_VECTOR ( 35 downto 4 );
  signal \mul_reg_I_reg[13]\ : STD_LOGIC_VECTOR ( 35 downto 4 );
  signal \mul_reg_I_reg[14]\ : STD_LOGIC_VECTOR ( 35 downto 4 );
  signal \mul_reg_I_reg[15]\ : STD_LOGIC_VECTOR ( 35 downto 4 );
  signal \mul_reg_I_reg[1]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mul_reg_I_reg[2]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mul_reg_I_reg[3]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mul_reg_I_reg[3]0_n_100\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_101\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_102\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_103\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_104\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_105\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_70\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_71\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_72\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_73\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_74\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_75\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_76\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_77\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_78\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_79\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_80\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_81\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_82\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_83\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_84\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_85\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_86\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_87\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_88\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_89\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_90\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_91\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_92\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_93\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_94\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_95\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_96\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_97\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_98\ : STD_LOGIC;
  signal \mul_reg_I_reg[3]0_n_99\ : STD_LOGIC;
  signal \mul_reg_I_reg[4]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_I_reg[5]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_I_reg[6]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_I_reg[7]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_I_reg[7]0_n_100\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_101\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_102\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_103\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_104\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_105\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_70\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_71\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_72\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_73\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_74\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_75\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_76\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_77\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_78\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_79\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_80\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_81\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_82\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_83\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_84\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_85\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_86\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_87\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_88\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_89\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_90\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_91\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_92\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_93\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_94\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_95\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_96\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_97\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_98\ : STD_LOGIC;
  signal \mul_reg_I_reg[7]0_n_99\ : STD_LOGIC;
  signal \mul_reg_I_reg[8]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_I_reg[9]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \mul_reg_Q_reg[0][0]_srl3_n_0\ : STD_LOGIC;
  signal \mul_reg_Q_reg[0][10]_srl3_n_0\ : STD_LOGIC;
  signal \mul_reg_Q_reg[0][11]_srl3_n_0\ : STD_LOGIC;
  signal \mul_reg_Q_reg[0][12]_srl3_n_0\ : STD_LOGIC;
  signal \mul_reg_Q_reg[0][13]_srl3_n_0\ : STD_LOGIC;
  signal \mul_reg_Q_reg[0][14]_srl3_n_0\ : STD_LOGIC;
  signal \mul_reg_Q_reg[0][15]_srl3_n_0\ : STD_LOGIC;
  signal \mul_reg_Q_reg[0][1]_srl3_n_0\ : STD_LOGIC;
  signal \mul_reg_Q_reg[0][2]_srl3_n_0\ : STD_LOGIC;
  signal \mul_reg_Q_reg[0][3]_srl3_n_0\ : STD_LOGIC;
  signal \mul_reg_Q_reg[0][4]_srl3_n_0\ : STD_LOGIC;
  signal \mul_reg_Q_reg[0][5]_srl3_n_0\ : STD_LOGIC;
  signal \mul_reg_Q_reg[0][6]_srl3_n_0\ : STD_LOGIC;
  signal \mul_reg_Q_reg[0][7]_srl3_n_0\ : STD_LOGIC;
  signal \mul_reg_Q_reg[0][8]_srl3_n_0\ : STD_LOGIC;
  signal \mul_reg_Q_reg[0][9]_srl3_n_0\ : STD_LOGIC;
  signal \mul_reg_Q_reg[10]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mul_reg_Q_reg[13]\ : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal \mul_reg_Q_reg[14]\ : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal \mul_reg_Q_reg[15]0_n_74\ : STD_LOGIC;
  signal \mul_reg_Q_reg[15]0_n_75\ : STD_LOGIC;
  signal \mul_reg_Q_reg[15]0_n_76\ : STD_LOGIC;
  signal \mul_reg_Q_reg[15]0_n_77\ : STD_LOGIC;
  signal \mul_reg_Q_reg[15]0_n_78\ : STD_LOGIC;
  signal \mul_reg_Q_reg[15]0_n_79\ : STD_LOGIC;
  signal \mul_reg_Q_reg[15]0_n_80\ : STD_LOGIC;
  signal \mul_reg_Q_reg[15]0_n_81\ : STD_LOGIC;
  signal \mul_reg_Q_reg[15]0_n_82\ : STD_LOGIC;
  signal \mul_reg_Q_reg[15]0_n_83\ : STD_LOGIC;
  signal \mul_reg_Q_reg[15]0_n_84\ : STD_LOGIC;
  signal \mul_reg_Q_reg[15]0_n_85\ : STD_LOGIC;
  signal \mul_reg_Q_reg[15]0_n_86\ : STD_LOGIC;
  signal \mul_reg_Q_reg[15]0_n_87\ : STD_LOGIC;
  signal \mul_reg_Q_reg[15]0_n_88\ : STD_LOGIC;
  signal \mul_reg_Q_reg[15]0_n_89\ : STD_LOGIC;
  signal \mul_reg_Q_reg[15]0_n_90\ : STD_LOGIC;
  signal \mul_reg_Q_reg[15]0_n_91\ : STD_LOGIC;
  signal \mul_reg_Q_reg[15]0_n_92\ : STD_LOGIC;
  signal \mul_reg_Q_reg[15]0_n_93\ : STD_LOGIC;
  signal \mul_reg_Q_reg[5]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mul_reg_Q_reg[6]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mul_reg_Q_reg[9]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mul_reg_Q_reg_n_100_[11]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_100_[3]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_100_[7]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_101_[11]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_101_[3]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_101_[7]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_102_[11]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_102_[3]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_102_[7]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_103_[11]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_103_[3]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_103_[7]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_104_[11]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_104_[3]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_104_[7]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_105_[11]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_105_[3]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_105_[7]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_90_[11]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_90_[3]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_90_[7]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_91_[11]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_91_[3]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_91_[7]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_92_[11]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_92_[3]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_92_[7]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_93_[11]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_93_[3]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_93_[7]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_94_[11]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_94_[3]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_94_[7]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_95_[11]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_95_[3]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_95_[7]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_96_[11]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_96_[3]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_96_[7]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_97_[11]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_97_[3]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_97_[7]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_98_[11]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_98_[3]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_98_[7]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_99_[11]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_99_[3]\ : STD_LOGIC;
  signal \mul_reg_Q_reg_n_99_[7]\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal p_1_out : STD_LOGIC_VECTOR ( 35 downto 4 );
  signal \phase_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \phase_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \phase_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \phase_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \phase_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \phase_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[11]0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[11]0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[11]0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[11]0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[11]0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[11]0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[11]0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_mul_reg_I_reg[11]0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mul_reg_I_reg[11]0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mul_reg_I_reg[11]0_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 36 );
  signal \NLW_mul_reg_I_reg[11]0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mul_reg_I_reg[11]0_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_mul_reg_I_reg[15]0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[15]0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[15]0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[15]0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[15]0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[15]0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[15]0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_mul_reg_I_reg[15]0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mul_reg_I_reg[15]0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mul_reg_I_reg[15]0_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal \NLW_mul_reg_I_reg[15]0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mul_reg_I_reg[15]0_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_mul_reg_I_reg[3]0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[3]0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[3]0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[3]0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[3]0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[3]0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[3]0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_mul_reg_I_reg[3]0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mul_reg_I_reg[3]0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mul_reg_I_reg[3]0_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 36 );
  signal \NLW_mul_reg_I_reg[3]0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mul_reg_I_reg[3]0_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_mul_reg_I_reg[7]0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[7]0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[7]0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[7]0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[7]0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[7]0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_I_reg[7]0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_mul_reg_I_reg[7]0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mul_reg_I_reg[7]0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mul_reg_I_reg[7]0_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 36 );
  signal \NLW_mul_reg_I_reg[7]0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mul_reg_I_reg[7]0_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_mul_reg_Q_reg[11]_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[11]_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[11]_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[11]_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[11]_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[11]_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[11]_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_mul_reg_Q_reg[11]_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mul_reg_Q_reg[11]_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mul_reg_Q_reg[11]_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 16 );
  signal \NLW_mul_reg_Q_reg[11]_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mul_reg_Q_reg[11]_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_mul_reg_Q_reg[15]0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[15]0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[15]0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[15]0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[15]0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[15]0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[15]0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_mul_reg_Q_reg[15]0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mul_reg_Q_reg[15]0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mul_reg_Q_reg[15]0_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal \NLW_mul_reg_Q_reg[15]0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mul_reg_Q_reg[15]0_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_mul_reg_Q_reg[3]_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[3]_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[3]_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[3]_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[3]_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[3]_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[3]_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_mul_reg_Q_reg[3]_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mul_reg_Q_reg[3]_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mul_reg_Q_reg[3]_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 16 );
  signal \NLW_mul_reg_Q_reg[3]_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mul_reg_Q_reg[3]_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_mul_reg_Q_reg[7]_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[7]_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[7]_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[7]_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[7]_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[7]_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_reg_Q_reg[7]_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_mul_reg_Q_reg[7]_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mul_reg_Q_reg[7]_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mul_reg_Q_reg[7]_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 16 );
  signal \NLW_mul_reg_Q_reg[7]_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mul_reg_Q_reg[7]_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \coeff_reg[0][10]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \coeff_reg[0][11]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \coeff_reg[0][12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \coeff_reg[0][13]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \coeff_reg[0][14]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \coeff_reg[0][9]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \coeff_reg[1][0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \coeff_reg[1][10]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \coeff_reg[1][14]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \coeff_reg[2][0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \coeff_reg[2][11]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \coeff_reg[2][12]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \coeff_reg[3][12]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \coeff_reg[3][13]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \coeff_reg[3][14]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \coeff_reg[3][9]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \mul_reg_I[10][0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \mul_reg_I[10][10]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \mul_reg_I[10][11]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \mul_reg_I[10][12]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \mul_reg_I[10][13]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \mul_reg_I[10][14]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \mul_reg_I[10][15]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \mul_reg_I[10][16]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \mul_reg_I[10][17]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \mul_reg_I[10][18]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \mul_reg_I[10][19]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \mul_reg_I[10][1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \mul_reg_I[10][20]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \mul_reg_I[10][21]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \mul_reg_I[10][22]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \mul_reg_I[10][23]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \mul_reg_I[10][24]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \mul_reg_I[10][25]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \mul_reg_I[10][26]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \mul_reg_I[10][27]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \mul_reg_I[10][28]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \mul_reg_I[10][29]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \mul_reg_I[10][2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \mul_reg_I[10][30]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \mul_reg_I[10][31]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \mul_reg_I[10][32]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \mul_reg_I[10][33]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \mul_reg_I[10][34]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \mul_reg_I[10][35]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \mul_reg_I[10][3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \mul_reg_I[10][4]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \mul_reg_I[10][5]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \mul_reg_I[10][6]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \mul_reg_I[10][7]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \mul_reg_I[10][8]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \mul_reg_I[10][9]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \mul_reg_I[14][10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \mul_reg_I[14][11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \mul_reg_I[14][12]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \mul_reg_I[14][13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \mul_reg_I[14][14]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \mul_reg_I[14][15]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \mul_reg_I[14][16]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \mul_reg_I[14][17]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \mul_reg_I[14][18]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \mul_reg_I[14][19]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \mul_reg_I[14][20]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \mul_reg_I[14][21]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \mul_reg_I[14][22]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \mul_reg_I[14][23]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \mul_reg_I[14][24]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \mul_reg_I[14][25]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \mul_reg_I[14][26]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \mul_reg_I[14][27]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \mul_reg_I[14][28]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \mul_reg_I[14][29]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \mul_reg_I[14][30]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \mul_reg_I[14][31]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \mul_reg_I[14][32]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \mul_reg_I[14][33]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \mul_reg_I[14][34]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \mul_reg_I[14][35]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \mul_reg_I[14][4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mul_reg_I[14][5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mul_reg_I[14][6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \mul_reg_I[14][7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \mul_reg_I[14][8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \mul_reg_I[14][9]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \mul_reg_I[2][0]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \mul_reg_I[2][10]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \mul_reg_I[2][11]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \mul_reg_I[2][12]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \mul_reg_I[2][13]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \mul_reg_I[2][14]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \mul_reg_I[2][15]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \mul_reg_I[2][1]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \mul_reg_I[2][2]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \mul_reg_I[2][3]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \mul_reg_I[2][4]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \mul_reg_I[2][5]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \mul_reg_I[2][6]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \mul_reg_I[2][7]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \mul_reg_I[2][8]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \mul_reg_I[2][9]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \mul_reg_I[6][0]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \mul_reg_I[6][10]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \mul_reg_I[6][11]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \mul_reg_I[6][12]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \mul_reg_I[6][13]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \mul_reg_I[6][14]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \mul_reg_I[6][15]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \mul_reg_I[6][16]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \mul_reg_I[6][17]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \mul_reg_I[6][18]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \mul_reg_I[6][19]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \mul_reg_I[6][1]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \mul_reg_I[6][20]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \mul_reg_I[6][21]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \mul_reg_I[6][22]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \mul_reg_I[6][23]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \mul_reg_I[6][24]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \mul_reg_I[6][25]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \mul_reg_I[6][26]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \mul_reg_I[6][27]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \mul_reg_I[6][28]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \mul_reg_I[6][29]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \mul_reg_I[6][2]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \mul_reg_I[6][30]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \mul_reg_I[6][31]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \mul_reg_I[6][32]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \mul_reg_I[6][33]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \mul_reg_I[6][34]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \mul_reg_I[6][35]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \mul_reg_I[6][3]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \mul_reg_I[6][4]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \mul_reg_I[6][5]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \mul_reg_I[6][6]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \mul_reg_I[6][7]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \mul_reg_I[6][8]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \mul_reg_I[6][9]_i_1\ : label is "soft_lutpair45";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of \mul_reg_I_reg[11]0\ : label is "yes";
  attribute KEEP_HIERARCHY of \mul_reg_I_reg[15]0\ : label is "yes";
  attribute KEEP_HIERARCHY of \mul_reg_I_reg[3]0\ : label is "yes";
  attribute KEEP_HIERARCHY of \mul_reg_I_reg[7]0\ : label is "yes";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \mul_reg_Q_reg[0][0]_srl3\ : label is "\U0/mul_reg_Q_reg[0] ";
  attribute srl_name : string;
  attribute srl_name of \mul_reg_Q_reg[0][0]_srl3\ : label is "\U0/mul_reg_Q_reg[0][0]_srl3 ";
  attribute srl_bus_name of \mul_reg_Q_reg[0][10]_srl3\ : label is "\U0/mul_reg_Q_reg[0] ";
  attribute srl_name of \mul_reg_Q_reg[0][10]_srl3\ : label is "\U0/mul_reg_Q_reg[0][10]_srl3 ";
  attribute srl_bus_name of \mul_reg_Q_reg[0][11]_srl3\ : label is "\U0/mul_reg_Q_reg[0] ";
  attribute srl_name of \mul_reg_Q_reg[0][11]_srl3\ : label is "\U0/mul_reg_Q_reg[0][11]_srl3 ";
  attribute srl_bus_name of \mul_reg_Q_reg[0][12]_srl3\ : label is "\U0/mul_reg_Q_reg[0] ";
  attribute srl_name of \mul_reg_Q_reg[0][12]_srl3\ : label is "\U0/mul_reg_Q_reg[0][12]_srl3 ";
  attribute srl_bus_name of \mul_reg_Q_reg[0][13]_srl3\ : label is "\U0/mul_reg_Q_reg[0] ";
  attribute srl_name of \mul_reg_Q_reg[0][13]_srl3\ : label is "\U0/mul_reg_Q_reg[0][13]_srl3 ";
  attribute srl_bus_name of \mul_reg_Q_reg[0][14]_srl3\ : label is "\U0/mul_reg_Q_reg[0] ";
  attribute srl_name of \mul_reg_Q_reg[0][14]_srl3\ : label is "\U0/mul_reg_Q_reg[0][14]_srl3 ";
  attribute srl_bus_name of \mul_reg_Q_reg[0][15]_srl3\ : label is "\U0/mul_reg_Q_reg[0] ";
  attribute srl_name of \mul_reg_Q_reg[0][15]_srl3\ : label is "\U0/mul_reg_Q_reg[0][15]_srl3 ";
  attribute srl_bus_name of \mul_reg_Q_reg[0][1]_srl3\ : label is "\U0/mul_reg_Q_reg[0] ";
  attribute srl_name of \mul_reg_Q_reg[0][1]_srl3\ : label is "\U0/mul_reg_Q_reg[0][1]_srl3 ";
  attribute srl_bus_name of \mul_reg_Q_reg[0][2]_srl3\ : label is "\U0/mul_reg_Q_reg[0] ";
  attribute srl_name of \mul_reg_Q_reg[0][2]_srl3\ : label is "\U0/mul_reg_Q_reg[0][2]_srl3 ";
  attribute srl_bus_name of \mul_reg_Q_reg[0][3]_srl3\ : label is "\U0/mul_reg_Q_reg[0] ";
  attribute srl_name of \mul_reg_Q_reg[0][3]_srl3\ : label is "\U0/mul_reg_Q_reg[0][3]_srl3 ";
  attribute srl_bus_name of \mul_reg_Q_reg[0][4]_srl3\ : label is "\U0/mul_reg_Q_reg[0] ";
  attribute srl_name of \mul_reg_Q_reg[0][4]_srl3\ : label is "\U0/mul_reg_Q_reg[0][4]_srl3 ";
  attribute srl_bus_name of \mul_reg_Q_reg[0][5]_srl3\ : label is "\U0/mul_reg_Q_reg[0] ";
  attribute srl_name of \mul_reg_Q_reg[0][5]_srl3\ : label is "\U0/mul_reg_Q_reg[0][5]_srl3 ";
  attribute srl_bus_name of \mul_reg_Q_reg[0][6]_srl3\ : label is "\U0/mul_reg_Q_reg[0] ";
  attribute srl_name of \mul_reg_Q_reg[0][6]_srl3\ : label is "\U0/mul_reg_Q_reg[0][6]_srl3 ";
  attribute srl_bus_name of \mul_reg_Q_reg[0][7]_srl3\ : label is "\U0/mul_reg_Q_reg[0] ";
  attribute srl_name of \mul_reg_Q_reg[0][7]_srl3\ : label is "\U0/mul_reg_Q_reg[0][7]_srl3 ";
  attribute srl_bus_name of \mul_reg_Q_reg[0][8]_srl3\ : label is "\U0/mul_reg_Q_reg[0] ";
  attribute srl_name of \mul_reg_Q_reg[0][8]_srl3\ : label is "\U0/mul_reg_Q_reg[0][8]_srl3 ";
  attribute srl_bus_name of \mul_reg_Q_reg[0][9]_srl3\ : label is "\U0/mul_reg_Q_reg[0] ";
  attribute srl_name of \mul_reg_Q_reg[0][9]_srl3\ : label is "\U0/mul_reg_Q_reg[0][9]_srl3 ";
  attribute KEEP_HIERARCHY of \mul_reg_Q_reg[11]\ : label is "yes";
  attribute KEEP_HIERARCHY of \mul_reg_Q_reg[15]0\ : label is "yes";
  attribute KEEP_HIERARCHY of \mul_reg_Q_reg[3]\ : label is "yes";
  attribute KEEP_HIERARCHY of \mul_reg_Q_reg[7]\ : label is "yes";
  attribute SOFT_HLUTNM of \phase_counter[1]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \phase_counter[2]_i_1\ : label is "soft_lutpair1";
begin
  CEP <= \^cep\;
\__4/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002022200000000"
    )
        port map (
      I0 => data_in_ready,
      I1 => reset,
      I2 => \phase_counter_reg_n_0_[1]\,
      I3 => \phase_counter_reg_n_0_[0]\,
      I4 => \phase_counter_reg_n_0_[2]\,
      I5 => data_in_valid,
      O => data_input_I0
    );
\coeff_reg[0][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => \phase_counter_reg_n_0_[2]\,
      I1 => \phase_counter_reg_n_0_[1]\,
      I2 => \phase_counter_reg_n_0_[0]\,
      O => \coeff_reg[0][10]_i_1_n_0\
    );
\coeff_reg[0][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \phase_counter_reg_n_0_[1]\,
      I1 => \phase_counter_reg_n_0_[0]\,
      O => \coeff_reg[0][11]_i_1_n_0\
    );
\coeff_reg[0][12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \phase_counter_reg_n_0_[2]\,
      I1 => \phase_counter_reg_n_0_[1]\,
      I2 => \phase_counter_reg_n_0_[0]\,
      O => \coeff_reg[0][12]_i_1_n_0\
    );
\coeff_reg[0][13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \phase_counter_reg_n_0_[2]\,
      I1 => \phase_counter_reg_n_0_[1]\,
      I2 => \phase_counter_reg_n_0_[0]\,
      O => \coeff_reg[0][13]_i_1_n_0\
    );
\coeff_reg[0][14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"13"
    )
        port map (
      I0 => \phase_counter_reg_n_0_[2]\,
      I1 => \phase_counter_reg_n_0_[1]\,
      I2 => \phase_counter_reg_n_0_[0]\,
      O => \coeff_reg[0][14]_i_1_n_0\
    );
\coeff_reg[0][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \phase_counter_reg_n_0_[2]\,
      I1 => \phase_counter_reg_n_0_[1]\,
      I2 => \phase_counter_reg_n_0_[0]\,
      O => \coeff_reg[0][9]_i_1_n_0\
    );
\coeff_reg[1][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => \phase_counter_reg_n_0_[2]\,
      I1 => \phase_counter_reg_n_0_[1]\,
      I2 => \phase_counter_reg_n_0_[0]\,
      O => \coeff_reg[1][0]_i_1_n_0\
    );
\coeff_reg[1][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \phase_counter_reg_n_0_[2]\,
      I1 => \phase_counter_reg_n_0_[1]\,
      I2 => \phase_counter_reg_n_0_[0]\,
      O => \coeff[8]\(10)
    );
\coeff_reg[1][14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \phase_counter_reg_n_0_[0]\,
      I1 => \phase_counter_reg_n_0_[1]\,
      I2 => \phase_counter_reg_n_0_[2]\,
      O => \coeff[8]\(14)
    );
\coeff_reg[2][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \phase_counter_reg_n_0_[2]\,
      I1 => \phase_counter_reg_n_0_[1]\,
      I2 => \phase_counter_reg_n_0_[0]\,
      O => \coeff_reg[2][0]_i_1_n_0\
    );
\coeff_reg[2][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \phase_counter_reg_n_0_[2]\,
      I1 => \phase_counter_reg_n_0_[0]\,
      O => \coeff_reg[2][11]_i_1_n_0\
    );
\coeff_reg[2][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \phase_counter_reg_n_0_[2]\,
      I1 => \phase_counter_reg_n_0_[1]\,
      O => \coeff_reg[2][12]_i_1_n_0\
    );
\coeff_reg[3][12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \phase_counter_reg_n_0_[0]\,
      I1 => \phase_counter_reg_n_0_[1]\,
      I2 => \phase_counter_reg_n_0_[2]\,
      O => \coeff_reg[3][12]_i_1_n_0\
    );
\coeff_reg[3][13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DB"
    )
        port map (
      I0 => \phase_counter_reg_n_0_[0]\,
      I1 => \phase_counter_reg_n_0_[1]\,
      I2 => \phase_counter_reg_n_0_[2]\,
      O => \coeff_reg[3][13]_i_1_n_0\
    );
\coeff_reg[3][14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"64"
    )
        port map (
      I0 => \phase_counter_reg_n_0_[2]\,
      I1 => \phase_counter_reg_n_0_[1]\,
      I2 => \phase_counter_reg_n_0_[0]\,
      O => \coeff_reg[3][14]_i_1_n_0\
    );
\coeff_reg[3][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"58"
    )
        port map (
      I0 => \phase_counter_reg_n_0_[2]\,
      I1 => \phase_counter_reg_n_0_[1]\,
      I2 => \phase_counter_reg_n_0_[0]\,
      O => \coeff_reg[3][9]_i_1_n_0\
    );
\coeff_reg_reg[0][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \coeff_reg[0][10]_i_1_n_0\,
      Q => \coeff_reg_reg[0]\(10)
    );
\coeff_reg_reg[0][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \coeff_reg[0][11]_i_1_n_0\,
      Q => \coeff_reg_reg[0]\(11)
    );
\coeff_reg_reg[0][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \coeff_reg[0][12]_i_1_n_0\,
      Q => \coeff_reg_reg[0]\(12)
    );
\coeff_reg_reg[0][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \coeff_reg[0][13]_i_1_n_0\,
      Q => \coeff_reg_reg[0]\(13)
    );
\coeff_reg_reg[0][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \coeff_reg[0][14]_i_1_n_0\,
      Q => \coeff_reg_reg[0]\(14)
    );
\coeff_reg_reg[0][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \coeff_reg[0][9]_i_1_n_0\,
      Q => \coeff_reg_reg[0]\(9)
    );
\coeff_reg_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \coeff_reg[1][0]_i_1_n_0\,
      Q => \coeff_reg_reg[1]\(0)
    );
\coeff_reg_reg[1][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \coeff[8]\(10),
      Q => \coeff_reg_reg[1]\(10)
    );
\coeff_reg_reg[1][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \coeff[8]\(14),
      Q => \coeff_reg_reg[1]\(14)
    );
\coeff_reg_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \coeff_reg[2][0]_i_1_n_0\,
      Q => \coeff_reg_reg[2]\(0)
    );
\coeff_reg_reg[2][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \coeff_reg[2][11]_i_1_n_0\,
      Q => \coeff_reg_reg[2]\(11)
    );
\coeff_reg_reg[2][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \coeff_reg[2][12]_i_1_n_0\,
      Q => \coeff_reg_reg[2]\(12)
    );
\coeff_reg_reg[3][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \coeff_reg[3][12]_i_1_n_0\,
      Q => \coeff_reg_reg[3]\(12)
    );
\coeff_reg_reg[3][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \coeff_reg[3][13]_i_1_n_0\,
      Q => \coeff_reg_reg[3]\(13)
    );
\coeff_reg_reg[3][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \coeff_reg[3][14]_i_1_n_0\,
      Q => \coeff_reg_reg[3]\(14)
    );
\coeff_reg_reg[3][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \coeff_reg[3][9]_i_1_n_0\,
      Q => \coeff_reg_reg[3]\(9)
    );
\data_out_I[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data_in_ready,
      I1 => data_in_valid,
      I2 => reset,
      O => \data_out_I[15]_i_1_n_0\
    );
\data_out_I_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_I_reg[0]\(0),
      Q => data_out_I(0),
      R => '0'
    );
\data_out_I_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_I_reg[0]\(10),
      Q => data_out_I(10),
      R => '0'
    );
\data_out_I_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_I_reg[0]\(11),
      Q => data_out_I(11),
      R => '0'
    );
\data_out_I_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_I_reg[0]\(12),
      Q => data_out_I(12),
      R => '0'
    );
\data_out_I_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_I_reg[0]\(13),
      Q => data_out_I(13),
      R => '0'
    );
\data_out_I_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_I_reg[0]\(14),
      Q => data_out_I(14),
      R => '0'
    );
\data_out_I_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_I_reg[0]\(15),
      Q => data_out_I(15),
      R => '0'
    );
\data_out_I_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_I_reg[0]\(1),
      Q => data_out_I(1),
      R => '0'
    );
\data_out_I_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_I_reg[0]\(2),
      Q => data_out_I(2),
      R => '0'
    );
\data_out_I_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_I_reg[0]\(3),
      Q => data_out_I(3),
      R => '0'
    );
\data_out_I_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_I_reg[0]\(4),
      Q => data_out_I(4),
      R => '0'
    );
\data_out_I_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_I_reg[0]\(5),
      Q => data_out_I(5),
      R => '0'
    );
\data_out_I_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_I_reg[0]\(6),
      Q => data_out_I(6),
      R => '0'
    );
\data_out_I_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_I_reg[0]\(7),
      Q => data_out_I(7),
      R => '0'
    );
\data_out_I_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_I_reg[0]\(8),
      Q => data_out_I(8),
      R => '0'
    );
\data_out_I_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_I_reg[0]\(9),
      Q => data_out_I(9),
      R => '0'
    );
\data_out_Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[0][0]_srl3_n_0\,
      Q => data_out_Q(0),
      R => '0'
    );
\data_out_Q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[0][10]_srl3_n_0\,
      Q => data_out_Q(10),
      R => '0'
    );
\data_out_Q_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[0][11]_srl3_n_0\,
      Q => data_out_Q(11),
      R => '0'
    );
\data_out_Q_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[0][12]_srl3_n_0\,
      Q => data_out_Q(12),
      R => '0'
    );
\data_out_Q_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[0][13]_srl3_n_0\,
      Q => data_out_Q(13),
      R => '0'
    );
\data_out_Q_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[0][14]_srl3_n_0\,
      Q => data_out_Q(14),
      R => '0'
    );
\data_out_Q_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[0][15]_srl3_n_0\,
      Q => data_out_Q(15),
      R => '0'
    );
\data_out_Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[0][1]_srl3_n_0\,
      Q => data_out_Q(1),
      R => '0'
    );
\data_out_Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[0][2]_srl3_n_0\,
      Q => data_out_Q(2),
      R => '0'
    );
\data_out_Q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[0][3]_srl3_n_0\,
      Q => data_out_Q(3),
      R => '0'
    );
\data_out_Q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[0][4]_srl3_n_0\,
      Q => data_out_Q(4),
      R => '0'
    );
\data_out_Q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[0][5]_srl3_n_0\,
      Q => data_out_Q(5),
      R => '0'
    );
\data_out_Q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[0][6]_srl3_n_0\,
      Q => data_out_Q(6),
      R => '0'
    );
\data_out_Q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[0][7]_srl3_n_0\,
      Q => data_out_Q(7),
      R => '0'
    );
\data_out_Q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[0][8]_srl3_n_0\,
      Q => data_out_Q(8),
      R => '0'
    );
\data_out_Q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[0][9]_srl3_n_0\,
      Q => data_out_Q(9),
      R => '0'
    );
data_out_ready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA80AAAA"
    )
        port map (
      I0 => data_in_ready,
      I1 => \phase_counter_reg_n_0_[0]\,
      I2 => \phase_counter_reg_n_0_[1]\,
      I3 => \phase_counter_reg_n_0_[2]\,
      I4 => data_in_valid,
      O => data_out_ready0_out
    );
data_out_ready_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => data_out_ready0_out,
      Q => data_out_ready
    );
data_out_valid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_in_ready,
      I1 => data_in_valid,
      O => \^cep\
    );
data_out_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \^cep\,
      Q => data_out_valid
    );
\mul_reg_I[10][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_105\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(0)
    );
\mul_reg_I[10][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_95\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(10)
    );
\mul_reg_I[10][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_94\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(11)
    );
\mul_reg_I[10][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_93\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(12)
    );
\mul_reg_I[10][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_92\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(13)
    );
\mul_reg_I[10][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_91\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(14)
    );
\mul_reg_I[10][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_90\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(15)
    );
\mul_reg_I[10][16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_89\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(16)
    );
\mul_reg_I[10][17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_88\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(17)
    );
\mul_reg_I[10][18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_87\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(18)
    );
\mul_reg_I[10][19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_86\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(19)
    );
\mul_reg_I[10][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_104\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(1)
    );
\mul_reg_I[10][20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_85\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(20)
    );
\mul_reg_I[10][21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_84\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(21)
    );
\mul_reg_I[10][22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_83\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(22)
    );
\mul_reg_I[10][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_82\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(23)
    );
\mul_reg_I[10][24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_81\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(24)
    );
\mul_reg_I[10][25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_80\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(25)
    );
\mul_reg_I[10][26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_79\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(26)
    );
\mul_reg_I[10][27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_78\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(27)
    );
\mul_reg_I[10][28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_77\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(28)
    );
\mul_reg_I[10][29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_76\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(29)
    );
\mul_reg_I[10][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_103\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(2)
    );
\mul_reg_I[10][30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_75\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(30)
    );
\mul_reg_I[10][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_74\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(31)
    );
\mul_reg_I[10][32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_73\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(32)
    );
\mul_reg_I[10][33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_72\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(33)
    );
\mul_reg_I[10][34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_71\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(34)
    );
\mul_reg_I[10][35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_70\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(35)
    );
\mul_reg_I[10][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_102\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(3)
    );
\mul_reg_I[10][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_101\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(4)
    );
\mul_reg_I[10][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_100\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(5)
    );
\mul_reg_I[10][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_99\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(6)
    );
\mul_reg_I[10][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_98\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(7)
    );
\mul_reg_I[10][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_97\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(8)
    );
\mul_reg_I[10][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[11]0_n_96\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[11]\(9)
    );
\mul_reg_I[14][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(10),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(10)
    );
\mul_reg_I[14][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(11),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(11)
    );
\mul_reg_I[14][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(12),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(12)
    );
\mul_reg_I[14][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(13),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(13)
    );
\mul_reg_I[14][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(14),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(14)
    );
\mul_reg_I[14][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(15),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(15)
    );
\mul_reg_I[14][16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(16),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(16)
    );
\mul_reg_I[14][17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(17),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(17)
    );
\mul_reg_I[14][18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(18),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(18)
    );
\mul_reg_I[14][19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(19),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(19)
    );
\mul_reg_I[14][20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(20),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(20)
    );
\mul_reg_I[14][21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(21),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(21)
    );
\mul_reg_I[14][22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(22),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(22)
    );
\mul_reg_I[14][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(23),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(23)
    );
\mul_reg_I[14][24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(24),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(24)
    );
\mul_reg_I[14][25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(25),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(25)
    );
\mul_reg_I[14][26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(26),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(26)
    );
\mul_reg_I[14][27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(27),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(27)
    );
\mul_reg_I[14][28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(28),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(28)
    );
\mul_reg_I[14][29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(29),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(29)
    );
\mul_reg_I[14][30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(30),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(30)
    );
\mul_reg_I[14][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(31),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(31)
    );
\mul_reg_I[14][32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(32),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(32)
    );
\mul_reg_I[14][33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(33),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(33)
    );
\mul_reg_I[14][34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(34),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(34)
    );
\mul_reg_I[14][35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(35),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(35)
    );
\mul_reg_I[14][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(4),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(4)
    );
\mul_reg_I[14][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(5),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(5)
    );
\mul_reg_I[14][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(6),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(6)
    );
\mul_reg_I[14][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(7),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(7)
    );
\mul_reg_I[14][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(8),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(8)
    );
\mul_reg_I[14][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_out(9),
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[15]\(9)
    );
\mul_reg_I[2][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_105\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[3]\(0)
    );
\mul_reg_I[2][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_95\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[3]\(10)
    );
\mul_reg_I[2][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_94\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[3]\(11)
    );
\mul_reg_I[2][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_93\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[3]\(12)
    );
\mul_reg_I[2][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_92\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[3]\(13)
    );
\mul_reg_I[2][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_91\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[3]\(14)
    );
\mul_reg_I[2][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_90\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[3]\(15)
    );
\mul_reg_I[2][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_104\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[3]\(1)
    );
\mul_reg_I[2][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_103\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[3]\(2)
    );
\mul_reg_I[2][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_102\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[3]\(3)
    );
\mul_reg_I[2][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_101\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[3]\(4)
    );
\mul_reg_I[2][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_100\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[3]\(5)
    );
\mul_reg_I[2][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_99\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[3]\(6)
    );
\mul_reg_I[2][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_98\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[3]\(7)
    );
\mul_reg_I[2][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_97\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[3]\(8)
    );
\mul_reg_I[2][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[3]0_n_96\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[3]\(9)
    );
\mul_reg_I[6][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_105\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(0)
    );
\mul_reg_I[6][10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_95\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(10)
    );
\mul_reg_I[6][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_94\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(11)
    );
\mul_reg_I[6][12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_93\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(12)
    );
\mul_reg_I[6][13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_92\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(13)
    );
\mul_reg_I[6][14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_91\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(14)
    );
\mul_reg_I[6][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_90\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(15)
    );
\mul_reg_I[6][16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_89\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(16)
    );
\mul_reg_I[6][17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_88\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(17)
    );
\mul_reg_I[6][18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_87\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(18)
    );
\mul_reg_I[6][19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_86\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(19)
    );
\mul_reg_I[6][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_104\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(1)
    );
\mul_reg_I[6][20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_85\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(20)
    );
\mul_reg_I[6][21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_84\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(21)
    );
\mul_reg_I[6][22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_83\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(22)
    );
\mul_reg_I[6][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_82\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(23)
    );
\mul_reg_I[6][24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_81\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(24)
    );
\mul_reg_I[6][25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_80\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(25)
    );
\mul_reg_I[6][26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_79\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(26)
    );
\mul_reg_I[6][27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_78\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(27)
    );
\mul_reg_I[6][28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_77\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(28)
    );
\mul_reg_I[6][29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_76\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(29)
    );
\mul_reg_I[6][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_103\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(2)
    );
\mul_reg_I[6][30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_75\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(30)
    );
\mul_reg_I[6][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_74\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(31)
    );
\mul_reg_I[6][32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_73\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(32)
    );
\mul_reg_I[6][33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_72\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(33)
    );
\mul_reg_I[6][34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_71\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(34)
    );
\mul_reg_I[6][35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_70\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(35)
    );
\mul_reg_I[6][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_102\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(3)
    );
\mul_reg_I[6][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_101\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(4)
    );
\mul_reg_I[6][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_100\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(5)
    );
\mul_reg_I[6][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_99\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(6)
    );
\mul_reg_I[6][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_98\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(7)
    );
\mul_reg_I[6][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_97\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(8)
    );
\mul_reg_I[6][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mul_reg_I_reg[7]0_n_96\,
      I1 => \mul_reg_I_reg[14][4]_0\,
      O => \mul_reg_I_reg[7]\(9)
    );
\mul_reg_I_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(0),
      Q => \mul_reg_I_reg[0]\(0)
    );
\mul_reg_I_reg[0][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(10),
      Q => \mul_reg_I_reg[0]\(10)
    );
\mul_reg_I_reg[0][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(11),
      Q => \mul_reg_I_reg[0]\(11)
    );
\mul_reg_I_reg[0][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(12),
      Q => \mul_reg_I_reg[0]\(12)
    );
\mul_reg_I_reg[0][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(13),
      Q => \mul_reg_I_reg[0]\(13)
    );
\mul_reg_I_reg[0][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(14),
      Q => \mul_reg_I_reg[0]\(14)
    );
\mul_reg_I_reg[0][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(15),
      Q => \mul_reg_I_reg[0]\(15)
    );
\mul_reg_I_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(1),
      Q => \mul_reg_I_reg[0]\(1)
    );
\mul_reg_I_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(2),
      Q => \mul_reg_I_reg[0]\(2)
    );
\mul_reg_I_reg[0][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(3),
      Q => \mul_reg_I_reg[0]\(3)
    );
\mul_reg_I_reg[0][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(4),
      Q => \mul_reg_I_reg[0]\(4)
    );
\mul_reg_I_reg[0][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(5),
      Q => \mul_reg_I_reg[0]\(5)
    );
\mul_reg_I_reg[0][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(6),
      Q => \mul_reg_I_reg[0]\(6)
    );
\mul_reg_I_reg[0][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(7),
      Q => \mul_reg_I_reg[0]\(7)
    );
\mul_reg_I_reg[0][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(8),
      Q => \mul_reg_I_reg[0]\(8)
    );
\mul_reg_I_reg[0][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[1]\(9),
      Q => \mul_reg_I_reg[0]\(9)
    );
\mul_reg_I_reg[10][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(0),
      Q => \mul_reg_I_reg[10]\(0)
    );
\mul_reg_I_reg[10][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(10),
      Q => \mul_reg_I_reg[10]\(10)
    );
\mul_reg_I_reg[10][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(11),
      Q => \mul_reg_I_reg[10]\(11)
    );
\mul_reg_I_reg[10][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(12),
      Q => \mul_reg_I_reg[10]\(12)
    );
\mul_reg_I_reg[10][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(13),
      Q => \mul_reg_I_reg[10]\(13)
    );
\mul_reg_I_reg[10][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(14),
      Q => \mul_reg_I_reg[10]\(14)
    );
\mul_reg_I_reg[10][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(15),
      Q => \mul_reg_I_reg[10]\(15)
    );
\mul_reg_I_reg[10][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(16),
      Q => \mul_reg_I_reg[10]\(16)
    );
\mul_reg_I_reg[10][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(17),
      Q => \mul_reg_I_reg[10]\(17)
    );
\mul_reg_I_reg[10][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(18),
      Q => \mul_reg_I_reg[10]\(18)
    );
\mul_reg_I_reg[10][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(19),
      Q => \mul_reg_I_reg[10]\(19)
    );
\mul_reg_I_reg[10][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(1),
      Q => \mul_reg_I_reg[10]\(1)
    );
\mul_reg_I_reg[10][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(20),
      Q => \mul_reg_I_reg[10]\(20)
    );
\mul_reg_I_reg[10][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(21),
      Q => \mul_reg_I_reg[10]\(21)
    );
\mul_reg_I_reg[10][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(22),
      Q => \mul_reg_I_reg[10]\(22)
    );
\mul_reg_I_reg[10][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(23),
      Q => \mul_reg_I_reg[10]\(23)
    );
\mul_reg_I_reg[10][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(24),
      Q => \mul_reg_I_reg[10]\(24)
    );
\mul_reg_I_reg[10][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(25),
      Q => \mul_reg_I_reg[10]\(25)
    );
\mul_reg_I_reg[10][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(26),
      Q => \mul_reg_I_reg[10]\(26)
    );
\mul_reg_I_reg[10][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(27),
      Q => \mul_reg_I_reg[10]\(27)
    );
\mul_reg_I_reg[10][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(28),
      Q => \mul_reg_I_reg[10]\(28)
    );
\mul_reg_I_reg[10][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(29),
      Q => \mul_reg_I_reg[10]\(29)
    );
\mul_reg_I_reg[10][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(2),
      Q => \mul_reg_I_reg[10]\(2)
    );
\mul_reg_I_reg[10][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(30),
      Q => \mul_reg_I_reg[10]\(30)
    );
\mul_reg_I_reg[10][31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(31),
      Q => \mul_reg_I_reg[10]\(31)
    );
\mul_reg_I_reg[10][32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(32),
      Q => \mul_reg_I_reg[10]\(32)
    );
\mul_reg_I_reg[10][33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(33),
      Q => \mul_reg_I_reg[10]\(33)
    );
\mul_reg_I_reg[10][34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(34),
      Q => \mul_reg_I_reg[10]\(34)
    );
\mul_reg_I_reg[10][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(35),
      Q => \mul_reg_I_reg[10]\(35)
    );
\mul_reg_I_reg[10][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(3),
      Q => \mul_reg_I_reg[10]\(3)
    );
\mul_reg_I_reg[10][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(4),
      Q => \mul_reg_I_reg[10]\(4)
    );
\mul_reg_I_reg[10][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(5),
      Q => \mul_reg_I_reg[10]\(5)
    );
\mul_reg_I_reg[10][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(6),
      Q => \mul_reg_I_reg[10]\(6)
    );
\mul_reg_I_reg[10][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(7),
      Q => \mul_reg_I_reg[10]\(7)
    );
\mul_reg_I_reg[10][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(8),
      Q => \mul_reg_I_reg[10]\(8)
    );
\mul_reg_I_reg[10][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[11]\(9),
      Q => \mul_reg_I_reg[10]\(9)
    );
\mul_reg_I_reg[11]0\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => input_I(15),
      A(28) => input_I(15),
      A(27) => input_I(15),
      A(26) => input_I(15),
      A(25) => input_I(15),
      A(24) => input_I(15),
      A(23) => input_I(15),
      A(22) => input_I(15),
      A(21) => input_I(15),
      A(20) => input_I(15),
      A(19) => input_I(15),
      A(18) => input_I(15),
      A(17) => input_I(15),
      A(16) => input_I(15),
      A(15 downto 0) => input_I(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_mul_reg_I_reg[11]0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 15) => B"000",
      B(14) => \coeff_reg_reg[0]\(11),
      B(13) => '0',
      B(12 downto 11) => \coeff_reg_reg[2]\(12 downto 11),
      B(10) => \coeff_reg_reg[0]\(12),
      B(9) => \coeff_reg_reg[1]\(10),
      B(8 downto 7) => \coeff_reg_reg[2]\(12 downto 11),
      B(6) => \coeff_reg_reg[0]\(12),
      B(5) => \coeff_reg_reg[1]\(10),
      B(4 downto 3) => \coeff_reg_reg[2]\(12 downto 11),
      B(2) => \coeff_reg_reg[0]\(12),
      B(1) => \coeff_reg_reg[1]\(10),
      B(0) => \coeff_reg_reg[2]\(0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mul_reg_I_reg[11]0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47) => \mul_reg_I_reg[12]\(35),
      C(46) => \mul_reg_I_reg[12]\(35),
      C(45) => \mul_reg_I_reg[12]\(35),
      C(44) => \mul_reg_I_reg[12]\(35),
      C(43) => \mul_reg_I_reg[12]\(35),
      C(42) => \mul_reg_I_reg[12]\(35),
      C(41) => \mul_reg_I_reg[12]\(35),
      C(40) => \mul_reg_I_reg[12]\(35),
      C(39) => \mul_reg_I_reg[12]\(35),
      C(38) => \mul_reg_I_reg[12]\(35),
      C(37) => \mul_reg_I_reg[12]\(35),
      C(36) => \mul_reg_I_reg[12]\(35),
      C(35 downto 4) => \mul_reg_I_reg[12]\(35 downto 4),
      C(3 downto 0) => B"0000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mul_reg_I_reg[11]0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mul_reg_I_reg[11]0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => data_input_I0,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \^cep\,
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mul_reg_I_reg[11]0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => \NLW_mul_reg_I_reg[11]0_OVERFLOW_UNCONNECTED\,
      P(47 downto 36) => \NLW_mul_reg_I_reg[11]0_P_UNCONNECTED\(47 downto 36),
      P(35) => \mul_reg_I_reg[11]0_n_70\,
      P(34) => \mul_reg_I_reg[11]0_n_71\,
      P(33) => \mul_reg_I_reg[11]0_n_72\,
      P(32) => \mul_reg_I_reg[11]0_n_73\,
      P(31) => \mul_reg_I_reg[11]0_n_74\,
      P(30) => \mul_reg_I_reg[11]0_n_75\,
      P(29) => \mul_reg_I_reg[11]0_n_76\,
      P(28) => \mul_reg_I_reg[11]0_n_77\,
      P(27) => \mul_reg_I_reg[11]0_n_78\,
      P(26) => \mul_reg_I_reg[11]0_n_79\,
      P(25) => \mul_reg_I_reg[11]0_n_80\,
      P(24) => \mul_reg_I_reg[11]0_n_81\,
      P(23) => \mul_reg_I_reg[11]0_n_82\,
      P(22) => \mul_reg_I_reg[11]0_n_83\,
      P(21) => \mul_reg_I_reg[11]0_n_84\,
      P(20) => \mul_reg_I_reg[11]0_n_85\,
      P(19) => \mul_reg_I_reg[11]0_n_86\,
      P(18) => \mul_reg_I_reg[11]0_n_87\,
      P(17) => \mul_reg_I_reg[11]0_n_88\,
      P(16) => \mul_reg_I_reg[11]0_n_89\,
      P(15) => \mul_reg_I_reg[11]0_n_90\,
      P(14) => \mul_reg_I_reg[11]0_n_91\,
      P(13) => \mul_reg_I_reg[11]0_n_92\,
      P(12) => \mul_reg_I_reg[11]0_n_93\,
      P(11) => \mul_reg_I_reg[11]0_n_94\,
      P(10) => \mul_reg_I_reg[11]0_n_95\,
      P(9) => \mul_reg_I_reg[11]0_n_96\,
      P(8) => \mul_reg_I_reg[11]0_n_97\,
      P(7) => \mul_reg_I_reg[11]0_n_98\,
      P(6) => \mul_reg_I_reg[11]0_n_99\,
      P(5) => \mul_reg_I_reg[11]0_n_100\,
      P(4) => \mul_reg_I_reg[11]0_n_101\,
      P(3) => \mul_reg_I_reg[11]0_n_102\,
      P(2) => \mul_reg_I_reg[11]0_n_103\,
      P(1) => \mul_reg_I_reg[11]0_n_104\,
      P(0) => \mul_reg_I_reg[11]0_n_105\,
      PATTERNBDETECT => \NLW_mul_reg_I_reg[11]0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mul_reg_I_reg[11]0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => \NLW_mul_reg_I_reg[11]0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mul_reg_I_reg[11]0_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_mul_reg_I_reg[11]0_XOROUT_UNCONNECTED\(7 downto 0)
    );
\mul_reg_I_reg[12][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(10),
      Q => \mul_reg_I_reg[12]\(10)
    );
\mul_reg_I_reg[12][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(11),
      Q => \mul_reg_I_reg[12]\(11)
    );
\mul_reg_I_reg[12][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(12),
      Q => \mul_reg_I_reg[12]\(12)
    );
\mul_reg_I_reg[12][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(13),
      Q => \mul_reg_I_reg[12]\(13)
    );
\mul_reg_I_reg[12][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(14),
      Q => \mul_reg_I_reg[12]\(14)
    );
\mul_reg_I_reg[12][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(15),
      Q => \mul_reg_I_reg[12]\(15)
    );
\mul_reg_I_reg[12][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(16),
      Q => \mul_reg_I_reg[12]\(16)
    );
\mul_reg_I_reg[12][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(17),
      Q => \mul_reg_I_reg[12]\(17)
    );
\mul_reg_I_reg[12][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(18),
      Q => \mul_reg_I_reg[12]\(18)
    );
\mul_reg_I_reg[12][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(19),
      Q => \mul_reg_I_reg[12]\(19)
    );
\mul_reg_I_reg[12][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(20),
      Q => \mul_reg_I_reg[12]\(20)
    );
\mul_reg_I_reg[12][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(21),
      Q => \mul_reg_I_reg[12]\(21)
    );
\mul_reg_I_reg[12][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(22),
      Q => \mul_reg_I_reg[12]\(22)
    );
\mul_reg_I_reg[12][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(23),
      Q => \mul_reg_I_reg[12]\(23)
    );
\mul_reg_I_reg[12][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(24),
      Q => \mul_reg_I_reg[12]\(24)
    );
\mul_reg_I_reg[12][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(25),
      Q => \mul_reg_I_reg[12]\(25)
    );
\mul_reg_I_reg[12][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(26),
      Q => \mul_reg_I_reg[12]\(26)
    );
\mul_reg_I_reg[12][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(27),
      Q => \mul_reg_I_reg[12]\(27)
    );
\mul_reg_I_reg[12][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(28),
      Q => \mul_reg_I_reg[12]\(28)
    );
\mul_reg_I_reg[12][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(29),
      Q => \mul_reg_I_reg[12]\(29)
    );
\mul_reg_I_reg[12][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(30),
      Q => \mul_reg_I_reg[12]\(30)
    );
\mul_reg_I_reg[12][31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(31),
      Q => \mul_reg_I_reg[12]\(31)
    );
\mul_reg_I_reg[12][32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(32),
      Q => \mul_reg_I_reg[12]\(32)
    );
\mul_reg_I_reg[12][33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(33),
      Q => \mul_reg_I_reg[12]\(33)
    );
\mul_reg_I_reg[12][34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(34),
      Q => \mul_reg_I_reg[12]\(34)
    );
\mul_reg_I_reg[12][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(35),
      Q => \mul_reg_I_reg[12]\(35)
    );
\mul_reg_I_reg[12][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(4),
      Q => \mul_reg_I_reg[12]\(4)
    );
\mul_reg_I_reg[12][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(5),
      Q => \mul_reg_I_reg[12]\(5)
    );
\mul_reg_I_reg[12][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(6),
      Q => \mul_reg_I_reg[12]\(6)
    );
\mul_reg_I_reg[12][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(7),
      Q => \mul_reg_I_reg[12]\(7)
    );
\mul_reg_I_reg[12][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(8),
      Q => \mul_reg_I_reg[12]\(8)
    );
\mul_reg_I_reg[12][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[13]\(9),
      Q => \mul_reg_I_reg[12]\(9)
    );
\mul_reg_I_reg[13][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(10),
      Q => \mul_reg_I_reg[13]\(10)
    );
\mul_reg_I_reg[13][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(11),
      Q => \mul_reg_I_reg[13]\(11)
    );
\mul_reg_I_reg[13][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(12),
      Q => \mul_reg_I_reg[13]\(12)
    );
\mul_reg_I_reg[13][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(13),
      Q => \mul_reg_I_reg[13]\(13)
    );
\mul_reg_I_reg[13][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(14),
      Q => \mul_reg_I_reg[13]\(14)
    );
\mul_reg_I_reg[13][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(15),
      Q => \mul_reg_I_reg[13]\(15)
    );
\mul_reg_I_reg[13][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(16),
      Q => \mul_reg_I_reg[13]\(16)
    );
\mul_reg_I_reg[13][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(17),
      Q => \mul_reg_I_reg[13]\(17)
    );
\mul_reg_I_reg[13][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(18),
      Q => \mul_reg_I_reg[13]\(18)
    );
\mul_reg_I_reg[13][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(19),
      Q => \mul_reg_I_reg[13]\(19)
    );
\mul_reg_I_reg[13][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(20),
      Q => \mul_reg_I_reg[13]\(20)
    );
\mul_reg_I_reg[13][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(21),
      Q => \mul_reg_I_reg[13]\(21)
    );
\mul_reg_I_reg[13][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(22),
      Q => \mul_reg_I_reg[13]\(22)
    );
\mul_reg_I_reg[13][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(23),
      Q => \mul_reg_I_reg[13]\(23)
    );
\mul_reg_I_reg[13][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(24),
      Q => \mul_reg_I_reg[13]\(24)
    );
\mul_reg_I_reg[13][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(25),
      Q => \mul_reg_I_reg[13]\(25)
    );
\mul_reg_I_reg[13][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(26),
      Q => \mul_reg_I_reg[13]\(26)
    );
\mul_reg_I_reg[13][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(27),
      Q => \mul_reg_I_reg[13]\(27)
    );
\mul_reg_I_reg[13][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(28),
      Q => \mul_reg_I_reg[13]\(28)
    );
\mul_reg_I_reg[13][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(29),
      Q => \mul_reg_I_reg[13]\(29)
    );
\mul_reg_I_reg[13][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(30),
      Q => \mul_reg_I_reg[13]\(30)
    );
\mul_reg_I_reg[13][31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(31),
      Q => \mul_reg_I_reg[13]\(31)
    );
\mul_reg_I_reg[13][32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(32),
      Q => \mul_reg_I_reg[13]\(32)
    );
\mul_reg_I_reg[13][33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(33),
      Q => \mul_reg_I_reg[13]\(33)
    );
\mul_reg_I_reg[13][34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(34),
      Q => \mul_reg_I_reg[13]\(34)
    );
\mul_reg_I_reg[13][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(35),
      Q => \mul_reg_I_reg[13]\(35)
    );
\mul_reg_I_reg[13][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(4),
      Q => \mul_reg_I_reg[13]\(4)
    );
\mul_reg_I_reg[13][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(5),
      Q => \mul_reg_I_reg[13]\(5)
    );
\mul_reg_I_reg[13][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(6),
      Q => \mul_reg_I_reg[13]\(6)
    );
\mul_reg_I_reg[13][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(7),
      Q => \mul_reg_I_reg[13]\(7)
    );
\mul_reg_I_reg[13][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(8),
      Q => \mul_reg_I_reg[13]\(8)
    );
\mul_reg_I_reg[13][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[14]\(9),
      Q => \mul_reg_I_reg[13]\(9)
    );
\mul_reg_I_reg[14][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(10),
      Q => \mul_reg_I_reg[14]\(10)
    );
\mul_reg_I_reg[14][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(11),
      Q => \mul_reg_I_reg[14]\(11)
    );
\mul_reg_I_reg[14][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(12),
      Q => \mul_reg_I_reg[14]\(12)
    );
\mul_reg_I_reg[14][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(13),
      Q => \mul_reg_I_reg[14]\(13)
    );
\mul_reg_I_reg[14][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(14),
      Q => \mul_reg_I_reg[14]\(14)
    );
\mul_reg_I_reg[14][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(15),
      Q => \mul_reg_I_reg[14]\(15)
    );
\mul_reg_I_reg[14][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(16),
      Q => \mul_reg_I_reg[14]\(16)
    );
\mul_reg_I_reg[14][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(17),
      Q => \mul_reg_I_reg[14]\(17)
    );
\mul_reg_I_reg[14][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(18),
      Q => \mul_reg_I_reg[14]\(18)
    );
\mul_reg_I_reg[14][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(19),
      Q => \mul_reg_I_reg[14]\(19)
    );
\mul_reg_I_reg[14][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(20),
      Q => \mul_reg_I_reg[14]\(20)
    );
\mul_reg_I_reg[14][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(21),
      Q => \mul_reg_I_reg[14]\(21)
    );
\mul_reg_I_reg[14][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(22),
      Q => \mul_reg_I_reg[14]\(22)
    );
\mul_reg_I_reg[14][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(23),
      Q => \mul_reg_I_reg[14]\(23)
    );
\mul_reg_I_reg[14][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(24),
      Q => \mul_reg_I_reg[14]\(24)
    );
\mul_reg_I_reg[14][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(25),
      Q => \mul_reg_I_reg[14]\(25)
    );
\mul_reg_I_reg[14][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(26),
      Q => \mul_reg_I_reg[14]\(26)
    );
\mul_reg_I_reg[14][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(27),
      Q => \mul_reg_I_reg[14]\(27)
    );
\mul_reg_I_reg[14][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(28),
      Q => \mul_reg_I_reg[14]\(28)
    );
\mul_reg_I_reg[14][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(29),
      Q => \mul_reg_I_reg[14]\(29)
    );
\mul_reg_I_reg[14][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(30),
      Q => \mul_reg_I_reg[14]\(30)
    );
\mul_reg_I_reg[14][31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(31),
      Q => \mul_reg_I_reg[14]\(31)
    );
\mul_reg_I_reg[14][32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(32),
      Q => \mul_reg_I_reg[14]\(32)
    );
\mul_reg_I_reg[14][33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(33),
      Q => \mul_reg_I_reg[14]\(33)
    );
\mul_reg_I_reg[14][34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(34),
      Q => \mul_reg_I_reg[14]\(34)
    );
\mul_reg_I_reg[14][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(35),
      Q => \mul_reg_I_reg[14]\(35)
    );
\mul_reg_I_reg[14][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(4),
      Q => \mul_reg_I_reg[14]\(4)
    );
\mul_reg_I_reg[14][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(5),
      Q => \mul_reg_I_reg[14]\(5)
    );
\mul_reg_I_reg[14][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(6),
      Q => \mul_reg_I_reg[14]\(6)
    );
\mul_reg_I_reg[14][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(7),
      Q => \mul_reg_I_reg[14]\(7)
    );
\mul_reg_I_reg[14][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(8),
      Q => \mul_reg_I_reg[14]\(8)
    );
\mul_reg_I_reg[14][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[15]\(9),
      Q => \mul_reg_I_reg[14]\(9)
    );
\mul_reg_I_reg[15]0\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => input_I(15),
      A(28) => input_I(15),
      A(27) => input_I(15),
      A(26) => input_I(15),
      A(25) => input_I(15),
      A(24) => input_I(15),
      A(23) => input_I(15),
      A(22) => input_I(15),
      A(21) => input_I(15),
      A(20) => input_I(15),
      A(19) => input_I(15),
      A(18) => input_I(15),
      A(17) => input_I(15),
      A(16) => input_I(15),
      A(15 downto 0) => input_I(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_mul_reg_I_reg[15]0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 15) => B"000",
      B(14 downto 12) => \coeff_reg_reg[3]\(14 downto 12),
      B(11) => \coeff_reg_reg[1]\(14),
      B(10) => \phase_counter_reg_n_0_[1]\,
      B(9) => \coeff_reg_reg[3]\(9),
      B(8) => \coeff_reg_reg[3]\(12),
      B(7) => \coeff_reg_reg[1]\(14),
      B(6) => \phase_counter_reg_n_0_[1]\,
      B(5) => \coeff_reg_reg[3]\(9),
      B(4) => \coeff_reg_reg[3]\(12),
      B(3) => \coeff_reg_reg[1]\(14),
      B(2) => \phase_counter_reg_n_0_[1]\,
      B(1) => \coeff_reg_reg[3]\(9),
      B(0) => \coeff_reg_reg[3]\(12),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mul_reg_I_reg[15]0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mul_reg_I_reg[15]0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mul_reg_I_reg[15]0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => data_input_I0,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \^cep\,
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mul_reg_I_reg[15]0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => \NLW_mul_reg_I_reg[15]0_OVERFLOW_UNCONNECTED\,
      P(47 downto 32) => \NLW_mul_reg_I_reg[15]0_P_UNCONNECTED\(47 downto 32),
      P(31 downto 0) => p_1_out(35 downto 4),
      PATTERNBDETECT => \NLW_mul_reg_I_reg[15]0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mul_reg_I_reg[15]0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => \NLW_mul_reg_I_reg[15]0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mul_reg_I_reg[15]0_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_mul_reg_I_reg[15]0_XOROUT_UNCONNECTED\(7 downto 0)
    );
\mul_reg_I_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(0),
      Q => \mul_reg_I_reg[1]\(0)
    );
\mul_reg_I_reg[1][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(10),
      Q => \mul_reg_I_reg[1]\(10)
    );
\mul_reg_I_reg[1][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(11),
      Q => \mul_reg_I_reg[1]\(11)
    );
\mul_reg_I_reg[1][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(12),
      Q => \mul_reg_I_reg[1]\(12)
    );
\mul_reg_I_reg[1][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(13),
      Q => \mul_reg_I_reg[1]\(13)
    );
\mul_reg_I_reg[1][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(14),
      Q => \mul_reg_I_reg[1]\(14)
    );
\mul_reg_I_reg[1][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(15),
      Q => \mul_reg_I_reg[1]\(15)
    );
\mul_reg_I_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(1),
      Q => \mul_reg_I_reg[1]\(1)
    );
\mul_reg_I_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(2),
      Q => \mul_reg_I_reg[1]\(2)
    );
\mul_reg_I_reg[1][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(3),
      Q => \mul_reg_I_reg[1]\(3)
    );
\mul_reg_I_reg[1][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(4),
      Q => \mul_reg_I_reg[1]\(4)
    );
\mul_reg_I_reg[1][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(5),
      Q => \mul_reg_I_reg[1]\(5)
    );
\mul_reg_I_reg[1][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(6),
      Q => \mul_reg_I_reg[1]\(6)
    );
\mul_reg_I_reg[1][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(7),
      Q => \mul_reg_I_reg[1]\(7)
    );
\mul_reg_I_reg[1][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(8),
      Q => \mul_reg_I_reg[1]\(8)
    );
\mul_reg_I_reg[1][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[2]\(9),
      Q => \mul_reg_I_reg[1]\(9)
    );
\mul_reg_I_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(0),
      Q => \mul_reg_I_reg[2]\(0)
    );
\mul_reg_I_reg[2][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(10),
      Q => \mul_reg_I_reg[2]\(10)
    );
\mul_reg_I_reg[2][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(11),
      Q => \mul_reg_I_reg[2]\(11)
    );
\mul_reg_I_reg[2][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(12),
      Q => \mul_reg_I_reg[2]\(12)
    );
\mul_reg_I_reg[2][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(13),
      Q => \mul_reg_I_reg[2]\(13)
    );
\mul_reg_I_reg[2][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(14),
      Q => \mul_reg_I_reg[2]\(14)
    );
\mul_reg_I_reg[2][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(15),
      Q => \mul_reg_I_reg[2]\(15)
    );
\mul_reg_I_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(1),
      Q => \mul_reg_I_reg[2]\(1)
    );
\mul_reg_I_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(2),
      Q => \mul_reg_I_reg[2]\(2)
    );
\mul_reg_I_reg[2][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(3),
      Q => \mul_reg_I_reg[2]\(3)
    );
\mul_reg_I_reg[2][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(4),
      Q => \mul_reg_I_reg[2]\(4)
    );
\mul_reg_I_reg[2][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(5),
      Q => \mul_reg_I_reg[2]\(5)
    );
\mul_reg_I_reg[2][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(6),
      Q => \mul_reg_I_reg[2]\(6)
    );
\mul_reg_I_reg[2][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(7),
      Q => \mul_reg_I_reg[2]\(7)
    );
\mul_reg_I_reg[2][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(8),
      Q => \mul_reg_I_reg[2]\(8)
    );
\mul_reg_I_reg[2][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[3]\(9),
      Q => \mul_reg_I_reg[2]\(9)
    );
\mul_reg_I_reg[3]0\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => input_I(15),
      A(28) => input_I(15),
      A(27) => input_I(15),
      A(26) => input_I(15),
      A(25) => input_I(15),
      A(24) => input_I(15),
      A(23) => input_I(15),
      A(22) => input_I(15),
      A(21) => input_I(15),
      A(20) => input_I(15),
      A(19) => input_I(15),
      A(18) => input_I(15),
      A(17) => input_I(15),
      A(16) => input_I(15),
      A(15 downto 0) => input_I(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_mul_reg_I_reg[3]0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 15) => B"000",
      B(14 downto 9) => \coeff_reg_reg[0]\(14 downto 9),
      B(8 downto 5) => \coeff_reg_reg[0]\(12 downto 9),
      B(4 downto 1) => \coeff_reg_reg[0]\(12 downto 9),
      B(0) => \coeff_reg_reg[0]\(12),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mul_reg_I_reg[3]0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47) => \mul_reg_I_reg[4]\(35),
      C(46) => \mul_reg_I_reg[4]\(35),
      C(45) => \mul_reg_I_reg[4]\(35),
      C(44) => \mul_reg_I_reg[4]\(35),
      C(43) => \mul_reg_I_reg[4]\(35),
      C(42) => \mul_reg_I_reg[4]\(35),
      C(41) => \mul_reg_I_reg[4]\(35),
      C(40) => \mul_reg_I_reg[4]\(35),
      C(39) => \mul_reg_I_reg[4]\(35),
      C(38) => \mul_reg_I_reg[4]\(35),
      C(37) => \mul_reg_I_reg[4]\(35),
      C(36) => \mul_reg_I_reg[4]\(35),
      C(35 downto 0) => \mul_reg_I_reg[4]\(35 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mul_reg_I_reg[3]0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mul_reg_I_reg[3]0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => data_input_I0,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \^cep\,
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mul_reg_I_reg[3]0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => \NLW_mul_reg_I_reg[3]0_OVERFLOW_UNCONNECTED\,
      P(47 downto 36) => \NLW_mul_reg_I_reg[3]0_P_UNCONNECTED\(47 downto 36),
      P(35) => \mul_reg_I_reg[3]0_n_70\,
      P(34) => \mul_reg_I_reg[3]0_n_71\,
      P(33) => \mul_reg_I_reg[3]0_n_72\,
      P(32) => \mul_reg_I_reg[3]0_n_73\,
      P(31) => \mul_reg_I_reg[3]0_n_74\,
      P(30) => \mul_reg_I_reg[3]0_n_75\,
      P(29) => \mul_reg_I_reg[3]0_n_76\,
      P(28) => \mul_reg_I_reg[3]0_n_77\,
      P(27) => \mul_reg_I_reg[3]0_n_78\,
      P(26) => \mul_reg_I_reg[3]0_n_79\,
      P(25) => \mul_reg_I_reg[3]0_n_80\,
      P(24) => \mul_reg_I_reg[3]0_n_81\,
      P(23) => \mul_reg_I_reg[3]0_n_82\,
      P(22) => \mul_reg_I_reg[3]0_n_83\,
      P(21) => \mul_reg_I_reg[3]0_n_84\,
      P(20) => \mul_reg_I_reg[3]0_n_85\,
      P(19) => \mul_reg_I_reg[3]0_n_86\,
      P(18) => \mul_reg_I_reg[3]0_n_87\,
      P(17) => \mul_reg_I_reg[3]0_n_88\,
      P(16) => \mul_reg_I_reg[3]0_n_89\,
      P(15) => \mul_reg_I_reg[3]0_n_90\,
      P(14) => \mul_reg_I_reg[3]0_n_91\,
      P(13) => \mul_reg_I_reg[3]0_n_92\,
      P(12) => \mul_reg_I_reg[3]0_n_93\,
      P(11) => \mul_reg_I_reg[3]0_n_94\,
      P(10) => \mul_reg_I_reg[3]0_n_95\,
      P(9) => \mul_reg_I_reg[3]0_n_96\,
      P(8) => \mul_reg_I_reg[3]0_n_97\,
      P(7) => \mul_reg_I_reg[3]0_n_98\,
      P(6) => \mul_reg_I_reg[3]0_n_99\,
      P(5) => \mul_reg_I_reg[3]0_n_100\,
      P(4) => \mul_reg_I_reg[3]0_n_101\,
      P(3) => \mul_reg_I_reg[3]0_n_102\,
      P(2) => \mul_reg_I_reg[3]0_n_103\,
      P(1) => \mul_reg_I_reg[3]0_n_104\,
      P(0) => \mul_reg_I_reg[3]0_n_105\,
      PATTERNBDETECT => \NLW_mul_reg_I_reg[3]0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mul_reg_I_reg[3]0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => \NLW_mul_reg_I_reg[3]0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mul_reg_I_reg[3]0_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_mul_reg_I_reg[3]0_XOROUT_UNCONNECTED\(7 downto 0)
    );
\mul_reg_I_reg[4][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(0),
      Q => \mul_reg_I_reg[4]\(0)
    );
\mul_reg_I_reg[4][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(10),
      Q => \mul_reg_I_reg[4]\(10)
    );
\mul_reg_I_reg[4][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(11),
      Q => \mul_reg_I_reg[4]\(11)
    );
\mul_reg_I_reg[4][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(12),
      Q => \mul_reg_I_reg[4]\(12)
    );
\mul_reg_I_reg[4][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(13),
      Q => \mul_reg_I_reg[4]\(13)
    );
\mul_reg_I_reg[4][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(14),
      Q => \mul_reg_I_reg[4]\(14)
    );
\mul_reg_I_reg[4][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(15),
      Q => \mul_reg_I_reg[4]\(15)
    );
\mul_reg_I_reg[4][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(16),
      Q => \mul_reg_I_reg[4]\(16)
    );
\mul_reg_I_reg[4][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(17),
      Q => \mul_reg_I_reg[4]\(17)
    );
\mul_reg_I_reg[4][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(18),
      Q => \mul_reg_I_reg[4]\(18)
    );
\mul_reg_I_reg[4][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(19),
      Q => \mul_reg_I_reg[4]\(19)
    );
\mul_reg_I_reg[4][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(1),
      Q => \mul_reg_I_reg[4]\(1)
    );
\mul_reg_I_reg[4][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(20),
      Q => \mul_reg_I_reg[4]\(20)
    );
\mul_reg_I_reg[4][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(21),
      Q => \mul_reg_I_reg[4]\(21)
    );
\mul_reg_I_reg[4][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(22),
      Q => \mul_reg_I_reg[4]\(22)
    );
\mul_reg_I_reg[4][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(23),
      Q => \mul_reg_I_reg[4]\(23)
    );
\mul_reg_I_reg[4][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(24),
      Q => \mul_reg_I_reg[4]\(24)
    );
\mul_reg_I_reg[4][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(25),
      Q => \mul_reg_I_reg[4]\(25)
    );
\mul_reg_I_reg[4][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(26),
      Q => \mul_reg_I_reg[4]\(26)
    );
\mul_reg_I_reg[4][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(27),
      Q => \mul_reg_I_reg[4]\(27)
    );
\mul_reg_I_reg[4][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(28),
      Q => \mul_reg_I_reg[4]\(28)
    );
\mul_reg_I_reg[4][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(29),
      Q => \mul_reg_I_reg[4]\(29)
    );
\mul_reg_I_reg[4][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(2),
      Q => \mul_reg_I_reg[4]\(2)
    );
\mul_reg_I_reg[4][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(30),
      Q => \mul_reg_I_reg[4]\(30)
    );
\mul_reg_I_reg[4][31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(31),
      Q => \mul_reg_I_reg[4]\(31)
    );
\mul_reg_I_reg[4][32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(32),
      Q => \mul_reg_I_reg[4]\(32)
    );
\mul_reg_I_reg[4][33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(33),
      Q => \mul_reg_I_reg[4]\(33)
    );
\mul_reg_I_reg[4][34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(34),
      Q => \mul_reg_I_reg[4]\(34)
    );
\mul_reg_I_reg[4][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(35),
      Q => \mul_reg_I_reg[4]\(35)
    );
\mul_reg_I_reg[4][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(3),
      Q => \mul_reg_I_reg[4]\(3)
    );
\mul_reg_I_reg[4][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(4),
      Q => \mul_reg_I_reg[4]\(4)
    );
\mul_reg_I_reg[4][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(5),
      Q => \mul_reg_I_reg[4]\(5)
    );
\mul_reg_I_reg[4][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(6),
      Q => \mul_reg_I_reg[4]\(6)
    );
\mul_reg_I_reg[4][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(7),
      Q => \mul_reg_I_reg[4]\(7)
    );
\mul_reg_I_reg[4][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(8),
      Q => \mul_reg_I_reg[4]\(8)
    );
\mul_reg_I_reg[4][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[5]\(9),
      Q => \mul_reg_I_reg[4]\(9)
    );
\mul_reg_I_reg[5][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(0),
      Q => \mul_reg_I_reg[5]\(0)
    );
\mul_reg_I_reg[5][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(10),
      Q => \mul_reg_I_reg[5]\(10)
    );
\mul_reg_I_reg[5][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(11),
      Q => \mul_reg_I_reg[5]\(11)
    );
\mul_reg_I_reg[5][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(12),
      Q => \mul_reg_I_reg[5]\(12)
    );
\mul_reg_I_reg[5][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(13),
      Q => \mul_reg_I_reg[5]\(13)
    );
\mul_reg_I_reg[5][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(14),
      Q => \mul_reg_I_reg[5]\(14)
    );
\mul_reg_I_reg[5][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(15),
      Q => \mul_reg_I_reg[5]\(15)
    );
\mul_reg_I_reg[5][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(16),
      Q => \mul_reg_I_reg[5]\(16)
    );
\mul_reg_I_reg[5][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(17),
      Q => \mul_reg_I_reg[5]\(17)
    );
\mul_reg_I_reg[5][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(18),
      Q => \mul_reg_I_reg[5]\(18)
    );
\mul_reg_I_reg[5][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(19),
      Q => \mul_reg_I_reg[5]\(19)
    );
\mul_reg_I_reg[5][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(1),
      Q => \mul_reg_I_reg[5]\(1)
    );
\mul_reg_I_reg[5][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(20),
      Q => \mul_reg_I_reg[5]\(20)
    );
\mul_reg_I_reg[5][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(21),
      Q => \mul_reg_I_reg[5]\(21)
    );
\mul_reg_I_reg[5][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(22),
      Q => \mul_reg_I_reg[5]\(22)
    );
\mul_reg_I_reg[5][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(23),
      Q => \mul_reg_I_reg[5]\(23)
    );
\mul_reg_I_reg[5][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(24),
      Q => \mul_reg_I_reg[5]\(24)
    );
\mul_reg_I_reg[5][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(25),
      Q => \mul_reg_I_reg[5]\(25)
    );
\mul_reg_I_reg[5][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(26),
      Q => \mul_reg_I_reg[5]\(26)
    );
\mul_reg_I_reg[5][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(27),
      Q => \mul_reg_I_reg[5]\(27)
    );
\mul_reg_I_reg[5][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(28),
      Q => \mul_reg_I_reg[5]\(28)
    );
\mul_reg_I_reg[5][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(29),
      Q => \mul_reg_I_reg[5]\(29)
    );
\mul_reg_I_reg[5][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(2),
      Q => \mul_reg_I_reg[5]\(2)
    );
\mul_reg_I_reg[5][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(30),
      Q => \mul_reg_I_reg[5]\(30)
    );
\mul_reg_I_reg[5][31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(31),
      Q => \mul_reg_I_reg[5]\(31)
    );
\mul_reg_I_reg[5][32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(32),
      Q => \mul_reg_I_reg[5]\(32)
    );
\mul_reg_I_reg[5][33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(33),
      Q => \mul_reg_I_reg[5]\(33)
    );
\mul_reg_I_reg[5][34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(34),
      Q => \mul_reg_I_reg[5]\(34)
    );
\mul_reg_I_reg[5][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(35),
      Q => \mul_reg_I_reg[5]\(35)
    );
\mul_reg_I_reg[5][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(3),
      Q => \mul_reg_I_reg[5]\(3)
    );
\mul_reg_I_reg[5][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(4),
      Q => \mul_reg_I_reg[5]\(4)
    );
\mul_reg_I_reg[5][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(5),
      Q => \mul_reg_I_reg[5]\(5)
    );
\mul_reg_I_reg[5][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(6),
      Q => \mul_reg_I_reg[5]\(6)
    );
\mul_reg_I_reg[5][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(7),
      Q => \mul_reg_I_reg[5]\(7)
    );
\mul_reg_I_reg[5][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(8),
      Q => \mul_reg_I_reg[5]\(8)
    );
\mul_reg_I_reg[5][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[6]\(9),
      Q => \mul_reg_I_reg[5]\(9)
    );
\mul_reg_I_reg[6][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(0),
      Q => \mul_reg_I_reg[6]\(0)
    );
\mul_reg_I_reg[6][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(10),
      Q => \mul_reg_I_reg[6]\(10)
    );
\mul_reg_I_reg[6][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(11),
      Q => \mul_reg_I_reg[6]\(11)
    );
\mul_reg_I_reg[6][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(12),
      Q => \mul_reg_I_reg[6]\(12)
    );
\mul_reg_I_reg[6][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(13),
      Q => \mul_reg_I_reg[6]\(13)
    );
\mul_reg_I_reg[6][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(14),
      Q => \mul_reg_I_reg[6]\(14)
    );
\mul_reg_I_reg[6][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(15),
      Q => \mul_reg_I_reg[6]\(15)
    );
\mul_reg_I_reg[6][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(16),
      Q => \mul_reg_I_reg[6]\(16)
    );
\mul_reg_I_reg[6][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(17),
      Q => \mul_reg_I_reg[6]\(17)
    );
\mul_reg_I_reg[6][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(18),
      Q => \mul_reg_I_reg[6]\(18)
    );
\mul_reg_I_reg[6][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(19),
      Q => \mul_reg_I_reg[6]\(19)
    );
\mul_reg_I_reg[6][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(1),
      Q => \mul_reg_I_reg[6]\(1)
    );
\mul_reg_I_reg[6][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(20),
      Q => \mul_reg_I_reg[6]\(20)
    );
\mul_reg_I_reg[6][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(21),
      Q => \mul_reg_I_reg[6]\(21)
    );
\mul_reg_I_reg[6][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(22),
      Q => \mul_reg_I_reg[6]\(22)
    );
\mul_reg_I_reg[6][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(23),
      Q => \mul_reg_I_reg[6]\(23)
    );
\mul_reg_I_reg[6][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(24),
      Q => \mul_reg_I_reg[6]\(24)
    );
\mul_reg_I_reg[6][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(25),
      Q => \mul_reg_I_reg[6]\(25)
    );
\mul_reg_I_reg[6][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(26),
      Q => \mul_reg_I_reg[6]\(26)
    );
\mul_reg_I_reg[6][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(27),
      Q => \mul_reg_I_reg[6]\(27)
    );
\mul_reg_I_reg[6][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(28),
      Q => \mul_reg_I_reg[6]\(28)
    );
\mul_reg_I_reg[6][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(29),
      Q => \mul_reg_I_reg[6]\(29)
    );
\mul_reg_I_reg[6][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(2),
      Q => \mul_reg_I_reg[6]\(2)
    );
\mul_reg_I_reg[6][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(30),
      Q => \mul_reg_I_reg[6]\(30)
    );
\mul_reg_I_reg[6][31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(31),
      Q => \mul_reg_I_reg[6]\(31)
    );
\mul_reg_I_reg[6][32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(32),
      Q => \mul_reg_I_reg[6]\(32)
    );
\mul_reg_I_reg[6][33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(33),
      Q => \mul_reg_I_reg[6]\(33)
    );
\mul_reg_I_reg[6][34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(34),
      Q => \mul_reg_I_reg[6]\(34)
    );
\mul_reg_I_reg[6][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(35),
      Q => \mul_reg_I_reg[6]\(35)
    );
\mul_reg_I_reg[6][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(3),
      Q => \mul_reg_I_reg[6]\(3)
    );
\mul_reg_I_reg[6][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(4),
      Q => \mul_reg_I_reg[6]\(4)
    );
\mul_reg_I_reg[6][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(5),
      Q => \mul_reg_I_reg[6]\(5)
    );
\mul_reg_I_reg[6][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(6),
      Q => \mul_reg_I_reg[6]\(6)
    );
\mul_reg_I_reg[6][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(7),
      Q => \mul_reg_I_reg[6]\(7)
    );
\mul_reg_I_reg[6][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(8),
      Q => \mul_reg_I_reg[6]\(8)
    );
\mul_reg_I_reg[6][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[7]\(9),
      Q => \mul_reg_I_reg[6]\(9)
    );
\mul_reg_I_reg[7]0\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => input_I(15),
      A(28) => input_I(15),
      A(27) => input_I(15),
      A(26) => input_I(15),
      A(25) => input_I(15),
      A(24) => input_I(15),
      A(23) => input_I(15),
      A(22) => input_I(15),
      A(21) => input_I(15),
      A(20) => input_I(15),
      A(19) => input_I(15),
      A(18) => input_I(15),
      A(17) => input_I(15),
      A(16) => input_I(15),
      A(15 downto 0) => input_I(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_mul_reg_I_reg[7]0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 15) => B"000",
      B(14) => \coeff_reg_reg[1]\(14),
      B(13) => '0',
      B(12) => \coeff_reg_reg[0]\(14),
      B(11) => \coeff_reg_reg[0]\(9),
      B(10) => \coeff_reg_reg[1]\(10),
      B(9) => \coeff_reg_reg[0]\(12),
      B(8) => \coeff_reg_reg[0]\(14),
      B(7) => \coeff_reg_reg[0]\(9),
      B(6) => \coeff_reg_reg[1]\(10),
      B(5) => \coeff_reg_reg[0]\(12),
      B(4) => \coeff_reg_reg[0]\(14),
      B(3) => \coeff_reg_reg[0]\(9),
      B(2) => \coeff_reg_reg[1]\(10),
      B(1) => \coeff_reg_reg[0]\(12),
      B(0) => \coeff_reg_reg[1]\(0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mul_reg_I_reg[7]0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47) => \mul_reg_I_reg[8]\(35),
      C(46) => \mul_reg_I_reg[8]\(35),
      C(45) => \mul_reg_I_reg[8]\(35),
      C(44) => \mul_reg_I_reg[8]\(35),
      C(43) => \mul_reg_I_reg[8]\(35),
      C(42) => \mul_reg_I_reg[8]\(35),
      C(41) => \mul_reg_I_reg[8]\(35),
      C(40) => \mul_reg_I_reg[8]\(35),
      C(39) => \mul_reg_I_reg[8]\(35),
      C(38) => \mul_reg_I_reg[8]\(35),
      C(37) => \mul_reg_I_reg[8]\(35),
      C(36) => \mul_reg_I_reg[8]\(35),
      C(35 downto 0) => \mul_reg_I_reg[8]\(35 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mul_reg_I_reg[7]0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mul_reg_I_reg[7]0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => data_input_I0,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \^cep\,
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mul_reg_I_reg[7]0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => \NLW_mul_reg_I_reg[7]0_OVERFLOW_UNCONNECTED\,
      P(47 downto 36) => \NLW_mul_reg_I_reg[7]0_P_UNCONNECTED\(47 downto 36),
      P(35) => \mul_reg_I_reg[7]0_n_70\,
      P(34) => \mul_reg_I_reg[7]0_n_71\,
      P(33) => \mul_reg_I_reg[7]0_n_72\,
      P(32) => \mul_reg_I_reg[7]0_n_73\,
      P(31) => \mul_reg_I_reg[7]0_n_74\,
      P(30) => \mul_reg_I_reg[7]0_n_75\,
      P(29) => \mul_reg_I_reg[7]0_n_76\,
      P(28) => \mul_reg_I_reg[7]0_n_77\,
      P(27) => \mul_reg_I_reg[7]0_n_78\,
      P(26) => \mul_reg_I_reg[7]0_n_79\,
      P(25) => \mul_reg_I_reg[7]0_n_80\,
      P(24) => \mul_reg_I_reg[7]0_n_81\,
      P(23) => \mul_reg_I_reg[7]0_n_82\,
      P(22) => \mul_reg_I_reg[7]0_n_83\,
      P(21) => \mul_reg_I_reg[7]0_n_84\,
      P(20) => \mul_reg_I_reg[7]0_n_85\,
      P(19) => \mul_reg_I_reg[7]0_n_86\,
      P(18) => \mul_reg_I_reg[7]0_n_87\,
      P(17) => \mul_reg_I_reg[7]0_n_88\,
      P(16) => \mul_reg_I_reg[7]0_n_89\,
      P(15) => \mul_reg_I_reg[7]0_n_90\,
      P(14) => \mul_reg_I_reg[7]0_n_91\,
      P(13) => \mul_reg_I_reg[7]0_n_92\,
      P(12) => \mul_reg_I_reg[7]0_n_93\,
      P(11) => \mul_reg_I_reg[7]0_n_94\,
      P(10) => \mul_reg_I_reg[7]0_n_95\,
      P(9) => \mul_reg_I_reg[7]0_n_96\,
      P(8) => \mul_reg_I_reg[7]0_n_97\,
      P(7) => \mul_reg_I_reg[7]0_n_98\,
      P(6) => \mul_reg_I_reg[7]0_n_99\,
      P(5) => \mul_reg_I_reg[7]0_n_100\,
      P(4) => \mul_reg_I_reg[7]0_n_101\,
      P(3) => \mul_reg_I_reg[7]0_n_102\,
      P(2) => \mul_reg_I_reg[7]0_n_103\,
      P(1) => \mul_reg_I_reg[7]0_n_104\,
      P(0) => \mul_reg_I_reg[7]0_n_105\,
      PATTERNBDETECT => \NLW_mul_reg_I_reg[7]0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mul_reg_I_reg[7]0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => \NLW_mul_reg_I_reg[7]0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mul_reg_I_reg[7]0_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_mul_reg_I_reg[7]0_XOROUT_UNCONNECTED\(7 downto 0)
    );
\mul_reg_I_reg[8][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(0),
      Q => \mul_reg_I_reg[8]\(0)
    );
\mul_reg_I_reg[8][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(10),
      Q => \mul_reg_I_reg[8]\(10)
    );
\mul_reg_I_reg[8][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(11),
      Q => \mul_reg_I_reg[8]\(11)
    );
\mul_reg_I_reg[8][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(12),
      Q => \mul_reg_I_reg[8]\(12)
    );
\mul_reg_I_reg[8][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(13),
      Q => \mul_reg_I_reg[8]\(13)
    );
\mul_reg_I_reg[8][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(14),
      Q => \mul_reg_I_reg[8]\(14)
    );
\mul_reg_I_reg[8][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(15),
      Q => \mul_reg_I_reg[8]\(15)
    );
\mul_reg_I_reg[8][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(16),
      Q => \mul_reg_I_reg[8]\(16)
    );
\mul_reg_I_reg[8][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(17),
      Q => \mul_reg_I_reg[8]\(17)
    );
\mul_reg_I_reg[8][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(18),
      Q => \mul_reg_I_reg[8]\(18)
    );
\mul_reg_I_reg[8][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(19),
      Q => \mul_reg_I_reg[8]\(19)
    );
\mul_reg_I_reg[8][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(1),
      Q => \mul_reg_I_reg[8]\(1)
    );
\mul_reg_I_reg[8][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(20),
      Q => \mul_reg_I_reg[8]\(20)
    );
\mul_reg_I_reg[8][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(21),
      Q => \mul_reg_I_reg[8]\(21)
    );
\mul_reg_I_reg[8][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(22),
      Q => \mul_reg_I_reg[8]\(22)
    );
\mul_reg_I_reg[8][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(23),
      Q => \mul_reg_I_reg[8]\(23)
    );
\mul_reg_I_reg[8][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(24),
      Q => \mul_reg_I_reg[8]\(24)
    );
\mul_reg_I_reg[8][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(25),
      Q => \mul_reg_I_reg[8]\(25)
    );
\mul_reg_I_reg[8][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(26),
      Q => \mul_reg_I_reg[8]\(26)
    );
\mul_reg_I_reg[8][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(27),
      Q => \mul_reg_I_reg[8]\(27)
    );
\mul_reg_I_reg[8][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(28),
      Q => \mul_reg_I_reg[8]\(28)
    );
\mul_reg_I_reg[8][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(29),
      Q => \mul_reg_I_reg[8]\(29)
    );
\mul_reg_I_reg[8][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(2),
      Q => \mul_reg_I_reg[8]\(2)
    );
\mul_reg_I_reg[8][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(30),
      Q => \mul_reg_I_reg[8]\(30)
    );
\mul_reg_I_reg[8][31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(31),
      Q => \mul_reg_I_reg[8]\(31)
    );
\mul_reg_I_reg[8][32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(32),
      Q => \mul_reg_I_reg[8]\(32)
    );
\mul_reg_I_reg[8][33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(33),
      Q => \mul_reg_I_reg[8]\(33)
    );
\mul_reg_I_reg[8][34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(34),
      Q => \mul_reg_I_reg[8]\(34)
    );
\mul_reg_I_reg[8][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(35),
      Q => \mul_reg_I_reg[8]\(35)
    );
\mul_reg_I_reg[8][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(3),
      Q => \mul_reg_I_reg[8]\(3)
    );
\mul_reg_I_reg[8][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(4),
      Q => \mul_reg_I_reg[8]\(4)
    );
\mul_reg_I_reg[8][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(5),
      Q => \mul_reg_I_reg[8]\(5)
    );
\mul_reg_I_reg[8][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(6),
      Q => \mul_reg_I_reg[8]\(6)
    );
\mul_reg_I_reg[8][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(7),
      Q => \mul_reg_I_reg[8]\(7)
    );
\mul_reg_I_reg[8][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(8),
      Q => \mul_reg_I_reg[8]\(8)
    );
\mul_reg_I_reg[8][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[9]\(9),
      Q => \mul_reg_I_reg[8]\(9)
    );
\mul_reg_I_reg[9][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(0),
      Q => \mul_reg_I_reg[9]\(0)
    );
\mul_reg_I_reg[9][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(10),
      Q => \mul_reg_I_reg[9]\(10)
    );
\mul_reg_I_reg[9][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(11),
      Q => \mul_reg_I_reg[9]\(11)
    );
\mul_reg_I_reg[9][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(12),
      Q => \mul_reg_I_reg[9]\(12)
    );
\mul_reg_I_reg[9][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(13),
      Q => \mul_reg_I_reg[9]\(13)
    );
\mul_reg_I_reg[9][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(14),
      Q => \mul_reg_I_reg[9]\(14)
    );
\mul_reg_I_reg[9][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(15),
      Q => \mul_reg_I_reg[9]\(15)
    );
\mul_reg_I_reg[9][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(16),
      Q => \mul_reg_I_reg[9]\(16)
    );
\mul_reg_I_reg[9][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(17),
      Q => \mul_reg_I_reg[9]\(17)
    );
\mul_reg_I_reg[9][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(18),
      Q => \mul_reg_I_reg[9]\(18)
    );
\mul_reg_I_reg[9][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(19),
      Q => \mul_reg_I_reg[9]\(19)
    );
\mul_reg_I_reg[9][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(1),
      Q => \mul_reg_I_reg[9]\(1)
    );
\mul_reg_I_reg[9][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(20),
      Q => \mul_reg_I_reg[9]\(20)
    );
\mul_reg_I_reg[9][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(21),
      Q => \mul_reg_I_reg[9]\(21)
    );
\mul_reg_I_reg[9][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(22),
      Q => \mul_reg_I_reg[9]\(22)
    );
\mul_reg_I_reg[9][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(23),
      Q => \mul_reg_I_reg[9]\(23)
    );
\mul_reg_I_reg[9][24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(24),
      Q => \mul_reg_I_reg[9]\(24)
    );
\mul_reg_I_reg[9][25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(25),
      Q => \mul_reg_I_reg[9]\(25)
    );
\mul_reg_I_reg[9][26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(26),
      Q => \mul_reg_I_reg[9]\(26)
    );
\mul_reg_I_reg[9][27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(27),
      Q => \mul_reg_I_reg[9]\(27)
    );
\mul_reg_I_reg[9][28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(28),
      Q => \mul_reg_I_reg[9]\(28)
    );
\mul_reg_I_reg[9][29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(29),
      Q => \mul_reg_I_reg[9]\(29)
    );
\mul_reg_I_reg[9][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(2),
      Q => \mul_reg_I_reg[9]\(2)
    );
\mul_reg_I_reg[9][30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(30),
      Q => \mul_reg_I_reg[9]\(30)
    );
\mul_reg_I_reg[9][31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(31),
      Q => \mul_reg_I_reg[9]\(31)
    );
\mul_reg_I_reg[9][32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(32),
      Q => \mul_reg_I_reg[9]\(32)
    );
\mul_reg_I_reg[9][33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(33),
      Q => \mul_reg_I_reg[9]\(33)
    );
\mul_reg_I_reg[9][34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(34),
      Q => \mul_reg_I_reg[9]\(34)
    );
\mul_reg_I_reg[9][35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(35),
      Q => \mul_reg_I_reg[9]\(35)
    );
\mul_reg_I_reg[9][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(3),
      Q => \mul_reg_I_reg[9]\(3)
    );
\mul_reg_I_reg[9][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(4),
      Q => \mul_reg_I_reg[9]\(4)
    );
\mul_reg_I_reg[9][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(5),
      Q => \mul_reg_I_reg[9]\(5)
    );
\mul_reg_I_reg[9][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(6),
      Q => \mul_reg_I_reg[9]\(6)
    );
\mul_reg_I_reg[9][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(7),
      Q => \mul_reg_I_reg[9]\(7)
    );
\mul_reg_I_reg[9][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(8),
      Q => \mul_reg_I_reg[9]\(8)
    );
\mul_reg_I_reg[9][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \mul_reg_I_reg[10]\(9),
      Q => \mul_reg_I_reg[9]\(9)
    );
\mul_reg_Q_reg[0][0]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => \data_out_I[15]_i_1_n_0\,
      CLK => clk,
      D => \mul_reg_Q_reg_n_105_[3]\,
      Q => \mul_reg_Q_reg[0][0]_srl3_n_0\
    );
\mul_reg_Q_reg[0][10]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => \data_out_I[15]_i_1_n_0\,
      CLK => clk,
      D => \mul_reg_Q_reg_n_95_[3]\,
      Q => \mul_reg_Q_reg[0][10]_srl3_n_0\
    );
\mul_reg_Q_reg[0][11]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => \data_out_I[15]_i_1_n_0\,
      CLK => clk,
      D => \mul_reg_Q_reg_n_94_[3]\,
      Q => \mul_reg_Q_reg[0][11]_srl3_n_0\
    );
\mul_reg_Q_reg[0][12]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => \data_out_I[15]_i_1_n_0\,
      CLK => clk,
      D => \mul_reg_Q_reg_n_93_[3]\,
      Q => \mul_reg_Q_reg[0][12]_srl3_n_0\
    );
\mul_reg_Q_reg[0][13]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => \data_out_I[15]_i_1_n_0\,
      CLK => clk,
      D => \mul_reg_Q_reg_n_92_[3]\,
      Q => \mul_reg_Q_reg[0][13]_srl3_n_0\
    );
\mul_reg_Q_reg[0][14]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => \data_out_I[15]_i_1_n_0\,
      CLK => clk,
      D => \mul_reg_Q_reg_n_91_[3]\,
      Q => \mul_reg_Q_reg[0][14]_srl3_n_0\
    );
\mul_reg_Q_reg[0][15]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => \data_out_I[15]_i_1_n_0\,
      CLK => clk,
      D => \mul_reg_Q_reg_n_90_[3]\,
      Q => \mul_reg_Q_reg[0][15]_srl3_n_0\
    );
\mul_reg_Q_reg[0][1]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => \data_out_I[15]_i_1_n_0\,
      CLK => clk,
      D => \mul_reg_Q_reg_n_104_[3]\,
      Q => \mul_reg_Q_reg[0][1]_srl3_n_0\
    );
\mul_reg_Q_reg[0][2]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => \data_out_I[15]_i_1_n_0\,
      CLK => clk,
      D => \mul_reg_Q_reg_n_103_[3]\,
      Q => \mul_reg_Q_reg[0][2]_srl3_n_0\
    );
\mul_reg_Q_reg[0][3]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => \data_out_I[15]_i_1_n_0\,
      CLK => clk,
      D => \mul_reg_Q_reg_n_102_[3]\,
      Q => \mul_reg_Q_reg[0][3]_srl3_n_0\
    );
\mul_reg_Q_reg[0][4]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => \data_out_I[15]_i_1_n_0\,
      CLK => clk,
      D => \mul_reg_Q_reg_n_101_[3]\,
      Q => \mul_reg_Q_reg[0][4]_srl3_n_0\
    );
\mul_reg_Q_reg[0][5]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => \data_out_I[15]_i_1_n_0\,
      CLK => clk,
      D => \mul_reg_Q_reg_n_100_[3]\,
      Q => \mul_reg_Q_reg[0][5]_srl3_n_0\
    );
\mul_reg_Q_reg[0][6]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => \data_out_I[15]_i_1_n_0\,
      CLK => clk,
      D => \mul_reg_Q_reg_n_99_[3]\,
      Q => \mul_reg_Q_reg[0][6]_srl3_n_0\
    );
\mul_reg_Q_reg[0][7]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => \data_out_I[15]_i_1_n_0\,
      CLK => clk,
      D => \mul_reg_Q_reg_n_98_[3]\,
      Q => \mul_reg_Q_reg[0][7]_srl3_n_0\
    );
\mul_reg_Q_reg[0][8]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => \data_out_I[15]_i_1_n_0\,
      CLK => clk,
      D => \mul_reg_Q_reg_n_97_[3]\,
      Q => \mul_reg_Q_reg[0][8]_srl3_n_0\
    );
\mul_reg_Q_reg[0][9]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => \data_out_I[15]_i_1_n_0\,
      CLK => clk,
      D => \mul_reg_Q_reg_n_96_[3]\,
      Q => \mul_reg_Q_reg[0][9]_srl3_n_0\
    );
\mul_reg_Q_reg[10][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_105_[11]\,
      Q => \mul_reg_Q_reg[10]\(0),
      R => '0'
    );
\mul_reg_Q_reg[10][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_95_[11]\,
      Q => \mul_reg_Q_reg[10]\(10),
      R => '0'
    );
\mul_reg_Q_reg[10][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_94_[11]\,
      Q => \mul_reg_Q_reg[10]\(11),
      R => '0'
    );
\mul_reg_Q_reg[10][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_93_[11]\,
      Q => \mul_reg_Q_reg[10]\(12),
      R => '0'
    );
\mul_reg_Q_reg[10][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_92_[11]\,
      Q => \mul_reg_Q_reg[10]\(13),
      R => '0'
    );
\mul_reg_Q_reg[10][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_91_[11]\,
      Q => \mul_reg_Q_reg[10]\(14),
      R => '0'
    );
\mul_reg_Q_reg[10][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_90_[11]\,
      Q => \mul_reg_Q_reg[10]\(15),
      R => '0'
    );
\mul_reg_Q_reg[10][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_104_[11]\,
      Q => \mul_reg_Q_reg[10]\(1),
      R => '0'
    );
\mul_reg_Q_reg[10][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_103_[11]\,
      Q => \mul_reg_Q_reg[10]\(2),
      R => '0'
    );
\mul_reg_Q_reg[10][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_102_[11]\,
      Q => \mul_reg_Q_reg[10]\(3),
      R => '0'
    );
\mul_reg_Q_reg[10][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_101_[11]\,
      Q => \mul_reg_Q_reg[10]\(4),
      R => '0'
    );
\mul_reg_Q_reg[10][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_100_[11]\,
      Q => \mul_reg_Q_reg[10]\(5),
      R => '0'
    );
\mul_reg_Q_reg[10][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_99_[11]\,
      Q => \mul_reg_Q_reg[10]\(6),
      R => '0'
    );
\mul_reg_Q_reg[10][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_98_[11]\,
      Q => \mul_reg_Q_reg[10]\(7),
      R => '0'
    );
\mul_reg_Q_reg[10][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_97_[11]\,
      Q => \mul_reg_Q_reg[10]\(8),
      R => '0'
    );
\mul_reg_Q_reg[10][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_96_[11]\,
      Q => \mul_reg_Q_reg[10]\(9),
      R => '0'
    );
\mul_reg_Q_reg[11]\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => input_Q(15),
      A(28) => input_Q(15),
      A(27) => input_Q(15),
      A(26) => input_Q(15),
      A(25) => input_Q(15),
      A(24) => input_Q(15),
      A(23) => input_Q(15),
      A(22) => input_Q(15),
      A(21) => input_Q(15),
      A(20) => input_Q(15),
      A(19) => input_Q(15),
      A(18) => input_Q(15),
      A(17) => input_Q(15),
      A(16) => input_Q(15),
      A(15 downto 0) => input_Q(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_mul_reg_Q_reg[11]_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 15) => B"000",
      B(14) => \coeff_reg_reg[0]\(11),
      B(13) => '0',
      B(12 downto 11) => \coeff_reg_reg[2]\(12 downto 11),
      B(10) => \coeff_reg_reg[0]\(12),
      B(9) => \coeff_reg_reg[1]\(10),
      B(8 downto 7) => \coeff_reg_reg[2]\(12 downto 11),
      B(6) => \coeff_reg_reg[0]\(12),
      B(5) => \coeff_reg_reg[1]\(10),
      B(4 downto 3) => \coeff_reg_reg[2]\(12 downto 11),
      B(2) => \coeff_reg_reg[0]\(12),
      B(1) => \coeff_reg_reg[1]\(10),
      B(0) => \coeff_reg_reg[2]\(0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mul_reg_Q_reg[11]_BCOUT_UNCONNECTED\(17 downto 0),
      C(47) => \mul_reg_Q_reg[13]\(15),
      C(46) => \mul_reg_Q_reg[13]\(15),
      C(45) => \mul_reg_Q_reg[13]\(15),
      C(44) => \mul_reg_Q_reg[13]\(15),
      C(43) => \mul_reg_Q_reg[13]\(15),
      C(42) => \mul_reg_Q_reg[13]\(15),
      C(41) => \mul_reg_Q_reg[13]\(15),
      C(40) => \mul_reg_Q_reg[13]\(15),
      C(39) => \mul_reg_Q_reg[13]\(15),
      C(38) => \mul_reg_Q_reg[13]\(15),
      C(37) => \mul_reg_Q_reg[13]\(15),
      C(36) => \mul_reg_Q_reg[13]\(15),
      C(35) => \mul_reg_Q_reg[13]\(15),
      C(34) => \mul_reg_Q_reg[13]\(15),
      C(33) => \mul_reg_Q_reg[13]\(15),
      C(32) => \mul_reg_Q_reg[13]\(15),
      C(31) => \mul_reg_Q_reg[13]\(15),
      C(30) => \mul_reg_Q_reg[13]\(15),
      C(29) => \mul_reg_Q_reg[13]\(15),
      C(28) => \mul_reg_Q_reg[13]\(15),
      C(27) => \mul_reg_Q_reg[13]\(15),
      C(26) => \mul_reg_Q_reg[13]\(15),
      C(25) => \mul_reg_Q_reg[13]\(15),
      C(24) => \mul_reg_Q_reg[13]\(15),
      C(23) => \mul_reg_Q_reg[13]\(15),
      C(22) => \mul_reg_Q_reg[13]\(15),
      C(21) => \mul_reg_Q_reg[13]\(15),
      C(20) => \mul_reg_Q_reg[13]\(15),
      C(19) => \mul_reg_Q_reg[13]\(15),
      C(18) => \mul_reg_Q_reg[13]\(15),
      C(17) => \mul_reg_Q_reg[13]\(15),
      C(16) => \mul_reg_Q_reg[13]\(15),
      C(15 downto 4) => \mul_reg_Q_reg[13]\(15 downto 4),
      C(3 downto 0) => B"0000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mul_reg_Q_reg[11]_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mul_reg_Q_reg[11]_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => data_input_I0,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => \data_out_I[15]_i_1_n_0\,
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \data_out_I[15]_i_1_n_0\,
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mul_reg_Q_reg[11]_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => \NLW_mul_reg_Q_reg[11]_OVERFLOW_UNCONNECTED\,
      P(47 downto 16) => \NLW_mul_reg_Q_reg[11]_P_UNCONNECTED\(47 downto 16),
      P(15) => \mul_reg_Q_reg_n_90_[11]\,
      P(14) => \mul_reg_Q_reg_n_91_[11]\,
      P(13) => \mul_reg_Q_reg_n_92_[11]\,
      P(12) => \mul_reg_Q_reg_n_93_[11]\,
      P(11) => \mul_reg_Q_reg_n_94_[11]\,
      P(10) => \mul_reg_Q_reg_n_95_[11]\,
      P(9) => \mul_reg_Q_reg_n_96_[11]\,
      P(8) => \mul_reg_Q_reg_n_97_[11]\,
      P(7) => \mul_reg_Q_reg_n_98_[11]\,
      P(6) => \mul_reg_Q_reg_n_99_[11]\,
      P(5) => \mul_reg_Q_reg_n_100_[11]\,
      P(4) => \mul_reg_Q_reg_n_101_[11]\,
      P(3) => \mul_reg_Q_reg_n_102_[11]\,
      P(2) => \mul_reg_Q_reg_n_103_[11]\,
      P(1) => \mul_reg_Q_reg_n_104_[11]\,
      P(0) => \mul_reg_Q_reg_n_105_[11]\,
      PATTERNBDETECT => \NLW_mul_reg_Q_reg[11]_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mul_reg_Q_reg[11]_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => \NLW_mul_reg_Q_reg[11]_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mul_reg_Q_reg[11]_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_mul_reg_Q_reg[11]_XOROUT_UNCONNECTED\(7 downto 0)
    );
\mul_reg_Q_reg[13][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[14]\(10),
      Q => \mul_reg_Q_reg[13]\(10),
      R => '0'
    );
\mul_reg_Q_reg[13][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[14]\(11),
      Q => \mul_reg_Q_reg[13]\(11),
      R => '0'
    );
\mul_reg_Q_reg[13][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[14]\(12),
      Q => \mul_reg_Q_reg[13]\(12),
      R => '0'
    );
\mul_reg_Q_reg[13][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[14]\(13),
      Q => \mul_reg_Q_reg[13]\(13),
      R => '0'
    );
\mul_reg_Q_reg[13][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[14]\(14),
      Q => \mul_reg_Q_reg[13]\(14),
      R => '0'
    );
\mul_reg_Q_reg[13][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[14]\(15),
      Q => \mul_reg_Q_reg[13]\(15),
      R => '0'
    );
\mul_reg_Q_reg[13][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[14]\(4),
      Q => \mul_reg_Q_reg[13]\(4),
      R => '0'
    );
\mul_reg_Q_reg[13][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[14]\(5),
      Q => \mul_reg_Q_reg[13]\(5),
      R => '0'
    );
\mul_reg_Q_reg[13][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[14]\(6),
      Q => \mul_reg_Q_reg[13]\(6),
      R => '0'
    );
\mul_reg_Q_reg[13][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[14]\(7),
      Q => \mul_reg_Q_reg[13]\(7),
      R => '0'
    );
\mul_reg_Q_reg[13][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[14]\(8),
      Q => \mul_reg_Q_reg[13]\(8),
      R => '0'
    );
\mul_reg_Q_reg[13][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[14]\(9),
      Q => \mul_reg_Q_reg[13]\(9),
      R => '0'
    );
\mul_reg_Q_reg[14][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => p_0_out(10),
      Q => \mul_reg_Q_reg[14]\(10),
      R => '0'
    );
\mul_reg_Q_reg[14][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => p_0_out(11),
      Q => \mul_reg_Q_reg[14]\(11),
      R => '0'
    );
\mul_reg_Q_reg[14][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => p_0_out(12),
      Q => \mul_reg_Q_reg[14]\(12),
      R => '0'
    );
\mul_reg_Q_reg[14][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => p_0_out(13),
      Q => \mul_reg_Q_reg[14]\(13),
      R => '0'
    );
\mul_reg_Q_reg[14][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => p_0_out(14),
      Q => \mul_reg_Q_reg[14]\(14),
      R => '0'
    );
\mul_reg_Q_reg[14][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => p_0_out(15),
      Q => \mul_reg_Q_reg[14]\(15),
      R => '0'
    );
\mul_reg_Q_reg[14][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => p_0_out(4),
      Q => \mul_reg_Q_reg[14]\(4),
      R => '0'
    );
\mul_reg_Q_reg[14][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => p_0_out(5),
      Q => \mul_reg_Q_reg[14]\(5),
      R => '0'
    );
\mul_reg_Q_reg[14][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => p_0_out(6),
      Q => \mul_reg_Q_reg[14]\(6),
      R => '0'
    );
\mul_reg_Q_reg[14][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => p_0_out(7),
      Q => \mul_reg_Q_reg[14]\(7),
      R => '0'
    );
\mul_reg_Q_reg[14][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => p_0_out(8),
      Q => \mul_reg_Q_reg[14]\(8),
      R => '0'
    );
\mul_reg_Q_reg[14][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => p_0_out(9),
      Q => \mul_reg_Q_reg[14]\(9),
      R => '0'
    );
\mul_reg_Q_reg[15]0\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => input_Q(15),
      A(28) => input_Q(15),
      A(27) => input_Q(15),
      A(26) => input_Q(15),
      A(25) => input_Q(15),
      A(24) => input_Q(15),
      A(23) => input_Q(15),
      A(22) => input_Q(15),
      A(21) => input_Q(15),
      A(20) => input_Q(15),
      A(19) => input_Q(15),
      A(18) => input_Q(15),
      A(17) => input_Q(15),
      A(16) => input_Q(15),
      A(15 downto 0) => input_Q(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_mul_reg_Q_reg[15]0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 15) => B"000",
      B(14 downto 12) => \coeff_reg_reg[3]\(14 downto 12),
      B(11) => \coeff_reg_reg[1]\(14),
      B(10) => \phase_counter_reg_n_0_[1]\,
      B(9) => \coeff_reg_reg[3]\(9),
      B(8) => \coeff_reg_reg[3]\(12),
      B(7) => \coeff_reg_reg[1]\(14),
      B(6) => \phase_counter_reg_n_0_[1]\,
      B(5) => \coeff_reg_reg[3]\(9),
      B(4) => \coeff_reg_reg[3]\(12),
      B(3) => \coeff_reg_reg[1]\(14),
      B(2) => \phase_counter_reg_n_0_[1]\,
      B(1) => \coeff_reg_reg[3]\(9),
      B(0) => \coeff_reg_reg[3]\(12),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mul_reg_Q_reg[15]0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mul_reg_Q_reg[15]0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mul_reg_Q_reg[15]0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => data_input_I0,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \data_out_I[15]_i_1_n_0\,
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mul_reg_Q_reg[15]0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => \NLW_mul_reg_Q_reg[15]0_OVERFLOW_UNCONNECTED\,
      P(47 downto 32) => \NLW_mul_reg_Q_reg[15]0_P_UNCONNECTED\(47 downto 32),
      P(31) => \mul_reg_Q_reg[15]0_n_74\,
      P(30) => \mul_reg_Q_reg[15]0_n_75\,
      P(29) => \mul_reg_Q_reg[15]0_n_76\,
      P(28) => \mul_reg_Q_reg[15]0_n_77\,
      P(27) => \mul_reg_Q_reg[15]0_n_78\,
      P(26) => \mul_reg_Q_reg[15]0_n_79\,
      P(25) => \mul_reg_Q_reg[15]0_n_80\,
      P(24) => \mul_reg_Q_reg[15]0_n_81\,
      P(23) => \mul_reg_Q_reg[15]0_n_82\,
      P(22) => \mul_reg_Q_reg[15]0_n_83\,
      P(21) => \mul_reg_Q_reg[15]0_n_84\,
      P(20) => \mul_reg_Q_reg[15]0_n_85\,
      P(19) => \mul_reg_Q_reg[15]0_n_86\,
      P(18) => \mul_reg_Q_reg[15]0_n_87\,
      P(17) => \mul_reg_Q_reg[15]0_n_88\,
      P(16) => \mul_reg_Q_reg[15]0_n_89\,
      P(15) => \mul_reg_Q_reg[15]0_n_90\,
      P(14) => \mul_reg_Q_reg[15]0_n_91\,
      P(13) => \mul_reg_Q_reg[15]0_n_92\,
      P(12) => \mul_reg_Q_reg[15]0_n_93\,
      P(11 downto 0) => p_0_out(15 downto 4),
      PATTERNBDETECT => \NLW_mul_reg_Q_reg[15]0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mul_reg_Q_reg[15]0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => \NLW_mul_reg_Q_reg[15]0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mul_reg_Q_reg[15]0_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_mul_reg_Q_reg[15]0_XOROUT_UNCONNECTED\(7 downto 0)
    );
\mul_reg_Q_reg[3]\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => input_Q(15),
      A(28) => input_Q(15),
      A(27) => input_Q(15),
      A(26) => input_Q(15),
      A(25) => input_Q(15),
      A(24) => input_Q(15),
      A(23) => input_Q(15),
      A(22) => input_Q(15),
      A(21) => input_Q(15),
      A(20) => input_Q(15),
      A(19) => input_Q(15),
      A(18) => input_Q(15),
      A(17) => input_Q(15),
      A(16) => input_Q(15),
      A(15 downto 0) => input_Q(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_mul_reg_Q_reg[3]_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 15) => B"000",
      B(14 downto 9) => \coeff_reg_reg[0]\(14 downto 9),
      B(8 downto 5) => \coeff_reg_reg[0]\(12 downto 9),
      B(4 downto 1) => \coeff_reg_reg[0]\(12 downto 9),
      B(0) => \coeff_reg_reg[0]\(12),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mul_reg_Q_reg[3]_BCOUT_UNCONNECTED\(17 downto 0),
      C(47) => \mul_reg_Q_reg[5]\(15),
      C(46) => \mul_reg_Q_reg[5]\(15),
      C(45) => \mul_reg_Q_reg[5]\(15),
      C(44) => \mul_reg_Q_reg[5]\(15),
      C(43) => \mul_reg_Q_reg[5]\(15),
      C(42) => \mul_reg_Q_reg[5]\(15),
      C(41) => \mul_reg_Q_reg[5]\(15),
      C(40) => \mul_reg_Q_reg[5]\(15),
      C(39) => \mul_reg_Q_reg[5]\(15),
      C(38) => \mul_reg_Q_reg[5]\(15),
      C(37) => \mul_reg_Q_reg[5]\(15),
      C(36) => \mul_reg_Q_reg[5]\(15),
      C(35) => \mul_reg_Q_reg[5]\(15),
      C(34) => \mul_reg_Q_reg[5]\(15),
      C(33) => \mul_reg_Q_reg[5]\(15),
      C(32) => \mul_reg_Q_reg[5]\(15),
      C(31) => \mul_reg_Q_reg[5]\(15),
      C(30) => \mul_reg_Q_reg[5]\(15),
      C(29) => \mul_reg_Q_reg[5]\(15),
      C(28) => \mul_reg_Q_reg[5]\(15),
      C(27) => \mul_reg_Q_reg[5]\(15),
      C(26) => \mul_reg_Q_reg[5]\(15),
      C(25) => \mul_reg_Q_reg[5]\(15),
      C(24) => \mul_reg_Q_reg[5]\(15),
      C(23) => \mul_reg_Q_reg[5]\(15),
      C(22) => \mul_reg_Q_reg[5]\(15),
      C(21) => \mul_reg_Q_reg[5]\(15),
      C(20) => \mul_reg_Q_reg[5]\(15),
      C(19) => \mul_reg_Q_reg[5]\(15),
      C(18) => \mul_reg_Q_reg[5]\(15),
      C(17) => \mul_reg_Q_reg[5]\(15),
      C(16) => \mul_reg_Q_reg[5]\(15),
      C(15 downto 0) => \mul_reg_Q_reg[5]\(15 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mul_reg_Q_reg[3]_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mul_reg_Q_reg[3]_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => data_input_I0,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => \data_out_I[15]_i_1_n_0\,
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \data_out_I[15]_i_1_n_0\,
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mul_reg_Q_reg[3]_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => \NLW_mul_reg_Q_reg[3]_OVERFLOW_UNCONNECTED\,
      P(47 downto 16) => \NLW_mul_reg_Q_reg[3]_P_UNCONNECTED\(47 downto 16),
      P(15) => \mul_reg_Q_reg_n_90_[3]\,
      P(14) => \mul_reg_Q_reg_n_91_[3]\,
      P(13) => \mul_reg_Q_reg_n_92_[3]\,
      P(12) => \mul_reg_Q_reg_n_93_[3]\,
      P(11) => \mul_reg_Q_reg_n_94_[3]\,
      P(10) => \mul_reg_Q_reg_n_95_[3]\,
      P(9) => \mul_reg_Q_reg_n_96_[3]\,
      P(8) => \mul_reg_Q_reg_n_97_[3]\,
      P(7) => \mul_reg_Q_reg_n_98_[3]\,
      P(6) => \mul_reg_Q_reg_n_99_[3]\,
      P(5) => \mul_reg_Q_reg_n_100_[3]\,
      P(4) => \mul_reg_Q_reg_n_101_[3]\,
      P(3) => \mul_reg_Q_reg_n_102_[3]\,
      P(2) => \mul_reg_Q_reg_n_103_[3]\,
      P(1) => \mul_reg_Q_reg_n_104_[3]\,
      P(0) => \mul_reg_Q_reg_n_105_[3]\,
      PATTERNBDETECT => \NLW_mul_reg_Q_reg[3]_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mul_reg_Q_reg[3]_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => \NLW_mul_reg_Q_reg[3]_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mul_reg_Q_reg[3]_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_mul_reg_Q_reg[3]_XOROUT_UNCONNECTED\(7 downto 0)
    );
\mul_reg_Q_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[6]\(0),
      Q => \mul_reg_Q_reg[5]\(0),
      R => '0'
    );
\mul_reg_Q_reg[5][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[6]\(10),
      Q => \mul_reg_Q_reg[5]\(10),
      R => '0'
    );
\mul_reg_Q_reg[5][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[6]\(11),
      Q => \mul_reg_Q_reg[5]\(11),
      R => '0'
    );
\mul_reg_Q_reg[5][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[6]\(12),
      Q => \mul_reg_Q_reg[5]\(12),
      R => '0'
    );
\mul_reg_Q_reg[5][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[6]\(13),
      Q => \mul_reg_Q_reg[5]\(13),
      R => '0'
    );
\mul_reg_Q_reg[5][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[6]\(14),
      Q => \mul_reg_Q_reg[5]\(14),
      R => '0'
    );
\mul_reg_Q_reg[5][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[6]\(15),
      Q => \mul_reg_Q_reg[5]\(15),
      R => '0'
    );
\mul_reg_Q_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[6]\(1),
      Q => \mul_reg_Q_reg[5]\(1),
      R => '0'
    );
\mul_reg_Q_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[6]\(2),
      Q => \mul_reg_Q_reg[5]\(2),
      R => '0'
    );
\mul_reg_Q_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[6]\(3),
      Q => \mul_reg_Q_reg[5]\(3),
      R => '0'
    );
\mul_reg_Q_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[6]\(4),
      Q => \mul_reg_Q_reg[5]\(4),
      R => '0'
    );
\mul_reg_Q_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[6]\(5),
      Q => \mul_reg_Q_reg[5]\(5),
      R => '0'
    );
\mul_reg_Q_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[6]\(6),
      Q => \mul_reg_Q_reg[5]\(6),
      R => '0'
    );
\mul_reg_Q_reg[5][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[6]\(7),
      Q => \mul_reg_Q_reg[5]\(7),
      R => '0'
    );
\mul_reg_Q_reg[5][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[6]\(8),
      Q => \mul_reg_Q_reg[5]\(8),
      R => '0'
    );
\mul_reg_Q_reg[5][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[6]\(9),
      Q => \mul_reg_Q_reg[5]\(9),
      R => '0'
    );
\mul_reg_Q_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_105_[7]\,
      Q => \mul_reg_Q_reg[6]\(0),
      R => '0'
    );
\mul_reg_Q_reg[6][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_95_[7]\,
      Q => \mul_reg_Q_reg[6]\(10),
      R => '0'
    );
\mul_reg_Q_reg[6][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_94_[7]\,
      Q => \mul_reg_Q_reg[6]\(11),
      R => '0'
    );
\mul_reg_Q_reg[6][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_93_[7]\,
      Q => \mul_reg_Q_reg[6]\(12),
      R => '0'
    );
\mul_reg_Q_reg[6][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_92_[7]\,
      Q => \mul_reg_Q_reg[6]\(13),
      R => '0'
    );
\mul_reg_Q_reg[6][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_91_[7]\,
      Q => \mul_reg_Q_reg[6]\(14),
      R => '0'
    );
\mul_reg_Q_reg[6][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_90_[7]\,
      Q => \mul_reg_Q_reg[6]\(15),
      R => '0'
    );
\mul_reg_Q_reg[6][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_104_[7]\,
      Q => \mul_reg_Q_reg[6]\(1),
      R => '0'
    );
\mul_reg_Q_reg[6][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_103_[7]\,
      Q => \mul_reg_Q_reg[6]\(2),
      R => '0'
    );
\mul_reg_Q_reg[6][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_102_[7]\,
      Q => \mul_reg_Q_reg[6]\(3),
      R => '0'
    );
\mul_reg_Q_reg[6][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_101_[7]\,
      Q => \mul_reg_Q_reg[6]\(4),
      R => '0'
    );
\mul_reg_Q_reg[6][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_100_[7]\,
      Q => \mul_reg_Q_reg[6]\(5),
      R => '0'
    );
\mul_reg_Q_reg[6][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_99_[7]\,
      Q => \mul_reg_Q_reg[6]\(6),
      R => '0'
    );
\mul_reg_Q_reg[6][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_98_[7]\,
      Q => \mul_reg_Q_reg[6]\(7),
      R => '0'
    );
\mul_reg_Q_reg[6][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_97_[7]\,
      Q => \mul_reg_Q_reg[6]\(8),
      R => '0'
    );
\mul_reg_Q_reg[6][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg_n_96_[7]\,
      Q => \mul_reg_Q_reg[6]\(9),
      R => '0'
    );
\mul_reg_Q_reg[7]\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => input_Q(15),
      A(28) => input_Q(15),
      A(27) => input_Q(15),
      A(26) => input_Q(15),
      A(25) => input_Q(15),
      A(24) => input_Q(15),
      A(23) => input_Q(15),
      A(22) => input_Q(15),
      A(21) => input_Q(15),
      A(20) => input_Q(15),
      A(19) => input_Q(15),
      A(18) => input_Q(15),
      A(17) => input_Q(15),
      A(16) => input_Q(15),
      A(15 downto 0) => input_Q(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_mul_reg_Q_reg[7]_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 15) => B"000",
      B(14) => \coeff_reg_reg[1]\(14),
      B(13) => '0',
      B(12) => \coeff_reg_reg[0]\(14),
      B(11) => \coeff_reg_reg[0]\(9),
      B(10) => \coeff_reg_reg[1]\(10),
      B(9) => \coeff_reg_reg[0]\(12),
      B(8) => \coeff_reg_reg[0]\(14),
      B(7) => \coeff_reg_reg[0]\(9),
      B(6) => \coeff_reg_reg[1]\(10),
      B(5) => \coeff_reg_reg[0]\(12),
      B(4) => \coeff_reg_reg[0]\(14),
      B(3) => \coeff_reg_reg[0]\(9),
      B(2) => \coeff_reg_reg[1]\(10),
      B(1) => \coeff_reg_reg[0]\(12),
      B(0) => \coeff_reg_reg[1]\(0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mul_reg_Q_reg[7]_BCOUT_UNCONNECTED\(17 downto 0),
      C(47) => \mul_reg_Q_reg[9]\(15),
      C(46) => \mul_reg_Q_reg[9]\(15),
      C(45) => \mul_reg_Q_reg[9]\(15),
      C(44) => \mul_reg_Q_reg[9]\(15),
      C(43) => \mul_reg_Q_reg[9]\(15),
      C(42) => \mul_reg_Q_reg[9]\(15),
      C(41) => \mul_reg_Q_reg[9]\(15),
      C(40) => \mul_reg_Q_reg[9]\(15),
      C(39) => \mul_reg_Q_reg[9]\(15),
      C(38) => \mul_reg_Q_reg[9]\(15),
      C(37) => \mul_reg_Q_reg[9]\(15),
      C(36) => \mul_reg_Q_reg[9]\(15),
      C(35) => \mul_reg_Q_reg[9]\(15),
      C(34) => \mul_reg_Q_reg[9]\(15),
      C(33) => \mul_reg_Q_reg[9]\(15),
      C(32) => \mul_reg_Q_reg[9]\(15),
      C(31) => \mul_reg_Q_reg[9]\(15),
      C(30) => \mul_reg_Q_reg[9]\(15),
      C(29) => \mul_reg_Q_reg[9]\(15),
      C(28) => \mul_reg_Q_reg[9]\(15),
      C(27) => \mul_reg_Q_reg[9]\(15),
      C(26) => \mul_reg_Q_reg[9]\(15),
      C(25) => \mul_reg_Q_reg[9]\(15),
      C(24) => \mul_reg_Q_reg[9]\(15),
      C(23) => \mul_reg_Q_reg[9]\(15),
      C(22) => \mul_reg_Q_reg[9]\(15),
      C(21) => \mul_reg_Q_reg[9]\(15),
      C(20) => \mul_reg_Q_reg[9]\(15),
      C(19) => \mul_reg_Q_reg[9]\(15),
      C(18) => \mul_reg_Q_reg[9]\(15),
      C(17) => \mul_reg_Q_reg[9]\(15),
      C(16) => \mul_reg_Q_reg[9]\(15),
      C(15 downto 0) => \mul_reg_Q_reg[9]\(15 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mul_reg_Q_reg[7]_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mul_reg_Q_reg[7]_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => data_input_I0,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => \data_out_I[15]_i_1_n_0\,
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \data_out_I[15]_i_1_n_0\,
      CLK => clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mul_reg_Q_reg[7]_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => \NLW_mul_reg_Q_reg[7]_OVERFLOW_UNCONNECTED\,
      P(47 downto 16) => \NLW_mul_reg_Q_reg[7]_P_UNCONNECTED\(47 downto 16),
      P(15) => \mul_reg_Q_reg_n_90_[7]\,
      P(14) => \mul_reg_Q_reg_n_91_[7]\,
      P(13) => \mul_reg_Q_reg_n_92_[7]\,
      P(12) => \mul_reg_Q_reg_n_93_[7]\,
      P(11) => \mul_reg_Q_reg_n_94_[7]\,
      P(10) => \mul_reg_Q_reg_n_95_[7]\,
      P(9) => \mul_reg_Q_reg_n_96_[7]\,
      P(8) => \mul_reg_Q_reg_n_97_[7]\,
      P(7) => \mul_reg_Q_reg_n_98_[7]\,
      P(6) => \mul_reg_Q_reg_n_99_[7]\,
      P(5) => \mul_reg_Q_reg_n_100_[7]\,
      P(4) => \mul_reg_Q_reg_n_101_[7]\,
      P(3) => \mul_reg_Q_reg_n_102_[7]\,
      P(2) => \mul_reg_Q_reg_n_103_[7]\,
      P(1) => \mul_reg_Q_reg_n_104_[7]\,
      P(0) => \mul_reg_Q_reg_n_105_[7]\,
      PATTERNBDETECT => \NLW_mul_reg_Q_reg[7]_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mul_reg_Q_reg[7]_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => \NLW_mul_reg_Q_reg[7]_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mul_reg_Q_reg[7]_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_mul_reg_Q_reg[7]_XOROUT_UNCONNECTED\(7 downto 0)
    );
\mul_reg_Q_reg[9][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[10]\(0),
      Q => \mul_reg_Q_reg[9]\(0),
      R => '0'
    );
\mul_reg_Q_reg[9][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[10]\(10),
      Q => \mul_reg_Q_reg[9]\(10),
      R => '0'
    );
\mul_reg_Q_reg[9][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[10]\(11),
      Q => \mul_reg_Q_reg[9]\(11),
      R => '0'
    );
\mul_reg_Q_reg[9][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[10]\(12),
      Q => \mul_reg_Q_reg[9]\(12),
      R => '0'
    );
\mul_reg_Q_reg[9][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[10]\(13),
      Q => \mul_reg_Q_reg[9]\(13),
      R => '0'
    );
\mul_reg_Q_reg[9][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[10]\(14),
      Q => \mul_reg_Q_reg[9]\(14),
      R => '0'
    );
\mul_reg_Q_reg[9][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[10]\(15),
      Q => \mul_reg_Q_reg[9]\(15),
      R => '0'
    );
\mul_reg_Q_reg[9][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[10]\(1),
      Q => \mul_reg_Q_reg[9]\(1),
      R => '0'
    );
\mul_reg_Q_reg[9][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[10]\(2),
      Q => \mul_reg_Q_reg[9]\(2),
      R => '0'
    );
\mul_reg_Q_reg[9][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[10]\(3),
      Q => \mul_reg_Q_reg[9]\(3),
      R => '0'
    );
\mul_reg_Q_reg[9][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[10]\(4),
      Q => \mul_reg_Q_reg[9]\(4),
      R => '0'
    );
\mul_reg_Q_reg[9][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[10]\(5),
      Q => \mul_reg_Q_reg[9]\(5),
      R => '0'
    );
\mul_reg_Q_reg[9][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[10]\(6),
      Q => \mul_reg_Q_reg[9]\(6),
      R => '0'
    );
\mul_reg_Q_reg[9][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[10]\(7),
      Q => \mul_reg_Q_reg[9]\(7),
      R => '0'
    );
\mul_reg_Q_reg[9][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[10]\(8),
      Q => \mul_reg_Q_reg[9]\(8),
      R => '0'
    );
\mul_reg_Q_reg[9][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out_I[15]_i_1_n_0\,
      D => \mul_reg_Q_reg[10]\(9),
      Q => \mul_reg_Q_reg[9]\(9),
      R => '0'
    );
\phase_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \phase_counter_reg_n_0_[0]\,
      O => \phase_counter[0]_i_1_n_0\
    );
\phase_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phase_counter_reg_n_0_[1]\,
      I1 => \phase_counter_reg_n_0_[0]\,
      O => \phase_counter[1]_i_1_n_0\
    );
\phase_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"68"
    )
        port map (
      I0 => \phase_counter_reg_n_0_[2]\,
      I1 => \phase_counter_reg_n_0_[1]\,
      I2 => \phase_counter_reg_n_0_[0]\,
      O => \phase_counter[2]_i_1_n_0\
    );
\phase_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \phase_counter[0]_i_1_n_0\,
      Q => \phase_counter_reg_n_0_[0]\
    );
\phase_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \phase_counter[1]_i_1_n_0\,
      Q => \phase_counter_reg_n_0_[1]\
    );
\phase_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^cep\,
      CLR => reset,
      D => \phase_counter[2]_i_1_n_0\,
      Q => \phase_counter_reg_n_0_[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    input_I : in STD_LOGIC_VECTOR ( 15 downto 0 );
    input_Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in_ready : in STD_LOGIC;
    data_in_valid : in STD_LOGIC;
    data_out_ready : out STD_LOGIC;
    data_out_valid : out STD_LOGIC;
    data_out_I : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out_Q : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Design_2_Pipelined_Polyphase_0_2,Pipelined_Polyphase_Filter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Pipelined_Polyphase_Filter,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal U0_n_16 : STD_LOGIC;
  signal \mul_reg_I_reg[14][35]_i_2_n_0\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Design_2_clk, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Pipelined_Polyphase_Filter
     port map (
      CEP => U0_n_16,
      clk => clk,
      data_in_ready => data_in_ready,
      data_in_valid => data_in_valid,
      data_out_I(15 downto 0) => data_out_I(15 downto 0),
      data_out_Q(15 downto 0) => data_out_Q(15 downto 0),
      data_out_ready => data_out_ready,
      data_out_valid => data_out_valid,
      input_I(15 downto 0) => input_I(15 downto 0),
      input_Q(15 downto 0) => input_Q(15 downto 0),
      \mul_reg_I_reg[14][4]_0\ => \mul_reg_I_reg[14][35]_i_2_n_0\,
      reset => reset
    );
\mul_reg_I_reg[14][35]_i_2\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => U0_n_16,
      CLR => reset,
      D => '1',
      Q => \mul_reg_I_reg[14][35]_i_2_n_0\
    );
end STRUCTURE;
