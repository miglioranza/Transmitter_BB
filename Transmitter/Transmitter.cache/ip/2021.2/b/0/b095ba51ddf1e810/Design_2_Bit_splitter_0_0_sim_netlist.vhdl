-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Tue Mar 18 11:58:19 2025
-- Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_Bit_splitter_0_0_sim_netlist.vhdl
-- Design      : Design_2_Bit_splitter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Bit_splitter is
  port (
    data_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    data_out_valid : out STD_LOGIC;
    data_out_ready : out STD_LOGIC;
    mod_type : in STD_LOGIC_VECTOR ( 2 downto 0 );
    data_in_valid : in STD_LOGIC;
    data_in_ready : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Bit_splitter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Bit_splitter is
  signal \data_out1__8_carry_i_1_n_0\ : STD_LOGIC;
  signal \data_out1__8_carry_i_2_n_0\ : STD_LOGIC;
  signal \data_out1__8_carry_i_3_n_0\ : STD_LOGIC;
  signal \data_out1__8_carry_n_12\ : STD_LOGIC;
  signal \data_out1__8_carry_n_13\ : STD_LOGIC;
  signal \data_out1__8_carry_n_14\ : STD_LOGIC;
  signal \data_out1__8_carry_n_15\ : STD_LOGIC;
  signal \data_out1__8_carry_n_5\ : STD_LOGIC;
  signal \data_out1__8_carry_n_6\ : STD_LOGIC;
  signal \data_out1__8_carry_n_7\ : STD_LOGIC;
  signal data_out1_carry_i_1_n_0 : STD_LOGIC;
  signal data_out1_carry_i_2_n_0 : STD_LOGIC;
  signal data_out1_carry_i_3_n_0 : STD_LOGIC;
  signal data_out1_carry_n_12 : STD_LOGIC;
  signal data_out1_carry_n_13 : STD_LOGIC;
  signal data_out1_carry_n_14 : STD_LOGIC;
  signal data_out1_carry_n_15 : STD_LOGIC;
  signal data_out1_carry_n_5 : STD_LOGIC;
  signal data_out1_carry_n_6 : STD_LOGIC;
  signal data_out1_carry_n_7 : STD_LOGIC;
  signal \data_out[0]_i_13_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_14_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_21_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_22_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_23_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_24_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_25_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_26_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_27_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_28_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_29_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_30_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_31_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_32_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_9_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_11_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_12_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_13_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_14_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_15_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_16_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_9_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_9_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_10_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_11_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_9_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_10_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_11_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_12_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_13_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_14_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_15_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_16_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_17_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_18_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_19_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_20_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_9_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_10_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_11_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_12_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_13_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_14_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_15_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_16_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_17_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_18_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_19_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_20_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_21_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_22_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_23_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_25_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_26_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_27_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_28_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_29_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_30_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_31_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_32_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_33_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_34_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_35_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_36_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_37_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_38_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_39_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_40_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_42_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_43_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_44_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_45_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_46_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_47_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_48_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_49_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_50_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_51_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_52_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_53_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_54_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_56_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_57_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_58_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_59_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_60_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_61_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_62_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_63_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_64_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_65_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_66_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_67_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_68_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_69_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_70_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_71_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_72_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_73_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_9_n_0\ : STD_LOGIC;
  signal data_out_1 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^data_out_ready\ : STD_LOGIC;
  signal \data_out_ready1__15_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \data_out_ready1__15_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \data_out_ready1__15_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \data_out_ready1__15_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \data_out_ready1__15_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \data_out_ready1__15_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \data_out_ready1__15_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \data_out_ready1__15_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \data_out_ready1__15_carry__0_n_0\ : STD_LOGIC;
  signal \data_out_ready1__15_carry__0_n_1\ : STD_LOGIC;
  signal \data_out_ready1__15_carry__0_n_2\ : STD_LOGIC;
  signal \data_out_ready1__15_carry__0_n_3\ : STD_LOGIC;
  signal \data_out_ready1__15_carry__0_n_4\ : STD_LOGIC;
  signal \data_out_ready1__15_carry__0_n_5\ : STD_LOGIC;
  signal \data_out_ready1__15_carry__0_n_6\ : STD_LOGIC;
  signal \data_out_ready1__15_carry__0_n_7\ : STD_LOGIC;
  signal \data_out_ready1__15_carry_i_10_n_0\ : STD_LOGIC;
  signal \data_out_ready1__15_carry_i_1_n_0\ : STD_LOGIC;
  signal \data_out_ready1__15_carry_i_2_n_0\ : STD_LOGIC;
  signal \data_out_ready1__15_carry_i_3_n_0\ : STD_LOGIC;
  signal \data_out_ready1__15_carry_i_4_n_0\ : STD_LOGIC;
  signal \data_out_ready1__15_carry_i_5_n_0\ : STD_LOGIC;
  signal \data_out_ready1__15_carry_i_6_n_0\ : STD_LOGIC;
  signal \data_out_ready1__15_carry_i_7_n_0\ : STD_LOGIC;
  signal \data_out_ready1__15_carry_i_8_n_0\ : STD_LOGIC;
  signal \data_out_ready1__15_carry_i_9_n_0\ : STD_LOGIC;
  signal \data_out_ready1__15_carry_n_0\ : STD_LOGIC;
  signal \data_out_ready1__15_carry_n_1\ : STD_LOGIC;
  signal \data_out_ready1__15_carry_n_2\ : STD_LOGIC;
  signal \data_out_ready1__15_carry_n_3\ : STD_LOGIC;
  signal \data_out_ready1__15_carry_n_4\ : STD_LOGIC;
  signal \data_out_ready1__15_carry_n_5\ : STD_LOGIC;
  signal \data_out_ready1__15_carry_n_6\ : STD_LOGIC;
  signal \data_out_ready1__15_carry_n_7\ : STD_LOGIC;
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
  signal data_out_ready1_carry_i_10_n_0 : STD_LOGIC;
  signal data_out_ready1_carry_i_11_n_0 : STD_LOGIC;
  signal data_out_ready1_carry_i_1_n_0 : STD_LOGIC;
  signal data_out_ready1_carry_i_2_n_0 : STD_LOGIC;
  signal data_out_ready1_carry_i_3_n_0 : STD_LOGIC;
  signal data_out_ready1_carry_i_4_n_0 : STD_LOGIC;
  signal data_out_ready1_carry_i_5_n_0 : STD_LOGIC;
  signal data_out_ready1_carry_i_6_n_0 : STD_LOGIC;
  signal data_out_ready1_carry_i_7_n_0 : STD_LOGIC;
  signal data_out_ready1_carry_i_8_n_0 : STD_LOGIC;
  signal data_out_ready1_carry_i_9_n_0 : STD_LOGIC;
  signal data_out_ready1_carry_n_0 : STD_LOGIC;
  signal data_out_ready1_carry_n_1 : STD_LOGIC;
  signal data_out_ready1_carry_n_2 : STD_LOGIC;
  signal data_out_ready1_carry_n_3 : STD_LOGIC;
  signal data_out_ready1_carry_n_4 : STD_LOGIC;
  signal data_out_ready1_carry_n_5 : STD_LOGIC;
  signal data_out_ready1_carry_n_6 : STD_LOGIC;
  signal data_out_ready1_carry_n_7 : STD_LOGIC;
  signal data_out_ready_i_10_n_0 : STD_LOGIC;
  signal data_out_ready_i_11_n_0 : STD_LOGIC;
  signal data_out_ready_i_12_n_0 : STD_LOGIC;
  signal data_out_ready_i_13_n_0 : STD_LOGIC;
  signal data_out_ready_i_14_n_0 : STD_LOGIC;
  signal data_out_ready_i_16_n_0 : STD_LOGIC;
  signal data_out_ready_i_17_n_0 : STD_LOGIC;
  signal data_out_ready_i_18_n_0 : STD_LOGIC;
  signal data_out_ready_i_19_n_0 : STD_LOGIC;
  signal data_out_ready_i_1_n_0 : STD_LOGIC;
  signal data_out_ready_i_20_n_0 : STD_LOGIC;
  signal data_out_ready_i_21_n_0 : STD_LOGIC;
  signal data_out_ready_i_22_n_0 : STD_LOGIC;
  signal data_out_ready_i_23_n_0 : STD_LOGIC;
  signal data_out_ready_i_24_n_0 : STD_LOGIC;
  signal data_out_ready_i_25_n_0 : STD_LOGIC;
  signal data_out_ready_i_26_n_0 : STD_LOGIC;
  signal data_out_ready_i_27_n_0 : STD_LOGIC;
  signal data_out_ready_i_28_n_0 : STD_LOGIC;
  signal data_out_ready_i_29_n_0 : STD_LOGIC;
  signal data_out_ready_i_2_n_0 : STD_LOGIC;
  signal data_out_ready_i_30_n_0 : STD_LOGIC;
  signal data_out_ready_i_31_n_0 : STD_LOGIC;
  signal data_out_ready_i_32_n_0 : STD_LOGIC;
  signal data_out_ready_i_33_n_0 : STD_LOGIC;
  signal data_out_ready_i_34_n_0 : STD_LOGIC;
  signal data_out_ready_i_35_n_0 : STD_LOGIC;
  signal data_out_ready_i_36_n_0 : STD_LOGIC;
  signal data_out_ready_i_37_n_0 : STD_LOGIC;
  signal data_out_ready_i_38_n_0 : STD_LOGIC;
  signal data_out_ready_i_39_n_0 : STD_LOGIC;
  signal data_out_ready_i_3_n_0 : STD_LOGIC;
  signal data_out_ready_i_40_n_0 : STD_LOGIC;
  signal data_out_ready_i_4_n_0 : STD_LOGIC;
  signal data_out_ready_i_5_n_0 : STD_LOGIC;
  signal data_out_ready_i_7_n_0 : STD_LOGIC;
  signal data_out_ready_i_8_n_0 : STD_LOGIC;
  signal data_out_ready_i_9_n_0 : STD_LOGIC;
  signal data_out_ready_reg_i_15_n_0 : STD_LOGIC;
  signal data_out_ready_reg_i_15_n_1 : STD_LOGIC;
  signal data_out_ready_reg_i_15_n_2 : STD_LOGIC;
  signal data_out_ready_reg_i_15_n_3 : STD_LOGIC;
  signal data_out_ready_reg_i_15_n_4 : STD_LOGIC;
  signal data_out_ready_reg_i_15_n_5 : STD_LOGIC;
  signal data_out_ready_reg_i_15_n_6 : STD_LOGIC;
  signal data_out_ready_reg_i_15_n_7 : STD_LOGIC;
  signal data_out_ready_reg_i_6_n_0 : STD_LOGIC;
  signal data_out_ready_reg_i_6_n_1 : STD_LOGIC;
  signal data_out_ready_reg_i_6_n_2 : STD_LOGIC;
  signal data_out_ready_reg_i_6_n_3 : STD_LOGIC;
  signal data_out_ready_reg_i_6_n_4 : STD_LOGIC;
  signal data_out_ready_reg_i_6_n_5 : STD_LOGIC;
  signal data_out_ready_reg_i_6_n_6 : STD_LOGIC;
  signal data_out_ready_reg_i_6_n_7 : STD_LOGIC;
  signal \data_out_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_reg[0]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_reg[0]_i_15_n_0\ : STD_LOGIC;
  signal \data_out_reg[0]_i_16_n_0\ : STD_LOGIC;
  signal \data_out_reg[0]_i_17_n_0\ : STD_LOGIC;
  signal \data_out_reg[0]_i_18_n_0\ : STD_LOGIC;
  signal \data_out_reg[0]_i_19_n_0\ : STD_LOGIC;
  signal \data_out_reg[0]_i_20_n_0\ : STD_LOGIC;
  signal \data_out_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_reg[1]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_reg[5]_i_24_n_0\ : STD_LOGIC;
  signal \data_out_reg[5]_i_24_n_1\ : STD_LOGIC;
  signal \data_out_reg[5]_i_24_n_2\ : STD_LOGIC;
  signal \data_out_reg[5]_i_24_n_3\ : STD_LOGIC;
  signal \data_out_reg[5]_i_24_n_4\ : STD_LOGIC;
  signal \data_out_reg[5]_i_24_n_5\ : STD_LOGIC;
  signal \data_out_reg[5]_i_24_n_6\ : STD_LOGIC;
  signal \data_out_reg[5]_i_24_n_7\ : STD_LOGIC;
  signal \data_out_reg[5]_i_41_n_0\ : STD_LOGIC;
  signal \data_out_reg[5]_i_41_n_1\ : STD_LOGIC;
  signal \data_out_reg[5]_i_41_n_2\ : STD_LOGIC;
  signal \data_out_reg[5]_i_41_n_3\ : STD_LOGIC;
  signal \data_out_reg[5]_i_41_n_4\ : STD_LOGIC;
  signal \data_out_reg[5]_i_41_n_5\ : STD_LOGIC;
  signal \data_out_reg[5]_i_41_n_6\ : STD_LOGIC;
  signal \data_out_reg[5]_i_41_n_7\ : STD_LOGIC;
  signal \data_out_reg[5]_i_55_n_0\ : STD_LOGIC;
  signal \data_out_reg[5]_i_55_n_1\ : STD_LOGIC;
  signal \data_out_reg[5]_i_55_n_2\ : STD_LOGIC;
  signal \data_out_reg[5]_i_55_n_3\ : STD_LOGIC;
  signal \data_out_reg[5]_i_55_n_4\ : STD_LOGIC;
  signal \data_out_reg[5]_i_55_n_5\ : STD_LOGIC;
  signal \data_out_reg[5]_i_55_n_6\ : STD_LOGIC;
  signal \data_out_reg[5]_i_55_n_7\ : STD_LOGIC;
  signal \data_out_reg[5]_i_8_n_1\ : STD_LOGIC;
  signal \data_out_reg[5]_i_8_n_2\ : STD_LOGIC;
  signal \data_out_reg[5]_i_8_n_3\ : STD_LOGIC;
  signal \data_out_reg[5]_i_8_n_4\ : STD_LOGIC;
  signal \data_out_reg[5]_i_8_n_5\ : STD_LOGIC;
  signal \data_out_reg[5]_i_8_n_6\ : STD_LOGIC;
  signal \data_out_reg[5]_i_8_n_7\ : STD_LOGIC;
  signal \^data_out_valid\ : STD_LOGIC;
  signal data_out_valid_i_1_n_0 : STD_LOGIC;
  signal done_i_1_n_0 : STD_LOGIC;
  signal done_i_2_n_0 : STD_LOGIC;
  signal done_i_3_n_0 : STD_LOGIC;
  signal done_reg_n_0 : STD_LOGIC;
  signal i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal i0_0 : STD_LOGIC;
  signal \i[0]_i_1_n_0\ : STD_LOGIC;
  signal \i[31]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \i_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \i_reg[31]_i_3_n_4\ : STD_LOGIC;
  signal \i_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \i_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \i_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_data_out1__8_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_data_out1__8_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_data_out1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal NLW_data_out1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_data_out_ready1__15_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_data_out_ready1__15_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_data_out_ready1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_data_out_ready1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_data_out_ready_reg_i_15_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_data_out_ready_reg_i_6_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_data_out_reg[5]_i_24_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_data_out_reg[5]_i_41_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_data_out_reg[5]_i_55_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_data_out_reg[5]_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_data_out_reg[5]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_i_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_i_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_out[0]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[0]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out[1]_i_6\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_out[2]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_out[3]_i_10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[3]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out[3]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_out[3]_i_5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_out[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out[4]_i_11\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_out[4]_i_13\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_out[4]_i_15\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[4]_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out[5]_i_12\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_out[5]_i_14\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_out[5]_i_17\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_out[5]_i_21\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_out[5]_i_22\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_out[5]_i_33\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_out[5]_i_34\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[5]_i_42\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_out[5]_i_5\ : label is "soft_lutpair12";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \data_out_ready1__15_carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \data_out_ready1__15_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of data_out_ready1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \data_out_ready1_carry__0\ : label is 11;
  attribute SOFT_HLUTNM of data_out_ready_i_11 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of data_out_ready_i_13 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of data_out_ready_i_2 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of data_out_ready_i_26 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of data_out_ready_i_27 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of data_out_ready_i_29 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of data_out_ready_i_30 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of data_out_ready_i_5 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of data_out_ready_i_9 : label is "soft_lutpair4";
  attribute COMPARATOR_THRESHOLD of data_out_ready_reg_i_15 : label is 11;
  attribute COMPARATOR_THRESHOLD of data_out_ready_reg_i_6 : label is 11;
  attribute COMPARATOR_THRESHOLD of \data_out_reg[5]_i_24\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \data_out_reg[5]_i_41\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \data_out_reg[5]_i_55\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \data_out_reg[5]_i_8\ : label is 11;
  attribute SOFT_HLUTNM of data_out_valid_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of done_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i[0]_i_1\ : label is "soft_lutpair5";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \i_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[24]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[31]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[8]_i_1\ : label is 35;
begin
  data_out_ready <= \^data_out_ready\;
  data_out_valid <= \^data_out_valid\;
\data_out1__8_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_data_out1__8_carry_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \data_out1__8_carry_n_5\,
      CO(1) => \data_out1__8_carry_n_6\,
      CO(0) => \data_out1__8_carry_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2) => i(0),
      DI(1 downto 0) => B"01",
      O(7 downto 4) => \NLW_data_out1__8_carry_O_UNCONNECTED\(7 downto 4),
      O(3) => \data_out1__8_carry_n_12\,
      O(2) => \data_out1__8_carry_n_13\,
      O(1) => \data_out1__8_carry_n_14\,
      O(0) => \data_out1__8_carry_n_15\,
      S(7 downto 4) => B"0000",
      S(3) => \data_out1__8_carry_i_1_n_0\,
      S(2) => \data_out1__8_carry_i_2_n_0\,
      S(1) => \data_out1__8_carry_i_3_n_0\,
      S(0) => i(0)
    );
