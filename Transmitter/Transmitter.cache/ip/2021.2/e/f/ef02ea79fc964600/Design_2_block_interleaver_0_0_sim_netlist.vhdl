-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Mon Mar 17 14:26:28 2025
-- Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_block_interleaver_0_0_sim_netlist.vhdl
-- Design      : Design_2_block_interleaver_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_block_interleaver is
  port (
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out_ready : out STD_LOGIC;
    read_valid : out STD_LOGIC;
    code_rate : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    write_en : in STD_LOGIC;
    data_in_ready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_block_interleaver;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_block_interleaver is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal col_cnt : STD_LOGIC;
  signal \col_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_out[31]_i_1_n_0\ : STD_LOGIC;
  signal \^data_out_ready\ : STD_LOGIC;
  signal data_out_ready0 : STD_LOGIC;
  signal \data_out_ready0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \data_out_ready0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \data_out_ready0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \data_out_ready0_carry__0_n_6\ : STD_LOGIC;
  signal \data_out_ready0_carry__0_n_7\ : STD_LOGIC;
  signal data_out_ready0_carry_i_1_n_0 : STD_LOGIC;
  signal data_out_ready0_carry_i_2_n_0 : STD_LOGIC;
  signal data_out_ready0_carry_i_3_n_0 : STD_LOGIC;
  signal data_out_ready0_carry_i_4_n_0 : STD_LOGIC;
  signal data_out_ready0_carry_i_5_n_0 : STD_LOGIC;
  signal data_out_ready0_carry_i_6_n_0 : STD_LOGIC;
  signal data_out_ready0_carry_i_7_n_0 : STD_LOGIC;
  signal data_out_ready0_carry_i_8_n_0 : STD_LOGIC;
  signal data_out_ready0_carry_n_0 : STD_LOGIC;
  signal data_out_ready0_carry_n_1 : STD_LOGIC;
  signal data_out_ready0_carry_n_2 : STD_LOGIC;
  signal data_out_ready0_carry_n_3 : STD_LOGIC;
  signal data_out_ready0_carry_n_4 : STD_LOGIC;
  signal data_out_ready0_carry_n_5 : STD_LOGIC;
  signal data_out_ready0_carry_n_6 : STD_LOGIC;
  signal data_out_ready0_carry_n_7 : STD_LOGIC;
  signal data_out_ready1 : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \data_out_ready1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \data_out_ready1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \data_out_ready1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \data_out_ready1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \data_out_ready1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \data_out_ready1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \data_out_ready1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \data_out_ready1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \data_out_ready1_carry__0_n_0\ : STD_LOGIC;
  signal \data_out_ready1_carry__0_n_1\ : STD_LOGIC;
  signal \data_out_ready1_carry__0_n_2\ : STD_LOGIC;
  signal \data_out_ready1_carry__0_n_3\ : STD_LOGIC;
  signal \data_out_ready1_carry__0_n_4\ : STD_LOGIC;
  signal \data_out_ready1_carry__0_n_5\ : STD_LOGIC;
  signal \data_out_ready1_carry__0_n_6\ : STD_LOGIC;
  signal \data_out_ready1_carry__0_n_7\ : STD_LOGIC;
  signal \data_out_ready1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \data_out_ready1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \data_out_ready1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \data_out_ready1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \data_out_ready1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \data_out_ready1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \data_out_ready1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \data_out_ready1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \data_out_ready1_carry__1_n_0\ : STD_LOGIC;
  signal \data_out_ready1_carry__1_n_1\ : STD_LOGIC;
  signal \data_out_ready1_carry__1_n_2\ : STD_LOGIC;
  signal \data_out_ready1_carry__1_n_3\ : STD_LOGIC;
  signal \data_out_ready1_carry__1_n_4\ : STD_LOGIC;
  signal \data_out_ready1_carry__1_n_5\ : STD_LOGIC;
  signal \data_out_ready1_carry__1_n_6\ : STD_LOGIC;
  signal \data_out_ready1_carry__1_n_7\ : STD_LOGIC;
  signal \data_out_ready1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \data_out_ready1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \data_out_ready1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \data_out_ready1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \data_out_ready1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \data_out_ready1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \data_out_ready1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \data_out_ready1_carry__2_n_2\ : STD_LOGIC;
  signal \data_out_ready1_carry__2_n_3\ : STD_LOGIC;
  signal \data_out_ready1_carry__2_n_4\ : STD_LOGIC;
  signal \data_out_ready1_carry__2_n_5\ : STD_LOGIC;
  signal \data_out_ready1_carry__2_n_6\ : STD_LOGIC;
  signal \data_out_ready1_carry__2_n_7\ : STD_LOGIC;
  signal data_out_ready1_carry_i_1_n_0 : STD_LOGIC;
  signal data_out_ready1_carry_i_2_n_0 : STD_LOGIC;
  signal data_out_ready1_carry_i_3_n_0 : STD_LOGIC;
  signal data_out_ready1_carry_i_4_n_0 : STD_LOGIC;
  signal data_out_ready1_carry_i_5_n_0 : STD_LOGIC;
  signal data_out_ready1_carry_i_6_n_0 : STD_LOGIC;
  signal data_out_ready1_carry_i_7_n_0 : STD_LOGIC;
  signal data_out_ready1_carry_i_8_n_0 : STD_LOGIC;
  signal data_out_ready1_carry_n_0 : STD_LOGIC;
  signal data_out_ready1_carry_n_1 : STD_LOGIC;
  signal data_out_ready1_carry_n_2 : STD_LOGIC;
  signal data_out_ready1_carry_n_3 : STD_LOGIC;
  signal data_out_ready1_carry_n_4 : STD_LOGIC;
  signal data_out_ready1_carry_n_5 : STD_LOGIC;
  signal data_out_ready1_carry_n_6 : STD_LOGIC;
  signal data_out_ready1_carry_n_7 : STD_LOGIC;
  signal \data_out_ready2__0_i_1_n_0\ : STD_LOGIC;
  signal \data_out_ready2__0_i_2_n_0\ : STD_LOGIC;
  signal \data_out_ready2__0_n_100\ : STD_LOGIC;
  signal \data_out_ready2__0_n_101\ : STD_LOGIC;
  signal \data_out_ready2__0_n_102\ : STD_LOGIC;
  signal \data_out_ready2__0_n_103\ : STD_LOGIC;
  signal \data_out_ready2__0_n_104\ : STD_LOGIC;
  signal \data_out_ready2__0_n_105\ : STD_LOGIC;
  signal \data_out_ready2__0_n_106\ : STD_LOGIC;
  signal \data_out_ready2__0_n_107\ : STD_LOGIC;
  signal \data_out_ready2__0_n_108\ : STD_LOGIC;
  signal \data_out_ready2__0_n_109\ : STD_LOGIC;
  signal \data_out_ready2__0_n_110\ : STD_LOGIC;
  signal \data_out_ready2__0_n_111\ : STD_LOGIC;
  signal \data_out_ready2__0_n_112\ : STD_LOGIC;
  signal \data_out_ready2__0_n_113\ : STD_LOGIC;
  signal \data_out_ready2__0_n_114\ : STD_LOGIC;
  signal \data_out_ready2__0_n_115\ : STD_LOGIC;
  signal \data_out_ready2__0_n_116\ : STD_LOGIC;
  signal \data_out_ready2__0_n_117\ : STD_LOGIC;
  signal \data_out_ready2__0_n_118\ : STD_LOGIC;
  signal \data_out_ready2__0_n_119\ : STD_LOGIC;
  signal \data_out_ready2__0_n_120\ : STD_LOGIC;
  signal \data_out_ready2__0_n_121\ : STD_LOGIC;
  signal \data_out_ready2__0_n_122\ : STD_LOGIC;
  signal \data_out_ready2__0_n_123\ : STD_LOGIC;
  signal \data_out_ready2__0_n_124\ : STD_LOGIC;
  signal \data_out_ready2__0_n_125\ : STD_LOGIC;
  signal \data_out_ready2__0_n_126\ : STD_LOGIC;
  signal \data_out_ready2__0_n_127\ : STD_LOGIC;
  signal \data_out_ready2__0_n_128\ : STD_LOGIC;
  signal \data_out_ready2__0_n_129\ : STD_LOGIC;
  signal \data_out_ready2__0_n_130\ : STD_LOGIC;
  signal \data_out_ready2__0_n_131\ : STD_LOGIC;
  signal \data_out_ready2__0_n_132\ : STD_LOGIC;
  signal \data_out_ready2__0_n_133\ : STD_LOGIC;
  signal \data_out_ready2__0_n_134\ : STD_LOGIC;
  signal \data_out_ready2__0_n_135\ : STD_LOGIC;
  signal \data_out_ready2__0_n_136\ : STD_LOGIC;
  signal \data_out_ready2__0_n_137\ : STD_LOGIC;
  signal \data_out_ready2__0_n_138\ : STD_LOGIC;
  signal \data_out_ready2__0_n_139\ : STD_LOGIC;
  signal \data_out_ready2__0_n_140\ : STD_LOGIC;
  signal \data_out_ready2__0_n_141\ : STD_LOGIC;
  signal \data_out_ready2__0_n_142\ : STD_LOGIC;
  signal \data_out_ready2__0_n_143\ : STD_LOGIC;
  signal \data_out_ready2__0_n_144\ : STD_LOGIC;
  signal \data_out_ready2__0_n_145\ : STD_LOGIC;
  signal \data_out_ready2__0_n_146\ : STD_LOGIC;
  signal \data_out_ready2__0_n_147\ : STD_LOGIC;
  signal \data_out_ready2__0_n_148\ : STD_LOGIC;
  signal \data_out_ready2__0_n_149\ : STD_LOGIC;
  signal \data_out_ready2__0_n_150\ : STD_LOGIC;
  signal \data_out_ready2__0_n_151\ : STD_LOGIC;
  signal \data_out_ready2__0_n_152\ : STD_LOGIC;
  signal \data_out_ready2__0_n_153\ : STD_LOGIC;
  signal \data_out_ready2__0_n_58\ : STD_LOGIC;
  signal \data_out_ready2__0_n_59\ : STD_LOGIC;
  signal \data_out_ready2__0_n_60\ : STD_LOGIC;
  signal \data_out_ready2__0_n_61\ : STD_LOGIC;
  signal \data_out_ready2__0_n_62\ : STD_LOGIC;
  signal \data_out_ready2__0_n_63\ : STD_LOGIC;
  signal \data_out_ready2__0_n_64\ : STD_LOGIC;
  signal \data_out_ready2__0_n_65\ : STD_LOGIC;
  signal \data_out_ready2__0_n_66\ : STD_LOGIC;
  signal \data_out_ready2__0_n_67\ : STD_LOGIC;
  signal \data_out_ready2__0_n_68\ : STD_LOGIC;
  signal \data_out_ready2__0_n_69\ : STD_LOGIC;
  signal \data_out_ready2__0_n_70\ : STD_LOGIC;
  signal \data_out_ready2__0_n_71\ : STD_LOGIC;
  signal \data_out_ready2__0_n_72\ : STD_LOGIC;
  signal \data_out_ready2__0_n_73\ : STD_LOGIC;
  signal \data_out_ready2__0_n_74\ : STD_LOGIC;
  signal \data_out_ready2__0_n_75\ : STD_LOGIC;
  signal \data_out_ready2__0_n_76\ : STD_LOGIC;
  signal \data_out_ready2__0_n_77\ : STD_LOGIC;
  signal \data_out_ready2__0_n_78\ : STD_LOGIC;
  signal \data_out_ready2__0_n_79\ : STD_LOGIC;
  signal \data_out_ready2__0_n_80\ : STD_LOGIC;
  signal \data_out_ready2__0_n_81\ : STD_LOGIC;
  signal \data_out_ready2__0_n_82\ : STD_LOGIC;
  signal \data_out_ready2__0_n_83\ : STD_LOGIC;
  signal \data_out_ready2__0_n_84\ : STD_LOGIC;
  signal \data_out_ready2__0_n_85\ : STD_LOGIC;
  signal \data_out_ready2__0_n_86\ : STD_LOGIC;
  signal \data_out_ready2__0_n_87\ : STD_LOGIC;
  signal \data_out_ready2__0_n_88\ : STD_LOGIC;
  signal \data_out_ready2__0_n_89\ : STD_LOGIC;
  signal \data_out_ready2__0_n_90\ : STD_LOGIC;
  signal \data_out_ready2__0_n_91\ : STD_LOGIC;
  signal \data_out_ready2__0_n_92\ : STD_LOGIC;
  signal \data_out_ready2__0_n_93\ : STD_LOGIC;
  signal \data_out_ready2__0_n_94\ : STD_LOGIC;
  signal \data_out_ready2__0_n_95\ : STD_LOGIC;
  signal \data_out_ready2__0_n_96\ : STD_LOGIC;
  signal \data_out_ready2__0_n_97\ : STD_LOGIC;
  signal \data_out_ready2__0_n_98\ : STD_LOGIC;
  signal \data_out_ready2__0_n_99\ : STD_LOGIC;
  signal \data_out_ready2__1_n_100\ : STD_LOGIC;
  signal \data_out_ready2__1_n_101\ : STD_LOGIC;
  signal \data_out_ready2__1_n_102\ : STD_LOGIC;
  signal \data_out_ready2__1_n_103\ : STD_LOGIC;
  signal \data_out_ready2__1_n_104\ : STD_LOGIC;
  signal \data_out_ready2__1_n_105\ : STD_LOGIC;
  signal \data_out_ready2__1_n_58\ : STD_LOGIC;
  signal \data_out_ready2__1_n_59\ : STD_LOGIC;
  signal \data_out_ready2__1_n_60\ : STD_LOGIC;
  signal \data_out_ready2__1_n_61\ : STD_LOGIC;
  signal \data_out_ready2__1_n_62\ : STD_LOGIC;
  signal \data_out_ready2__1_n_63\ : STD_LOGIC;
  signal \data_out_ready2__1_n_64\ : STD_LOGIC;
  signal \data_out_ready2__1_n_65\ : STD_LOGIC;
  signal \data_out_ready2__1_n_66\ : STD_LOGIC;
  signal \data_out_ready2__1_n_67\ : STD_LOGIC;
  signal \data_out_ready2__1_n_68\ : STD_LOGIC;
  signal \data_out_ready2__1_n_69\ : STD_LOGIC;
  signal \data_out_ready2__1_n_70\ : STD_LOGIC;
  signal \data_out_ready2__1_n_71\ : STD_LOGIC;
  signal \data_out_ready2__1_n_72\ : STD_LOGIC;
  signal \data_out_ready2__1_n_73\ : STD_LOGIC;
  signal \data_out_ready2__1_n_74\ : STD_LOGIC;
  signal \data_out_ready2__1_n_75\ : STD_LOGIC;
  signal \data_out_ready2__1_n_76\ : STD_LOGIC;
  signal \data_out_ready2__1_n_77\ : STD_LOGIC;
  signal \data_out_ready2__1_n_78\ : STD_LOGIC;
  signal \data_out_ready2__1_n_79\ : STD_LOGIC;
  signal \data_out_ready2__1_n_80\ : STD_LOGIC;
  signal \data_out_ready2__1_n_81\ : STD_LOGIC;
  signal \data_out_ready2__1_n_82\ : STD_LOGIC;
  signal \data_out_ready2__1_n_83\ : STD_LOGIC;
  signal \data_out_ready2__1_n_84\ : STD_LOGIC;
  signal \data_out_ready2__1_n_85\ : STD_LOGIC;
  signal \data_out_ready2__1_n_86\ : STD_LOGIC;
  signal \data_out_ready2__1_n_87\ : STD_LOGIC;
  signal \data_out_ready2__1_n_88\ : STD_LOGIC;
  signal \data_out_ready2__1_n_89\ : STD_LOGIC;
  signal \data_out_ready2__1_n_90\ : STD_LOGIC;
  signal \data_out_ready2__1_n_91\ : STD_LOGIC;
  signal \data_out_ready2__1_n_92\ : STD_LOGIC;
  signal \data_out_ready2__1_n_93\ : STD_LOGIC;
  signal \data_out_ready2__1_n_94\ : STD_LOGIC;
  signal \data_out_ready2__1_n_95\ : STD_LOGIC;
  signal \data_out_ready2__1_n_96\ : STD_LOGIC;
  signal \data_out_ready2__1_n_97\ : STD_LOGIC;
  signal \data_out_ready2__1_n_98\ : STD_LOGIC;
  signal \data_out_ready2__1_n_99\ : STD_LOGIC;
  signal \data_out_ready2__3\ : STD_LOGIC;
  signal \data_out_ready2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \data_out_ready2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \data_out_ready2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \data_out_ready2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \data_out_ready2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \data_out_ready2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \data_out_ready2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \data_out_ready2_carry__0_n_10\ : STD_LOGIC;
  signal \data_out_ready2_carry__0_n_11\ : STD_LOGIC;
  signal \data_out_ready2_carry__0_n_12\ : STD_LOGIC;
  signal \data_out_ready2_carry__0_n_13\ : STD_LOGIC;
  signal \data_out_ready2_carry__0_n_14\ : STD_LOGIC;
  signal \data_out_ready2_carry__0_n_15\ : STD_LOGIC;
  signal \data_out_ready2_carry__0_n_2\ : STD_LOGIC;
  signal \data_out_ready2_carry__0_n_3\ : STD_LOGIC;
  signal \data_out_ready2_carry__0_n_4\ : STD_LOGIC;
  signal \data_out_ready2_carry__0_n_5\ : STD_LOGIC;
  signal \data_out_ready2_carry__0_n_6\ : STD_LOGIC;
  signal \data_out_ready2_carry__0_n_7\ : STD_LOGIC;
  signal \data_out_ready2_carry__0_n_9\ : STD_LOGIC;
  signal data_out_ready2_carry_i_1_n_0 : STD_LOGIC;
  signal data_out_ready2_carry_i_2_n_0 : STD_LOGIC;
  signal data_out_ready2_carry_i_3_n_0 : STD_LOGIC;
  signal data_out_ready2_carry_i_4_n_0 : STD_LOGIC;
  signal data_out_ready2_carry_i_5_n_0 : STD_LOGIC;
  signal data_out_ready2_carry_i_6_n_0 : STD_LOGIC;
  signal data_out_ready2_carry_i_7_n_0 : STD_LOGIC;
  signal data_out_ready2_carry_n_0 : STD_LOGIC;
  signal data_out_ready2_carry_n_1 : STD_LOGIC;
  signal data_out_ready2_carry_n_10 : STD_LOGIC;
  signal data_out_ready2_carry_n_11 : STD_LOGIC;
  signal data_out_ready2_carry_n_12 : STD_LOGIC;
  signal data_out_ready2_carry_n_13 : STD_LOGIC;
  signal data_out_ready2_carry_n_14 : STD_LOGIC;
  signal data_out_ready2_carry_n_15 : STD_LOGIC;
  signal data_out_ready2_carry_n_2 : STD_LOGIC;
  signal data_out_ready2_carry_n_3 : STD_LOGIC;
  signal data_out_ready2_carry_n_4 : STD_LOGIC;
  signal data_out_ready2_carry_n_5 : STD_LOGIC;
  signal data_out_ready2_carry_n_6 : STD_LOGIC;
  signal data_out_ready2_carry_n_7 : STD_LOGIC;
  signal data_out_ready2_carry_n_8 : STD_LOGIC;
  signal data_out_ready2_carry_n_9 : STD_LOGIC;
  signal \data_out_ready2_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \data_out_ready2_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \data_out_ready2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \data_out_ready2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \data_out_ready2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \data_out_ready2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \data_out_ready2_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \data_out_ready2_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \data_out_ready2_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \data_out_ready2_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal data_out_ready2_n_100 : STD_LOGIC;
  signal data_out_ready2_n_101 : STD_LOGIC;
  signal data_out_ready2_n_102 : STD_LOGIC;
  signal data_out_ready2_n_103 : STD_LOGIC;
  signal data_out_ready2_n_104 : STD_LOGIC;
  signal data_out_ready2_n_105 : STD_LOGIC;
  signal data_out_ready2_n_106 : STD_LOGIC;
  signal data_out_ready2_n_107 : STD_LOGIC;
  signal data_out_ready2_n_108 : STD_LOGIC;
  signal data_out_ready2_n_109 : STD_LOGIC;
  signal data_out_ready2_n_110 : STD_LOGIC;
  signal data_out_ready2_n_111 : STD_LOGIC;
  signal data_out_ready2_n_112 : STD_LOGIC;
  signal data_out_ready2_n_113 : STD_LOGIC;
  signal data_out_ready2_n_114 : STD_LOGIC;
  signal data_out_ready2_n_115 : STD_LOGIC;
  signal data_out_ready2_n_116 : STD_LOGIC;
  signal data_out_ready2_n_117 : STD_LOGIC;
  signal data_out_ready2_n_118 : STD_LOGIC;
  signal data_out_ready2_n_119 : STD_LOGIC;
  signal data_out_ready2_n_120 : STD_LOGIC;
  signal data_out_ready2_n_121 : STD_LOGIC;
  signal data_out_ready2_n_122 : STD_LOGIC;
  signal data_out_ready2_n_123 : STD_LOGIC;
  signal data_out_ready2_n_124 : STD_LOGIC;
  signal data_out_ready2_n_125 : STD_LOGIC;
  signal data_out_ready2_n_126 : STD_LOGIC;
  signal data_out_ready2_n_127 : STD_LOGIC;
  signal data_out_ready2_n_128 : STD_LOGIC;
  signal data_out_ready2_n_129 : STD_LOGIC;
  signal data_out_ready2_n_130 : STD_LOGIC;
  signal data_out_ready2_n_131 : STD_LOGIC;
  signal data_out_ready2_n_132 : STD_LOGIC;
  signal data_out_ready2_n_133 : STD_LOGIC;
  signal data_out_ready2_n_134 : STD_LOGIC;
  signal data_out_ready2_n_135 : STD_LOGIC;
  signal data_out_ready2_n_136 : STD_LOGIC;
  signal data_out_ready2_n_137 : STD_LOGIC;
  signal data_out_ready2_n_138 : STD_LOGIC;
  signal data_out_ready2_n_139 : STD_LOGIC;
  signal data_out_ready2_n_140 : STD_LOGIC;
  signal data_out_ready2_n_141 : STD_LOGIC;
  signal data_out_ready2_n_142 : STD_LOGIC;
  signal data_out_ready2_n_143 : STD_LOGIC;
  signal data_out_ready2_n_144 : STD_LOGIC;
  signal data_out_ready2_n_145 : STD_LOGIC;
  signal data_out_ready2_n_146 : STD_LOGIC;
  signal data_out_ready2_n_147 : STD_LOGIC;
  signal data_out_ready2_n_148 : STD_LOGIC;
  signal data_out_ready2_n_149 : STD_LOGIC;
  signal data_out_ready2_n_150 : STD_LOGIC;
  signal data_out_ready2_n_151 : STD_LOGIC;
  signal data_out_ready2_n_152 : STD_LOGIC;
  signal data_out_ready2_n_153 : STD_LOGIC;
  signal data_out_ready2_n_58 : STD_LOGIC;
  signal data_out_ready2_n_59 : STD_LOGIC;
  signal data_out_ready2_n_60 : STD_LOGIC;
  signal data_out_ready2_n_61 : STD_LOGIC;
  signal data_out_ready2_n_62 : STD_LOGIC;
  signal data_out_ready2_n_63 : STD_LOGIC;
  signal data_out_ready2_n_64 : STD_LOGIC;
  signal data_out_ready2_n_65 : STD_LOGIC;
  signal data_out_ready2_n_66 : STD_LOGIC;
  signal data_out_ready2_n_67 : STD_LOGIC;
  signal data_out_ready2_n_68 : STD_LOGIC;
  signal data_out_ready2_n_69 : STD_LOGIC;
  signal data_out_ready2_n_70 : STD_LOGIC;
  signal data_out_ready2_n_71 : STD_LOGIC;
  signal data_out_ready2_n_72 : STD_LOGIC;
  signal data_out_ready2_n_73 : STD_LOGIC;
  signal data_out_ready2_n_74 : STD_LOGIC;
  signal data_out_ready2_n_75 : STD_LOGIC;
  signal data_out_ready2_n_76 : STD_LOGIC;
  signal data_out_ready2_n_77 : STD_LOGIC;
  signal data_out_ready2_n_78 : STD_LOGIC;
  signal data_out_ready2_n_79 : STD_LOGIC;
  signal data_out_ready2_n_80 : STD_LOGIC;
  signal data_out_ready2_n_81 : STD_LOGIC;
  signal data_out_ready2_n_82 : STD_LOGIC;
  signal data_out_ready2_n_83 : STD_LOGIC;
  signal data_out_ready2_n_84 : STD_LOGIC;
  signal data_out_ready2_n_85 : STD_LOGIC;
  signal data_out_ready2_n_86 : STD_LOGIC;
  signal data_out_ready2_n_87 : STD_LOGIC;
  signal data_out_ready2_n_88 : STD_LOGIC;
  signal data_out_ready2_n_89 : STD_LOGIC;
  signal data_out_ready2_n_90 : STD_LOGIC;
  signal data_out_ready2_n_91 : STD_LOGIC;
  signal data_out_ready2_n_92 : STD_LOGIC;
  signal data_out_ready2_n_93 : STD_LOGIC;
  signal data_out_ready2_n_94 : STD_LOGIC;
  signal data_out_ready2_n_95 : STD_LOGIC;
  signal data_out_ready2_n_96 : STD_LOGIC;
  signal data_out_ready2_n_97 : STD_LOGIC;
  signal data_out_ready2_n_98 : STD_LOGIC;
  signal data_out_ready2_n_99 : STD_LOGIC;
  signal data_out_ready_i_1_n_0 : STD_LOGIC;
  signal data_out_ready_i_2_n_0 : STD_LOGIC;
  signal data_out_ready_i_3_n_0 : STD_LOGIC;
  signal data_out_ready_i_4_n_0 : STD_LOGIC;
  signal data_out_ready_i_5_n_0 : STD_LOGIC;
  signal \i__carry_i_1_n_13\ : STD_LOGIC;
  signal \i__carry_i_1_n_14\ : STD_LOGIC;
  signal \i__carry_i_1_n_15\ : STD_LOGIC;
  signal \i__carry_i_1_n_4\ : STD_LOGIC;
  signal \i__carry_i_1_n_6\ : STD_LOGIC;
  signal \i__carry_i_1_n_7\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_9_n_0\ : STD_LOGIC;
  signal memory : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \p_1_out__0\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \read_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[0]_i_2_n_0\ : STD_LOGIC;
  signal \read_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[3]_i_2_n_0\ : STD_LOGIC;
  signal \read_addr[3]_i_3_n_0\ : STD_LOGIC;
  signal \read_addr[3]_i_4_n_0\ : STD_LOGIC;
  signal \read_addr[3]_i_5_n_0\ : STD_LOGIC;
  signal \read_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[5]_i_2_n_0\ : STD_LOGIC;
  signal \read_addr[5]_i_3_n_0\ : STD_LOGIC;
  signal read_addr_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^read_valid\ : STD_LOGIC;
  signal read_valid_i_1_n_0 : STD_LOGIC;
  signal \row_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \row_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \row_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \row_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \row_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \row_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \row_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \row_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal sel_code : STD_LOGIC_VECTOR ( 0 to 0 );
  signal write_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \write_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr[10]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr[11]_i_2_n_0\ : STD_LOGIC;
  signal \write_addr[11]_i_3_n_0\ : STD_LOGIC;
  signal \write_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr[5]_i_2_n_0\ : STD_LOGIC;
  signal \write_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr[7]_i_2_n_0\ : STD_LOGIC;
  signal \write_addr[8]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr[9]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr__0\ : STD_LOGIC;
  signal NLW_data_out_ready0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_data_out_ready0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_data_out_ready0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_data_out_ready1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_data_out_ready1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_data_out_ready2_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_data_out_ready2_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_data_out_ready2_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_data_out_ready2_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_data_out_ready2_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_data_out_ready2_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_data_out_ready2_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_data_out_ready2_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_data_out_ready2_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_data_out_ready2_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_data_out_ready2__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_data_out_ready2__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_data_out_ready2__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_data_out_ready2__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_data_out_ready2__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_data_out_ready2__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_data_out_ready2__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_data_out_ready2__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_data_out_ready2__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_out_ready2__0_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_data_out_ready2__1_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_data_out_ready2__1_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_data_out_ready2__1_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_data_out_ready2__1_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_data_out_ready2__1_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_data_out_ready2__1_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_data_out_ready2__1_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_data_out_ready2__1_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_data_out_ready2__1_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_out_ready2__1_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_data_out_ready2__1_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_data_out_ready2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_data_out_ready2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_data_out_ready2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_data_out_ready2_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_data_out_ready2_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_i__carry_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_i__carry_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal NLW_memory_reg_0_63_0_6_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_63_14_20_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_63_21_27_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_63_28_31_DOE_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_63_28_31_DOF_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_63_28_31_DOG_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_63_28_31_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_63_7_13_DOH_UNCONNECTED : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair9";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "read:100,idle:001,write:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "read:100,idle:001,write:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "read:100,idle:001,write:010";
  attribute SOFT_HLUTNM of \col_cnt[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \col_cnt[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \col_cnt[3]_i_2\ : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of data_out_ready1_carry : label is 35;
  attribute ADDER_THRESHOLD of \data_out_ready1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \data_out_ready1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \data_out_ready1_carry__2\ : label is 35;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of data_out_ready2 : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of data_out_ready2 : label is "{SYNTH-10 {cell *THIS*} {string 15x18 4}}";
  attribute KEEP_HIERARCHY of \data_out_ready2__0\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \data_out_ready2__0\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute SOFT_HLUTNM of \data_out_ready2__0_i_1\ : label is "soft_lutpair1";
  attribute KEEP_HIERARCHY of \data_out_ready2__1\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \data_out_ready2__1\ : label is "{SYNTH-10 {cell *THIS*} {string 18x15 4}}";
  attribute ADDER_THRESHOLD of data_out_ready2_carry : label is 35;
  attribute ADDER_THRESHOLD of \data_out_ready2_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of data_out_ready_i_2 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of data_out_ready_i_3 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of data_out_ready_i_5 : label is "soft_lutpair6";
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_63_0_6 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of memory_reg_0_63_0_6 : label is 2016;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of memory_reg_0_63_0_6 : label is "U0/memory";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of memory_reg_0_63_0_6 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of memory_reg_0_63_0_6 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of memory_reg_0_63_0_6 : label is 62;
  attribute ram_offset : integer;
  attribute ram_offset of memory_reg_0_63_0_6 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of memory_reg_0_63_0_6 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of memory_reg_0_63_0_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_63_14_20 : label is "";
  attribute RTL_RAM_BITS of memory_reg_0_63_14_20 : label is 2016;
  attribute RTL_RAM_NAME of memory_reg_0_63_14_20 : label is "U0/memory";
  attribute RTL_RAM_TYPE of memory_reg_0_63_14_20 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_0_63_14_20 : label is 0;
  attribute ram_addr_end of memory_reg_0_63_14_20 : label is 62;
  attribute ram_offset of memory_reg_0_63_14_20 : label is 0;
  attribute ram_slice_begin of memory_reg_0_63_14_20 : label is 14;
  attribute ram_slice_end of memory_reg_0_63_14_20 : label is 20;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_63_21_27 : label is "";
  attribute RTL_RAM_BITS of memory_reg_0_63_21_27 : label is 2016;
  attribute RTL_RAM_NAME of memory_reg_0_63_21_27 : label is "U0/memory";
  attribute RTL_RAM_TYPE of memory_reg_0_63_21_27 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_0_63_21_27 : label is 0;
  attribute ram_addr_end of memory_reg_0_63_21_27 : label is 62;
  attribute ram_offset of memory_reg_0_63_21_27 : label is 0;
  attribute ram_slice_begin of memory_reg_0_63_21_27 : label is 21;
  attribute ram_slice_end of memory_reg_0_63_21_27 : label is 27;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_63_28_31 : label is "";
  attribute RTL_RAM_BITS of memory_reg_0_63_28_31 : label is 2016;
  attribute RTL_RAM_NAME of memory_reg_0_63_28_31 : label is "U0/memory";
  attribute RTL_RAM_TYPE of memory_reg_0_63_28_31 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_0_63_28_31 : label is 0;
  attribute ram_addr_end of memory_reg_0_63_28_31 : label is 62;
  attribute ram_offset of memory_reg_0_63_28_31 : label is 0;
  attribute ram_slice_begin of memory_reg_0_63_28_31 : label is 28;
  attribute ram_slice_end of memory_reg_0_63_28_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of memory_reg_0_63_7_13 : label is "";
  attribute RTL_RAM_BITS of memory_reg_0_63_7_13 : label is 2016;
  attribute RTL_RAM_NAME of memory_reg_0_63_7_13 : label is "U0/memory";
  attribute RTL_RAM_TYPE of memory_reg_0_63_7_13 : label is "RAM_SDP";
  attribute ram_addr_begin of memory_reg_0_63_7_13 : label is 0;
  attribute ram_addr_end of memory_reg_0_63_7_13 : label is 62;
  attribute ram_offset of memory_reg_0_63_7_13 : label is 0;
  attribute ram_slice_begin of memory_reg_0_63_7_13 : label is 7;
  attribute ram_slice_end of memory_reg_0_63_7_13 : label is 13;
  attribute SOFT_HLUTNM of \read_addr[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_addr[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \read_addr[3]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \read_addr[3]_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \read_addr[5]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \row_cnt[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \row_cnt[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \row_cnt[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \row_cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \write_addr[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \write_addr[10]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \write_addr[11]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \write_addr[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \write_addr[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \write_addr[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \write_addr[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \write_addr[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \write_addr[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \write_addr[9]_i_1\ : label is "soft_lutpair2";
begin
  data_out_ready <= \^data_out_ready\;
  read_valid <= \^read_valid\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => write_en,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => write_en,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAEAEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => data_in_ready,
      I3 => data_out_ready0,
      I4 => memory,
      I5 => write_en,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => data_in_ready,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \data_out_ready2__3\,
      I4 => \col_cnt_reg_n_0_[2]\,
      I5 => data_out_ready_i_5_n_0,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[2]_i_1_n_0\,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      PRE => rst,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[2]_i_1_n_0\,
      CLR => rst,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => memory
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[2]_i_1_n_0\,
      CLR => rst,
      D => memory,
      Q => \FSM_onehot_state_reg_n_0_[2]\
    );
\col_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \read_addr[0]_i_2_n_0\,
      I1 => \col_cnt_reg_n_0_[0]\,
      O => \col_cnt[0]_i_1_n_0\
    );
\col_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \read_addr[3]_i_2_n_0\,
      I1 => \col_cnt_reg_n_0_[1]\,
      I2 => \col_cnt_reg_n_0_[0]\,
      O => \col_cnt[1]_i_1_n_0\
    );
\col_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \read_addr[3]_i_2_n_0\,
      I1 => \col_cnt_reg_n_0_[2]\,
      I2 => \col_cnt_reg_n_0_[0]\,
      I3 => \col_cnt_reg_n_0_[1]\,
      O => \col_cnt[2]_i_1_n_0\
    );
\col_cnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => data_in_ready,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \data_out_ready2__3\,
      O => col_cnt
    );
\col_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \read_addr[3]_i_2_n_0\,
      I1 => \col_cnt_reg_n_0_[3]\,
      I2 => \col_cnt_reg_n_0_[2]\,
      I3 => \col_cnt_reg_n_0_[1]\,
      I4 => \col_cnt_reg_n_0_[0]\,
      O => \col_cnt[3]_i_2_n_0\
    );
\col_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => col_cnt,
      CLR => rst,
      D => \col_cnt[0]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[0]\
    );
\col_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => col_cnt,
      CLR => rst,
      D => \col_cnt[1]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[1]\
    );
\col_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => col_cnt,
      CLR => rst,
      D => \col_cnt[2]_i_1_n_0\,
      Q => \col_cnt_reg_n_0_[2]\
    );
\col_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => col_cnt,
      CLR => rst,
      D => \col_cnt[3]_i_2_n_0\,
      Q => \col_cnt_reg_n_0_[3]\
    );
\data_out[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => data_in_ready,
      O => \data_out[31]_i_1_n_0\
    );
data_out_ready0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => data_out_ready0_carry_n_0,
      CO(6) => data_out_ready0_carry_n_1,
      CO(5) => data_out_ready0_carry_n_2,
      CO(4) => data_out_ready0_carry_n_3,
      CO(3) => data_out_ready0_carry_n_4,
      CO(2) => data_out_ready0_carry_n_5,
      CO(1) => data_out_ready0_carry_n_6,
      CO(0) => data_out_ready0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => NLW_data_out_ready0_carry_O_UNCONNECTED(7 downto 0),
      S(7) => data_out_ready0_carry_i_1_n_0,
      S(6) => data_out_ready0_carry_i_2_n_0,
      S(5) => data_out_ready0_carry_i_3_n_0,
      S(4) => data_out_ready0_carry_i_4_n_0,
      S(3) => data_out_ready0_carry_i_5_n_0,
      S(2) => data_out_ready0_carry_i_6_n_0,
      S(1) => data_out_ready0_carry_i_7_n_0,
      S(0) => data_out_ready0_carry_i_8_n_0
    );
\data_out_ready0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => data_out_ready0_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_data_out_ready0_carry__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => data_out_ready0,
      CO(1) => \data_out_ready0_carry__0_n_6\,
      CO(0) => \data_out_ready0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_data_out_ready0_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7 downto 3) => B"00000",
      S(2) => \data_out_ready0_carry__0_i_1_n_0\,
      S(1) => \data_out_ready0_carry__0_i_2_n_0\,
      S(0) => \data_out_ready0_carry__0_i_3_n_0\
    );
\data_out_ready0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_out_ready1(30),
      O => \data_out_ready0_carry__0_i_1_n_0\
    );
\data_out_ready0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => data_out_ready1(29),
      I1 => data_out_ready1(28),
      I2 => data_out_ready1(27),
      O => \data_out_ready0_carry__0_i_2_n_0\
    );