\data_out1__8_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i(1),
      I1 => i(3),
      O => \data_out1__8_carry_i_1_n_0\
    );
\data_out1__8_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i(0),
      I1 => i(2),
      O => \data_out1__8_carry_i_2_n_0\
    );
\data_out1__8_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(1),
      O => \data_out1__8_carry_i_3_n_0\
    );
data_out1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 3) => NLW_data_out1_carry_CO_UNCONNECTED(7 downto 3),
      CO(2) => data_out1_carry_n_5,
      CO(1) => data_out1_carry_n_6,
      CO(0) => data_out1_carry_n_7,
      DI(7 downto 3) => B"00000",
      DI(2 downto 1) => i(3 downto 2),
      DI(0) => '0',
      O(7 downto 4) => NLW_data_out1_carry_O_UNCONNECTED(7 downto 4),
      O(3) => data_out1_carry_n_12,
      O(2) => data_out1_carry_n_13,
      O(1) => data_out1_carry_n_14,
      O(0) => data_out1_carry_n_15,
      S(7 downto 4) => B"0000",
      S(3) => data_out1_carry_i_1_n_0,
      S(2) => data_out1_carry_i_2_n_0,
      S(1) => data_out1_carry_i_3_n_0,
      S(0) => i(1)
    );
data_out1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i(4),
      I1 => i(2),
      O => data_out1_carry_i_1_n_0
    );
data_out1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i(3),
      I1 => i(1),
      O => data_out1_carry_i_2_n_0
    );
data_out1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i(2),
      I1 => i(0),
      O => data_out1_carry_i_3_n_0
    );
\data_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEFEFE0E0E0"
    )
        port map (
      I0 => \data_out[0]_i_2_n_0\,
      I1 => \data_out[0]_i_3_n_0\,
      I2 => mod_type(2),
      I3 => \data_out_reg[0]_i_4_n_0\,
      I4 => mod_type(1),
      I5 => \data_out[0]_i_5_n_0\,
      O => data_out_1(0)
    );
\data_out[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(24),
      I1 => data_in(8),
      I2 => data_out1_carry_n_13,
      I3 => data_in(16),
      I4 => data_out1_carry_n_12,
      I5 => data_in(0),
      O => \data_out[0]_i_13_n_0\
    );
\data_out[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(24),
      I1 => data_in(8),
      I2 => \data_out1__8_carry_n_13\,
      I3 => data_in(16),
      I4 => \data_out1__8_carry_n_12\,
      I5 => data_in(0),
      O => \data_out[0]_i_14_n_0\
    );
\data_out[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C500"
    )
        port map (
      I0 => \data_out[0]_i_6_n_0\,
      I1 => \data_out[1]_i_7_n_0\,
      I2 => i(0),
      I3 => \data_out_ready1__15_carry__0_n_0\,
      I4 => mod_type(1),
      O => \data_out[0]_i_2_n_0\
    );
\data_out[0]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(24),
      I1 => data_in(8),
      I2 => i(2),
      I3 => data_in(16),
      I4 => i(3),
      I5 => data_in(0),
      O => \data_out[0]_i_21_n_0\
    );
\data_out[0]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(28),
      I1 => data_in(12),
      I2 => i(2),
      I3 => data_in(20),
      I4 => i(3),
      I5 => data_in(4),
      O => \data_out[0]_i_22_n_0\
    );
\data_out[0]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(26),
      I1 => data_in(10),
      I2 => i(2),
      I3 => data_in(18),
      I4 => i(3),
      I5 => data_in(2),
      O => \data_out[0]_i_23_n_0\
    );
\data_out[0]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(30),
      I1 => data_in(14),
      I2 => i(2),
      I3 => data_in(22),
      I4 => i(3),
      I5 => data_in(6),
      O => \data_out[0]_i_24_n_0\
    );
\data_out[0]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(19),
      I1 => data_in(18),
      I2 => i(1),
      I3 => data_in(17),
      I4 => i(0),
      I5 => data_in(16),
      O => \data_out[0]_i_25_n_0\
    );
\data_out[0]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(23),
      I1 => data_in(22),
      I2 => i(1),
      I3 => data_in(21),
      I4 => i(0),
      I5 => data_in(20),
      O => \data_out[0]_i_26_n_0\
    );
\data_out[0]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(27),
      I1 => data_in(26),
      I2 => i(1),
      I3 => data_in(25),
      I4 => i(0),
      I5 => data_in(24),
      O => \data_out[0]_i_27_n_0\
    );
\data_out[0]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(31),
      I1 => data_in(30),
      I2 => i(1),
      I3 => data_in(29),
      I4 => i(0),
      I5 => data_in(28),
      O => \data_out[0]_i_28_n_0\
    );
\data_out[0]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(3),
      I1 => data_in(2),
      I2 => i(1),
      I3 => data_in(1),
      I4 => i(0),
      I5 => data_in(0),
      O => \data_out[0]_i_29_n_0\
    );
\data_out[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AF33A000"
    )
        port map (
      I0 => \data_out[0]_i_7_n_0\,
      I1 => \data_out_ready1__15_carry__0_n_0\,
      I2 => \data_out_reg[5]_i_8_n_1\,
      I3 => mod_type(1),
      I4 => data_in(30),
      O => \data_out[0]_i_3_n_0\
    );
\data_out[0]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(7),
      I1 => data_in(6),
      I2 => i(1),
      I3 => data_in(5),
      I4 => i(0),
      I5 => data_in(4),
      O => \data_out[0]_i_30_n_0\
    );
\data_out[0]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(11),
      I1 => data_in(10),
      I2 => i(1),
      I3 => data_in(9),
      I4 => i(0),
      I5 => data_in(8),
      O => \data_out[0]_i_31_n_0\
    );
\data_out[0]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(15),
      I1 => data_in(14),
      I2 => i(1),
      I3 => data_in(13),
      I4 => i(0),
      I5 => data_in(12),
      O => \data_out[0]_i_32_n_0\
    );
\data_out[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \data_out_reg[0]_i_10_n_0\,
      I1 => mod_type(0),
      I2 => \data_out_reg[0]_i_11_n_0\,
      I3 => i(4),
      I4 => \data_out_reg[0]_i_12_n_0\,
      O => \data_out[0]_i_5_n_0\
    );
\data_out[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05F5030305F5F3F3"
    )
        port map (
      I0 => \data_out[4]_i_20_n_0\,
      I1 => \data_out[0]_i_13_n_0\,
      I2 => data_out1_carry_n_15,
      I3 => \data_out[4]_i_18_n_0\,
      I4 => data_out1_carry_n_14,
      I5 => \data_out[2]_i_9_n_0\,
      O => \data_out[0]_i_6_n_0\
    );
\data_out[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[4]_i_5_n_0\,
      I1 => \data_out[2]_i_5_n_0\,
      I2 => \data_out1__8_carry_n_15\,
      I3 => \data_out[4]_i_12_n_0\,
      I4 => \data_out1__8_carry_n_14\,
      I5 => \data_out[0]_i_14_n_0\,
      O => \data_out[0]_i_7_n_0\
    );
\data_out[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(24),
      I1 => data_in(8),
      I2 => i(1),
      I3 => data_in(16),
      I4 => i(2),
      I5 => data_in(0),
      O => \data_out[0]_i_8_n_0\
    );
\data_out[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(28),
      I1 => data_in(12),
      I2 => i(1),
      I3 => data_in(20),
      I4 => i(2),
      I5 => data_in(4),
      O => \data_out[0]_i_9_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[1]_i_2_n_0\,
      I1 => \data_out[1]_i_3_n_0\,
      I2 => mod_type(2),
      I3 => \data_out_reg[1]_i_4_n_0\,
      I4 => mod_type(1),
      I5 => \data_out[1]_i_5_n_0\,
      O => data_out_1(1)
    );
\data_out[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(27),
      I1 => data_in(11),
      I2 => i(2),
      I3 => data_in(19),
      I4 => i(3),
      I5 => data_in(3),
      O => \data_out[1]_i_11_n_0\
    );
\data_out[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(31),
      I1 => data_in(15),
      I2 => i(2),
      I3 => data_in(23),
      I4 => i(3),
      I5 => data_in(7),
      O => \data_out[1]_i_12_n_0\
    );
\data_out[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(25),
      I1 => data_in(9),
      I2 => \data_out1__8_carry_n_13\,
      I3 => data_in(17),
      I4 => \data_out1__8_carry_n_12\,
      I5 => data_in(1),
      O => \data_out[1]_i_13_n_0\
    );
\data_out[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(25),
      I1 => data_in(9),
      I2 => data_out1_carry_n_13,
      I3 => data_in(17),
      I4 => data_out1_carry_n_12,
      I5 => data_in(1),
      O => \data_out[1]_i_14_n_0\
    );
\data_out[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(25),
      I1 => data_in(9),
      I2 => i(2),
      I3 => data_in(17),
      I4 => i(3),
      I5 => data_in(1),
      O => \data_out[1]_i_15_n_0\
    );
\data_out[1]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(29),
      I1 => data_in(13),
      I2 => i(2),
      I3 => data_in(21),
      I4 => i(3),
      I5 => data_in(5),
      O => \data_out[1]_i_16_n_0\
    );
\data_out[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out[3]_i_5_n_0\,
      I1 => \data_out1__8_carry_n_15\,
      I2 => \data_out[1]_i_6_n_0\,
      I3 => \data_out_reg[5]_i_8_n_1\,
      I4 => data_in(31),
      O => \data_out[1]_i_2_n_0\
    );
\data_out[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out[2]_i_6_n_0\,
      I1 => i(0),
      I2 => \data_out[1]_i_7_n_0\,
      I3 => \data_out_ready1__15_carry__0_n_0\,
      I4 => data_in(31),
      O => \data_out[1]_i_3_n_0\
    );
\data_out[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \data_out_reg[1]_i_10_n_0\,
      I1 => i(0),
      I2 => \data_out[1]_i_11_n_0\,
      I3 => i(1),
      I4 => \data_out[1]_i_12_n_0\,
      I5 => mod_type(0),
      O => \data_out[1]_i_5_n_0\
    );
\data_out[1]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[5]_i_23_n_0\,
      I1 => \data_out1__8_carry_n_14\,
      I2 => \data_out[1]_i_13_n_0\,
      O => \data_out[1]_i_6_n_0\
    );
\data_out[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[4]_i_14_n_0\,
      I1 => \data_out[3]_i_11_n_0\,
      I2 => data_out1_carry_n_15,
      I3 => \data_out[4]_i_16_n_0\,
      I4 => data_out1_carry_n_14,
      I5 => \data_out[1]_i_14_n_0\,
      O => \data_out[1]_i_7_n_0\
    );
\data_out[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(25),
      I1 => data_in(9),
      I2 => i(1),
      I3 => data_in(17),
      I4 => i(2),
      I5 => data_in(1),
      O => \data_out[1]_i_8_n_0\
    );
\data_out[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(29),
      I1 => data_in(13),
      I2 => i(1),
      I3 => data_in(21),
      I4 => i(2),
      I5 => data_in(5),
      O => \data_out[1]_i_9_n_0\
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \data_out[2]_i_2_n_0\,
      I1 => \data_out[2]_i_3_n_0\,
      I2 => mod_type(2),
      I3 => \data_out_reg[2]_i_4_n_0\,
      I4 => mod_type(1),
      O => data_out_1(2)
    );
\data_out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB800B800000000"
    )
        port map (
      I0 => \data_out[4]_i_5_n_0\,
      I1 => \data_out1__8_carry_n_14\,
      I2 => \data_out[2]_i_5_n_0\,
      I3 => \data_out1__8_carry_n_15\,
      I4 => \data_out[4]_i_4_n_0\,
      I5 => \data_out_reg[5]_i_8_n_1\,
      O => \data_out[2]_i_2_n_0\
    );
\data_out[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \data_out[2]_i_6_n_0\,
      I1 => i(0),
      I2 => \data_out[3]_i_6_n_0\,
      I3 => \data_out_ready1__15_carry__0_n_0\,
      O => \data_out[2]_i_3_n_0\
    );
\data_out[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(26),
      I1 => data_in(10),
      I2 => \data_out1__8_carry_n_13\,
      I3 => data_in(18),
      I4 => \data_out1__8_carry_n_12\,
      I5 => data_in(2),
      O => \data_out[2]_i_5_n_0\
    );
\data_out[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[4]_i_19_n_0\,
      I1 => \data_out[4]_i_20_n_0\,
      I2 => data_out1_carry_n_15,
      I3 => \data_out[4]_i_18_n_0\,
      I4 => data_out1_carry_n_14,
      I5 => \data_out[2]_i_9_n_0\,
      O => \data_out[2]_i_6_n_0\
    );
\data_out[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(26),
      I1 => data_in(10),
      I2 => i(1),
      I3 => data_in(18),
      I4 => i(2),
      I5 => data_in(2),
      O => \data_out[2]_i_7_n_0\
    );
\data_out[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(30),
      I1 => data_in(14),
      I2 => i(1),
      I3 => data_in(22),
      I4 => i(2),
      I5 => data_in(6),
      O => \data_out[2]_i_8_n_0\
    );
\data_out[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(26),
      I1 => data_in(10),
      I2 => data_out1_carry_n_13,
      I3 => data_in(18),
      I4 => data_out1_carry_n_12,
      I5 => data_in(2),
      O => \data_out[2]_i_9_n_0\
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \data_out[3]_i_2_n_0\,
      I1 => \data_out[3]_i_3_n_0\,
      I2 => mod_type(2),
      I3 => \data_out_reg[3]_i_4_n_0\,
      I4 => mod_type(1),
      O => data_out_1(3)
    );
\data_out[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(17),
      I1 => data_out1_carry_n_13,
      I2 => data_in(25),
      I3 => data_out1_carry_n_12,
      I4 => data_in(9),
      O => \data_out[3]_i_10_n_0\
    );
\data_out[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(27),
      I1 => data_in(11),
      I2 => data_out1_carry_n_13,
      I3 => data_in(19),
      I4 => data_out1_carry_n_12,
      I5 => data_in(3),
      O => \data_out[3]_i_11_n_0\
    );
\data_out[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \data_out[3]_i_5_n_0\,
      I1 => \data_out1__8_carry_n_15\,
      I2 => \data_out[5]_i_7_n_0\,
      I3 => \data_out_reg[5]_i_8_n_1\,
      O => \data_out[3]_i_2_n_0\
    );
\data_out[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \data_out[3]_i_6_n_0\,
      I1 => i(0),
      I2 => \data_out[4]_i_10_n_0\,
      I3 => \data_out_ready1__15_carry__0_n_0\,
      O => \data_out[3]_i_3_n_0\
    );
\data_out[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[5]_i_32_n_0\,
      I1 => \data_out1__8_carry_n_14\,
      I2 => \data_out[3]_i_9_n_0\,
      O => \data_out[3]_i_5_n_0\
    );
\data_out[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[3]_i_10_n_0\,
      I1 => \data_out[4]_i_16_n_0\,
      I2 => data_out1_carry_n_15,
      I3 => \data_out[4]_i_14_n_0\,
      I4 => data_out1_carry_n_14,
      I5 => \data_out[3]_i_11_n_0\,
      O => \data_out[3]_i_6_n_0\
    );
\data_out[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(27),
      I1 => data_in(11),
      I2 => i(1),
      I3 => data_in(19),
      I4 => i(2),
      I5 => data_in(3),
      O => \data_out[3]_i_7_n_0\
    );