\data_out_ready0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => data_out_ready1(26),
      I1 => data_out_ready1(25),
      I2 => data_out_ready1(24),
      O => \data_out_ready0_carry__0_i_3_n_0\
    );
data_out_ready0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => data_out_ready1(23),
      I1 => data_out_ready1(22),
      I2 => data_out_ready1(21),
      O => data_out_ready0_carry_i_1_n_0
    );
data_out_ready0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => data_out_ready1(20),
      I1 => data_out_ready1(19),
      I2 => data_out_ready1(18),
      O => data_out_ready0_carry_i_2_n_0
    );
data_out_ready0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => data_out_ready1(17),
      I1 => data_out_ready1(16),
      I2 => data_out_ready1(15),
      O => data_out_ready0_carry_i_3_n_0
    );
data_out_ready0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => data_out_ready1(14),
      I1 => data_out_ready1(13),
      I2 => data_out_ready1(12),
      O => data_out_ready0_carry_i_4_n_0
    );
data_out_ready0_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data_out_ready1(11),
      I1 => write_addr(11),
      I2 => data_out_ready1(10),
      I3 => write_addr(10),
      I4 => write_addr(9),
      I5 => data_out_ready1(9),
      O => data_out_ready0_carry_i_5_n_0
    );
data_out_ready0_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data_out_ready1(8),
      I1 => write_addr(8),
      I2 => data_out_ready1(7),
      I3 => write_addr(7),
      I4 => write_addr(6),
      I5 => data_out_ready1(6),
      O => data_out_ready0_carry_i_6_n_0
    );