\data_out[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(31),
      I1 => data_in(15),
      I2 => i(1),
      I3 => data_in(23),
      I4 => i(2),
      I5 => data_in(7),
      O => \data_out[3]_i_8_n_0\
    );
\data_out[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(27),
      I1 => data_in(11),
      I2 => \data_out1__8_carry_n_13\,
      I3 => data_in(19),
      I4 => \data_out1__8_carry_n_12\,
      I5 => data_in(3),
      O => \data_out[3]_i_9_n_0\
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88A88888"
    )
        port map (
      I0 => mod_type(2),
      I1 => \data_out[4]_i_2_n_0\,
      I2 => \data_out[4]_i_3_n_0\,
      I3 => mod_type(1),
      I4 => \data_out_ready1__15_carry__0_n_0\,
      O => data_out_1(4)
    );
\data_out[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[4]_i_17_n_0\,
      I1 => \data_out[4]_i_18_n_0\,
      I2 => data_out1_carry_n_15,
      I3 => \data_out[4]_i_19_n_0\,
      I4 => data_out1_carry_n_14,
      I5 => \data_out[4]_i_20_n_0\,
      O => \data_out[4]_i_10_n_0\
    );
\data_out[4]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(24),
      I1 => \data_out1__8_carry_n_12\,
      I2 => data_in(8),
      O => \data_out[4]_i_11_n_0\
    );
\data_out[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(28),
      I1 => data_in(12),
      I2 => \data_out1__8_carry_n_13\,
      I3 => data_in(20),
      I4 => \data_out1__8_carry_n_12\,
      I5 => data_in(4),
      O => \data_out[4]_i_12_n_0\
    );
\data_out[4]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(27),
      I1 => data_out1_carry_n_12,
      I2 => data_in(11),
      O => \data_out[4]_i_13_n_0\
    );
\data_out[4]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(31),
      I1 => data_in(15),
      I2 => data_out1_carry_n_13,
      I3 => data_in(23),
      I4 => data_out1_carry_n_12,
      I5 => data_in(7),
      O => \data_out[4]_i_14_n_0\
    );
\data_out[4]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(25),
      I1 => data_out1_carry_n_12,
      I2 => data_in(9),
      O => \data_out[4]_i_15_n_0\
    );
\data_out[4]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(29),
      I1 => data_in(13),
      I2 => data_out1_carry_n_13,
      I3 => data_in(21),
      I4 => data_out1_carry_n_12,
      I5 => data_in(5),
      O => \data_out[4]_i_16_n_0\
    );
\data_out[4]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(18),
      I1 => data_out1_carry_n_13,
      I2 => data_in(26),
      I3 => data_out1_carry_n_12,
      I4 => data_in(10),
      O => \data_out[4]_i_17_n_0\
    );
\data_out[4]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(30),
      I1 => data_in(14),
      I2 => data_out1_carry_n_13,
      I3 => data_in(22),
      I4 => data_out1_carry_n_12,
      I5 => data_in(6),
      O => \data_out[4]_i_18_n_0\
    );
\data_out[4]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(16),
      I1 => data_out1_carry_n_13,
      I2 => data_in(24),
      I3 => data_out1_carry_n_12,
      I4 => data_in(8),
      O => \data_out[4]_i_19_n_0\
    );
\data_out[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \data_out[4]_i_4_n_0\,
      I1 => \data_out1__8_carry_n_15\,
      I2 => \data_out[4]_i_5_n_0\,
      I3 => \data_out1__8_carry_n_14\,
      I4 => \data_out[4]_i_6_n_0\,
      I5 => \data_out[4]_i_7_n_0\,
      O => \data_out[4]_i_2_n_0\
    );
\data_out[4]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(28),
      I1 => data_in(12),
      I2 => data_out1_carry_n_13,
      I3 => data_in(20),
      I4 => data_out1_carry_n_12,
      I5 => data_in(4),
      O => \data_out[4]_i_20_n_0\
    );
\data_out[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out[4]_i_8_n_0\,
      I1 => data_out1_carry_n_15,
      I2 => \data_out[4]_i_9_n_0\,
      I3 => i(0),
      I4 => \data_out[4]_i_10_n_0\,
      O => \data_out[4]_i_3_n_0\
    );
\data_out[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data_in(16),
      I1 => \data_out1__8_carry_n_13\,
      I2 => \data_out[4]_i_11_n_0\,
      I3 => \data_out1__8_carry_n_14\,
      I4 => \data_out[4]_i_12_n_0\,
      O => \data_out[4]_i_4_n_0\
    );
\data_out[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(30),
      I1 => data_in(14),
      I2 => \data_out1__8_carry_n_13\,
      I3 => data_in(22),
      I4 => \data_out1__8_carry_n_12\,
      I5 => data_in(6),
      O => \data_out[4]_i_5_n_0\
    );
\data_out[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(18),
      I1 => \data_out1__8_carry_n_13\,
      I2 => data_in(26),
      I3 => \data_out1__8_carry_n_12\,
      I4 => data_in(10),
      O => \data_out[4]_i_6_n_0\
    );
\data_out[4]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \data_out_reg[5]_i_8_n_1\,
      I1 => mod_type(1),
      O => \data_out[4]_i_7_n_0\
    );
\data_out[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data_in(19),
      I1 => data_out1_carry_n_13,
      I2 => \data_out[4]_i_13_n_0\,
      I3 => data_out1_carry_n_14,
      I4 => \data_out[4]_i_14_n_0\,
      O => \data_out[4]_i_8_n_0\
    );
\data_out[4]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data_in(17),
      I1 => data_out1_carry_n_13,
      I2 => \data_out[4]_i_15_n_0\,
      I3 => data_out1_carry_n_14,
      I4 => \data_out[4]_i_16_n_0\,
      O => \data_out[4]_i_9_n_0\
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2030203020302000"
    )
        port map (
      I0 => \data_out[5]_i_3_n_0\,
      I1 => \data_out[5]_i_4_n_0\,
      I2 => \data_out[5]_i_5_n_0\,
      I3 => mod_type(2),
      I4 => mod_type(1),
      I5 => \data_out[5]_i_6_n_0\,
      O => \data_out[5]_i_1_n_0\
    );
\data_out[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBF"
    )
        port map (
      I0 => \data_out[5]_i_34_n_0\,
      I1 => i(2),
      I2 => i(1),
      I3 => i(0),
      I4 => \data_out[5]_i_35_n_0\,
      I5 => \data_out[5]_i_36_n_0\,
      O => \data_out[5]_i_10_n_0\
    );
\data_out[5]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \data_out[5]_i_37_n_0\,
      I1 => \data_out[5]_i_38_n_0\,
      I2 => \data_out[5]_i_39_n_0\,
      I3 => \data_out[5]_i_40_n_0\,
      O => \data_out[5]_i_11_n_0\
    );
\data_out[5]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \data_out[5]_i_15_n_0\,
      I1 => i(2),
      I2 => i(1),
      I3 => i(0),
      O => \data_out[5]_i_12_n_0\
    );
\data_out[5]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \data_out[5]_i_35_n_0\,
      I1 => i(26),
      I2 => i(25),
      I3 => i(17),
      I4 => i(16),
      I5 => data_out_ready_i_28_n_0,
      O => \data_out[5]_i_13_n_0\
    );
\data_out[5]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      O => \data_out[5]_i_14_n_0\
    );
\data_out[5]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF2F2FFF2"
    )
        port map (
      I0 => i(12),
      I1 => i(13),
      I2 => i(14),
      I3 => i(6),
      I4 => i(7),
      I5 => i(8),
      O => \data_out[5]_i_15_n_0\
    );
\data_out[5]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => mod_type(2),
      I1 => \data_out_reg[5]_i_41_n_0\,
      I2 => mod_type(1),
      O => \data_out[5]_i_16_n_0\
    );
\data_out[5]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mod_type(0),
      I1 => data_out_ready_reg_i_6_n_0,
      O => \data_out[5]_i_17_n_0\
    );
\data_out[5]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0DFFFFFF"
    )
        port map (
      I0 => i(3),
      I1 => i(4),
      I2 => i(5),
      I3 => i(2),
      I4 => \data_out[5]_i_14_n_0\,
      I5 => \data_out[5]_i_42_n_0\,
      O => \data_out[5]_i_18_n_0\
    );
\data_out[5]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \data_out[5]_i_40_n_0\,
      I1 => \data_out[5]_i_15_n_0\,
      I2 => \data_out[5]_i_38_n_0\,
      I3 => \data_out[5]_i_43_n_0\,
      O => \data_out[5]_i_19_n_0\
    );
\data_out[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E0000000"
    )
        port map (
      I0 => \data_out[5]_i_7_n_0\,
      I1 => \data_out1__8_carry_n_15\,
      I2 => mod_type(1),
      I3 => \data_out_reg[5]_i_8_n_1\,
      I4 => mod_type(2),
      I5 => \data_out[5]_i_9_n_0\,
      O => data_out_1(5)
    );
\data_out[5]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFFFFF"
    )
        port map (
      I0 => data_out_ready_i_27_n_0,
      I1 => data_out_ready_i_26_n_0,
      I2 => i(0),
      I3 => i(1),
      I4 => i(2),
      I5 => data_out_ready_i_25_n_0,
      O => \data_out[5]_i_20_n_0\
    );
\data_out[5]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_out_ready1_carry__0_n_0\,
      I1 => mod_type(0),
      O => \data_out[5]_i_21_n_0\
    );
\data_out[5]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(25),
      I1 => \data_out1__8_carry_n_12\,
      I2 => data_in(9),
      O => \data_out[5]_i_22_n_0\
    );
\data_out[5]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(29),
      I1 => data_in(13),
      I2 => \data_out1__8_carry_n_13\,
      I3 => data_in(21),
      I4 => \data_out1__8_carry_n_12\,
      I5 => data_in(5),
      O => \data_out[5]_i_23_n_0\
    );
\data_out[5]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(31),
      I1 => i(30),
      O => \data_out[5]_i_25_n_0\
    );
\data_out[5]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(29),
      I1 => i(28),
      O => \data_out[5]_i_26_n_0\
    );
\data_out[5]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(26),
      I1 => i(27),
      O => \data_out[5]_i_27_n_0\
    );
\data_out[5]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(25),
      I1 => i(24),
      O => \data_out[5]_i_28_n_0\
    );
\data_out[5]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(23),
      I1 => i(22),
      O => \data_out[5]_i_29_n_0\
    );
\data_out[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000D0DCDCDCDC"
    )
        port map (
      I0 => \data_out[5]_i_10_n_0\,
      I1 => data_out_ready_i_11_n_0,
      I2 => \data_out[5]_i_11_n_0\,
      I3 => \data_out[5]_i_12_n_0\,
      I4 => \data_out[5]_i_13_n_0\,
      I5 => data_out_ready_i_13_n_0,
      O => \data_out[5]_i_3_n_0\
    );
\data_out[5]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(20),
      I1 => i(21),
      O => \data_out[5]_i_30_n_0\
    );
\data_out[5]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(19),
      I1 => i(18),
      O => \data_out[5]_i_31_n_0\
    );