data_out_ready0_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data_out_ready1(5),
      I1 => write_addr(5),
      I2 => data_out_ready1(4),
      I3 => write_addr(4),
      I4 => write_addr(3),
      I5 => data_out_ready1(3),
      O => data_out_ready0_carry_i_7_n_0
    );
data_out_ready0_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data_out_ready1(2),
      I1 => write_addr(2),
      I2 => data_out_ready1(1),
      I3 => write_addr(1),
      I4 => write_addr(0),
      I5 => data_out_ready1(0),
      O => data_out_ready0_carry_i_8_n_0
    );
data_out_ready1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => data_out_ready1_carry_n_0,
      CO(6) => data_out_ready1_carry_n_1,
      CO(5) => data_out_ready1_carry_n_2,
      CO(4) => data_out_ready1_carry_n_3,
      CO(3) => data_out_ready1_carry_n_4,
      CO(2) => data_out_ready1_carry_n_5,
      CO(1) => data_out_ready1_carry_n_6,
      CO(0) => data_out_ready1_carry_n_7,
      DI(7) => \data_out_ready2__0_n_98\,
      DI(6) => \data_out_ready2__0_n_99\,
      DI(5) => \data_out_ready2__0_n_100\,
      DI(4) => \data_out_ready2__0_n_101\,
      DI(3) => \data_out_ready2__0_n_102\,
      DI(2) => \data_out_ready2__0_n_103\,
      DI(1) => \data_out_ready2__0_n_104\,
      DI(0) => \data_out_ready2__0_n_105\,
      O(7 downto 0) => data_out_ready1(7 downto 0),
      S(7) => data_out_ready1_carry_i_1_n_0,
      S(6) => data_out_ready1_carry_i_2_n_0,
      S(5) => data_out_ready1_carry_i_3_n_0,
      S(4) => data_out_ready1_carry_i_4_n_0,
      S(3) => data_out_ready1_carry_i_5_n_0,
      S(2) => data_out_ready1_carry_i_6_n_0,
      S(1) => data_out_ready1_carry_i_7_n_0,
      S(0) => data_out_ready1_carry_i_8_n_0
    );