\data_out[5]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(31),
      I1 => data_in(15),
      I2 => \data_out1__8_carry_n_13\,
      I3 => data_in(23),
      I4 => \data_out1__8_carry_n_12\,
      I5 => data_in(7),
      O => \data_out[5]_i_32_n_0\
    );
\data_out[5]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(27),
      I1 => \data_out1__8_carry_n_12\,
      I2 => data_in(11),
      O => \data_out[5]_i_33_n_0\
    );
\data_out[5]_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => i(26),
      I1 => i(25),
      I2 => i(17),
      I3 => i(16),
      O => \data_out[5]_i_34_n_0\
    );
\data_out[5]_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => i(23),
      I1 => i(22),
      I2 => i(14),
      I3 => i(13),
      O => \data_out[5]_i_35_n_0\
    );
\data_out[5]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \data_out[5]_i_15_n_0\,
      I1 => i(11),
      I2 => i(10),
      I3 => i(5),
      I4 => i(4),
      I5 => data_out_ready_i_26_n_0,
      O => \data_out[5]_i_36_n_0\
    );
\data_out[5]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF2F2FFF2"
    )
        port map (
      I0 => i(21),
      I1 => i(22),
      I2 => i(23),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => \data_out[5]_i_37_n_0\
    );
\data_out[5]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF2F2FFF2"
    )
        port map (
      I0 => i(9),
      I1 => i(10),
      I2 => i(11),
      I3 => i(24),
      I4 => i(25),
      I5 => i(26),
      O => \data_out[5]_i_38_n_0\
    );
\data_out[5]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF2F2FFF2"
    )
        port map (
      I0 => i(27),
      I1 => i(28),
      I2 => i(29),
      I3 => i(18),
      I4 => i(19),
      I5 => i(20),
      O => \data_out[5]_i_39_n_0\
    );
\data_out[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFDFFF"
    )
        port map (
      I0 => \data_out[5]_i_11_n_0\,
      I1 => \data_out[5]_i_13_n_0\,
      I2 => i(2),
      I3 => \data_out[5]_i_14_n_0\,
      I4 => \data_out[5]_i_15_n_0\,
      I5 => \data_out[5]_i_16_n_0\,
      O => \data_out[5]_i_4_n_0\
    );
\data_out[5]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF2"
    )
        port map (
      I0 => i(15),
      I1 => i(16),
      I2 => i(17),
      I3 => \data_out[5]_i_54_n_0\,
      I4 => i(28),
      I5 => i(29),
      O => \data_out[5]_i_40_n_0\
    );
\data_out[5]_i_42\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => i(20),
      I1 => i(19),
      I2 => i(18),
      O => \data_out[5]_i_42_n_0\
    );
\data_out[5]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF2F2FFF2"
    )
        port map (
      I0 => i(27),
      I1 => i(28),
      I2 => i(29),
      I3 => i(21),
      I4 => i(22),
      I5 => i(23),
      O => \data_out[5]_i_43_n_0\
    );
\data_out[5]_i_44\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      O => \data_out[5]_i_44_n_0\
    );
\data_out[5]_i_45\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(2),
      I1 => i(3),
      O => \data_out[5]_i_45_n_0\
    );
\data_out[5]_i_46\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(17),
      I1 => i(16),
      O => \data_out[5]_i_46_n_0\
    );
\data_out[5]_i_47\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(14),
      I1 => i(15),
      O => \data_out[5]_i_47_n_0\
    );
\data_out[5]_i_48\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(13),
      I1 => i(12),
      O => \data_out[5]_i_48_n_0\
    );
\data_out[5]_i_49\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(11),
      I1 => i(10),
      O => \data_out[5]_i_49_n_0\
    );
\data_out[5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in_ready,
      I1 => done_reg_n_0,
      O => \data_out[5]_i_5_n_0\
    );
\data_out[5]_i_50\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(8),
      I1 => i(9),
      O => \data_out[5]_i_50_n_0\
    );
\data_out[5]_i_51\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(7),
      I1 => i(6),
      O => \data_out[5]_i_51_n_0\
    );
\data_out[5]_i_52\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(5),
      I1 => i(4),
      O => \data_out[5]_i_52_n_0\
    );
\data_out[5]_i_53\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i(2),
      I1 => i(3),
      O => \data_out[5]_i_53_n_0\
    );
\data_out[5]_i_54\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i(30),
      I1 => i(31),
      O => \data_out[5]_i_54_n_0\
    );
\data_out[5]_i_56\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(31),
      I1 => i(30),
      O => \data_out[5]_i_56_n_0\
    );
\data_out[5]_i_57\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(29),
      I1 => i(28),
      O => \data_out[5]_i_57_n_0\
    );
\data_out[5]_i_58\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(26),
      I1 => i(27),
      O => \data_out[5]_i_58_n_0\
    );
\data_out[5]_i_59\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(25),
      I1 => i(24),
      O => \data_out[5]_i_59_n_0\
    );
\data_out[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000570057555755"
    )
        port map (
      I0 => \data_out[5]_i_17_n_0\,
      I1 => \data_out[5]_i_18_n_0\,
      I2 => \data_out[5]_i_13_n_0\,
      I3 => \data_out[5]_i_19_n_0\,
      I4 => \data_out[5]_i_20_n_0\,
      I5 => \data_out[5]_i_21_n_0\,
      O => \data_out[5]_i_6_n_0\
    );
\data_out[5]_i_60\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(23),
      I1 => i(22),
      O => \data_out[5]_i_60_n_0\
    );
\data_out[5]_i_61\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(20),
      I1 => i(21),
      O => \data_out[5]_i_61_n_0\
    );
\data_out[5]_i_62\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(19),
      I1 => i(18),
      O => \data_out[5]_i_62_n_0\
    );
\data_out[5]_i_63\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(17),
      I1 => i(16),
      O => \data_out[5]_i_63_n_0\
    );
\data_out[5]_i_64\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(2),
      I1 => i(3),
      O => \data_out[5]_i_64_n_0\
    );
\data_out[5]_i_65\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => i(1),
      I1 => i(0),
      O => \data_out[5]_i_65_n_0\
    );
\data_out[5]_i_66\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(14),
      I1 => i(15),
      O => \data_out[5]_i_66_n_0\
    );
\data_out[5]_i_67\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(13),
      I1 => i(12),
      O => \data_out[5]_i_67_n_0\
    );
\data_out[5]_i_68\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(11),
      I1 => i(10),
      O => \data_out[5]_i_68_n_0\
    );
\data_out[5]_i_69\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(8),
      I1 => i(9),
      O => \data_out[5]_i_69_n_0\
    );
\data_out[5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data_in(17),
      I1 => \data_out1__8_carry_n_13\,
      I2 => \data_out[5]_i_22_n_0\,
      I3 => \data_out1__8_carry_n_14\,
      I4 => \data_out[5]_i_23_n_0\,
      O => \data_out[5]_i_7_n_0\
    );
\data_out[5]_i_70\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(7),
      I1 => i(6),
      O => \data_out[5]_i_70_n_0\
    );
\data_out[5]_i_71\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(5),
      I1 => i(4),
      O => \data_out[5]_i_71_n_0\
    );
\data_out[5]_i_72\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i(2),
      I1 => i(3),
      O => \data_out[5]_i_72_n_0\
    );
\data_out[5]_i_73\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      O => \data_out[5]_i_73_n_0\
    );
\data_out[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020202A2A2A202A2"
    )
        port map (
      I0 => \data_out1__8_carry_n_15\,
      I1 => \data_out[5]_i_32_n_0\,
      I2 => \data_out1__8_carry_n_14\,
      I3 => \data_out[5]_i_33_n_0\,
      I4 => \data_out1__8_carry_n_13\,
      I5 => data_in(19),
      O => \data_out[5]_i_9_n_0\
    );
\data_out_ready1__15_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \data_out_ready1__15_carry_n_0\,
      CO(6) => \data_out_ready1__15_carry_n_1\,
      CO(5) => \data_out_ready1__15_carry_n_2\,
      CO(4) => \data_out_ready1__15_carry_n_3\,
      CO(3) => \data_out_ready1__15_carry_n_4\,
      CO(2) => \data_out_ready1__15_carry_n_5\,
      CO(1) => \data_out_ready1__15_carry_n_6\,
      CO(0) => \data_out_ready1__15_carry_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => \data_out_ready1__15_carry_i_1_n_0\,
      DI(0) => \data_out_ready1__15_carry_i_2_n_0\,
      O(7 downto 0) => \NLW_data_out_ready1__15_carry_O_UNCONNECTED\(7 downto 0),
      S(7) => \data_out_ready1__15_carry_i_3_n_0\,
      S(6) => \data_out_ready1__15_carry_i_4_n_0\,
      S(5) => \data_out_ready1__15_carry_i_5_n_0\,
      S(4) => \data_out_ready1__15_carry_i_6_n_0\,
      S(3) => \data_out_ready1__15_carry_i_7_n_0\,
      S(2) => \data_out_ready1__15_carry_i_8_n_0\,
      S(1) => \data_out_ready1__15_carry_i_9_n_0\,
      S(0) => \data_out_ready1__15_carry_i_10_n_0\
    );
\data_out_ready1__15_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \data_out_ready1__15_carry_n_0\,
      CI_TOP => '0',
      CO(7) => \data_out_ready1__15_carry__0_n_0\,
      CO(6) => \data_out_ready1__15_carry__0_n_1\,
      CO(5) => \data_out_ready1__15_carry__0_n_2\,
      CO(4) => \data_out_ready1__15_carry__0_n_3\,
      CO(3) => \data_out_ready1__15_carry__0_n_4\,
      CO(2) => \data_out_ready1__15_carry__0_n_5\,
      CO(1) => \data_out_ready1__15_carry__0_n_6\,
      CO(0) => \data_out_ready1__15_carry__0_n_7\,
      DI(7) => i(31),
      DI(6 downto 0) => B"0000000",
      O(7 downto 0) => \NLW_data_out_ready1__15_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \data_out_ready1__15_carry__0_i_1_n_0\,
      S(6) => \data_out_ready1__15_carry__0_i_2_n_0\,
      S(5) => \data_out_ready1__15_carry__0_i_3_n_0\,
      S(4) => \data_out_ready1__15_carry__0_i_4_n_0\,
      S(3) => \data_out_ready1__15_carry__0_i_5_n_0\,
      S(2) => \data_out_ready1__15_carry__0_i_6_n_0\,
      S(1) => \data_out_ready1__15_carry__0_i_7_n_0\,
      S(0) => \data_out_ready1__15_carry__0_i_8_n_0\
    );
\data_out_ready1__15_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(31),
      I1 => i(30),
      O => \data_out_ready1__15_carry__0_i_1_n_0\
    );
\data_out_ready1__15_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(29),
      I1 => i(28),
      O => \data_out_ready1__15_carry__0_i_2_n_0\
    );
\data_out_ready1__15_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(26),
      I1 => i(27),
      O => \data_out_ready1__15_carry__0_i_3_n_0\
    );
\data_out_ready1__15_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(25),
      I1 => i(24),
      O => \data_out_ready1__15_carry__0_i_4_n_0\
    );
\data_out_ready1__15_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(23),
      I1 => i(22),
      O => \data_out_ready1__15_carry__0_i_5_n_0\
    );
\data_out_ready1__15_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(20),
      I1 => i(21),
      O => \data_out_ready1__15_carry__0_i_6_n_0\
    );
\data_out_ready1__15_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(19),
      I1 => i(18),
      O => \data_out_ready1__15_carry__0_i_7_n_0\
    );
\data_out_ready1__15_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(17),
      I1 => i(16),
      O => \data_out_ready1__15_carry__0_i_8_n_0\
    );
\data_out_ready1__15_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(2),
      I1 => i(3),
      O => \data_out_ready1__15_carry_i_1_n_0\
    );
\data_out_ready1__15_carry_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      O => \data_out_ready1__15_carry_i_10_n_0\
    );
\data_out_ready1__15_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      O => \data_out_ready1__15_carry_i_2_n_0\
    );
\data_out_ready1__15_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(14),
      I1 => i(15),
      O => \data_out_ready1__15_carry_i_3_n_0\
    );
\data_out_ready1__15_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(13),
      I1 => i(12),
      O => \data_out_ready1__15_carry_i_4_n_0\
    );
\data_out_ready1__15_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(11),
      I1 => i(10),
      O => \data_out_ready1__15_carry_i_5_n_0\
    );
\data_out_ready1__15_carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(8),
      I1 => i(9),
      O => \data_out_ready1__15_carry_i_6_n_0\
    );
\data_out_ready1__15_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(7),
      I1 => i(6),
      O => \data_out_ready1__15_carry_i_7_n_0\
    );
\data_out_ready1__15_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(5),
      I1 => i(4),
      O => \data_out_ready1__15_carry_i_8_n_0\
    );
\data_out_ready1__15_carry_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i(2),
      I1 => i(3),
      O => \data_out_ready1__15_carry_i_9_n_0\
    );
data_out_ready1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => data_out_ready1_carry_n_0,
      CO(6) => data_out_ready1_carry_n_1,
      CO(5) => data_out_ready1_carry_n_2,
      CO(4) => data_out_ready1_carry_n_3,
      CO(3) => data_out_ready1_carry_n_4,
      CO(2) => data_out_ready1_carry_n_5,
      CO(1) => data_out_ready1_carry_n_6,
      CO(0) => data_out_ready1_carry_n_7,
      DI(7 downto 3) => B"00000",
      DI(2) => data_out_ready1_carry_i_1_n_0,
      DI(1) => data_out_ready1_carry_i_2_n_0,
      DI(0) => data_out_ready1_carry_i_3_n_0,
      O(7 downto 0) => NLW_data_out_ready1_carry_O_UNCONNECTED(7 downto 0),
      S(7) => data_out_ready1_carry_i_4_n_0,
      S(6) => data_out_ready1_carry_i_5_n_0,
      S(5) => data_out_ready1_carry_i_6_n_0,
      S(4) => data_out_ready1_carry_i_7_n_0,
      S(3) => data_out_ready1_carry_i_8_n_0,
      S(2) => data_out_ready1_carry_i_9_n_0,
      S(1) => data_out_ready1_carry_i_10_n_0,
      S(0) => data_out_ready1_carry_i_11_n_0
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
      DI(7) => i(31),
      DI(6 downto 0) => B"0000000",
      O(7 downto 0) => \NLW_data_out_ready1_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \data_out_ready1_carry__0_i_1_n_0\,
      S(6) => \data_out_ready1_carry__0_i_2_n_0\,
      S(5) => \data_out_ready1_carry__0_i_3_n_0\,
      S(4) => \data_out_ready1_carry__0_i_4_n_0\,
      S(3) => \data_out_ready1_carry__0_i_5_n_0\,
      S(2) => \data_out_ready1_carry__0_i_6_n_0\,
      S(1) => \data_out_ready1_carry__0_i_7_n_0\,
      S(0) => \data_out_ready1_carry__0_i_8_n_0\
    );
\data_out_ready1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(31),
      I1 => i(30),
      O => \data_out_ready1_carry__0_i_1_n_0\
    );
\data_out_ready1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(29),
      I1 => i(28),
      O => \data_out_ready1_carry__0_i_2_n_0\
    );
\data_out_ready1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(26),
      I1 => i(27),
      O => \data_out_ready1_carry__0_i_3_n_0\
    );
\data_out_ready1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(25),
      I1 => i(24),
      O => \data_out_ready1_carry__0_i_4_n_0\
    );
\data_out_ready1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(23),
      I1 => i(22),
      O => \data_out_ready1_carry__0_i_5_n_0\
    );
\data_out_ready1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(20),
      I1 => i(21),
      O => \data_out_ready1_carry__0_i_6_n_0\
    );
\data_out_ready1_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(19),
      I1 => i(18),
      O => \data_out_ready1_carry__0_i_7_n_0\
    );
\data_out_ready1_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(17),
      I1 => i(16),
      O => \data_out_ready1_carry__0_i_8_n_0\
    );
data_out_ready1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(5),
      I1 => i(4),
      O => data_out_ready1_carry_i_1_n_0
    );
data_out_ready1_carry_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i(3),
      I1 => i(2),
      O => data_out_ready1_carry_i_10_n_0
    );
data_out_ready1_carry_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      O => data_out_ready1_carry_i_11_n_0
    );
data_out_ready1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => i(2),
      I1 => i(3),
      O => data_out_ready1_carry_i_2_n_0
    );
data_out_ready1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => i(1),
      I1 => i(0),
      O => data_out_ready1_carry_i_3_n_0
    );
data_out_ready1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(14),
      I1 => i(15),
      O => data_out_ready1_carry_i_4_n_0
    );
data_out_ready1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(13),
      I1 => i(12),
      O => data_out_ready1_carry_i_5_n_0
    );
data_out_ready1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(11),
      I1 => i(10),
      O => data_out_ready1_carry_i_6_n_0
    );
data_out_ready1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(8),
      I1 => i(9),
      O => data_out_ready1_carry_i_7_n_0
    );
data_out_ready1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(7),
      I1 => i(6),
      O => data_out_ready1_carry_i_8_n_0
    );
data_out_ready1_carry_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i(4),
      I1 => i(5),
      O => data_out_ready1_carry_i_9_n_0
    );
data_out_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEFE00002202"
    )
        port map (
      I0 => data_out_ready_i_2_n_0,
      I1 => reset,
      I2 => data_out_ready_i_3_n_0,
      I3 => data_out_ready_i_4_n_0,
      I4 => data_out_ready_i_5_n_0,
      I5 => \^data_out_ready\,
      O => data_out_ready_i_1_n_0
    );
data_out_ready_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \data_out[5]_i_11_n_0\,
      I1 => \data_out[5]_i_15_n_0\,
      I2 => data_out_ready_i_28_n_0,
      I3 => data_out_ready_i_29_n_0,
      O => data_out_ready_i_10_n_0
    );
data_out_ready_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \data_out_ready1__15_carry__0_n_0\,
      I1 => mod_type(1),
      O => data_out_ready_i_11_n_0
    );
data_out_ready_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \data_out[5]_i_11_n_0\,
      I1 => \data_out[5]_i_15_n_0\,
      I2 => i(2),
      I3 => i(1),
      I4 => i(0),
      I5 => \data_out[5]_i_13_n_0\,
      O => data_out_ready_i_12_n_0
    );
data_out_ready_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mod_type(1),
      I1 => \data_out_reg[5]_i_8_n_1\,
      O => data_out_ready_i_13_n_0
    );
data_out_ready_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000FFFFFFFF"
    )
        port map (
      I0 => \data_out[5]_i_16_n_0\,
      I1 => \data_out[5]_i_15_n_0\,
      I2 => data_out_ready_i_30_n_0,
      I3 => \data_out[5]_i_13_n_0\,
      I4 => \data_out[5]_i_11_n_0\,
      I5 => \data_out[5]_i_5_n_0\,
      O => data_out_ready_i_14_n_0
    );
data_out_ready_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(31),
      I1 => i(30),
      O => data_out_ready_i_16_n_0
    );
data_out_ready_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(29),
      I1 => i(28),
      O => data_out_ready_i_17_n_0
    );
data_out_ready_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(26),
      I1 => i(27),
      O => data_out_ready_i_18_n_0
    );
data_out_ready_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(25),
      I1 => i(24),
      O => data_out_ready_i_19_n_0
    );
data_out_ready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => data_in_ready,
      I1 => data_in_valid,
      I2 => done_reg_n_0,
      O => data_out_ready_i_2_n_0
    );
data_out_ready_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(23),
      I1 => i(22),
      O => data_out_ready_i_20_n_0
    );
data_out_ready_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(20),
      I1 => i(21),
      O => data_out_ready_i_21_n_0
    );
data_out_ready_i_22: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(19),
      I1 => i(18),
      O => data_out_ready_i_22_n_0
    );
data_out_ready_i_23: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(17),
      I1 => i(16),
      O => data_out_ready_i_23_n_0
    );
data_out_ready_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D00000000000000"
    )
        port map (
      I0 => i(18),
      I1 => i(19),
      I2 => i(20),
      I3 => i(0),
      I4 => i(1),
      I5 => i(2),
      O => data_out_ready_i_24_n_0
    );
data_out_ready_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => i(11),
      I1 => i(10),
      I2 => i(18),
      I3 => i(3),
      I4 => i(5),
      I5 => i(4),
      O => data_out_ready_i_25_n_0
    );
data_out_ready_i_26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => i(20),
      I1 => i(7),
      I2 => i(19),
      I3 => i(8),
      O => data_out_ready_i_26_n_0
    );
data_out_ready_i_27: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => i(16),
      I1 => i(17),
      I2 => i(25),
      I3 => i(26),
      I4 => \data_out[5]_i_35_n_0\,
      O => data_out_ready_i_27_n_0
    );
data_out_ready_i_28: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data_out_ready_i_26_n_0,
      I1 => i(4),
      I2 => i(5),
      I3 => i(10),
      I4 => i(11),
      O => data_out_ready_i_28_n_0
    );
data_out_ready_i_29: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => \data_out[5]_i_35_n_0\,
      I1 => i(0),
      I2 => i(1),
      I3 => i(2),
      I4 => \data_out[5]_i_34_n_0\,
      O => data_out_ready_i_29_n_0
    );
data_out_ready_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8CBFBFFFFFFFFF"
    )
        port map (
      I0 => data_out_ready_reg_i_6_n_0,
      I1 => mod_type(0),
      I2 => data_out_ready_i_7_n_0,
      I3 => \data_out_ready1_carry__0_n_0\,
      I4 => data_out_ready_i_8_n_0,
      I5 => data_out_ready_i_9_n_0,
      O => data_out_ready_i_3_n_0
    );
data_out_ready_i_30: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => i(2),
      I1 => i(1),
      I2 => i(0),
      O => data_out_ready_i_30_n_0
    );
data_out_ready_i_31: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => i(2),
      I1 => i(3),
      O => data_out_ready_i_31_n_0
    );
data_out_ready_i_32: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => i(1),
      I1 => i(0),
      O => data_out_ready_i_32_n_0
    );
data_out_ready_i_33: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(14),
      I1 => i(15),
      O => data_out_ready_i_33_n_0
    );