\data_out_ready1_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => data_out_ready1_carry_n_0,
      CI_TOP => '0',
      CO(7) => \data_out_ready1_carry__0_n_0\,
      CO(6) => \data_out_ready1_carry__0_n_1\,
      CO(5) => \data_out_ready1_carry__0_n_2\,
      CO(4) => \data_out_ready1_carry__0_n_3\,
      CO(3) => \data_out_ready1_carry__0_n_4\,
      CO(2) => \data_out_ready1_carry__0_n_5\,
      CO(1) => \data_out_ready1_carry__0_n_6\,
      CO(0) => \data_out_ready1_carry__0_n_7\,
      DI(7) => \data_out_ready2__0_n_90\,
      DI(6) => \data_out_ready2__0_n_91\,
      DI(5) => \data_out_ready2__0_n_92\,
      DI(4) => \data_out_ready2__0_n_93\,
      DI(3) => \data_out_ready2__0_n_94\,
      DI(2) => \data_out_ready2__0_n_95\,
      DI(1) => \data_out_ready2__0_n_96\,
      DI(0) => \data_out_ready2__0_n_97\,
      O(7 downto 0) => data_out_ready1(15 downto 8),
      S(7) => \data_out_ready1_carry__0_i_1_n_0\,
      S(6) => \data_out_ready1_carry__0_i_2_n_0\,
      S(5) => \data_out_ready1_carry__0_i_3_n_0\,
      S(4) => \data_out_ready1_carry__0_i_4_n_0\,
      S(3) => \data_out_ready1_carry__0_i_5_n_0\,
      S(2) => \data_out_ready1_carry__0_i_6_n_0\,
      S(1) => \data_out_ready1_carry__0_i_7_n_0\,
      S(0) => \data_out_ready1_carry__0_i_8_n_0\
    );
\data_out_ready1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out_ready2__0_n_90\,
      O => \data_out_ready1_carry__0_i_1_n_0\
    );
\data_out_ready1_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out_ready2__0_n_91\,
      O => \data_out_ready1_carry__0_i_2_n_0\
    );
\data_out_ready1_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out_ready2__0_n_92\,
      O => \data_out_ready1_carry__0_i_3_n_0\
    );
\data_out_ready1_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out_ready2__0_n_93\,
      O => \data_out_ready1_carry__0_i_4_n_0\
    );
\data_out_ready1_carry__0_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out_ready2__0_n_94\,
      O => \data_out_ready1_carry__0_i_5_n_0\
    );
\data_out_ready1_carry__0_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out_ready2__0_n_95\,
      O => \data_out_ready1_carry__0_i_6_n_0\
    );
\data_out_ready1_carry__0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out_ready2__0_n_96\,
      O => \data_out_ready1_carry__0_i_7_n_0\
    );
\data_out_ready1_carry__0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out_ready2__0_n_97\,
      O => \data_out_ready1_carry__0_i_8_n_0\
    );
\data_out_ready1_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \data_out_ready1_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \data_out_ready1_carry__1_n_0\,
      CO(6) => \data_out_ready1_carry__1_n_1\,
      CO(5) => \data_out_ready1_carry__1_n_2\,
      CO(4) => \data_out_ready1_carry__1_n_3\,
      CO(3) => \data_out_ready1_carry__1_n_4\,
      CO(2) => \data_out_ready1_carry__1_n_5\,
      CO(1) => \data_out_ready1_carry__1_n_6\,
      CO(0) => \data_out_ready1_carry__1_n_7\,
      DI(7) => data_out_ready2_carry_n_8,
      DI(6) => data_out_ready2_carry_n_9,
      DI(5) => data_out_ready2_carry_n_10,
      DI(4) => data_out_ready2_carry_n_11,
      DI(3) => data_out_ready2_carry_n_12,
      DI(2) => data_out_ready2_carry_n_13,
      DI(1) => data_out_ready2_carry_n_14,
      DI(0) => data_out_ready2_carry_n_15,
      O(7 downto 0) => data_out_ready1(23 downto 16),
      S(7) => \data_out_ready1_carry__1_i_1_n_0\,
      S(6) => \data_out_ready1_carry__1_i_2_n_0\,
      S(5) => \data_out_ready1_carry__1_i_3_n_0\,
      S(4) => \data_out_ready1_carry__1_i_4_n_0\,
      S(3) => \data_out_ready1_carry__1_i_5_n_0\,
      S(2) => \data_out_ready1_carry__1_i_6_n_0\,
      S(1) => \data_out_ready1_carry__1_i_7_n_0\,
      S(0) => \data_out_ready1_carry__1_i_8_n_0\
    );
\data_out_ready1_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_out_ready2_carry_n_8,
      O => \data_out_ready1_carry__1_i_1_n_0\
    );
\data_out_ready1_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_out_ready2_carry_n_9,
      O => \data_out_ready1_carry__1_i_2_n_0\
    );
\data_out_ready1_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_out_ready2_carry_n_10,
      O => \data_out_ready1_carry__1_i_3_n_0\
    );
\data_out_ready1_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_out_ready2_carry_n_11,
      O => \data_out_ready1_carry__1_i_4_n_0\
    );
\data_out_ready1_carry__1_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_out_ready2_carry_n_12,
      O => \data_out_ready1_carry__1_i_5_n_0\
    );
\data_out_ready1_carry__1_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_out_ready2_carry_n_13,
      O => \data_out_ready1_carry__1_i_6_n_0\
    );
\data_out_ready1_carry__1_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_out_ready2_carry_n_14,
      O => \data_out_ready1_carry__1_i_7_n_0\
    );
\data_out_ready1_carry__1_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_out_ready2_carry_n_15,
      O => \data_out_ready1_carry__1_i_8_n_0\
    );
\data_out_ready1_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \data_out_ready1_carry__1_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_data_out_ready1_carry__2_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \data_out_ready1_carry__2_n_2\,
      CO(4) => \data_out_ready1_carry__2_n_3\,
      CO(3) => \data_out_ready1_carry__2_n_4\,
      CO(2) => \data_out_ready1_carry__2_n_5\,
      CO(1) => \data_out_ready1_carry__2_n_6\,
      CO(0) => \data_out_ready1_carry__2_n_7\,
      DI(7 downto 6) => B"00",
      DI(5) => \data_out_ready2_carry__0_n_10\,
      DI(4) => \data_out_ready2_carry__0_n_11\,
      DI(3) => \data_out_ready2_carry__0_n_12\,
      DI(2) => \data_out_ready2_carry__0_n_13\,
      DI(1) => \data_out_ready2_carry__0_n_14\,
      DI(0) => \data_out_ready2_carry__0_n_15\,
      O(7) => \NLW_data_out_ready1_carry__2_O_UNCONNECTED\(7),
      O(6 downto 0) => data_out_ready1(30 downto 24),
      S(7) => '0',
      S(6) => \data_out_ready1_carry__2_i_1_n_0\,
      S(5) => \data_out_ready1_carry__2_i_2_n_0\,
      S(4) => \data_out_ready1_carry__2_i_3_n_0\,
      S(3) => \data_out_ready1_carry__2_i_4_n_0\,
      S(2) => \data_out_ready1_carry__2_i_5_n_0\,
      S(1) => \data_out_ready1_carry__2_i_6_n_0\,
      S(0) => \data_out_ready1_carry__2_i_7_n_0\
    );
\data_out_ready1_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out_ready2_carry__0_n_9\,
      O => \data_out_ready1_carry__2_i_1_n_0\
    );
\data_out_ready1_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out_ready2_carry__0_n_10\,
      O => \data_out_ready1_carry__2_i_2_n_0\
    );
\data_out_ready1_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out_ready2_carry__0_n_11\,
      O => \data_out_ready1_carry__2_i_3_n_0\
    );
\data_out_ready1_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out_ready2_carry__0_n_12\,
      O => \data_out_ready1_carry__2_i_4_n_0\
    );
\data_out_ready1_carry__2_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out_ready2_carry__0_n_13\,
      O => \data_out_ready1_carry__2_i_5_n_0\
    );
\data_out_ready1_carry__2_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out_ready2_carry__0_n_14\,
      O => \data_out_ready1_carry__2_i_6_n_0\
    );
\data_out_ready1_carry__2_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out_ready2_carry__0_n_15\,
      O => \data_out_ready1_carry__2_i_7_n_0\
    );
data_out_ready1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out_ready2__0_n_98\,
      O => data_out_ready1_carry_i_1_n_0
    );
data_out_ready1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out_ready2__0_n_99\,
      O => data_out_ready1_carry_i_2_n_0
    );