data_out_ready_i_34: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(13),
      I1 => i(12),
      O => data_out_ready_i_34_n_0
    );
data_out_ready_i_35: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(11),
      I1 => i(10),
      O => data_out_ready_i_35_n_0
    );
data_out_ready_i_36: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(8),
      I1 => i(9),
      O => data_out_ready_i_36_n_0
    );
data_out_ready_i_37: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(7),
      I1 => i(6),
      O => data_out_ready_i_37_n_0
    );
data_out_ready_i_38: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(5),
      I1 => i(4),
      O => data_out_ready_i_38_n_0
    );
data_out_ready_i_39: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i(3),
      I1 => i(2),
      O => data_out_ready_i_39_n_0
    );
data_out_ready_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF2220000"
    )
        port map (
      I0 => data_out_ready_i_10_n_0,
      I1 => data_out_ready_i_11_n_0,
      I2 => data_out_ready_i_12_n_0,
      I3 => data_out_ready_i_13_n_0,
      I4 => mod_type(2),
      I5 => data_out_ready_i_14_n_0,
      O => data_out_ready_i_4_n_0
    );
data_out_ready_i_40: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      O => data_out_ready_i_40_n_0
    );
data_out_ready_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => data_in_valid,
      I1 => done_reg_n_0,
      I2 => data_in_ready,
      O => data_out_ready_i_5_n_0
    );
data_out_ready_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA080000"
    )
        port map (
      I0 => \data_out[5]_i_19_n_0\,
      I1 => i(3),
      I2 => i(4),
      I3 => i(5),
      I4 => data_out_ready_i_24_n_0,
      I5 => \data_out[5]_i_13_n_0\,
      O => data_out_ready_i_7_n_0
    );
data_out_ready_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \data_out[5]_i_19_n_0\,
      I1 => data_out_ready_i_25_n_0,
      I2 => i(2),
      I3 => \data_out[5]_i_14_n_0\,
      I4 => data_out_ready_i_26_n_0,
      I5 => data_out_ready_i_27_n_0,
      O => data_out_ready_i_8_n_0
    );
data_out_ready_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mod_type(1),
      I1 => mod_type(2),
      O => data_out_ready_i_9_n_0
    );
data_out_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_out_ready_i_1_n_0,
      Q => \^data_out_ready\,
      R => '0'
    );
data_out_ready_reg_i_15: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => data_out_ready_reg_i_15_n_0,
      CO(6) => data_out_ready_reg_i_15_n_1,
      CO(5) => data_out_ready_reg_i_15_n_2,
      CO(4) => data_out_ready_reg_i_15_n_3,
      CO(3) => data_out_ready_reg_i_15_n_4,
      CO(2) => data_out_ready_reg_i_15_n_5,
      CO(1) => data_out_ready_reg_i_15_n_6,
      CO(0) => data_out_ready_reg_i_15_n_7,
      DI(7 downto 2) => B"000000",
      DI(1) => data_out_ready_i_31_n_0,
      DI(0) => data_out_ready_i_32_n_0,
      O(7 downto 0) => NLW_data_out_ready_reg_i_15_O_UNCONNECTED(7 downto 0),
      S(7) => data_out_ready_i_33_n_0,
      S(6) => data_out_ready_i_34_n_0,
      S(5) => data_out_ready_i_35_n_0,
      S(4) => data_out_ready_i_36_n_0,
      S(3) => data_out_ready_i_37_n_0,
      S(2) => data_out_ready_i_38_n_0,
      S(1) => data_out_ready_i_39_n_0,
      S(0) => data_out_ready_i_40_n_0
    );
data_out_ready_reg_i_6: unisim.vcomponents.CARRY8
     port map (
      CI => data_out_ready_reg_i_15_n_0,
      CI_TOP => '0',
      CO(7) => data_out_ready_reg_i_6_n_0,
      CO(6) => data_out_ready_reg_i_6_n_1,
      CO(5) => data_out_ready_reg_i_6_n_2,
      CO(4) => data_out_ready_reg_i_6_n_3,
      CO(3) => data_out_ready_reg_i_6_n_4,
      CO(2) => data_out_ready_reg_i_6_n_5,
      CO(1) => data_out_ready_reg_i_6_n_6,
      CO(0) => data_out_ready_reg_i_6_n_7,
      DI(7) => i(31),
      DI(6 downto 0) => B"0000000",
      O(7 downto 0) => NLW_data_out_ready_reg_i_6_O_UNCONNECTED(7 downto 0),
      S(7) => data_out_ready_i_16_n_0,
      S(6) => data_out_ready_i_17_n_0,
      S(5) => data_out_ready_i_18_n_0,
      S(4) => data_out_ready_i_19_n_0,
      S(3) => data_out_ready_i_20_n_0,
      S(2) => data_out_ready_i_21_n_0,
      S(1) => data_out_ready_i_22_n_0,
      S(0) => data_out_ready_i_23_n_0
    );
\data_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[5]_i_1_n_0\,
      CLR => reset,
      D => data_out_1(0),
      Q => data_out(0)
    );
\data_out_reg[0]_i_10\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_reg[0]_i_15_n_0\,
      I1 => \data_out_reg[0]_i_16_n_0\,
      O => \data_out_reg[0]_i_10_n_0\,
      S => i(0)
    );
\data_out_reg[0]_i_11\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_reg[0]_i_17_n_0\,
      I1 => \data_out_reg[0]_i_18_n_0\,
      O => \data_out_reg[0]_i_11_n_0\,
      S => i(3)
    );
\data_out_reg[0]_i_12\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_out_reg[0]_i_19_n_0\,
      I1 => \data_out_reg[0]_i_20_n_0\,
      O => \data_out_reg[0]_i_12_n_0\,
      S => i(3)
    );
\data_out_reg[0]_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[0]_i_21_n_0\,
      I1 => \data_out[0]_i_22_n_0\,
      O => \data_out_reg[0]_i_15_n_0\,
      S => i(1)
    );
\data_out_reg[0]_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[0]_i_23_n_0\,
      I1 => \data_out[0]_i_24_n_0\,
      O => \data_out_reg[0]_i_16_n_0\,
      S => i(1)
    );
\data_out_reg[0]_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[0]_i_25_n_0\,
      I1 => \data_out[0]_i_26_n_0\,
      O => \data_out_reg[0]_i_17_n_0\,
      S => i(2)
    );
\data_out_reg[0]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[0]_i_27_n_0\,
      I1 => \data_out[0]_i_28_n_0\,
      O => \data_out_reg[0]_i_18_n_0\,
      S => i(2)
    );
\data_out_reg[0]_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[0]_i_29_n_0\,
      I1 => \data_out[0]_i_30_n_0\,
      O => \data_out_reg[0]_i_19_n_0\,
      S => i(2)
    );
\data_out_reg[0]_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[0]_i_31_n_0\,
      I1 => \data_out[0]_i_32_n_0\,
      O => \data_out_reg[0]_i_20_n_0\,
      S => i(2)
    );
\data_out_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[0]_i_8_n_0\,
      I1 => \data_out[0]_i_9_n_0\,
      O => \data_out_reg[0]_i_4_n_0\,
      S => i(0)
    );
\data_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[5]_i_1_n_0\,
      CLR => reset,
      D => data_out_1(1),
      Q => data_out(1)
    );
\data_out_reg[1]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[1]_i_15_n_0\,
      I1 => \data_out[1]_i_16_n_0\,
      O => \data_out_reg[1]_i_10_n_0\,
      S => i(1)
    );
\data_out_reg[1]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[1]_i_8_n_0\,
      I1 => \data_out[1]_i_9_n_0\,
      O => \data_out_reg[1]_i_4_n_0\,
      S => i(0)
    );
\data_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[5]_i_1_n_0\,
      CLR => reset,
      D => data_out_1(2),
      Q => data_out(2)
    );
\data_out_reg[2]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[2]_i_7_n_0\,
      I1 => \data_out[2]_i_8_n_0\,
      O => \data_out_reg[2]_i_4_n_0\,
      S => i(0)
    );
\data_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[5]_i_1_n_0\,
      CLR => reset,
      D => data_out_1(3),
      Q => data_out(3)
    );
\data_out_reg[3]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[3]_i_7_n_0\,
      I1 => \data_out[3]_i_8_n_0\,
      O => \data_out_reg[3]_i_4_n_0\,
      S => i(0)
    );
\data_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[5]_i_1_n_0\,
      CLR => reset,
      D => data_out_1(4),
      Q => data_out(4)
    );
\data_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[5]_i_1_n_0\,
      CLR => reset,
      D => data_out_1(5),
      Q => data_out(5)
    );
\data_out_reg[5]_i_24\: unisim.vcomponents.CARRY8
     port map (
      CI => \data_out[5]_i_44_n_0\,
      CI_TOP => '0',
      CO(7) => \data_out_reg[5]_i_24_n_0\,
      CO(6) => \data_out_reg[5]_i_24_n_1\,
      CO(5) => \data_out_reg[5]_i_24_n_2\,
      CO(4) => \data_out_reg[5]_i_24_n_3\,
      CO(3) => \data_out_reg[5]_i_24_n_4\,
      CO(2) => \data_out_reg[5]_i_24_n_5\,
      CO(1) => \data_out_reg[5]_i_24_n_6\,
      CO(0) => \data_out_reg[5]_i_24_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \data_out[5]_i_45_n_0\,
      O(7 downto 0) => \NLW_data_out_reg[5]_i_24_O_UNCONNECTED\(7 downto 0),
      S(7) => \data_out[5]_i_46_n_0\,
      S(6) => \data_out[5]_i_47_n_0\,
      S(5) => \data_out[5]_i_48_n_0\,
      S(4) => \data_out[5]_i_49_n_0\,
      S(3) => \data_out[5]_i_50_n_0\,
      S(2) => \data_out[5]_i_51_n_0\,
      S(1) => \data_out[5]_i_52_n_0\,
      S(0) => \data_out[5]_i_53_n_0\
    );
\data_out_reg[5]_i_41\: unisim.vcomponents.CARRY8
     port map (
      CI => \data_out_reg[5]_i_55_n_0\,
      CI_TOP => '0',
      CO(7) => \data_out_reg[5]_i_41_n_0\,
      CO(6) => \data_out_reg[5]_i_41_n_1\,
      CO(5) => \data_out_reg[5]_i_41_n_2\,
      CO(4) => \data_out_reg[5]_i_41_n_3\,
      CO(3) => \data_out_reg[5]_i_41_n_4\,
      CO(2) => \data_out_reg[5]_i_41_n_5\,
      CO(1) => \data_out_reg[5]_i_41_n_6\,
      CO(0) => \data_out_reg[5]_i_41_n_7\,
      DI(7) => i(31),
      DI(6 downto 0) => B"0000000",
      O(7 downto 0) => \NLW_data_out_reg[5]_i_41_O_UNCONNECTED\(7 downto 0),
      S(7) => \data_out[5]_i_56_n_0\,
      S(6) => \data_out[5]_i_57_n_0\,
      S(5) => \data_out[5]_i_58_n_0\,
      S(4) => \data_out[5]_i_59_n_0\,
      S(3) => \data_out[5]_i_60_n_0\,
      S(2) => \data_out[5]_i_61_n_0\,
      S(1) => \data_out[5]_i_62_n_0\,
      S(0) => \data_out[5]_i_63_n_0\
    );
\data_out_reg[5]_i_55\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \data_out_reg[5]_i_55_n_0\,
      CO(6) => \data_out_reg[5]_i_55_n_1\,
      CO(5) => \data_out_reg[5]_i_55_n_2\,
      CO(4) => \data_out_reg[5]_i_55_n_3\,
      CO(3) => \data_out_reg[5]_i_55_n_4\,
      CO(2) => \data_out_reg[5]_i_55_n_5\,
      CO(1) => \data_out_reg[5]_i_55_n_6\,
      CO(0) => \data_out_reg[5]_i_55_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => \data_out[5]_i_64_n_0\,
      DI(0) => \data_out[5]_i_65_n_0\,
      O(7 downto 0) => \NLW_data_out_reg[5]_i_55_O_UNCONNECTED\(7 downto 0),
      S(7) => \data_out[5]_i_66_n_0\,
      S(6) => \data_out[5]_i_67_n_0\,
      S(5) => \data_out[5]_i_68_n_0\,
      S(4) => \data_out[5]_i_69_n_0\,
      S(3) => \data_out[5]_i_70_n_0\,
      S(2) => \data_out[5]_i_71_n_0\,
      S(1) => \data_out[5]_i_72_n_0\,
      S(0) => \data_out[5]_i_73_n_0\
    );
\data_out_reg[5]_i_8\: unisim.vcomponents.CARRY8
     port map (
      CI => \data_out_reg[5]_i_24_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_data_out_reg[5]_i_8_CO_UNCONNECTED\(7),
      CO(6) => \data_out_reg[5]_i_8_n_1\,
      CO(5) => \data_out_reg[5]_i_8_n_2\,
      CO(4) => \data_out_reg[5]_i_8_n_3\,
      CO(3) => \data_out_reg[5]_i_8_n_4\,
      CO(2) => \data_out_reg[5]_i_8_n_5\,
      CO(1) => \data_out_reg[5]_i_8_n_6\,
      CO(0) => \data_out_reg[5]_i_8_n_7\,
      DI(7) => '0',
      DI(6) => i(31),
      DI(5 downto 0) => B"000000",
      O(7 downto 0) => \NLW_data_out_reg[5]_i_8_O_UNCONNECTED\(7 downto 0),
      S(7) => '0',
      S(6) => \data_out[5]_i_25_n_0\,
      S(5) => \data_out[5]_i_26_n_0\,
      S(4) => \data_out[5]_i_27_n_0\,
      S(3) => \data_out[5]_i_28_n_0\,
      S(2) => \data_out[5]_i_29_n_0\,
      S(1) => \data_out[5]_i_30_n_0\,
      S(0) => \data_out[5]_i_31_n_0\
    );
data_out_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F20"
    )
        port map (
      I0 => \^data_out_valid\,
      I1 => data_in_valid,
      I2 => done_reg_n_0,
      I3 => data_in_ready,
      O => data_out_valid_i_1_n_0
    );
data_out_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => data_out_valid_i_1_n_0,
      Q => \^data_out_valid\
    );
done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F00800FFFF080A"
    )
        port map (
      I0 => \data_out[5]_i_1_n_0\,
      I1 => done_i_2_n_0,
      I2 => reset,
      I3 => data_in_ready,
      I4 => done_reg_n_0,
      I5 => data_in_valid,
      O => done_i_1_n_0
    );
done_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBBAAAA"
    )
        port map (
      I0 => done_i_3_n_0,
      I1 => \data_out_ready1__15_carry__0_n_0\,
      I2 => \data_out_reg[5]_i_8_n_1\,
      I3 => mod_type(1),
      I4 => mod_type(2),
      O => done_i_2_n_0
    );
done_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000041555550415"
    )
        port map (
      I0 => mod_type(2),
      I1 => mod_type(0),
      I2 => data_out_ready_reg_i_6_n_0,
      I3 => \data_out_ready1_carry__0_n_0\,
      I4 => mod_type(1),
      I5 => \data_out_reg[5]_i_41_n_0\,
      O => done_i_3_n_0
    );
done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => done_i_1_n_0,
      Q => done_reg_n_0,
      R => '0'
    );
\i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(0),
      O => \i[0]_i_1_n_0\
    );
\i[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => reset,
      I1 => data_in_valid,
      I2 => done_reg_n_0,
      O => \i[31]_i_1_n_0\
    );
\i[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D8"
    )
        port map (
      I0 => done_reg_n_0,
      I1 => data_in_valid,
      I2 => data_in_ready,
      I3 => reset,
      O => i0_0
    );
\i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => \i[0]_i_1_n_0\,
      Q => i(0),
      R => \i[31]_i_1_n_0\
    );
\i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(10),
      Q => i(10),
      R => \i[31]_i_1_n_0\
    );
\i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(11),
      Q => i(11),
      R => \i[31]_i_1_n_0\
    );
\i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(12),
      Q => i(12),
      R => \i[31]_i_1_n_0\
    );
\i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(13),
      Q => i(13),
      R => \i[31]_i_1_n_0\
    );
\i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(14),
      Q => i(14),
      R => \i[31]_i_1_n_0\
    );
\i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(15),
      Q => i(15),
      R => \i[31]_i_1_n_0\
    );
\i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(16),
      Q => i(16),
      R => \i[31]_i_1_n_0\
    );
\i_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \i_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \i_reg[16]_i_1_n_0\,
      CO(6) => \i_reg[16]_i_1_n_1\,
      CO(5) => \i_reg[16]_i_1_n_2\,
      CO(4) => \i_reg[16]_i_1_n_3\,
      CO(3) => \i_reg[16]_i_1_n_4\,
      CO(2) => \i_reg[16]_i_1_n_5\,
      CO(1) => \i_reg[16]_i_1_n_6\,
      CO(0) => \i_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => i0(16 downto 9),
      S(7 downto 0) => i(16 downto 9)
    );
\i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(17),
      Q => i(17),
      R => \i[31]_i_1_n_0\
    );
\i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(18),
      Q => i(18),
      R => \i[31]_i_1_n_0\
    );
\i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(19),
      Q => i(19),
      R => \i[31]_i_1_n_0\
    );
\i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(1),
      Q => i(1),
      R => \i[31]_i_1_n_0\
    );
\i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(20),
      Q => i(20),
      R => \i[31]_i_1_n_0\
    );
\i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(21),
      Q => i(21),
      R => \i[31]_i_1_n_0\
    );
\i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(22),
      Q => i(22),
      R => \i[31]_i_1_n_0\
    );
\i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(23),
      Q => i(23),
      R => \i[31]_i_1_n_0\
    );
\i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(24),
      Q => i(24),
      R => \i[31]_i_1_n_0\
    );
\i_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \i_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \i_reg[24]_i_1_n_0\,
      CO(6) => \i_reg[24]_i_1_n_1\,
      CO(5) => \i_reg[24]_i_1_n_2\,
      CO(4) => \i_reg[24]_i_1_n_3\,
      CO(3) => \i_reg[24]_i_1_n_4\,
      CO(2) => \i_reg[24]_i_1_n_5\,
      CO(1) => \i_reg[24]_i_1_n_6\,
      CO(0) => \i_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => i0(24 downto 17),
      S(7 downto 0) => i(24 downto 17)
    );
\i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(25),
      Q => i(25),
      R => \i[31]_i_1_n_0\
    );
\i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(26),
      Q => i(26),
      R => \i[31]_i_1_n_0\
    );
\i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(27),
      Q => i(27),
      R => \i[31]_i_1_n_0\
    );
\i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(28),
      Q => i(28),
      R => \i[31]_i_1_n_0\
    );
\i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(29),
      Q => i(29),
      R => \i[31]_i_1_n_0\
    );
\i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(2),
      Q => i(2),
      R => \i[31]_i_1_n_0\
    );
\i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(30),
      Q => i(30),
      R => \i[31]_i_1_n_0\
    );
\i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(31),
      Q => i(31),
      R => \i[31]_i_1_n_0\
    );
\i_reg[31]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \i_reg[24]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_i_reg[31]_i_3_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \i_reg[31]_i_3_n_2\,
      CO(4) => \i_reg[31]_i_3_n_3\,
      CO(3) => \i_reg[31]_i_3_n_4\,
      CO(2) => \i_reg[31]_i_3_n_5\,
      CO(1) => \i_reg[31]_i_3_n_6\,
      CO(0) => \i_reg[31]_i_3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_i_reg[31]_i_3_O_UNCONNECTED\(7),
      O(6 downto 0) => i0(31 downto 25),
      S(7) => '0',
      S(6 downto 0) => i(31 downto 25)
    );
\i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(3),
      Q => i(3),
      R => \i[31]_i_1_n_0\
    );
\i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(4),
      Q => i(4),
      R => \i[31]_i_1_n_0\
    );
\i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(5),
      Q => i(5),
      R => \i[31]_i_1_n_0\
    );
\i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(6),
      Q => i(6),
      R => \i[31]_i_1_n_0\
    );
\i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(7),
      Q => i(7),
      R => \i[31]_i_1_n_0\
    );
\i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(8),
      Q => i(8),
      R => \i[31]_i_1_n_0\
    );
\i_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => i(0),
      CI_TOP => '0',
      CO(7) => \i_reg[8]_i_1_n_0\,
      CO(6) => \i_reg[8]_i_1_n_1\,
      CO(5) => \i_reg[8]_i_1_n_2\,
      CO(4) => \i_reg[8]_i_1_n_3\,
      CO(3) => \i_reg[8]_i_1_n_4\,
      CO(2) => \i_reg[8]_i_1_n_5\,
      CO(1) => \i_reg[8]_i_1_n_6\,
      CO(0) => \i_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => i0(8 downto 1),
      S(7 downto 0) => i(8 downto 1)
    );
\i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0_0,
      D => i0(9),
      Q => i(9),
      R => \i[31]_i_1_n_0\
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
    mod_type : in STD_LOGIC_VECTOR ( 2 downto 0 );
    data_in_valid : in STD_LOGIC;
    data_in_ready : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out_valid : out STD_LOGIC;
    data_out_ready : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Design_2_Bit_splitter_0_0,Bit_splitter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Bit_splitter,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, ASSOCIATED_BUSIF M_AXIS:S_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Design_2_clk, INSERT_VIP 0";
  attribute x_interface_info of data_in_ready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute x_interface_parameter of data_in_ready : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN Design_2_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of data_in_valid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute x_interface_parameter of data_in_valid : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN Design_2_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of data_out_ready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute x_interface_info of data_out_valid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of data_in : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute x_interface_info of data_out : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Bit_splitter
     port map (
      clk => clk,
      data_in(31 downto 0) => data_in(31 downto 0),
      data_in_ready => data_in_ready,
      data_in_valid => data_in_valid,
      data_out(5 downto 0) => data_out(5 downto 0),
      data_out_ready => data_out_ready,
      data_out_valid => data_out_valid,
      mod_type(2 downto 0) => mod_type(2 downto 0),
      reset => reset
    );
end STRUCTURE;