data_out_ready1_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out_ready2__0_n_100\,
      O => data_out_ready1_carry_i_3_n_0
    );
data_out_ready1_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out_ready2__0_n_101\,
      O => data_out_ready1_carry_i_4_n_0
    );
data_out_ready1_carry_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out_ready2__0_n_102\,
      O => data_out_ready1_carry_i_5_n_0
    );
data_out_ready1_carry_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out_ready2__0_n_103\,
      O => data_out_ready1_carry_i_6_n_0
    );
data_out_ready1_carry_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \data_out_ready2__0_n_104\,
      I1 => code_rate(1),
      I2 => code_rate(0),
      O => data_out_ready1_carry_i_7_n_0
    );
data_out_ready1_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => \data_out_ready2__0_n_105\,
      I1 => code_rate(0),
      I2 => code_rate(1),
      O => data_out_ready1_carry_i_8_n_0
    );
data_out_ready2: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
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
      PREG => 0,
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
      A(29 downto 0) => B"000000000000000000000000000000",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_data_out_ready2_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000000000111",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_data_out_ready2_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_data_out_ready2_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_data_out_ready2_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
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
      CEP => '0',
      CLK => '0',
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_data_out_ready2_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => NLW_data_out_ready2_OVERFLOW_UNCONNECTED,
      P(47) => data_out_ready2_n_58,
      P(46) => data_out_ready2_n_59,
      P(45) => data_out_ready2_n_60,
      P(44) => data_out_ready2_n_61,
      P(43) => data_out_ready2_n_62,
      P(42) => data_out_ready2_n_63,
      P(41) => data_out_ready2_n_64,
      P(40) => data_out_ready2_n_65,
      P(39) => data_out_ready2_n_66,
      P(38) => data_out_ready2_n_67,
      P(37) => data_out_ready2_n_68,
      P(36) => data_out_ready2_n_69,
      P(35) => data_out_ready2_n_70,
      P(34) => data_out_ready2_n_71,
      P(33) => data_out_ready2_n_72,
      P(32) => data_out_ready2_n_73,
      P(31) => data_out_ready2_n_74,
      P(30) => data_out_ready2_n_75,
      P(29) => data_out_ready2_n_76,
      P(28) => data_out_ready2_n_77,
      P(27) => data_out_ready2_n_78,
      P(26) => data_out_ready2_n_79,
      P(25) => data_out_ready2_n_80,
      P(24) => data_out_ready2_n_81,
      P(23) => data_out_ready2_n_82,
      P(22) => data_out_ready2_n_83,
      P(21) => data_out_ready2_n_84,
      P(20) => data_out_ready2_n_85,
      P(19) => data_out_ready2_n_86,
      P(18) => data_out_ready2_n_87,
      P(17) => data_out_ready2_n_88,
      P(16) => data_out_ready2_n_89,
      P(15) => data_out_ready2_n_90,
      P(14) => data_out_ready2_n_91,
      P(13) => data_out_ready2_n_92,
      P(12) => data_out_ready2_n_93,
      P(11) => data_out_ready2_n_94,
      P(10) => data_out_ready2_n_95,
      P(9) => data_out_ready2_n_96,
      P(8) => data_out_ready2_n_97,
      P(7) => data_out_ready2_n_98,
      P(6) => data_out_ready2_n_99,
      P(5) => data_out_ready2_n_100,
      P(4) => data_out_ready2_n_101,
      P(3) => data_out_ready2_n_102,
      P(2) => data_out_ready2_n_103,
      P(1) => data_out_ready2_n_104,
      P(0) => data_out_ready2_n_105,
      PATTERNBDETECT => NLW_data_out_ready2_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_data_out_ready2_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => data_out_ready2_n_106,
      PCOUT(46) => data_out_ready2_n_107,
      PCOUT(45) => data_out_ready2_n_108,
      PCOUT(44) => data_out_ready2_n_109,
      PCOUT(43) => data_out_ready2_n_110,
      PCOUT(42) => data_out_ready2_n_111,
      PCOUT(41) => data_out_ready2_n_112,
      PCOUT(40) => data_out_ready2_n_113,
      PCOUT(39) => data_out_ready2_n_114,
      PCOUT(38) => data_out_ready2_n_115,
      PCOUT(37) => data_out_ready2_n_116,
      PCOUT(36) => data_out_ready2_n_117,
      PCOUT(35) => data_out_ready2_n_118,
      PCOUT(34) => data_out_ready2_n_119,
      PCOUT(33) => data_out_ready2_n_120,
      PCOUT(32) => data_out_ready2_n_121,
      PCOUT(31) => data_out_ready2_n_122,
      PCOUT(30) => data_out_ready2_n_123,
      PCOUT(29) => data_out_ready2_n_124,
      PCOUT(28) => data_out_ready2_n_125,
      PCOUT(27) => data_out_ready2_n_126,
      PCOUT(26) => data_out_ready2_n_127,
      PCOUT(25) => data_out_ready2_n_128,
      PCOUT(24) => data_out_ready2_n_129,
      PCOUT(23) => data_out_ready2_n_130,
      PCOUT(22) => data_out_ready2_n_131,
      PCOUT(21) => data_out_ready2_n_132,
      PCOUT(20) => data_out_ready2_n_133,
      PCOUT(19) => data_out_ready2_n_134,
      PCOUT(18) => data_out_ready2_n_135,
      PCOUT(17) => data_out_ready2_n_136,
      PCOUT(16) => data_out_ready2_n_137,
      PCOUT(15) => data_out_ready2_n_138,
      PCOUT(14) => data_out_ready2_n_139,
      PCOUT(13) => data_out_ready2_n_140,
      PCOUT(12) => data_out_ready2_n_141,
      PCOUT(11) => data_out_ready2_n_142,
      PCOUT(10) => data_out_ready2_n_143,
      PCOUT(9) => data_out_ready2_n_144,
      PCOUT(8) => data_out_ready2_n_145,
      PCOUT(7) => data_out_ready2_n_146,
      PCOUT(6) => data_out_ready2_n_147,
      PCOUT(5) => data_out_ready2_n_148,
      PCOUT(4) => data_out_ready2_n_149,
      PCOUT(3) => data_out_ready2_n_150,
      PCOUT(2) => data_out_ready2_n_151,
      PCOUT(1) => data_out_ready2_n_152,
      PCOUT(0) => data_out_ready2_n_153,
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
      UNDERFLOW => NLW_data_out_ready2_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_data_out_ready2_XOROUT_UNCONNECTED(7 downto 0)
    );
\data_out_ready2__0\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
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
      PREG => 0,
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
      A(29 downto 4) => B"00000000000000000000000000",
      A(3) => code_rate(1),
      A(2) => \data_out_ready2__0_i_1_n_0\,
      A(1) => \data_out_ready2__0_i_2_n_0\,
      A(0) => sel_code(0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_data_out_ready2__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000000000111",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_data_out_ready2__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_data_out_ready2__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_data_out_ready2__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
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
      CEP => '0',
      CLK => '0',
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_data_out_ready2__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => \NLW_data_out_ready2__0_OVERFLOW_UNCONNECTED\,
      P(47) => \data_out_ready2__0_n_58\,
      P(46) => \data_out_ready2__0_n_59\,
      P(45) => \data_out_ready2__0_n_60\,
      P(44) => \data_out_ready2__0_n_61\,
      P(43) => \data_out_ready2__0_n_62\,
      P(42) => \data_out_ready2__0_n_63\,
      P(41) => \data_out_ready2__0_n_64\,
      P(40) => \data_out_ready2__0_n_65\,
      P(39) => \data_out_ready2__0_n_66\,
      P(38) => \data_out_ready2__0_n_67\,
      P(37) => \data_out_ready2__0_n_68\,
      P(36) => \data_out_ready2__0_n_69\,
      P(35) => \data_out_ready2__0_n_70\,
      P(34) => \data_out_ready2__0_n_71\,
      P(33) => \data_out_ready2__0_n_72\,
      P(32) => \data_out_ready2__0_n_73\,
      P(31) => \data_out_ready2__0_n_74\,
      P(30) => \data_out_ready2__0_n_75\,
      P(29) => \data_out_ready2__0_n_76\,
      P(28) => \data_out_ready2__0_n_77\,
      P(27) => \data_out_ready2__0_n_78\,
      P(26) => \data_out_ready2__0_n_79\,
      P(25) => \data_out_ready2__0_n_80\,
      P(24) => \data_out_ready2__0_n_81\,
      P(23) => \data_out_ready2__0_n_82\,
      P(22) => \data_out_ready2__0_n_83\,
      P(21) => \data_out_ready2__0_n_84\,
      P(20) => \data_out_ready2__0_n_85\,
      P(19) => \data_out_ready2__0_n_86\,
      P(18) => \data_out_ready2__0_n_87\,
      P(17) => \data_out_ready2__0_n_88\,
      P(16) => \data_out_ready2__0_n_89\,
      P(15) => \data_out_ready2__0_n_90\,
      P(14) => \data_out_ready2__0_n_91\,
      P(13) => \data_out_ready2__0_n_92\,
      P(12) => \data_out_ready2__0_n_93\,
      P(11) => \data_out_ready2__0_n_94\,
      P(10) => \data_out_ready2__0_n_95\,
      P(9) => \data_out_ready2__0_n_96\,
      P(8) => \data_out_ready2__0_n_97\,
      P(7) => \data_out_ready2__0_n_98\,
      P(6) => \data_out_ready2__0_n_99\,
      P(5) => \data_out_ready2__0_n_100\,
      P(4) => \data_out_ready2__0_n_101\,
      P(3) => \data_out_ready2__0_n_102\,
      P(2) => \data_out_ready2__0_n_103\,
      P(1) => \data_out_ready2__0_n_104\,
      P(0) => \data_out_ready2__0_n_105\,
      PATTERNBDETECT => \NLW_data_out_ready2__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_data_out_ready2__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \data_out_ready2__0_n_106\,
      PCOUT(46) => \data_out_ready2__0_n_107\,
      PCOUT(45) => \data_out_ready2__0_n_108\,
      PCOUT(44) => \data_out_ready2__0_n_109\,
      PCOUT(43) => \data_out_ready2__0_n_110\,
      PCOUT(42) => \data_out_ready2__0_n_111\,
      PCOUT(41) => \data_out_ready2__0_n_112\,
      PCOUT(40) => \data_out_ready2__0_n_113\,
      PCOUT(39) => \data_out_ready2__0_n_114\,
      PCOUT(38) => \data_out_ready2__0_n_115\,
      PCOUT(37) => \data_out_ready2__0_n_116\,
      PCOUT(36) => \data_out_ready2__0_n_117\,
      PCOUT(35) => \data_out_ready2__0_n_118\,
      PCOUT(34) => \data_out_ready2__0_n_119\,
      PCOUT(33) => \data_out_ready2__0_n_120\,
      PCOUT(32) => \data_out_ready2__0_n_121\,
      PCOUT(31) => \data_out_ready2__0_n_122\,
      PCOUT(30) => \data_out_ready2__0_n_123\,
      PCOUT(29) => \data_out_ready2__0_n_124\,
      PCOUT(28) => \data_out_ready2__0_n_125\,
      PCOUT(27) => \data_out_ready2__0_n_126\,
      PCOUT(26) => \data_out_ready2__0_n_127\,
      PCOUT(25) => \data_out_ready2__0_n_128\,
      PCOUT(24) => \data_out_ready2__0_n_129\,
      PCOUT(23) => \data_out_ready2__0_n_130\,
      PCOUT(22) => \data_out_ready2__0_n_131\,
      PCOUT(21) => \data_out_ready2__0_n_132\,
      PCOUT(20) => \data_out_ready2__0_n_133\,
      PCOUT(19) => \data_out_ready2__0_n_134\,
      PCOUT(18) => \data_out_ready2__0_n_135\,
      PCOUT(17) => \data_out_ready2__0_n_136\,
      PCOUT(16) => \data_out_ready2__0_n_137\,
      PCOUT(15) => \data_out_ready2__0_n_138\,
      PCOUT(14) => \data_out_ready2__0_n_139\,
      PCOUT(13) => \data_out_ready2__0_n_140\,
      PCOUT(12) => \data_out_ready2__0_n_141\,
      PCOUT(11) => \data_out_ready2__0_n_142\,
      PCOUT(10) => \data_out_ready2__0_n_143\,
      PCOUT(9) => \data_out_ready2__0_n_144\,
      PCOUT(8) => \data_out_ready2__0_n_145\,
      PCOUT(7) => \data_out_ready2__0_n_146\,
      PCOUT(6) => \data_out_ready2__0_n_147\,
      PCOUT(5) => \data_out_ready2__0_n_148\,
      PCOUT(4) => \data_out_ready2__0_n_149\,
      PCOUT(3) => \data_out_ready2__0_n_150\,
      PCOUT(2) => \data_out_ready2__0_n_151\,
      PCOUT(1) => \data_out_ready2__0_n_152\,
      PCOUT(0) => \data_out_ready2__0_n_153\,
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
      UNDERFLOW => \NLW_data_out_ready2__0_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_data_out_ready2__0_XOROUT_UNCONNECTED\(7 downto 0)
    );
\data_out_ready2__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => code_rate(0),
      I1 => code_rate(1),
      O => \data_out_ready2__0_i_1_n_0\
    );
\data_out_ready2__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => code_rate(1),
      O => \data_out_ready2__0_i_2_n_0\
    );
\data_out_ready2__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => code_rate(1),
      I1 => code_rate(0),
      O => sel_code(0)
    );
\data_out_ready2__1\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
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
      PREG => 0,
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
      A(29 downto 4) => B"00000000000000000000000000",
      A(3) => code_rate(1),
      A(2) => \data_out_ready2__0_i_1_n_0\,
      A(1) => \data_out_ready2__0_i_2_n_0\,
      A(0) => sel_code(0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_data_out_ready2__1_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000000000000",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_data_out_ready2__1_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_data_out_ready2__1_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_data_out_ready2__1_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
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
      CEP => '0',
      CLK => '0',
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_data_out_ready2__1_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"001010101",
      OVERFLOW => \NLW_data_out_ready2__1_OVERFLOW_UNCONNECTED\,
      P(47) => \data_out_ready2__1_n_58\,
      P(46) => \data_out_ready2__1_n_59\,
      P(45) => \data_out_ready2__1_n_60\,
      P(44) => \data_out_ready2__1_n_61\,
      P(43) => \data_out_ready2__1_n_62\,
      P(42) => \data_out_ready2__1_n_63\,
      P(41) => \data_out_ready2__1_n_64\,
      P(40) => \data_out_ready2__1_n_65\,
      P(39) => \data_out_ready2__1_n_66\,
      P(38) => \data_out_ready2__1_n_67\,
      P(37) => \data_out_ready2__1_n_68\,
      P(36) => \data_out_ready2__1_n_69\,
      P(35) => \data_out_ready2__1_n_70\,
      P(34) => \data_out_ready2__1_n_71\,
      P(33) => \data_out_ready2__1_n_72\,
      P(32) => \data_out_ready2__1_n_73\,
      P(31) => \data_out_ready2__1_n_74\,
      P(30) => \data_out_ready2__1_n_75\,
      P(29) => \data_out_ready2__1_n_76\,
      P(28) => \data_out_ready2__1_n_77\,
      P(27) => \data_out_ready2__1_n_78\,
      P(26) => \data_out_ready2__1_n_79\,
      P(25) => \data_out_ready2__1_n_80\,
      P(24) => \data_out_ready2__1_n_81\,
      P(23) => \data_out_ready2__1_n_82\,
      P(22) => \data_out_ready2__1_n_83\,
      P(21) => \data_out_ready2__1_n_84\,
      P(20) => \data_out_ready2__1_n_85\,
      P(19) => \data_out_ready2__1_n_86\,
      P(18) => \data_out_ready2__1_n_87\,
      P(17) => \data_out_ready2__1_n_88\,
      P(16) => \data_out_ready2__1_n_89\,
      P(15) => \data_out_ready2__1_n_90\,
      P(14) => \data_out_ready2__1_n_91\,
      P(13) => \data_out_ready2__1_n_92\,
      P(12) => \data_out_ready2__1_n_93\,
      P(11) => \data_out_ready2__1_n_94\,
      P(10) => \data_out_ready2__1_n_95\,
      P(9) => \data_out_ready2__1_n_96\,
      P(8) => \data_out_ready2__1_n_97\,
      P(7) => \data_out_ready2__1_n_98\,
      P(6) => \data_out_ready2__1_n_99\,
      P(5) => \data_out_ready2__1_n_100\,
      P(4) => \data_out_ready2__1_n_101\,
      P(3) => \data_out_ready2__1_n_102\,
      P(2) => \data_out_ready2__1_n_103\,
      P(1) => \data_out_ready2__1_n_104\,
      P(0) => \data_out_ready2__1_n_105\,
      PATTERNBDETECT => \NLW_data_out_ready2__1_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_data_out_ready2__1_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \data_out_ready2__0_n_106\,
      PCIN(46) => \data_out_ready2__0_n_107\,
      PCIN(45) => \data_out_ready2__0_n_108\,
      PCIN(44) => \data_out_ready2__0_n_109\,
      PCIN(43) => \data_out_ready2__0_n_110\,
      PCIN(42) => \data_out_ready2__0_n_111\,
      PCIN(41) => \data_out_ready2__0_n_112\,
      PCIN(40) => \data_out_ready2__0_n_113\,
      PCIN(39) => \data_out_ready2__0_n_114\,
      PCIN(38) => \data_out_ready2__0_n_115\,
      PCIN(37) => \data_out_ready2__0_n_116\,
      PCIN(36) => \data_out_ready2__0_n_117\,
      PCIN(35) => \data_out_ready2__0_n_118\,
      PCIN(34) => \data_out_ready2__0_n_119\,
      PCIN(33) => \data_out_ready2__0_n_120\,
      PCIN(32) => \data_out_ready2__0_n_121\,
      PCIN(31) => \data_out_ready2__0_n_122\,
      PCIN(30) => \data_out_ready2__0_n_123\,
      PCIN(29) => \data_out_ready2__0_n_124\,
      PCIN(28) => \data_out_ready2__0_n_125\,
      PCIN(27) => \data_out_ready2__0_n_126\,
      PCIN(26) => \data_out_ready2__0_n_127\,
      PCIN(25) => \data_out_ready2__0_n_128\,
      PCIN(24) => \data_out_ready2__0_n_129\,
      PCIN(23) => \data_out_ready2__0_n_130\,
      PCIN(22) => \data_out_ready2__0_n_131\,
      PCIN(21) => \data_out_ready2__0_n_132\,
      PCIN(20) => \data_out_ready2__0_n_133\,
      PCIN(19) => \data_out_ready2__0_n_134\,
      PCIN(18) => \data_out_ready2__0_n_135\,
      PCIN(17) => \data_out_ready2__0_n_136\,
      PCIN(16) => \data_out_ready2__0_n_137\,
      PCIN(15) => \data_out_ready2__0_n_138\,
      PCIN(14) => \data_out_ready2__0_n_139\,
      PCIN(13) => \data_out_ready2__0_n_140\,
      PCIN(12) => \data_out_ready2__0_n_141\,
      PCIN(11) => \data_out_ready2__0_n_142\,
      PCIN(10) => \data_out_ready2__0_n_143\,
      PCIN(9) => \data_out_ready2__0_n_144\,
      PCIN(8) => \data_out_ready2__0_n_145\,
      PCIN(7) => \data_out_ready2__0_n_146\,
      PCIN(6) => \data_out_ready2__0_n_147\,
      PCIN(5) => \data_out_ready2__0_n_148\,
      PCIN(4) => \data_out_ready2__0_n_149\,
      PCIN(3) => \data_out_ready2__0_n_150\,
      PCIN(2) => \data_out_ready2__0_n_151\,
      PCIN(1) => \data_out_ready2__0_n_152\,
      PCIN(0) => \data_out_ready2__0_n_153\,
      PCOUT(47 downto 0) => \NLW_data_out_ready2__1_PCOUT_UNCONNECTED\(47 downto 0),
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
      UNDERFLOW => \NLW_data_out_ready2__1_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_data_out_ready2__1_XOROUT_UNCONNECTED\(7 downto 0)
    );
data_out_ready2_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => data_out_ready2_carry_n_0,
      CO(6) => data_out_ready2_carry_n_1,
      CO(5) => data_out_ready2_carry_n_2,
      CO(4) => data_out_ready2_carry_n_3,
      CO(3) => data_out_ready2_carry_n_4,
      CO(2) => data_out_ready2_carry_n_5,
      CO(1) => data_out_ready2_carry_n_6,
      CO(0) => data_out_ready2_carry_n_7,
      DI(7) => \data_out_ready2__1_n_99\,
      DI(6) => \data_out_ready2__1_n_100\,
      DI(5) => \data_out_ready2__1_n_101\,
      DI(4) => \data_out_ready2__1_n_102\,
      DI(3) => \data_out_ready2__1_n_103\,
      DI(2) => \data_out_ready2__1_n_104\,
      DI(1) => \data_out_ready2__1_n_105\,
      DI(0) => '0',
      O(7) => data_out_ready2_carry_n_8,
      O(6) => data_out_ready2_carry_n_9,
      O(5) => data_out_ready2_carry_n_10,
      O(4) => data_out_ready2_carry_n_11,
      O(3) => data_out_ready2_carry_n_12,
      O(2) => data_out_ready2_carry_n_13,
      O(1) => data_out_ready2_carry_n_14,
      O(0) => data_out_ready2_carry_n_15,
      S(7) => data_out_ready2_carry_i_1_n_0,
      S(6) => data_out_ready2_carry_i_2_n_0,
      S(5) => data_out_ready2_carry_i_3_n_0,
      S(4) => data_out_ready2_carry_i_4_n_0,
      S(3) => data_out_ready2_carry_i_5_n_0,
      S(2) => data_out_ready2_carry_i_6_n_0,
      S(1) => data_out_ready2_carry_i_7_n_0,
      S(0) => \data_out_ready2__0_n_89\
    );
\data_out_ready2_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => data_out_ready2_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_data_out_ready2_carry__0_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \data_out_ready2_carry__0_n_2\,
      CO(4) => \data_out_ready2_carry__0_n_3\,
      CO(3) => \data_out_ready2_carry__0_n_4\,
      CO(2) => \data_out_ready2_carry__0_n_5\,
      CO(1) => \data_out_ready2_carry__0_n_6\,
      CO(0) => \data_out_ready2_carry__0_n_7\,
      DI(7 downto 6) => B"00",
      DI(5) => \data_out_ready2__1_n_93\,
      DI(4) => \data_out_ready2__1_n_94\,
      DI(3) => \data_out_ready2__1_n_95\,
      DI(2) => \data_out_ready2__1_n_96\,
      DI(1) => \data_out_ready2__1_n_97\,
      DI(0) => \data_out_ready2__1_n_98\,
      O(7) => \NLW_data_out_ready2_carry__0_O_UNCONNECTED\(7),
      O(6) => \data_out_ready2_carry__0_n_9\,
      O(5) => \data_out_ready2_carry__0_n_10\,
      O(4) => \data_out_ready2_carry__0_n_11\,
      O(3) => \data_out_ready2_carry__0_n_12\,
      O(2) => \data_out_ready2_carry__0_n_13\,
      O(1) => \data_out_ready2_carry__0_n_14\,
      O(0) => \data_out_ready2_carry__0_n_15\,
      S(7) => '0',
      S(6) => \data_out_ready2_carry__0_i_1_n_0\,
      S(5) => \data_out_ready2_carry__0_i_2_n_0\,
      S(4) => \data_out_ready2_carry__0_i_3_n_0\,
      S(3) => \data_out_ready2_carry__0_i_4_n_0\,
      S(2) => \data_out_ready2_carry__0_i_5_n_0\,
      S(1) => \data_out_ready2_carry__0_i_6_n_0\,
      S(0) => \data_out_ready2_carry__0_i_7_n_0\
    );
\data_out_ready2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_out_ready2__1_n_92\,
      I1 => data_out_ready2_n_92,
      O => \data_out_ready2_carry__0_i_1_n_0\
    );
\data_out_ready2_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_out_ready2__1_n_93\,
      I1 => data_out_ready2_n_93,
      O => \data_out_ready2_carry__0_i_2_n_0\
    );
\data_out_ready2_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_out_ready2__1_n_94\,
      I1 => data_out_ready2_n_94,
      O => \data_out_ready2_carry__0_i_3_n_0\
    );
\data_out_ready2_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_out_ready2__1_n_95\,
      I1 => data_out_ready2_n_95,
      O => \data_out_ready2_carry__0_i_4_n_0\
    );
\data_out_ready2_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_out_ready2__1_n_96\,
      I1 => data_out_ready2_n_96,
      O => \data_out_ready2_carry__0_i_5_n_0\
    );
\data_out_ready2_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_out_ready2__1_n_97\,
      I1 => data_out_ready2_n_97,
      O => \data_out_ready2_carry__0_i_6_n_0\
    );
\data_out_ready2_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_out_ready2__1_n_98\,
      I1 => data_out_ready2_n_98,
      O => \data_out_ready2_carry__0_i_7_n_0\
    );
data_out_ready2_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_out_ready2__1_n_99\,
      I1 => data_out_ready2_n_99,
      O => data_out_ready2_carry_i_1_n_0
    );
data_out_ready2_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_out_ready2__1_n_100\,
      I1 => data_out_ready2_n_100,
      O => data_out_ready2_carry_i_2_n_0
    );
data_out_ready2_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_out_ready2__1_n_101\,
      I1 => data_out_ready2_n_101,
      O => data_out_ready2_carry_i_3_n_0
    );
data_out_ready2_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_out_ready2__1_n_102\,
      I1 => data_out_ready2_n_102,
      O => data_out_ready2_carry_i_4_n_0
    );
data_out_ready2_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_out_ready2__1_n_103\,
      I1 => data_out_ready2_n_103,
      O => data_out_ready2_carry_i_5_n_0
    );
data_out_ready2_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_out_ready2__1_n_104\,
      I1 => data_out_ready2_n_104,
      O => data_out_ready2_carry_i_6_n_0
    );
data_out_ready2_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \data_out_ready2__1_n_105\,
      I1 => data_out_ready2_n_105,
      O => data_out_ready2_carry_i_7_n_0
    );
\data_out_ready2_inferred__0/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \data_out_ready2_inferred__0/i__carry_n_0\,
      CO(6) => \data_out_ready2_inferred__0/i__carry_n_1\,
      CO(5) => \data_out_ready2_inferred__0/i__carry_n_2\,
      CO(4) => \data_out_ready2_inferred__0/i__carry_n_3\,
      CO(3) => \data_out_ready2_inferred__0/i__carry_n_4\,
      CO(2) => \data_out_ready2_inferred__0/i__carry_n_5\,
      CO(1) => \data_out_ready2_inferred__0/i__carry_n_6\,
      CO(0) => \data_out_ready2_inferred__0/i__carry_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_data_out_ready2_inferred__0/i__carry_O_UNCONNECTED\(7 downto 0),
      S(7) => \i__carry_i_1_n_4\,
      S(6) => \i__carry_i_1_n_4\,
      S(5) => \i__carry_i_1_n_4\,
      S(4) => \i__carry_i_1_n_4\,
      S(3) => \i__carry_i_1_n_4\,
      S(2) => \i__carry_i_1_n_4\,
      S(1) => \i__carry_i_2_n_0\,
      S(0) => \i__carry_i_3_n_0\
    );
\data_out_ready2_inferred__0/i__carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \data_out_ready2_inferred__0/i__carry_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_data_out_ready2_inferred__0/i__carry__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \data_out_ready2__3\,
      CO(1) => \data_out_ready2_inferred__0/i__carry__0_n_6\,
      CO(0) => \data_out_ready2_inferred__0/i__carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_data_out_ready2_inferred__0/i__carry__0_O_UNCONNECTED\(7 downto 0),
      S(7 downto 3) => B"00000",
      S(2) => \i__carry_i_1_n_4\,
      S(1) => \i__carry_i_1_n_4\,
      S(0) => \i__carry_i_1_n_4\
    );
data_out_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAEFEAEAEAE0"
    )
        port map (
      I0 => data_out_ready_i_2_n_0,
      I1 => data_in_ready,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => data_out_ready_i_3_n_0,
      I4 => data_out_ready_i_4_n_0,
      I5 => \^data_out_ready\,
      O => data_out_ready_i_1_n_0
    );
data_out_ready_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => write_en,
      O => data_out_ready_i_2_n_0
    );
data_out_ready_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => write_en,
      I1 => memory,
      I2 => data_out_ready0,
      O => data_out_ready_i_3_n_0
    );
data_out_ready_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \data_out[31]_i_1_n_0\,
      I1 => \col_cnt_reg_n_0_[3]\,
      I2 => \col_cnt_reg_n_0_[2]\,
      I3 => \data_out_ready2__3\,
      I4 => write_en,
      I5 => data_out_ready_i_5_n_0,
      O => data_out_ready_i_4_n_0
    );
data_out_ready_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0518"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[0]\,
      I1 => code_rate(0),
      I2 => \col_cnt_reg_n_0_[1]\,
      I3 => code_rate(1),
      O => data_out_ready_i_5_n_0
    );
data_out_ready_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => data_out_ready_i_1_n_0,
      Q => \^data_out_ready\
    );
\data_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(0),
      Q => data_out(0)
    );
\data_out_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(10),
      Q => data_out(10)
    );
\data_out_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(11),
      Q => data_out(11)
    );
\data_out_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(12),
      Q => data_out(12)
    );
\data_out_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(13),
      Q => data_out(13)
    );
\data_out_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(14),
      Q => data_out(14)
    );
\data_out_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(15),
      Q => data_out(15)
    );
\data_out_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(16),
      Q => data_out(16)
    );
\data_out_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(17),
      Q => data_out(17)
    );
\data_out_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(18),
      Q => data_out(18)
    );
\data_out_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(19),
      Q => data_out(19)
    );
\data_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(1),
      Q => data_out(1)
    );
\data_out_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(20),
      Q => data_out(20)
    );
\data_out_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(21),
      Q => data_out(21)
    );
\data_out_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(22),
      Q => data_out(22)
    );
\data_out_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(23),
      Q => data_out(23)
    );
\data_out_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(24),
      Q => data_out(24)
    );
\data_out_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(25),
      Q => data_out(25)
    );
\data_out_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(26),
      Q => data_out(26)
    );
\data_out_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(27),
      Q => data_out(27)
    );
\data_out_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(28),
      Q => data_out(28)
    );
\data_out_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(29),
      Q => data_out(29)
    );
\data_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(2),
      Q => data_out(2)
    );
\data_out_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(30),
      Q => data_out(30)
    );
\data_out_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(31),
      Q => data_out(31)
    );
\data_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(3),
      Q => data_out(3)
    );
\data_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(4),
      Q => data_out(4)
    );
\data_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(5),
      Q => data_out(5)
    );
\data_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(6),
      Q => data_out(6)
    );
\data_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(7),
      Q => data_out(7)
    );
\data_out_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(8),
      Q => data_out(8)
    );
\data_out_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => p_1_out(9),
      Q => data_out(9)
    );
\i__carry_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => sel_code(0),
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_i__carry_i_1_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \i__carry_i_1_n_4\,
      CO(2) => \NLW_i__carry_i_1_CO_UNCONNECTED\(2),
      CO(1) => \i__carry_i_1_n_6\,
      CO(0) => \i__carry_i_1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2) => \i__carry_i_4_n_0\,
      DI(1) => \i__carry_i_5_n_0\,
      DI(0) => \i__carry_i_6_n_0\,
      O(7 downto 3) => \NLW_i__carry_i_1_O_UNCONNECTED\(7 downto 3),
      O(2) => \i__carry_i_1_n_13\,
      O(1) => \i__carry_i_1_n_14\,
      O(0) => \i__carry_i_1_n_15\,
      S(7 downto 3) => B"00001",
      S(2) => \i__carry_i_7_n_0\,
      S(1) => \i__carry_i_8_n_0\,
      S(0) => \i__carry_i_9_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \i__carry_i_1_n_4\,
      I1 => \row_cnt_reg_n_0_[3]\,
      I2 => \i__carry_i_1_n_13\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900990090000"
    )
        port map (
      I0 => \i__carry_i_1_n_14\,
      I1 => \row_cnt_reg_n_0_[2]\,
      I2 => \i__carry_i_1_n_15\,
      I3 => \row_cnt_reg_n_0_[1]\,
      I4 => \row_cnt_reg_n_0_[0]\,
      I5 => sel_code(0),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => code_rate(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => code_rate(0),
      I1 => code_rate(1),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => code_rate(1),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => code_rate(1),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => code_rate(1),
      I1 => code_rate(0),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => code_rate(1),
      O => \i__carry_i_9_n_0\
    );
memory_reg_0_63_0_6: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRB(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRC(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRD(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRE(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRF(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRG(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRH(5 downto 0) => write_addr(5 downto 0),
      DIA => data_in(0),
      DIB => data_in(1),
      DIC => data_in(2),
      DID => data_in(3),
      DIE => data_in(4),
      DIF => data_in(5),
      DIG => data_in(6),
      DIH => '0',
      DOA => p_1_out(0),
      DOB => p_1_out(1),
      DOC => p_1_out(2),
      DOD => p_1_out(3),
      DOE => p_1_out(4),
      DOF => p_1_out(5),
      DOG => p_1_out(6),
      DOH => NLW_memory_reg_0_63_0_6_DOH_UNCONNECTED,
      WCLK => clk,
      WE => p_0_in
    );
memory_reg_0_63_0_6_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => write_en,
      I1 => rst,
      I2 => memory,
      O => p_0_in
    );
memory_reg_0_63_14_20: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRB(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRC(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRD(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRE(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRF(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRG(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRH(5 downto 0) => write_addr(5 downto 0),
      DIA => data_in(14),
      DIB => data_in(15),
      DIC => data_in(16),
      DID => data_in(17),
      DIE => data_in(18),
      DIF => data_in(19),
      DIG => data_in(20),
      DIH => '0',
      DOA => p_1_out(14),
      DOB => p_1_out(15),
      DOC => p_1_out(16),
      DOD => p_1_out(17),
      DOE => p_1_out(18),
      DOF => p_1_out(19),
      DOG => p_1_out(20),
      DOH => NLW_memory_reg_0_63_14_20_DOH_UNCONNECTED,
      WCLK => clk,
      WE => p_0_in
    );
memory_reg_0_63_21_27: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRB(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRC(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRD(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRE(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRF(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRG(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRH(5 downto 0) => write_addr(5 downto 0),
      DIA => data_in(21),
      DIB => data_in(22),
      DIC => data_in(23),
      DID => data_in(24),
      DIE => data_in(25),
      DIF => data_in(26),
      DIG => data_in(27),
      DIH => '0',
      DOA => p_1_out(21),
      DOB => p_1_out(22),
      DOC => p_1_out(23),
      DOD => p_1_out(24),
      DOE => p_1_out(25),
      DOF => p_1_out(26),
      DOG => p_1_out(27),
      DOH => NLW_memory_reg_0_63_21_27_DOH_UNCONNECTED,
      WCLK => clk,
      WE => p_0_in
    );
memory_reg_0_63_28_31: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRB(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRC(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRD(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRE(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRF(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRG(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRH(5 downto 0) => write_addr(5 downto 0),
      DIA => data_in(28),
      DIB => data_in(29),
      DIC => data_in(30),
      DID => data_in(31),
      DIE => '0',
      DIF => '0',
      DIG => '0',
      DIH => '0',
      DOA => p_1_out(28),
      DOB => p_1_out(29),
      DOC => p_1_out(30),
      DOD => p_1_out(31),
      DOE => NLW_memory_reg_0_63_28_31_DOE_UNCONNECTED,
      DOF => NLW_memory_reg_0_63_28_31_DOF_UNCONNECTED,
      DOG => NLW_memory_reg_0_63_28_31_DOG_UNCONNECTED,
      DOH => NLW_memory_reg_0_63_28_31_DOH_UNCONNECTED,
      WCLK => clk,
      WE => p_0_in
    );
memory_reg_0_63_7_13: unisim.vcomponents.RAM64M8
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRB(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRC(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRD(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRE(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRF(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRG(5 downto 0) => read_addr_reg(5 downto 0),
      ADDRH(5 downto 0) => write_addr(5 downto 0),
      DIA => data_in(7),
      DIB => data_in(8),
      DIC => data_in(9),
      DID => data_in(10),
      DIE => data_in(11),
      DIF => data_in(12),
      DIG => data_in(13),
      DIH => '0',
      DOA => p_1_out(7),
      DOB => p_1_out(8),
      DOC => p_1_out(9),
      DOD => p_1_out(10),
      DOE => p_1_out(11),
      DOF => p_1_out(12),
      DOG => p_1_out(13),
      DOH => NLW_memory_reg_0_63_7_13_DOH_UNCONNECTED,
      WCLK => clk,
      WE => p_0_in
    );
\read_addr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"380B"
    )
        port map (
      I0 => \read_addr[0]_i_2_n_0\,
      I1 => \data_out_ready2__3\,
      I2 => \col_cnt_reg_n_0_[0]\,
      I3 => \row_cnt_reg_n_0_[0]\,
      O => \read_addr[0]_i_1_n_0\
    );
\read_addr[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFDDFDF"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[2]\,
      I1 => \col_cnt_reg_n_0_[3]\,
      I2 => code_rate(1),
      I3 => code_rate(0),
      I4 => \col_cnt_reg_n_0_[1]\,
      O => \read_addr[0]_i_2_n_0\
    );
\read_addr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B080B3880B3B083"
    )
        port map (
      I0 => \read_addr[3]_i_2_n_0\,
      I1 => \data_out_ready2__3\,
      I2 => \col_cnt_reg_n_0_[0]\,
      I3 => \row_cnt_reg_n_0_[1]\,
      I4 => \row_cnt_reg_n_0_[0]\,
      I5 => \col_cnt_reg_n_0_[1]\,
      O => \read_addr[1]_i_1_n_0\
    );
\read_addr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888FFFF28880000"
    )
        port map (
      I0 => \read_addr[3]_i_2_n_0\,
      I1 => \col_cnt_reg_n_0_[2]\,
      I2 => \col_cnt_reg_n_0_[0]\,
      I3 => \col_cnt_reg_n_0_[1]\,
      I4 => \data_out_ready2__3\,
      I5 => \p_1_out__0\(2),
      O => \read_addr[2]_i_1_n_0\
    );
\read_addr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0785A1E0F87A5E1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[1]\,
      I1 => \col_cnt_reg_n_0_[0]\,
      I2 => \row_cnt_reg_n_0_[2]\,
      I3 => \row_cnt_reg_n_0_[0]\,
      I4 => \row_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[2]\,
      O => \p_1_out__0\(2)
    );
\read_addr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808F8F808F80808F"
    )
        port map (
      I0 => \read_addr[3]_i_2_n_0\,
      I1 => \read_addr[3]_i_3_n_0\,
      I2 => \data_out_ready2__3\,
      I3 => \read_addr[3]_i_4_n_0\,
      I4 => \read_addr[3]_i_5_n_0\,
      I5 => \col_cnt_reg_n_0_[3]\,
      O => \read_addr[3]_i_1_n_0\
    );
\read_addr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFEFBFEFFF"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[3]\,
      I1 => \col_cnt_reg_n_0_[0]\,
      I2 => \col_cnt_reg_n_0_[2]\,
      I3 => code_rate(1),
      I4 => code_rate(0),
      I5 => \col_cnt_reg_n_0_[1]\,
      O => \read_addr[3]_i_2_n_0\
    );
\read_addr[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[0]\,
      I1 => \col_cnt_reg_n_0_[1]\,
      I2 => \col_cnt_reg_n_0_[2]\,
      I3 => \col_cnt_reg_n_0_[3]\,
      O => \read_addr[3]_i_3_n_0\
    );
\read_addr[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2ABF22BB02AB00AA"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[2]\,
      I1 => \row_cnt_reg_n_0_[1]\,
      I2 => \row_cnt_reg_n_0_[0]\,
      I3 => \row_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[0]\,
      I5 => \col_cnt_reg_n_0_[1]\,
      O => \read_addr[3]_i_4_n_0\
    );
\read_addr[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \row_cnt_reg_n_0_[0]\,
      I1 => \row_cnt_reg_n_0_[3]\,
      O => \read_addr[3]_i_5_n_0\
    );
\read_addr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008FA5705A"
    )
        port map (
      I0 => \row_cnt_reg_n_0_[3]\,
      I1 => \row_cnt_reg_n_0_[2]\,
      I2 => \row_cnt_reg_n_0_[1]\,
      I3 => \row_cnt_reg_n_0_[0]\,
      I4 => \read_addr[5]_i_2_n_0\,
      I5 => \data_out_ready2__3\,
      O => \read_addr[4]_i_1_n_0\
    );
\read_addr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000039CC4CC6"
    )
        port map (
      I0 => \row_cnt_reg_n_0_[3]\,
      I1 => \row_cnt_reg_n_0_[2]\,
      I2 => \row_cnt_reg_n_0_[0]\,
      I3 => \row_cnt_reg_n_0_[1]\,
      I4 => \read_addr[5]_i_2_n_0\,
      I5 => \data_out_ready2__3\,
      O => \read_addr[5]_i_1_n_0\
    );
\read_addr[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FD40F4"
    )
        port map (
      I0 => \row_cnt_reg_n_0_[2]\,
      I1 => \read_addr[5]_i_3_n_0\,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \read_addr[3]_i_5_n_0\,
      I4 => \col_cnt_reg_n_0_[2]\,
      O => \read_addr[5]_i_2_n_0\
    );
\read_addr[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3B02"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[0]\,
      I1 => \row_cnt_reg_n_0_[1]\,
      I2 => \row_cnt_reg_n_0_[0]\,
      I3 => \col_cnt_reg_n_0_[1]\,
      O => \read_addr[5]_i_3_n_0\
    );
\read_addr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => \read_addr[0]_i_1_n_0\,
      Q => read_addr_reg(0)
    );
\read_addr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => \read_addr[1]_i_1_n_0\,
      Q => read_addr_reg(1)
    );
\read_addr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => \read_addr[2]_i_1_n_0\,
      Q => read_addr_reg(2)
    );
\read_addr_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => \read_addr[3]_i_1_n_0\,
      Q => read_addr_reg(3)
    );
\read_addr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => \read_addr[4]_i_1_n_0\,
      Q => read_addr_reg(4)
    );
\read_addr_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => \read_addr[5]_i_1_n_0\,
      Q => read_addr_reg(5)
    );
read_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA3FAA00AA00"
    )
        port map (
      I0 => data_in_ready,
      I1 => memory,
      I2 => write_en,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \^read_valid\,
      O => read_valid_i_1_n_0
    );
read_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => read_valid_i_1_n_0,
      Q => \^read_valid\
    );
\row_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \row_cnt_reg_n_0_[0]\,
      I1 => \data_out_ready2__3\,
      O => \row_cnt[0]_i_1_n_0\
    );
\row_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \row_cnt_reg_n_0_[1]\,
      I1 => \row_cnt_reg_n_0_[0]\,
      I2 => \data_out_ready2__3\,
      O => \row_cnt[1]_i_1_n_0\
    );
\row_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \row_cnt_reg_n_0_[2]\,
      I1 => \row_cnt_reg_n_0_[0]\,
      I2 => \row_cnt_reg_n_0_[1]\,
      I3 => \data_out_ready2__3\,
      O => \row_cnt[2]_i_1_n_0\
    );
\row_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \row_cnt_reg_n_0_[3]\,
      I1 => \row_cnt_reg_n_0_[2]\,
      I2 => \row_cnt_reg_n_0_[1]\,
      I3 => \row_cnt_reg_n_0_[0]\,
      I4 => \data_out_ready2__3\,
      O => \row_cnt[3]_i_1_n_0\
    );
\row_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => \row_cnt[0]_i_1_n_0\,
      Q => \row_cnt_reg_n_0_[0]\
    );
\row_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => \row_cnt[1]_i_1_n_0\,
      Q => \row_cnt_reg_n_0_[1]\
    );
\row_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => \row_cnt[2]_i_1_n_0\,
      Q => \row_cnt_reg_n_0_[2]\
    );
\row_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => rst,
      D => \row_cnt[3]_i_1_n_0\,
      Q => \row_cnt_reg_n_0_[3]\
    );
\write_addr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_addr(0),
      I1 => data_out_ready0,
      O => \write_addr[0]_i_1_n_0\
    );
\write_addr[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => write_addr(10),
      I1 => write_addr(9),
      I2 => write_addr(8),
      I3 => \write_addr[11]_i_3_n_0\,
      I4 => data_out_ready0,
      O => \write_addr[10]_i_1_n_0\
    );
\write_addr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => memory,
      I1 => write_en,
      O => \write_addr__0\
    );
\write_addr[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => write_addr(11),
      I1 => write_addr(8),
      I2 => write_addr(9),
      I3 => write_addr(10),
      I4 => \write_addr[11]_i_3_n_0\,
      I5 => data_out_ready0,
      O => \write_addr[11]_i_2_n_0\
    );
\write_addr[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => write_addr(6),
      I1 => \write_addr[7]_i_2_n_0\,
      I2 => write_addr(7),
      O => \write_addr[11]_i_3_n_0\
    );
\write_addr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => write_addr(1),
      I1 => write_addr(0),
      I2 => data_out_ready0,
      O => \write_addr[1]_i_1_n_0\
    );
\write_addr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => write_addr(2),
      I1 => write_addr(0),
      I2 => write_addr(1),
      I3 => data_out_ready0,
      O => \write_addr[2]_i_1_n_0\
    );
\write_addr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => write_addr(3),
      I1 => write_addr(1),
      I2 => write_addr(0),
      I3 => write_addr(2),
      I4 => data_out_ready0,
      O => \write_addr[3]_i_1_n_0\
    );
\write_addr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => write_addr(4),
      I1 => write_addr(2),
      I2 => write_addr(0),
      I3 => write_addr(1),
      I4 => write_addr(3),
      I5 => data_out_ready0,
      O => \write_addr[4]_i_1_n_0\
    );
\write_addr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => write_addr(5),
      I1 => \write_addr[5]_i_2_n_0\,
      I2 => data_out_ready0,
      O => \write_addr[5]_i_1_n_0\
    );
\write_addr[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => write_addr(3),
      I1 => write_addr(1),
      I2 => write_addr(0),
      I3 => write_addr(2),
      I4 => write_addr(4),
      O => \write_addr[5]_i_2_n_0\
    );
\write_addr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => write_addr(6),
      I1 => \write_addr[7]_i_2_n_0\,
      I2 => data_out_ready0,
      O => \write_addr[6]_i_1_n_0\
    );
\write_addr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => write_addr(7),
      I1 => \write_addr[7]_i_2_n_0\,
      I2 => write_addr(6),
      I3 => data_out_ready0,
      O => \write_addr[7]_i_1_n_0\
    );
\write_addr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => write_addr(4),
      I1 => write_addr(2),
      I2 => write_addr(0),
      I3 => write_addr(1),
      I4 => write_addr(3),
      I5 => write_addr(5),
      O => \write_addr[7]_i_2_n_0\
    );
\write_addr[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => write_addr(8),
      I1 => \write_addr[11]_i_3_n_0\,
      I2 => data_out_ready0,
      O => \write_addr[8]_i_1_n_0\
    );
\write_addr[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => write_addr(9),
      I1 => \write_addr[11]_i_3_n_0\,
      I2 => write_addr(8),
      I3 => data_out_ready0,
      O => \write_addr[9]_i_1_n_0\
    );
\write_addr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \write_addr__0\,
      CLR => rst,
      D => \write_addr[0]_i_1_n_0\,
      Q => write_addr(0)
    );
\write_addr_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \write_addr__0\,
      CLR => rst,
      D => \write_addr[10]_i_1_n_0\,
      Q => write_addr(10)
    );
\write_addr_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \write_addr__0\,
      CLR => rst,
      D => \write_addr[11]_i_2_n_0\,
      Q => write_addr(11)
    );
\write_addr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \write_addr__0\,
      CLR => rst,
      D => \write_addr[1]_i_1_n_0\,
      Q => write_addr(1)
    );
\write_addr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \write_addr__0\,
      CLR => rst,
      D => \write_addr[2]_i_1_n_0\,
      Q => write_addr(2)
    );
\write_addr_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \write_addr__0\,
      CLR => rst,
      D => \write_addr[3]_i_1_n_0\,
      Q => write_addr(3)
    );
\write_addr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \write_addr__0\,
      CLR => rst,
      D => \write_addr[4]_i_1_n_0\,
      Q => write_addr(4)
    );
\write_addr_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \write_addr__0\,
      CLR => rst,
      D => \write_addr[5]_i_1_n_0\,
      Q => write_addr(5)
    );
\write_addr_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \write_addr__0\,
      CLR => rst,
      D => \write_addr[6]_i_1_n_0\,
      Q => write_addr(6)
    );
\write_addr_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \write_addr__0\,
      CLR => rst,
      D => \write_addr[7]_i_1_n_0\,
      Q => write_addr(7)
    );
\write_addr_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \write_addr__0\,
      CLR => rst,
      D => \write_addr[8]_i_1_n_0\,
      Q => write_addr(8)
    );
\write_addr_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \write_addr__0\,
      CLR => rst,
      D => \write_addr[9]_i_1_n_0\,
      Q => write_addr(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_ready : in STD_LOGIC;
    write_en : in STD_LOGIC;
    code_rate : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out_ready : out STD_LOGIC;
    read_valid : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Design_2_block_interleaver_0_0,block_interleaver,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "block_interleaver,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Design_2_clk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_block_interleaver
     port map (
      clk => clk,
      code_rate(1 downto 0) => code_rate(1 downto 0),
      data_in(31 downto 0) => data_in(31 downto 0),
      data_in_ready => data_in_ready,
      data_out(31 downto 0) => data_out(31 downto 0),
      data_out_ready => data_out_ready,
      read_valid => read_valid,
      rst => rst,
      write_en => write_en
    );
end STRUCTURE;
