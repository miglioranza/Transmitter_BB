-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Tue Mar 11 10:59:03 2025
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
    data_out_valid : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    data_out_ready : out STD_LOGIC;
    data_in_valid : in STD_LOGIC;
    data_in_ready : in STD_LOGIC;
    reset : in STD_LOGIC;
    mod_type : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Bit_splitter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Bit_splitter is
  signal data0 : STD_LOGIC;
  signal data2 : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal data_out125_in : STD_LOGIC;
  signal data_out127_in : STD_LOGIC;
  signal data_out129_in : STD_LOGIC;
  signal data_out133_out : STD_LOGIC;
  signal \data_out1__15_carry_i_1_n_0\ : STD_LOGIC;
  signal \data_out1__15_carry_i_2_n_0\ : STD_LOGIC;
  signal \data_out1__15_carry_i_3_n_0\ : STD_LOGIC;
  signal \data_out1__15_carry_n_12\ : STD_LOGIC;
  signal \data_out1__15_carry_n_13\ : STD_LOGIC;
  signal \data_out1__15_carry_n_14\ : STD_LOGIC;
  signal \data_out1__15_carry_n_15\ : STD_LOGIC;
  signal \data_out1__15_carry_n_5\ : STD_LOGIC;
  signal \data_out1__15_carry_n_6\ : STD_LOGIC;
  signal \data_out1__15_carry_n_7\ : STD_LOGIC;
  signal \data_out1__24_carry_i_1_n_0\ : STD_LOGIC;
  signal \data_out1__24_carry_i_2_n_0\ : STD_LOGIC;
  signal \data_out1__24_carry_i_3_n_0\ : STD_LOGIC;
  signal \data_out1__24_carry_n_12\ : STD_LOGIC;
  signal \data_out1__24_carry_n_13\ : STD_LOGIC;
  signal \data_out1__24_carry_n_14\ : STD_LOGIC;
  signal \data_out1__24_carry_n_15\ : STD_LOGIC;
  signal \data_out1__24_carry_n_5\ : STD_LOGIC;
  signal \data_out1__24_carry_n_6\ : STD_LOGIC;
  signal \data_out1__24_carry_n_7\ : STD_LOGIC;
  signal \data_out1__28\ : STD_LOGIC;
  signal \data_out1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \data_out1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \data_out1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \data_out1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \data_out1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \data_out1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \data_out1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \data_out1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \data_out1_carry__0_n_0\ : STD_LOGIC;
  signal \data_out1_carry__0_n_1\ : STD_LOGIC;
  signal \data_out1_carry__0_n_2\ : STD_LOGIC;
  signal \data_out1_carry__0_n_3\ : STD_LOGIC;
  signal \data_out1_carry__0_n_4\ : STD_LOGIC;
  signal \data_out1_carry__0_n_5\ : STD_LOGIC;
  signal \data_out1_carry__0_n_6\ : STD_LOGIC;
  signal \data_out1_carry__0_n_7\ : STD_LOGIC;
  signal data_out1_carry_i_10_n_0 : STD_LOGIC;
  signal data_out1_carry_i_1_n_0 : STD_LOGIC;
  signal data_out1_carry_i_2_n_0 : STD_LOGIC;
  signal data_out1_carry_i_3_n_0 : STD_LOGIC;
  signal data_out1_carry_i_4_n_0 : STD_LOGIC;
  signal data_out1_carry_i_5_n_0 : STD_LOGIC;
  signal data_out1_carry_i_6_n_0 : STD_LOGIC;
  signal data_out1_carry_i_7_n_0 : STD_LOGIC;
  signal data_out1_carry_i_8_n_0 : STD_LOGIC;
  signal data_out1_carry_i_9_n_0 : STD_LOGIC;
  signal data_out1_carry_n_0 : STD_LOGIC;
  signal data_out1_carry_n_1 : STD_LOGIC;
  signal data_out1_carry_n_2 : STD_LOGIC;
  signal data_out1_carry_n_3 : STD_LOGIC;
  signal data_out1_carry_n_4 : STD_LOGIC;
  signal data_out1_carry_n_5 : STD_LOGIC;
  signal data_out1_carry_n_6 : STD_LOGIC;
  signal data_out1_carry_n_7 : STD_LOGIC;
  signal \data_out[0]_i_10_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_15_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_16_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_17_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_18_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_19_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_20_n_0\ : STD_LOGIC;
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
  signal \data_out[0]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_9_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_11_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_12_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_13_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_14_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_15_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_16_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_10_n_0\ : STD_LOGIC;
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
  signal \data_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_9_n_0\ : STD_LOGIC;
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
  signal \data_out[5]_i_24_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_25_n_0\ : STD_LOGIC;
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
  signal \data_out[5]_i_40_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_41_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_42_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_43_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_44_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_45_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_46_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_47_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_49_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_50_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_51_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_52_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_53_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_54_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_55_n_0\ : STD_LOGIC;
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
  signal \data_out[5]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_9_n_0\ : STD_LOGIC;
  signal data_out_1 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^data_out_ready\ : STD_LOGIC;
  signal data_out_ready20_out : STD_LOGIC;
  signal data_out_ready23_out : STD_LOGIC;
  signal data_out_ready_0 : STD_LOGIC;
  signal data_out_ready_i_15_n_0 : STD_LOGIC;
  signal data_out_ready_i_16_n_0 : STD_LOGIC;
  signal data_out_ready_i_17_n_0 : STD_LOGIC;
  signal data_out_ready_i_18_n_0 : STD_LOGIC;
  signal data_out_ready_i_19_n_0 : STD_LOGIC;
  signal data_out_ready_i_1_n_0 : STD_LOGIC;
  signal data_out_ready_i_21_n_0 : STD_LOGIC;
  signal data_out_ready_i_22_n_0 : STD_LOGIC;
  signal data_out_ready_i_23_n_0 : STD_LOGIC;
  signal data_out_ready_i_24_n_0 : STD_LOGIC;
  signal data_out_ready_i_25_n_0 : STD_LOGIC;
  signal data_out_ready_i_26_n_0 : STD_LOGIC;
  signal data_out_ready_i_27_n_0 : STD_LOGIC;
  signal data_out_ready_i_28_n_0 : STD_LOGIC;
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
  signal data_out_ready_i_40_n_0 : STD_LOGIC;
  signal data_out_ready_i_41_n_0 : STD_LOGIC;
  signal data_out_ready_i_42_n_0 : STD_LOGIC;
  signal data_out_ready_i_43_n_0 : STD_LOGIC;
  signal data_out_ready_i_44_n_0 : STD_LOGIC;
  signal data_out_ready_i_45_n_0 : STD_LOGIC;
  signal data_out_ready_i_46_n_0 : STD_LOGIC;
  signal data_out_ready_i_47_n_0 : STD_LOGIC;
  signal data_out_ready_i_48_n_0 : STD_LOGIC;
  signal data_out_ready_i_49_n_0 : STD_LOGIC;
  signal data_out_ready_i_4_n_0 : STD_LOGIC;
  signal data_out_ready_i_50_n_0 : STD_LOGIC;
  signal data_out_ready_i_51_n_0 : STD_LOGIC;
  signal data_out_ready_i_52_n_0 : STD_LOGIC;
  signal data_out_ready_i_53_n_0 : STD_LOGIC;
  signal data_out_ready_i_54_n_0 : STD_LOGIC;
  signal data_out_ready_i_55_n_0 : STD_LOGIC;
  signal data_out_ready_i_56_n_0 : STD_LOGIC;
  signal data_out_ready_i_57_n_0 : STD_LOGIC;
  signal data_out_ready_i_5_n_0 : STD_LOGIC;
  signal data_out_ready_i_6_n_0 : STD_LOGIC;
  signal data_out_ready_i_7_n_0 : STD_LOGIC;
  signal data_out_ready_i_8_n_0 : STD_LOGIC;
  signal data_out_ready_reg_i_12_n_0 : STD_LOGIC;
  signal data_out_ready_reg_i_12_n_1 : STD_LOGIC;
  signal data_out_ready_reg_i_12_n_2 : STD_LOGIC;
  signal data_out_ready_reg_i_12_n_3 : STD_LOGIC;
  signal data_out_ready_reg_i_12_n_4 : STD_LOGIC;
  signal data_out_ready_reg_i_12_n_5 : STD_LOGIC;
  signal data_out_ready_reg_i_12_n_6 : STD_LOGIC;
  signal data_out_ready_reg_i_12_n_7 : STD_LOGIC;
  signal data_out_ready_reg_i_14_n_0 : STD_LOGIC;
  signal data_out_ready_reg_i_14_n_1 : STD_LOGIC;
  signal data_out_ready_reg_i_14_n_2 : STD_LOGIC;
  signal data_out_ready_reg_i_14_n_3 : STD_LOGIC;
  signal data_out_ready_reg_i_14_n_4 : STD_LOGIC;
  signal data_out_ready_reg_i_14_n_5 : STD_LOGIC;
  signal data_out_ready_reg_i_14_n_6 : STD_LOGIC;
  signal data_out_ready_reg_i_14_n_7 : STD_LOGIC;
  signal data_out_ready_reg_i_20_n_0 : STD_LOGIC;
  signal data_out_ready_reg_i_20_n_1 : STD_LOGIC;
  signal data_out_ready_reg_i_20_n_2 : STD_LOGIC;
  signal data_out_ready_reg_i_20_n_3 : STD_LOGIC;
  signal data_out_ready_reg_i_20_n_4 : STD_LOGIC;
  signal data_out_ready_reg_i_20_n_5 : STD_LOGIC;
  signal data_out_ready_reg_i_20_n_6 : STD_LOGIC;
  signal data_out_ready_reg_i_20_n_7 : STD_LOGIC;
  signal data_out_ready_reg_i_29_n_0 : STD_LOGIC;
  signal data_out_ready_reg_i_29_n_1 : STD_LOGIC;
  signal data_out_ready_reg_i_29_n_2 : STD_LOGIC;
  signal data_out_ready_reg_i_29_n_3 : STD_LOGIC;
  signal data_out_ready_reg_i_29_n_4 : STD_LOGIC;
  signal data_out_ready_reg_i_29_n_5 : STD_LOGIC;
  signal data_out_ready_reg_i_29_n_6 : STD_LOGIC;
  signal data_out_ready_reg_i_29_n_7 : STD_LOGIC;
  signal data_out_ready_reg_i_2_n_0 : STD_LOGIC;
  signal \data_out_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \data_out_reg[0]_i_12_n_0\ : STD_LOGIC;
  signal \data_out_reg[0]_i_13_n_0\ : STD_LOGIC;
  signal \data_out_reg[0]_i_14_n_0\ : STD_LOGIC;
  signal \data_out_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \data_out_reg[1]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_reg[1]_i_9_n_0\ : STD_LOGIC;
  signal \data_out_reg[5]_i_10_n_0\ : STD_LOGIC;
  signal \data_out_reg[5]_i_10_n_1\ : STD_LOGIC;
  signal \data_out_reg[5]_i_10_n_2\ : STD_LOGIC;
  signal \data_out_reg[5]_i_10_n_3\ : STD_LOGIC;
  signal \data_out_reg[5]_i_10_n_4\ : STD_LOGIC;
  signal \data_out_reg[5]_i_10_n_5\ : STD_LOGIC;
  signal \data_out_reg[5]_i_10_n_6\ : STD_LOGIC;
  signal \data_out_reg[5]_i_10_n_7\ : STD_LOGIC;
  signal \data_out_reg[5]_i_26_n_1\ : STD_LOGIC;
  signal \data_out_reg[5]_i_26_n_2\ : STD_LOGIC;
  signal \data_out_reg[5]_i_26_n_3\ : STD_LOGIC;
  signal \data_out_reg[5]_i_26_n_4\ : STD_LOGIC;
  signal \data_out_reg[5]_i_26_n_5\ : STD_LOGIC;
  signal \data_out_reg[5]_i_26_n_6\ : STD_LOGIC;
  signal \data_out_reg[5]_i_26_n_7\ : STD_LOGIC;
  signal \data_out_reg[5]_i_48_n_0\ : STD_LOGIC;
  signal \data_out_reg[5]_i_48_n_1\ : STD_LOGIC;
  signal \data_out_reg[5]_i_48_n_2\ : STD_LOGIC;
  signal \data_out_reg[5]_i_48_n_3\ : STD_LOGIC;
  signal \data_out_reg[5]_i_48_n_4\ : STD_LOGIC;
  signal \data_out_reg[5]_i_48_n_5\ : STD_LOGIC;
  signal \data_out_reg[5]_i_48_n_6\ : STD_LOGIC;
  signal \data_out_reg[5]_i_48_n_7\ : STD_LOGIC;
  signal \data_out_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_reg[5]_i_4_n_1\ : STD_LOGIC;
  signal \data_out_reg[5]_i_4_n_2\ : STD_LOGIC;
  signal \data_out_reg[5]_i_4_n_3\ : STD_LOGIC;
  signal \data_out_reg[5]_i_4_n_4\ : STD_LOGIC;
  signal \data_out_reg[5]_i_4_n_5\ : STD_LOGIC;
  signal \data_out_reg[5]_i_4_n_6\ : STD_LOGIC;
  signal \data_out_reg[5]_i_4_n_7\ : STD_LOGIC;
  signal data_out_valid_i_1_n_0 : STD_LOGIC;
  signal \done__8\ : STD_LOGIC;
  signal done_i_10_n_0 : STD_LOGIC;
  signal done_i_13_n_0 : STD_LOGIC;
  signal done_i_14_n_0 : STD_LOGIC;
  signal done_i_15_n_0 : STD_LOGIC;
  signal done_i_1_n_0 : STD_LOGIC;
  signal done_i_4_n_0 : STD_LOGIC;
  signal done_i_5_n_0 : STD_LOGIC;
  signal done_i_6_n_0 : STD_LOGIC;
  signal done_i_7_n_0 : STD_LOGIC;
  signal done_i_8_n_0 : STD_LOGIC;
  signal done_i_9_n_0 : STD_LOGIC;
  signal done_reg_i_3_n_0 : STD_LOGIC;
  signal done_reg_n_0 : STD_LOGIC;
  signal \i[0]_i_1_n_0\ : STD_LOGIC;
  signal \i[0]_i_2_n_0\ : STD_LOGIC;
  signal \i[0]_i_4_n_0\ : STD_LOGIC;
  signal i_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \i_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \i_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \i_reg[0]_i_3_n_10\ : STD_LOGIC;
  signal \i_reg[0]_i_3_n_11\ : STD_LOGIC;
  signal \i_reg[0]_i_3_n_12\ : STD_LOGIC;
  signal \i_reg[0]_i_3_n_13\ : STD_LOGIC;
  signal \i_reg[0]_i_3_n_14\ : STD_LOGIC;
  signal \i_reg[0]_i_3_n_15\ : STD_LOGIC;
  signal \i_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \i_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \i_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \i_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \i_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \i_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \i_reg[0]_i_3_n_8\ : STD_LOGIC;
  signal \i_reg[0]_i_3_n_9\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \NLW_data_out1__15_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_data_out1__15_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_data_out1__24_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_data_out1__24_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_data_out1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_data_out1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_data_out_ready_reg_i_12_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_data_out_ready_reg_i_14_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_data_out_ready_reg_i_20_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_data_out_ready_reg_i_29_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_data_out_reg[5]_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_data_out_reg[5]_i_26_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_data_out_reg[5]_i_26_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_data_out_reg[5]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_data_out_reg[5]_i_48_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_i_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of data_out1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \data_out1_carry__0\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_out[0]_i_20\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[1]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[2]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[2]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[3]_i_10\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[3]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[3]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out[4]_i_14\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[4]_i_18\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out[5]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[5]_i_56\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out[5]_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of data_out_ready_i_18 : label is "soft_lutpair4";
  attribute COMPARATOR_THRESHOLD of data_out_ready_reg_i_12 : label is 11;
  attribute COMPARATOR_THRESHOLD of data_out_ready_reg_i_14 : label is 11;
  attribute COMPARATOR_THRESHOLD of data_out_ready_reg_i_20 : label is 11;
  attribute COMPARATOR_THRESHOLD of data_out_ready_reg_i_29 : label is 11;
  attribute COMPARATOR_THRESHOLD of \data_out_reg[5]_i_10\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \data_out_reg[5]_i_26\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \data_out_reg[5]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \data_out_reg[5]_i_48\ : label is 11;
  attribute SOFT_HLUTNM of data_out_valid_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of done_i_15 : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \i_reg[0]_i_3\ : label is 16;
  attribute ADDER_THRESHOLD of \i_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \i_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \i_reg[8]_i_1\ : label is 16;
begin
  data_out_ready <= \^data_out_ready\;
\data_out1__15_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_data_out1__15_carry_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \data_out1__15_carry_n_5\,
      CO(1) => \data_out1__15_carry_n_6\,
      CO(0) => \data_out1__15_carry_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 1) => i_reg(3 downto 2),
      DI(0) => '0',
      O(7 downto 4) => \NLW_data_out1__15_carry_O_UNCONNECTED\(7 downto 4),
      O(3) => \data_out1__15_carry_n_12\,
      O(2) => \data_out1__15_carry_n_13\,
      O(1) => \data_out1__15_carry_n_14\,
      O(0) => \data_out1__15_carry_n_15\,
      S(7 downto 4) => B"0000",
      S(3) => \data_out1__15_carry_i_1_n_0\,
      S(2) => \data_out1__15_carry_i_2_n_0\,
      S(1) => \data_out1__15_carry_i_3_n_0\,
      S(0) => i_reg(1)
    );
\data_out1__15_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_reg(4),
      I1 => i_reg(2),
      O => \data_out1__15_carry_i_1_n_0\
    );
\data_out1__15_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_reg(3),
      I1 => i_reg(1),
      O => \data_out1__15_carry_i_2_n_0\
    );
\data_out1__15_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_reg(2),
      I1 => i_reg(0),
      O => \data_out1__15_carry_i_3_n_0\
    );
\data_out1__24_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_data_out1__24_carry_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \data_out1__24_carry_n_5\,
      CO(1) => \data_out1__24_carry_n_6\,
      CO(0) => \data_out1__24_carry_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2) => i_reg(0),
      DI(1 downto 0) => B"01",
      O(7 downto 4) => \NLW_data_out1__24_carry_O_UNCONNECTED\(7 downto 4),
      O(3) => \data_out1__24_carry_n_12\,
      O(2) => \data_out1__24_carry_n_13\,
      O(1) => \data_out1__24_carry_n_14\,
      O(0) => \data_out1__24_carry_n_15\,
      S(7 downto 4) => B"0000",
      S(3) => \data_out1__24_carry_i_1_n_0\,
      S(2) => \data_out1__24_carry_i_2_n_0\,
      S(1) => \data_out1__24_carry_i_3_n_0\,
      S(0) => i_reg(0)
    );
\data_out1__24_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i_reg(1),
      I1 => i_reg(3),
      O => \data_out1__24_carry_i_1_n_0\
    );
\data_out1__24_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(2),
      O => \data_out1__24_carry_i_2_n_0\
    );
\data_out1__24_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(1),
      O => \data_out1__24_carry_i_3_n_0\
    );
data_out1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => data_out1_carry_n_0,
      CO(6) => data_out1_carry_n_1,
      CO(5) => data_out1_carry_n_2,
      CO(4) => data_out1_carry_n_3,
      CO(3) => data_out1_carry_n_4,
      CO(2) => data_out1_carry_n_5,
      CO(1) => data_out1_carry_n_6,
      CO(0) => data_out1_carry_n_7,
      DI(7 downto 2) => B"000000",
      DI(1) => data_out1_carry_i_1_n_0,
      DI(0) => data_out1_carry_i_2_n_0,
      O(7 downto 0) => NLW_data_out1_carry_O_UNCONNECTED(7 downto 0),
      S(7) => data_out1_carry_i_3_n_0,
      S(6) => data_out1_carry_i_4_n_0,
      S(5) => data_out1_carry_i_5_n_0,
      S(4) => data_out1_carry_i_6_n_0,
      S(3) => data_out1_carry_i_7_n_0,
      S(2) => data_out1_carry_i_8_n_0,
      S(1) => data_out1_carry_i_9_n_0,
      S(0) => data_out1_carry_i_10_n_0
    );
\data_out1_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => data_out1_carry_n_0,
      CI_TOP => '0',
      CO(7) => \data_out1_carry__0_n_0\,
      CO(6) => \data_out1_carry__0_n_1\,
      CO(5) => \data_out1_carry__0_n_2\,
      CO(4) => \data_out1_carry__0_n_3\,
      CO(3) => \data_out1_carry__0_n_4\,
      CO(2) => \data_out1_carry__0_n_5\,
      CO(1) => \data_out1_carry__0_n_6\,
      CO(0) => \data_out1_carry__0_n_7\,
      DI(7) => i_reg(31),
      DI(6 downto 0) => B"0000000",
      O(7 downto 0) => \NLW_data_out1_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \data_out1_carry__0_i_1_n_0\,
      S(6) => \data_out1_carry__0_i_2_n_0\,
      S(5) => \data_out1_carry__0_i_3_n_0\,
      S(4) => \data_out1_carry__0_i_4_n_0\,
      S(3) => \data_out1_carry__0_i_5_n_0\,
      S(2) => \data_out1_carry__0_i_6_n_0\,
      S(1) => \data_out1_carry__0_i_7_n_0\,
      S(0) => \data_out1_carry__0_i_8_n_0\
    );
\data_out1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(31),
      I1 => i_reg(30),
      O => \data_out1_carry__0_i_1_n_0\
    );
\data_out1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(28),
      I1 => i_reg(29),
      O => \data_out1_carry__0_i_2_n_0\
    );
\data_out1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(26),
      I1 => i_reg(27),
      O => \data_out1_carry__0_i_3_n_0\
    );
\data_out1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(24),
      I1 => i_reg(25),
      O => \data_out1_carry__0_i_4_n_0\
    );
\data_out1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(22),
      I1 => i_reg(23),
      O => \data_out1_carry__0_i_5_n_0\
    );
\data_out1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(20),
      I1 => i_reg(21),
      O => \data_out1_carry__0_i_6_n_0\
    );
\data_out1_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(18),
      I1 => i_reg(19),
      O => \data_out1_carry__0_i_7_n_0\
    );
\data_out1_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(16),
      I1 => i_reg(17),
      O => \data_out1_carry__0_i_8_n_0\
    );
data_out1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(2),
      I1 => i_reg(3),
      O => data_out1_carry_i_1_n_0
    );
data_out1_carry_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      O => data_out1_carry_i_10_n_0
    );
data_out1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      O => data_out1_carry_i_2_n_0
    );
data_out1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(14),
      I1 => i_reg(15),
      O => data_out1_carry_i_3_n_0
    );
data_out1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(12),
      I1 => i_reg(13),
      O => data_out1_carry_i_4_n_0
    );
data_out1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(10),
      I1 => i_reg(11),
      O => data_out1_carry_i_5_n_0
    );
data_out1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(8),
      I1 => i_reg(9),
      O => data_out1_carry_i_6_n_0
    );
data_out1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(6),
      I1 => i_reg(7),
      O => data_out1_carry_i_7_n_0
    );
data_out1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(4),
      I1 => i_reg(5),
      O => data_out1_carry_i_8_n_0
    );
data_out1_carry_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_reg(2),
      I1 => i_reg(3),
      O => data_out1_carry_i_9_n_0
    );
\data_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0A0C0A0C0AFC0A0"
    )
        port map (
      I0 => \data_out[0]_i_2_n_0\,
      I1 => \data_out_reg[0]_i_3_n_0\,
      I2 => mod_type(0),
      I3 => mod_type(2),
      I4 => data0,
      I5 => mod_type(1),
      O => data_out_1(0)
    );
\data_out[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out[2]_i_5_n_0\,
      I1 => \data_out1__24_carry_n_15\,
      I2 => \data_out[0]_i_20_n_0\,
      I3 => \data_out_reg[5]_i_26_n_1\,
      I4 => data_in(30),
      O => \data_out[0]_i_10_n_0\
    );
\data_out[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(26),
      I1 => data_in(10),
      I2 => i_reg(2),
      I3 => data_in(18),
      I4 => i_reg(3),
      I5 => data_in(2),
      O => \data_out[0]_i_15_n_0\
    );
\data_out[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(30),
      I1 => data_in(14),
      I2 => i_reg(2),
      I3 => data_in(22),
      I4 => i_reg(3),
      I5 => data_in(6),
      O => \data_out[0]_i_16_n_0\
    );
\data_out[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(24),
      I1 => data_in(8),
      I2 => i_reg(2),
      I3 => data_in(16),
      I4 => i_reg(3),
      I5 => data_in(0),
      O => \data_out[0]_i_17_n_0\
    );
\data_out[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(28),
      I1 => data_in(12),
      I2 => i_reg(2),
      I3 => data_in(20),
      I4 => i_reg(3),
      I5 => data_in(4),
      O => \data_out[0]_i_18_n_0\
    );
\data_out[0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[4]_i_11_n_0\,
      I1 => \data_out[2]_i_10_n_0\,
      I2 => \data_out1__15_carry_n_15\,
      I3 => \data_out[4]_i_13_n_0\,
      I4 => \data_out1__15_carry_n_14\,
      I5 => \data_out[0]_i_29_n_0\,
      O => \data_out[0]_i_19_n_0\
    );
\data_out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[0]_i_5_n_0\,
      I1 => \data_out[0]_i_6_n_0\,
      I2 => mod_type(1),
      I3 => \data_out_reg[0]_i_7_n_0\,
      I4 => i_reg(0),
      I5 => \data_out_reg[0]_i_8_n_0\,
      O => \data_out[0]_i_2_n_0\
    );
\data_out[0]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[4]_i_19_n_0\,
      I1 => \data_out1__24_carry_n_14\,
      I2 => \data_out[0]_i_30_n_0\,
      O => \data_out[0]_i_20_n_0\
    );
\data_out[0]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(27),
      I1 => data_in(26),
      I2 => i_reg(1),
      I3 => data_in(25),
      I4 => i_reg(0),
      I5 => data_in(24),
      O => \data_out[0]_i_21_n_0\
    );
\data_out[0]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(31),
      I1 => data_in(30),
      I2 => i_reg(1),
      I3 => data_in(29),
      I4 => i_reg(0),
      I5 => data_in(28),
      O => \data_out[0]_i_22_n_0\
    );
\data_out[0]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(19),
      I1 => data_in(18),
      I2 => i_reg(1),
      I3 => data_in(17),
      I4 => i_reg(0),
      I5 => data_in(16),
      O => \data_out[0]_i_23_n_0\
    );
\data_out[0]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(23),
      I1 => data_in(22),
      I2 => i_reg(1),
      I3 => data_in(21),
      I4 => i_reg(0),
      I5 => data_in(20),
      O => \data_out[0]_i_24_n_0\
    );
\data_out[0]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(11),
      I1 => data_in(10),
      I2 => i_reg(1),
      I3 => data_in(9),
      I4 => i_reg(0),
      I5 => data_in(8),
      O => \data_out[0]_i_25_n_0\
    );
\data_out[0]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(15),
      I1 => data_in(14),
      I2 => i_reg(1),
      I3 => data_in(13),
      I4 => i_reg(0),
      I5 => data_in(12),
      O => \data_out[0]_i_26_n_0\
    );
\data_out[0]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(3),
      I1 => data_in(2),
      I2 => i_reg(1),
      I3 => data_in(1),
      I4 => i_reg(0),
      I5 => data_in(0),
      O => \data_out[0]_i_27_n_0\
    );
\data_out[0]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(7),
      I1 => data_in(6),
      I2 => i_reg(1),
      I3 => data_in(5),
      I4 => i_reg(0),
      I5 => data_in(4),
      O => \data_out[0]_i_28_n_0\
    );
\data_out[0]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(24),
      I1 => data_in(8),
      I2 => \data_out1__15_carry_n_13\,
      I3 => data_in(16),
      I4 => \data_out1__15_carry_n_12\,
      I5 => data_in(0),
      O => \data_out[0]_i_29_n_0\
    );
\data_out[0]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(24),
      I1 => data_in(8),
      I2 => \data_out1__24_carry_n_13\,
      I3 => data_in(16),
      I4 => \data_out1__24_carry_n_12\,
      I5 => data_in(0),
      O => \data_out[0]_i_30_n_0\
    );
\data_out[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_reg[0]_i_11_n_0\,
      I1 => \data_out_reg[0]_i_12_n_0\,
      I2 => i_reg(4),
      I3 => \data_out_reg[0]_i_13_n_0\,
      I4 => i_reg(3),
      I5 => \data_out_reg[0]_i_14_n_0\,
      O => data0
    );
\data_out[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(28),
      I1 => data_in(12),
      I2 => i_reg(1),
      I3 => data_in(20),
      I4 => i_reg(2),
      I5 => data_in(4),
      O => \data_out[0]_i_5_n_0\
    );
\data_out[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(24),
      I1 => data_in(8),
      I2 => i_reg(1),
      I3 => data_in(16),
      I4 => i_reg(2),
      I5 => data_in(0),
      O => \data_out[0]_i_6_n_0\
    );
\data_out[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out[1]_i_6_n_0\,
      I1 => i_reg(0),
      I2 => \data_out[0]_i_19_n_0\,
      I3 => \data_out1_carry__0_n_0\,
      I4 => data_in(30),
      O => \data_out[0]_i_9_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB80000000000"
    )
        port map (
      I0 => \data_out[1]_i_2_n_0\,
      I1 => mod_type(1),
      I2 => \data_out[1]_i_3_n_0\,
      I3 => mod_type(2),
      I4 => \data_out[1]_i_4_n_0\,
      I5 => mod_type(0),
      O => data_out_1(1)
    );
\data_out[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(25),
      I1 => data_in(9),
      I2 => \data_out1__24_carry_n_13\,
      I3 => data_in(17),
      I4 => \data_out1__24_carry_n_12\,
      I5 => data_in(1),
      O => \data_out[1]_i_11_n_0\
    );
\data_out[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(25),
      I1 => data_in(9),
      I2 => \data_out1__15_carry_n_13\,
      I3 => data_in(17),
      I4 => \data_out1__15_carry_n_12\,
      I5 => data_in(1),
      O => \data_out[1]_i_12_n_0\
    );
\data_out[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(27),
      I1 => data_in(11),
      I2 => i_reg(2),
      I3 => data_in(19),
      I4 => i_reg(3),
      I5 => data_in(3),
      O => \data_out[1]_i_13_n_0\
    );
\data_out[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(31),
      I1 => data_in(15),
      I2 => i_reg(2),
      I3 => data_in(23),
      I4 => i_reg(3),
      I5 => data_in(7),
      O => \data_out[1]_i_14_n_0\
    );
\data_out[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(25),
      I1 => data_in(9),
      I2 => i_reg(2),
      I3 => data_in(17),
      I4 => i_reg(3),
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
      I2 => i_reg(2),
      I3 => data_in(21),
      I4 => i_reg(3),
      I5 => data_in(5),
      O => \data_out[1]_i_16_n_0\
    );
\data_out[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out[3]_i_5_n_0\,
      I1 => \data_out1__24_carry_n_15\,
      I2 => \data_out[1]_i_5_n_0\,
      I3 => \data_out_reg[5]_i_26_n_1\,
      I4 => data_in(31),
      O => \data_out[1]_i_2_n_0\
    );
\data_out[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out[2]_i_6_n_0\,
      I1 => i_reg(0),
      I2 => \data_out[1]_i_6_n_0\,
      I3 => \data_out1_carry__0_n_0\,
      I4 => data_in(31),
      O => \data_out[1]_i_3_n_0\
    );
\data_out[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[1]_i_7_n_0\,
      I1 => \data_out[1]_i_8_n_0\,
      I2 => mod_type(1),
      I3 => \data_out_reg[1]_i_9_n_0\,
      I4 => i_reg(0),
      I5 => \data_out_reg[1]_i_10_n_0\,
      O => \data_out[1]_i_4_n_0\
    );
\data_out[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[5]_i_57_n_0\,
      I1 => \data_out1__24_carry_n_14\,
      I2 => \data_out[1]_i_11_n_0\,
      O => \data_out[1]_i_5_n_0\
    );
\data_out[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[4]_i_17_n_0\,
      I1 => \data_out[3]_i_11_n_0\,
      I2 => \data_out1__15_carry_n_15\,
      I3 => \data_out[4]_i_15_n_0\,
      I4 => \data_out1__15_carry_n_14\,
      I5 => \data_out[1]_i_12_n_0\,
      O => \data_out[1]_i_6_n_0\
    );
\data_out[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(29),
      I1 => data_in(13),
      I2 => i_reg(1),
      I3 => data_in(21),
      I4 => i_reg(2),
      I5 => data_in(5),
      O => \data_out[1]_i_7_n_0\
    );
\data_out[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(25),
      I1 => data_in(9),
      I2 => i_reg(1),
      I3 => data_in(17),
      I4 => i_reg(2),
      I5 => data_in(1),
      O => \data_out[1]_i_8_n_0\
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFC0A0C000000000"
    )
        port map (
      I0 => \data_out[2]_i_2_n_0\,
      I1 => \data_out[2]_i_3_n_0\,
      I2 => mod_type(2),
      I3 => mod_type(1),
      I4 => data2(2),
      I5 => mod_type(0),
      O => data_out_1(2)
    );
\data_out[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(26),
      I1 => data_in(10),
      I2 => \data_out1__15_carry_n_13\,
      I3 => data_in(18),
      I4 => \data_out1__15_carry_n_12\,
      I5 => data_in(2),
      O => \data_out[2]_i_10_n_0\
    );
\data_out[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \data_out_reg[5]_i_26_n_1\,
      I1 => \data_out[2]_i_5_n_0\,
      I2 => \data_out1__24_carry_n_15\,
      I3 => \data_out[4]_i_7_n_0\,
      O => \data_out[2]_i_2_n_0\
    );
\data_out[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \data_out1_carry__0_n_0\,
      I1 => \data_out[2]_i_6_n_0\,
      I2 => i_reg(0),
      I3 => \data_out[3]_i_6_n_0\,
      O => \data_out[2]_i_3_n_0\
    );
\data_out[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[4]_i_8_n_0\,
      I1 => \data_out1__24_carry_n_14\,
      I2 => \data_out[2]_i_9_n_0\,
      O => \data_out[2]_i_5_n_0\
    );
\data_out[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[4]_i_12_n_0\,
      I1 => \data_out[4]_i_13_n_0\,
      I2 => \data_out1__15_carry_n_15\,
      I3 => \data_out[4]_i_11_n_0\,
      I4 => \data_out1__15_carry_n_14\,
      I5 => \data_out[2]_i_10_n_0\,
      O => \data_out[2]_i_6_n_0\
    );
\data_out[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(26),
      I1 => data_in(10),
      I2 => i_reg(1),
      I3 => data_in(18),
      I4 => i_reg(2),
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
      I2 => i_reg(1),
      I3 => data_in(22),
      I4 => i_reg(2),
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
      I2 => \data_out1__24_carry_n_13\,
      I3 => data_in(18),
      I4 => \data_out1__24_carry_n_12\,
      I5 => data_in(2),
      O => \data_out[2]_i_9_n_0\
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFC0A0C000000000"
    )
        port map (
      I0 => \data_out[3]_i_2_n_0\,
      I1 => \data_out[3]_i_3_n_0\,
      I2 => mod_type(2),
      I3 => mod_type(1),
      I4 => data2(3),
      I5 => mod_type(0),
      O => data_out_1(3)
    );
\data_out[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(17),
      I1 => \data_out1__15_carry_n_13\,
      I2 => data_in(25),
      I3 => \data_out1__15_carry_n_12\,
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
      I2 => \data_out1__15_carry_n_13\,
      I3 => data_in(19),
      I4 => \data_out1__15_carry_n_12\,
      I5 => data_in(3),
      O => \data_out[3]_i_11_n_0\
    );
\data_out[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \data_out_reg[5]_i_26_n_1\,
      I1 => \data_out[3]_i_5_n_0\,
      I2 => \data_out1__24_carry_n_15\,
      I3 => \data_out[5]_i_27_n_0\,
      O => \data_out[3]_i_2_n_0\
    );
\data_out[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \data_out1_carry__0_n_0\,
      I1 => \data_out[3]_i_6_n_0\,
      I2 => i_reg(0),
      I3 => \data_out[4]_i_4_n_0\,
      O => \data_out[3]_i_3_n_0\
    );
\data_out[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[5]_i_28_n_0\,
      I1 => \data_out1__24_carry_n_14\,
      I2 => \data_out[3]_i_9_n_0\,
      O => \data_out[3]_i_5_n_0\
    );
\data_out[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[3]_i_10_n_0\,
      I1 => \data_out[4]_i_15_n_0\,
      I2 => \data_out1__15_carry_n_15\,
      I3 => \data_out[4]_i_17_n_0\,
      I4 => \data_out1__15_carry_n_14\,
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
      I2 => i_reg(1),
      I3 => data_in(19),
      I4 => i_reg(2),
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
      I2 => i_reg(1),
      I3 => data_in(23),
      I4 => i_reg(2),
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
      I2 => \data_out1__24_carry_n_13\,
      I3 => data_in(19),
      I4 => \data_out1__24_carry_n_12\,
      I5 => data_in(3),
      O => \data_out[3]_i_9_n_0\
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => mod_type(2),
      I1 => \data_out[4]_i_2_n_0\,
      I2 => mod_type(1),
      I3 => \data_out[4]_i_3_n_0\,
      I4 => mod_type(0),
      O => data_out_1(4)
    );
\data_out[4]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(18),
      I1 => \data_out1__15_carry_n_13\,
      I2 => data_in(26),
      I3 => \data_out1__15_carry_n_12\,
      I4 => data_in(10),
      O => \data_out[4]_i_10_n_0\
    );
\data_out[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(30),
      I1 => data_in(14),
      I2 => \data_out1__15_carry_n_13\,
      I3 => data_in(22),
      I4 => \data_out1__15_carry_n_12\,
      I5 => data_in(6),
      O => \data_out[4]_i_11_n_0\
    );
\data_out[4]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(16),
      I1 => \data_out1__15_carry_n_13\,
      I2 => data_in(24),
      I3 => \data_out1__15_carry_n_12\,
      I4 => data_in(8),
      O => \data_out[4]_i_12_n_0\
    );
\data_out[4]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(28),
      I1 => data_in(12),
      I2 => \data_out1__15_carry_n_13\,
      I3 => data_in(20),
      I4 => \data_out1__15_carry_n_12\,
      I5 => data_in(4),
      O => \data_out[4]_i_13_n_0\
    );
\data_out[4]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(25),
      I1 => \data_out1__15_carry_n_12\,
      I2 => data_in(9),
      O => \data_out[4]_i_14_n_0\
    );
\data_out[4]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(29),
      I1 => data_in(13),
      I2 => \data_out1__15_carry_n_13\,
      I3 => data_in(21),
      I4 => \data_out1__15_carry_n_12\,
      I5 => data_in(5),
      O => \data_out[4]_i_15_n_0\
    );
\data_out[4]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(27),
      I1 => \data_out1__15_carry_n_12\,
      I2 => data_in(11),
      O => \data_out[4]_i_16_n_0\
    );
\data_out[4]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(31),
      I1 => data_in(15),
      I2 => \data_out1__15_carry_n_13\,
      I3 => data_in(23),
      I4 => \data_out1__15_carry_n_12\,
      I5 => data_in(7),
      O => \data_out[4]_i_17_n_0\
    );
\data_out[4]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(24),
      I1 => \data_out1__24_carry_n_12\,
      I2 => data_in(8),
      O => \data_out[4]_i_18_n_0\
    );
\data_out[4]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(28),
      I1 => data_in(12),
      I2 => \data_out1__24_carry_n_13\,
      I3 => data_in(20),
      I4 => \data_out1__24_carry_n_12\,
      I5 => data_in(4),
      O => \data_out[4]_i_19_n_0\
    );
\data_out[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => \data_out1_carry__0_n_0\,
      I1 => \data_out[4]_i_4_n_0\,
      I2 => i_reg(0),
      I3 => \data_out[4]_i_5_n_0\,
      I4 => \data_out1__15_carry_n_15\,
      I5 => \data_out[4]_i_6_n_0\,
      O => \data_out[4]_i_2_n_0\
    );
\data_out[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => \data_out_reg[5]_i_26_n_1\,
      I1 => \data_out[4]_i_7_n_0\,
      I2 => \data_out1__24_carry_n_15\,
      I3 => \data_out[4]_i_8_n_0\,
      I4 => \data_out1__24_carry_n_14\,
      I5 => \data_out[4]_i_9_n_0\,
      O => \data_out[4]_i_3_n_0\
    );
\data_out[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[4]_i_10_n_0\,
      I1 => \data_out[4]_i_11_n_0\,
      I2 => \data_out1__15_carry_n_15\,
      I3 => \data_out[4]_i_12_n_0\,
      I4 => \data_out1__15_carry_n_14\,
      I5 => \data_out[4]_i_13_n_0\,
      O => \data_out[4]_i_4_n_0\
    );
\data_out[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data_in(17),
      I1 => \data_out1__15_carry_n_13\,
      I2 => \data_out[4]_i_14_n_0\,
      I3 => \data_out1__15_carry_n_14\,
      I4 => \data_out[4]_i_15_n_0\,
      O => \data_out[4]_i_5_n_0\
    );
\data_out[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data_in(19),
      I1 => \data_out1__15_carry_n_13\,
      I2 => \data_out[4]_i_16_n_0\,
      I3 => \data_out1__15_carry_n_14\,
      I4 => \data_out[4]_i_17_n_0\,
      O => \data_out[4]_i_6_n_0\
    );
\data_out[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data_in(16),
      I1 => \data_out1__24_carry_n_13\,
      I2 => \data_out[4]_i_18_n_0\,
      I3 => \data_out1__24_carry_n_14\,
      I4 => \data_out[4]_i_19_n_0\,
      O => \data_out[4]_i_7_n_0\
    );
\data_out[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(30),
      I1 => data_in(14),
      I2 => \data_out1__24_carry_n_13\,
      I3 => data_in(22),
      I4 => \data_out1__24_carry_n_12\,
      I5 => data_in(6),
      O => \data_out[4]_i_8_n_0\
    );
\data_out[4]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(18),
      I1 => \data_out1__24_carry_n_13\,
      I2 => data_in(26),
      I3 => \data_out1__24_carry_n_12\,
      I4 => data_in(10),
      O => \data_out[4]_i_9_n_0\
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800AAAAA8"
    )
        port map (
      I0 => data_out133_out,
      I1 => \data_out_reg[5]_i_4_n_0\,
      I2 => \data_out[5]_i_5_n_0\,
      I3 => \data_out[5]_i_6_n_0\,
      I4 => \data_out[5]_i_7_n_0\,
      I5 => \data_out[5]_i_8_n_0\,
      O => \data_out[5]_i_1_n_0\
    );
\data_out[5]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(31),
      I1 => i_reg(30),
      O => \data_out[5]_i_11_n_0\
    );
\data_out[5]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(28),
      I1 => i_reg(29),
      O => \data_out[5]_i_12_n_0\
    );
\data_out[5]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(26),
      I1 => i_reg(27),
      O => \data_out[5]_i_13_n_0\
    );
\data_out[5]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(24),
      I1 => i_reg(25),
      O => \data_out[5]_i_14_n_0\
    );
\data_out[5]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(22),
      I1 => i_reg(23),
      O => \data_out[5]_i_15_n_0\
    );
\data_out[5]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(20),
      I1 => i_reg(21),
      O => \data_out[5]_i_16_n_0\
    );
\data_out[5]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(18),
      I1 => i_reg(19),
      O => \data_out[5]_i_17_n_0\
    );
\data_out[5]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(16),
      I1 => i_reg(17),
      O => \data_out[5]_i_18_n_0\
    );
\data_out[5]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
        port map (
      I0 => i_reg(1),
      I1 => i_reg(2),
      I2 => i_reg(0),
      I3 => i_reg(4),
      I4 => i_reg(5),
      I5 => i_reg(3),
      O => \data_out[5]_i_19_n_0\
    );
\data_out[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => mod_type(2),
      I1 => \data_out[5]_i_9_n_0\,
      I2 => mod_type(1),
      I3 => mod_type(0),
      O => data_out_1(5)
    );
\data_out[5]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \data_out[5]_i_41_n_0\,
      I1 => i_reg(9),
      I2 => i_reg(8),
      I3 => i_reg(7),
      I4 => i_reg(6),
      I5 => \data_out[5]_i_42_n_0\,
      O => \data_out[5]_i_20_n_0\
    );
\data_out[5]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => i_reg(24),
      I1 => i_reg(25),
      I2 => i_reg(26),
      I3 => i_reg(27),
      I4 => i_reg(28),
      I5 => i_reg(29),
      O => \data_out[5]_i_21_n_0\
    );
\data_out[5]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAABAA"
    )
        port map (
      I0 => \data_out_reg[5]_i_26_n_1\,
      I1 => done_reg_n_0,
      I2 => \data_out[5]_i_21_n_0\,
      I3 => \data_out[5]_i_20_n_0\,
      I4 => \data_out[5]_i_43_n_0\,
      I5 => \data_out[5]_i_44_n_0\,
      O => \data_out[5]_i_22_n_0\
    );
\data_out[5]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAABAA"
    )
        port map (
      I0 => \data_out1_carry__0_n_0\,
      I1 => done_reg_n_0,
      I2 => \data_out[5]_i_21_n_0\,
      I3 => \data_out[5]_i_20_n_0\,
      I4 => \data_out[5]_i_43_n_0\,
      I5 => \data_out[5]_i_45_n_0\,
      O => \data_out[5]_i_23_n_0\
    );
\data_out[5]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAABAA"
    )
        port map (
      I0 => data_out_ready_reg_i_12_n_0,
      I1 => done_reg_n_0,
      I2 => \data_out[5]_i_21_n_0\,
      I3 => \data_out[5]_i_20_n_0\,
      I4 => \data_out[5]_i_43_n_0\,
      I5 => \data_out[5]_i_46_n_0\,
      O => \data_out[5]_i_24_n_0\
    );
\data_out[5]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAABAA"
    )
        port map (
      I0 => data_out_ready_reg_i_14_n_0,
      I1 => done_reg_n_0,
      I2 => \data_out[5]_i_21_n_0\,
      I3 => \data_out[5]_i_20_n_0\,
      I4 => \data_out[5]_i_43_n_0\,
      I5 => \data_out[5]_i_47_n_0\,
      O => \data_out[5]_i_25_n_0\
    );
\data_out[5]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data_in(17),
      I1 => \data_out1__24_carry_n_13\,
      I2 => \data_out[5]_i_56_n_0\,
      I3 => \data_out1__24_carry_n_14\,
      I4 => \data_out[5]_i_57_n_0\,
      O => \data_out[5]_i_27_n_0\
    );
\data_out[5]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(31),
      I1 => data_in(15),
      I2 => \data_out1__24_carry_n_13\,
      I3 => data_in(23),
      I4 => \data_out1__24_carry_n_12\,
      I5 => data_in(7),
      O => \data_out[5]_i_28_n_0\
    );
\data_out[5]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(19),
      I1 => \data_out1__24_carry_n_13\,
      I2 => data_in(27),
      I3 => \data_out1__24_carry_n_12\,
      I4 => data_in(11),
      O => \data_out[5]_i_29_n_0\
    );
\data_out[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_in_ready,
      I1 => data_in_valid,
      O => data_out133_out
    );
\data_out[5]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(4),
      I1 => i_reg(5),
      O => \data_out[5]_i_30_n_0\
    );
\data_out[5]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => i_reg(2),
      I1 => i_reg(3),
      O => \data_out[5]_i_31_n_0\
    );
\data_out[5]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      O => \data_out[5]_i_32_n_0\
    );
\data_out[5]_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(14),
      I1 => i_reg(15),
      O => \data_out[5]_i_33_n_0\
    );
\data_out[5]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(12),
      I1 => i_reg(13),
      O => \data_out[5]_i_34_n_0\
    );
\data_out[5]_i_35\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(10),
      I1 => i_reg(11),
      O => \data_out[5]_i_35_n_0\
    );
\data_out[5]_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(8),
      I1 => i_reg(9),
      O => \data_out[5]_i_36_n_0\
    );
\data_out[5]_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(6),
      I1 => i_reg(7),
      O => \data_out[5]_i_37_n_0\
    );
\data_out[5]_i_38\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_reg(4),
      I1 => i_reg(5),
      O => \data_out[5]_i_38_n_0\
    );
\data_out[5]_i_39\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_reg(2),
      I1 => i_reg(3),
      O => \data_out[5]_i_39_n_0\
    );
\data_out[5]_i_40\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      O => \data_out[5]_i_40_n_0\
    );
\data_out[5]_i_41\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(10),
      I1 => i_reg(11),
      O => \data_out[5]_i_41_n_0\
    );
\data_out[5]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \data_out[5]_i_58_n_0\,
      I1 => i_reg(15),
      I2 => i_reg(14),
      I3 => i_reg(13),
      I4 => i_reg(12),
      I5 => data_out_ready_i_16_n_0,
      O => \data_out[5]_i_42_n_0\
    );
\data_out[5]_i_43\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_reg(30),
      I1 => i_reg(31),
      O => \data_out[5]_i_43_n_0\
    );
\data_out[5]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFDF"
    )
        port map (
      I0 => i_reg(2),
      I1 => i_reg(1),
      I2 => i_reg(0),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => \data_out[5]_i_44_n_0\
    );
\data_out[5]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBF"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      I2 => i_reg(2),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => \data_out[5]_i_45_n_0\
    );
\data_out[5]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF7F"
    )
        port map (
      I0 => i_reg(1),
      I1 => i_reg(2),
      I2 => i_reg(0),
      I3 => i_reg(3),
      I4 => i_reg(4),
      I5 => i_reg(5),
      O => \data_out[5]_i_46_n_0\
    );
\data_out[5]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7FFFFFFFFF"
    )
        port map (
      I0 => i_reg(1),
      I1 => i_reg(2),
      I2 => i_reg(0),
      I3 => i_reg(4),
      I4 => i_reg(5),
      I5 => i_reg(3),
      O => \data_out[5]_i_47_n_0\
    );
\data_out[5]_i_49\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(31),
      I1 => i_reg(30),
      O => \data_out[5]_i_49_n_0\
    );
\data_out[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \data_out[5]_i_19_n_0\,
      I1 => i_reg(30),
      I2 => i_reg(31),
      I3 => \data_out[5]_i_20_n_0\,
      I4 => \data_out[5]_i_21_n_0\,
      I5 => done_reg_n_0,
      O => \data_out[5]_i_5_n_0\
    );
\data_out[5]_i_50\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(28),
      I1 => i_reg(29),
      O => \data_out[5]_i_50_n_0\
    );
\data_out[5]_i_51\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(26),
      I1 => i_reg(27),
      O => \data_out[5]_i_51_n_0\
    );
\data_out[5]_i_52\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(24),
      I1 => i_reg(25),
      O => \data_out[5]_i_52_n_0\
    );
\data_out[5]_i_53\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(22),
      I1 => i_reg(23),
      O => \data_out[5]_i_53_n_0\
    );
\data_out[5]_i_54\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(20),
      I1 => i_reg(21),
      O => \data_out[5]_i_54_n_0\
    );
\data_out[5]_i_55\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(18),
      I1 => i_reg(19),
      O => \data_out[5]_i_55_n_0\
    );
\data_out[5]_i_56\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(25),
      I1 => \data_out1__24_carry_n_12\,
      I2 => data_in(9),
      O => \data_out[5]_i_56_n_0\
    );
\data_out[5]_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(29),
      I1 => data_in(13),
      I2 => \data_out1__24_carry_n_13\,
      I3 => data_in(21),
      I4 => \data_out1__24_carry_n_12\,
      I5 => data_in(5),
      O => \data_out[5]_i_57_n_0\
    );
\data_out[5]_i_58\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(16),
      I1 => i_reg(17),
      O => \data_out[5]_i_58_n_0\
    );
\data_out[5]_i_59\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      O => \data_out[5]_i_59_n_0\
    );
\data_out[5]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => mod_type(0),
      I1 => mod_type(2),
      I2 => mod_type(1),
      O => \data_out[5]_i_6_n_0\
    );
\data_out[5]_i_60\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(2),
      I1 => i_reg(3),
      O => \data_out[5]_i_60_n_0\
    );
\data_out[5]_i_61\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(16),
      I1 => i_reg(17),
      O => \data_out[5]_i_61_n_0\
    );
\data_out[5]_i_62\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(14),
      I1 => i_reg(15),
      O => \data_out[5]_i_62_n_0\
    );
\data_out[5]_i_63\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(12),
      I1 => i_reg(13),
      O => \data_out[5]_i_63_n_0\
    );
\data_out[5]_i_64\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(10),
      I1 => i_reg(11),
      O => \data_out[5]_i_64_n_0\
    );
\data_out[5]_i_65\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(8),
      I1 => i_reg(9),
      O => \data_out[5]_i_65_n_0\
    );
\data_out[5]_i_66\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(6),
      I1 => i_reg(7),
      O => \data_out[5]_i_66_n_0\
    );
\data_out[5]_i_67\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(4),
      I1 => i_reg(5),
      O => \data_out[5]_i_67_n_0\
    );
\data_out[5]_i_68\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_reg(2),
      I1 => i_reg(3),
      O => \data_out[5]_i_68_n_0\
    );
\data_out[5]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => mod_type(0),
      I1 => mod_type(2),
      O => \data_out[5]_i_7_n_0\
    );
\data_out[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[5]_i_22_n_0\,
      I1 => \data_out[5]_i_23_n_0\,
      I2 => mod_type(2),
      I3 => \data_out[5]_i_24_n_0\,
      I4 => mod_type(1),
      I5 => \data_out[5]_i_25_n_0\,
      O => \data_out[5]_i_8_n_0\
    );
\data_out[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => \data_out_reg[5]_i_26_n_1\,
      I1 => \data_out[5]_i_27_n_0\,
      I2 => \data_out1__24_carry_n_15\,
      I3 => \data_out[5]_i_28_n_0\,
      I4 => \data_out1__24_carry_n_14\,
      I5 => \data_out[5]_i_29_n_0\,
      O => \data_out[5]_i_9_n_0\
    );
data_out_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAE2000000"
    )
        port map (
      I0 => \^data_out_ready\,
      I1 => data_out_ready_reg_i_2_n_0,
      I2 => data_out_ready_0,
      I3 => data_in_ready,
      I4 => data_in_valid,
      I5 => reset,
      O => data_out_ready_i_1_n_0
    );
data_out_ready_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \data_out[5]_i_21_n_0\,
      I1 => data_out_ready_i_15_n_0,
      I2 => data_out_ready_i_16_n_0,
      I3 => data_out_ready_i_17_n_0,
      I4 => \data_out[5]_i_43_n_0\,
      I5 => \data_out[5]_i_45_n_0\,
      O => data_out125_in
    );
data_out_ready_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \data_out[5]_i_21_n_0\,
      I1 => data_out_ready_i_15_n_0,
      I2 => \data_out[5]_i_42_n_0\,
      I3 => \data_out[5]_i_43_n_0\,
      I4 => data_out_ready_i_18_n_0,
      I5 => data_out_ready_i_19_n_0,
      O => data_out127_in
    );
data_out_ready_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \data_out[5]_i_21_n_0\,
      I1 => data_out_ready_i_15_n_0,
      I2 => data_out_ready_i_16_n_0,
      I3 => data_out_ready_i_17_n_0,
      I4 => \data_out[5]_i_43_n_0\,
      I5 => \data_out[5]_i_47_n_0\,
      O => data_out129_in
    );
data_out_ready_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => i_reg(6),
      I1 => i_reg(7),
      I2 => i_reg(8),
      I3 => i_reg(9),
      I4 => i_reg(10),
      I5 => i_reg(11),
      O => data_out_ready_i_15_n_0
    );
data_out_ready_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => i_reg(18),
      I1 => i_reg(19),
      I2 => i_reg(20),
      I3 => i_reg(21),
      I4 => i_reg(22),
      I5 => i_reg(23),
      O => data_out_ready_i_16_n_0
    );
data_out_ready_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => i_reg(12),
      I1 => i_reg(13),
      I2 => i_reg(14),
      I3 => i_reg(15),
      I4 => i_reg(16),
      I5 => i_reg(17),
      O => data_out_ready_i_17_n_0
    );
data_out_ready_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => i_reg(5),
      I1 => i_reg(4),
      I2 => i_reg(3),
      O => data_out_ready_i_18_n_0
    );
data_out_ready_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(2),
      I2 => i_reg(1),
      O => data_out_ready_i_19_n_0
    );
data_out_ready_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(31),
      I1 => i_reg(30),
      O => data_out_ready_i_21_n_0
    );
data_out_ready_i_22: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(28),
      I1 => i_reg(29),
      O => data_out_ready_i_22_n_0
    );
data_out_ready_i_23: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(26),
      I1 => i_reg(27),
      O => data_out_ready_i_23_n_0
    );
data_out_ready_i_24: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(24),
      I1 => i_reg(25),
      O => data_out_ready_i_24_n_0
    );
data_out_ready_i_25: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(22),
      I1 => i_reg(23),
      O => data_out_ready_i_25_n_0
    );
data_out_ready_i_26: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(20),
      I1 => i_reg(21),
      O => data_out_ready_i_26_n_0
    );
data_out_ready_i_27: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(18),
      I1 => i_reg(19),
      O => data_out_ready_i_27_n_0
    );
data_out_ready_i_28: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(16),
      I1 => i_reg(17),
      O => data_out_ready_i_28_n_0
    );
data_out_ready_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800B8FFB800"
    )
        port map (
      I0 => data_out_ready_i_6_n_0,
      I1 => mod_type(2),
      I2 => data_out_ready_i_7_n_0,
      I3 => mod_type(0),
      I4 => \data_out[5]_i_5_n_0\,
      I5 => \data_out_reg[5]_i_4_n_0\,
      O => data_out_ready_0
    );
data_out_ready_i_30: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(31),
      I1 => i_reg(30),
      O => data_out_ready_i_30_n_0
    );
data_out_ready_i_31: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(28),
      I1 => i_reg(29),
      O => data_out_ready_i_31_n_0
    );
data_out_ready_i_32: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(26),
      I1 => i_reg(27),
      O => data_out_ready_i_32_n_0
    );
data_out_ready_i_33: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(24),
      I1 => i_reg(25),
      O => data_out_ready_i_33_n_0
    );
data_out_ready_i_34: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(22),
      I1 => i_reg(23),
      O => data_out_ready_i_34_n_0
    );
data_out_ready_i_35: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(20),
      I1 => i_reg(21),
      O => data_out_ready_i_35_n_0
    );
data_out_ready_i_36: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(18),
      I1 => i_reg(19),
      O => data_out_ready_i_36_n_0
    );
data_out_ready_i_37: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(16),
      I1 => i_reg(17),
      O => data_out_ready_i_37_n_0
    );
data_out_ready_i_38: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(2),
      I1 => i_reg(3),
      O => data_out_ready_i_38_n_0
    );
data_out_ready_i_39: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      O => data_out_ready_i_39_n_0
    );
data_out_ready_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EE0E"
    )
        port map (
      I0 => \data_out[5]_i_5_n_0\,
      I1 => \data_out_reg[5]_i_4_n_0\,
      I2 => mod_type(1),
      I3 => mod_type(2),
      I4 => mod_type(0),
      O => data_out_ready_i_4_n_0
    );
data_out_ready_i_40: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(14),
      I1 => i_reg(15),
      O => data_out_ready_i_40_n_0
    );
data_out_ready_i_41: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(12),
      I1 => i_reg(13),
      O => data_out_ready_i_41_n_0
    );
data_out_ready_i_42: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(10),
      I1 => i_reg(11),
      O => data_out_ready_i_42_n_0
    );
data_out_ready_i_43: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(8),
      I1 => i_reg(9),
      O => data_out_ready_i_43_n_0
    );
data_out_ready_i_44: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(6),
      I1 => i_reg(7),
      O => data_out_ready_i_44_n_0
    );
data_out_ready_i_45: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(4),
      I1 => i_reg(5),
      O => data_out_ready_i_45_n_0
    );
data_out_ready_i_46: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_reg(2),
      I1 => i_reg(3),
      O => data_out_ready_i_46_n_0
    );
data_out_ready_i_47: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      O => data_out_ready_i_47_n_0
    );
data_out_ready_i_48: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => i_reg(2),
      I1 => i_reg(3),
      O => data_out_ready_i_48_n_0
    );
data_out_ready_i_49: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      O => data_out_ready_i_49_n_0
    );
data_out_ready_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACACA8080C0CA808"
    )
        port map (
      I0 => mod_type(0),
      I1 => data_out_ready_i_8_n_0,
      I2 => mod_type(2),
      I3 => \data_out[5]_i_23_n_0\,
      I4 => mod_type(1),
      I5 => \data_out[5]_i_22_n_0\,
      O => data_out_ready_i_5_n_0
    );
data_out_ready_i_50: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(14),
      I1 => i_reg(15),
      O => data_out_ready_i_50_n_0
    );
data_out_ready_i_51: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(12),
      I1 => i_reg(13),
      O => data_out_ready_i_51_n_0
    );
data_out_ready_i_52: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(10),
      I1 => i_reg(11),
      O => data_out_ready_i_52_n_0
    );
data_out_ready_i_53: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(8),
      I1 => i_reg(9),
      O => data_out_ready_i_53_n_0
    );
data_out_ready_i_54: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(6),
      I1 => i_reg(7),
      O => data_out_ready_i_54_n_0
    );
data_out_ready_i_55: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(4),
      I1 => i_reg(5),
      O => data_out_ready_i_55_n_0
    );
data_out_ready_i_56: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_reg(2),
      I1 => i_reg(3),
      O => data_out_ready_i_56_n_0
    );
data_out_ready_i_57: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      O => data_out_ready_i_57_n_0
    );
data_out_ready_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00200020002F0020"
    )
        port map (
      I0 => \data_out1__28\,
      I1 => \data_out_reg[5]_i_26_n_1\,
      I2 => mod_type(1),
      I3 => done_reg_n_0,
      I4 => data_out125_in,
      I5 => \data_out1_carry__0_n_0\,
      O => data_out_ready_i_6_n_0
    );
data_out_ready_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00200020002F0020"
    )
        port map (
      I0 => data_out127_in,
      I1 => data_out_ready_reg_i_12_n_0,
      I2 => mod_type(1),
      I3 => done_reg_n_0,
      I4 => data_out129_in,
      I5 => data_out_ready_reg_i_14_n_0,
      O => data_out_ready_i_7_n_0
    );
data_out_ready_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0EFEFAFA0EFE0"
    )
        port map (
      I0 => data_out_ready_reg_i_12_n_0,
      I1 => data_out127_in,
      I2 => mod_type(1),
      I3 => data_out_ready_reg_i_14_n_0,
      I4 => done_reg_n_0,
      I5 => data_out129_in,
      O => data_out_ready_i_8_n_0
    );
data_out_ready_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \data_out[5]_i_21_n_0\,
      I1 => data_out_ready_i_15_n_0,
      I2 => data_out_ready_i_16_n_0,
      I3 => data_out_ready_i_17_n_0,
      I4 => \data_out[5]_i_43_n_0\,
      I5 => \data_out[5]_i_44_n_0\,
      O => \data_out1__28\
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
data_out_ready_reg_i_12: unisim.vcomponents.CARRY8
     port map (
      CI => data_out_ready_reg_i_20_n_0,
      CI_TOP => '0',
      CO(7) => data_out_ready_reg_i_12_n_0,
      CO(6) => data_out_ready_reg_i_12_n_1,
      CO(5) => data_out_ready_reg_i_12_n_2,
      CO(4) => data_out_ready_reg_i_12_n_3,
      CO(3) => data_out_ready_reg_i_12_n_4,
      CO(2) => data_out_ready_reg_i_12_n_5,
      CO(1) => data_out_ready_reg_i_12_n_6,
      CO(0) => data_out_ready_reg_i_12_n_7,
      DI(7) => i_reg(31),
      DI(6 downto 0) => B"0000000",
      O(7 downto 0) => NLW_data_out_ready_reg_i_12_O_UNCONNECTED(7 downto 0),
      S(7) => data_out_ready_i_21_n_0,
      S(6) => data_out_ready_i_22_n_0,
      S(5) => data_out_ready_i_23_n_0,
      S(4) => data_out_ready_i_24_n_0,
      S(3) => data_out_ready_i_25_n_0,
      S(2) => data_out_ready_i_26_n_0,
      S(1) => data_out_ready_i_27_n_0,
      S(0) => data_out_ready_i_28_n_0
    );
data_out_ready_reg_i_14: unisim.vcomponents.CARRY8
     port map (
      CI => data_out_ready_reg_i_29_n_0,
      CI_TOP => '0',
      CO(7) => data_out_ready_reg_i_14_n_0,
      CO(6) => data_out_ready_reg_i_14_n_1,
      CO(5) => data_out_ready_reg_i_14_n_2,
      CO(4) => data_out_ready_reg_i_14_n_3,
      CO(3) => data_out_ready_reg_i_14_n_4,
      CO(2) => data_out_ready_reg_i_14_n_5,
      CO(1) => data_out_ready_reg_i_14_n_6,
      CO(0) => data_out_ready_reg_i_14_n_7,
      DI(7) => i_reg(31),
      DI(6 downto 0) => B"0000000",
      O(7 downto 0) => NLW_data_out_ready_reg_i_14_O_UNCONNECTED(7 downto 0),
      S(7) => data_out_ready_i_30_n_0,
      S(6) => data_out_ready_i_31_n_0,
      S(5) => data_out_ready_i_32_n_0,
      S(4) => data_out_ready_i_33_n_0,
      S(3) => data_out_ready_i_34_n_0,
      S(2) => data_out_ready_i_35_n_0,
      S(1) => data_out_ready_i_36_n_0,
      S(0) => data_out_ready_i_37_n_0
    );
data_out_ready_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => data_out_ready_i_4_n_0,
      I1 => data_out_ready_i_5_n_0,
      O => data_out_ready_reg_i_2_n_0,
      S => \data_out[5]_i_7_n_0\
    );
data_out_ready_reg_i_20: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => data_out_ready_reg_i_20_n_0,
      CO(6) => data_out_ready_reg_i_20_n_1,
      CO(5) => data_out_ready_reg_i_20_n_2,
      CO(4) => data_out_ready_reg_i_20_n_3,
      CO(3) => data_out_ready_reg_i_20_n_4,
      CO(2) => data_out_ready_reg_i_20_n_5,
      CO(1) => data_out_ready_reg_i_20_n_6,
      CO(0) => data_out_ready_reg_i_20_n_7,
      DI(7 downto 2) => B"000000",
      DI(1) => data_out_ready_i_38_n_0,
      DI(0) => data_out_ready_i_39_n_0,
      O(7 downto 0) => NLW_data_out_ready_reg_i_20_O_UNCONNECTED(7 downto 0),
      S(7) => data_out_ready_i_40_n_0,
      S(6) => data_out_ready_i_41_n_0,
      S(5) => data_out_ready_i_42_n_0,
      S(4) => data_out_ready_i_43_n_0,
      S(3) => data_out_ready_i_44_n_0,
      S(2) => data_out_ready_i_45_n_0,
      S(1) => data_out_ready_i_46_n_0,
      S(0) => data_out_ready_i_47_n_0
    );
data_out_ready_reg_i_29: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => data_out_ready_reg_i_29_n_0,
      CO(6) => data_out_ready_reg_i_29_n_1,
      CO(5) => data_out_ready_reg_i_29_n_2,
      CO(4) => data_out_ready_reg_i_29_n_3,
      CO(3) => data_out_ready_reg_i_29_n_4,
      CO(2) => data_out_ready_reg_i_29_n_5,
      CO(1) => data_out_ready_reg_i_29_n_6,
      CO(0) => data_out_ready_reg_i_29_n_7,
      DI(7 downto 2) => B"000000",
      DI(1) => data_out_ready_i_48_n_0,
      DI(0) => data_out_ready_i_49_n_0,
      O(7 downto 0) => NLW_data_out_ready_reg_i_29_O_UNCONNECTED(7 downto 0),
      S(7) => data_out_ready_i_50_n_0,
      S(6) => data_out_ready_i_51_n_0,
      S(5) => data_out_ready_i_52_n_0,
      S(4) => data_out_ready_i_53_n_0,
      S(3) => data_out_ready_i_54_n_0,
      S(2) => data_out_ready_i_55_n_0,
      S(1) => data_out_ready_i_56_n_0,
      S(0) => data_out_ready_i_57_n_0
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
\data_out_reg[0]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[0]_i_21_n_0\,
      I1 => \data_out[0]_i_22_n_0\,
      O => \data_out_reg[0]_i_11_n_0\,
      S => i_reg(2)
    );
\data_out_reg[0]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[0]_i_23_n_0\,
      I1 => \data_out[0]_i_24_n_0\,
      O => \data_out_reg[0]_i_12_n_0\,
      S => i_reg(2)
    );
\data_out_reg[0]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[0]_i_25_n_0\,
      I1 => \data_out[0]_i_26_n_0\,
      O => \data_out_reg[0]_i_13_n_0\,
      S => i_reg(2)
    );
\data_out_reg[0]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[0]_i_27_n_0\,
      I1 => \data_out[0]_i_28_n_0\,
      O => \data_out_reg[0]_i_14_n_0\,
      S => i_reg(2)
    );
\data_out_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[0]_i_9_n_0\,
      I1 => \data_out[0]_i_10_n_0\,
      O => \data_out_reg[0]_i_3_n_0\,
      S => mod_type(1)
    );
\data_out_reg[0]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[0]_i_15_n_0\,
      I1 => \data_out[0]_i_16_n_0\,
      O => \data_out_reg[0]_i_7_n_0\,
      S => i_reg(1)
    );
\data_out_reg[0]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[0]_i_17_n_0\,
      I1 => \data_out[0]_i_18_n_0\,
      O => \data_out_reg[0]_i_8_n_0\,
      S => i_reg(1)
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
      S => i_reg(1)
    );
\data_out_reg[1]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[1]_i_13_n_0\,
      I1 => \data_out[1]_i_14_n_0\,
      O => \data_out_reg[1]_i_9_n_0\,
      S => i_reg(1)
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
      O => data2(2),
      S => i_reg(0)
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
      O => data2(3),
      S => i_reg(0)
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
\data_out_reg[5]_i_10\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \data_out_reg[5]_i_10_n_0\,
      CO(6) => \data_out_reg[5]_i_10_n_1\,
      CO(5) => \data_out_reg[5]_i_10_n_2\,
      CO(4) => \data_out_reg[5]_i_10_n_3\,
      CO(3) => \data_out_reg[5]_i_10_n_4\,
      CO(2) => \data_out_reg[5]_i_10_n_5\,
      CO(1) => \data_out_reg[5]_i_10_n_6\,
      CO(0) => \data_out_reg[5]_i_10_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2) => \data_out[5]_i_30_n_0\,
      DI(1) => \data_out[5]_i_31_n_0\,
      DI(0) => \data_out[5]_i_32_n_0\,
      O(7 downto 0) => \NLW_data_out_reg[5]_i_10_O_UNCONNECTED\(7 downto 0),
      S(7) => \data_out[5]_i_33_n_0\,
      S(6) => \data_out[5]_i_34_n_0\,
      S(5) => \data_out[5]_i_35_n_0\,
      S(4) => \data_out[5]_i_36_n_0\,
      S(3) => \data_out[5]_i_37_n_0\,
      S(2) => \data_out[5]_i_38_n_0\,
      S(1) => \data_out[5]_i_39_n_0\,
      S(0) => \data_out[5]_i_40_n_0\
    );
\data_out_reg[5]_i_26\: unisim.vcomponents.CARRY8
     port map (
      CI => \data_out_reg[5]_i_48_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_data_out_reg[5]_i_26_CO_UNCONNECTED\(7),
      CO(6) => \data_out_reg[5]_i_26_n_1\,
      CO(5) => \data_out_reg[5]_i_26_n_2\,
      CO(4) => \data_out_reg[5]_i_26_n_3\,
      CO(3) => \data_out_reg[5]_i_26_n_4\,
      CO(2) => \data_out_reg[5]_i_26_n_5\,
      CO(1) => \data_out_reg[5]_i_26_n_6\,
      CO(0) => \data_out_reg[5]_i_26_n_7\,
      DI(7) => '0',
      DI(6) => i_reg(31),
      DI(5 downto 0) => B"000000",
      O(7 downto 0) => \NLW_data_out_reg[5]_i_26_O_UNCONNECTED\(7 downto 0),
      S(7) => '0',
      S(6) => \data_out[5]_i_49_n_0\,
      S(5) => \data_out[5]_i_50_n_0\,
      S(4) => \data_out[5]_i_51_n_0\,
      S(3) => \data_out[5]_i_52_n_0\,
      S(2) => \data_out[5]_i_53_n_0\,
      S(1) => \data_out[5]_i_54_n_0\,
      S(0) => \data_out[5]_i_55_n_0\
    );
\data_out_reg[5]_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => \data_out_reg[5]_i_10_n_0\,
      CI_TOP => '0',
      CO(7) => \data_out_reg[5]_i_4_n_0\,
      CO(6) => \data_out_reg[5]_i_4_n_1\,
      CO(5) => \data_out_reg[5]_i_4_n_2\,
      CO(4) => \data_out_reg[5]_i_4_n_3\,
      CO(3) => \data_out_reg[5]_i_4_n_4\,
      CO(2) => \data_out_reg[5]_i_4_n_5\,
      CO(1) => \data_out_reg[5]_i_4_n_6\,
      CO(0) => \data_out_reg[5]_i_4_n_7\,
      DI(7) => i_reg(31),
      DI(6 downto 0) => B"0000000",
      O(7 downto 0) => \NLW_data_out_reg[5]_i_4_O_UNCONNECTED\(7 downto 0),
      S(7) => \data_out[5]_i_11_n_0\,
      S(6) => \data_out[5]_i_12_n_0\,
      S(5) => \data_out[5]_i_13_n_0\,
      S(4) => \data_out[5]_i_14_n_0\,
      S(3) => \data_out[5]_i_15_n_0\,
      S(2) => \data_out[5]_i_16_n_0\,
      S(1) => \data_out[5]_i_17_n_0\,
      S(0) => \data_out[5]_i_18_n_0\
    );
\data_out_reg[5]_i_48\: unisim.vcomponents.CARRY8
     port map (
      CI => \data_out[5]_i_59_n_0\,
      CI_TOP => '0',
      CO(7) => \data_out_reg[5]_i_48_n_0\,
      CO(6) => \data_out_reg[5]_i_48_n_1\,
      CO(5) => \data_out_reg[5]_i_48_n_2\,
      CO(4) => \data_out_reg[5]_i_48_n_3\,
      CO(3) => \data_out_reg[5]_i_48_n_4\,
      CO(2) => \data_out_reg[5]_i_48_n_5\,
      CO(1) => \data_out_reg[5]_i_48_n_6\,
      CO(0) => \data_out_reg[5]_i_48_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \data_out[5]_i_60_n_0\,
      O(7 downto 0) => \NLW_data_out_reg[5]_i_48_O_UNCONNECTED\(7 downto 0),
      S(7) => \data_out[5]_i_61_n_0\,
      S(6) => \data_out[5]_i_62_n_0\,
      S(5) => \data_out[5]_i_63_n_0\,
      S(4) => \data_out[5]_i_64_n_0\,
      S(3) => \data_out[5]_i_65_n_0\,
      S(2) => \data_out[5]_i_66_n_0\,
      S(1) => \data_out[5]_i_67_n_0\,
      S(0) => \data_out[5]_i_68_n_0\
    );
data_out_valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data_in_valid,
      I1 => data_in_ready,
      I2 => done_reg_n_0,
      O => data_out_valid_i_1_n_0
    );
data_out_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => data_out_valid_i_1_n_0,
      Q => data_out_valid
    );
done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCC20CCCCCC"
    )
        port map (
      I0 => \done__8\,
      I1 => done_reg_n_0,
      I2 => done_reg_i_3_n_0,
      I3 => data_in_ready,
      I4 => data_in_valid,
      I5 => reset,
      O => done_i_1_n_0
    );
done_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000B800"
    )
        port map (
      I0 => done_i_13_n_0,
      I1 => mod_type(1),
      I2 => done_i_14_n_0,
      I3 => \data_out[5]_i_20_n_0\,
      I4 => \data_out[5]_i_21_n_0\,
      I5 => done_reg_n_0,
      O => done_i_10_n_0
    );
done_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => done_reg_n_0,
      I1 => \data_out[5]_i_21_n_0\,
      I2 => \data_out[5]_i_20_n_0\,
      I3 => \data_out[5]_i_43_n_0\,
      I4 => \data_out[5]_i_45_n_0\,
      I5 => \data_out1_carry__0_n_0\,
      O => data_out_ready20_out
    );
done_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => done_reg_n_0,
      I1 => \data_out[5]_i_21_n_0\,
      I2 => \data_out[5]_i_20_n_0\,
      I3 => \data_out[5]_i_43_n_0\,
      I4 => \data_out[5]_i_44_n_0\,
      I5 => \data_out_reg[5]_i_26_n_1\,
      O => data_out_ready23_out
    );
done_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \data_out[5]_i_43_n_0\,
      I1 => done_i_15_n_0,
      I2 => i_reg(3),
      I3 => i_reg(0),
      I4 => i_reg(1),
      I5 => i_reg(2),
      O => done_i_13_n_0
    );
done_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => \data_out[5]_i_43_n_0\,
      I1 => done_i_15_n_0,
      I2 => i_reg(3),
      I3 => i_reg(2),
      I4 => i_reg(1),
      I5 => i_reg(0),
      O => done_i_14_n_0
    );
done_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(4),
      I1 => i_reg(5),
      O => done_i_15_n_0
    );
done_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF2"
    )
        port map (
      I0 => mod_type(1),
      I1 => mod_type(2),
      I2 => mod_type(0),
      I3 => \data_out[5]_i_5_n_0\,
      O => done_i_4_n_0
    );
done_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0CCAAFFFFCCFF"
    )
        port map (
      I0 => done_i_8_n_0,
      I1 => done_i_9_n_0,
      I2 => done_i_10_n_0,
      I3 => mod_type(1),
      I4 => mod_type(2),
      I5 => mod_type(0),
      O => done_i_5_n_0
    );
done_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2FFF2F2"
    )
        port map (
      I0 => mod_type(1),
      I1 => mod_type(2),
      I2 => mod_type(0),
      I3 => \data_out_reg[5]_i_4_n_0\,
      I4 => \data_out[5]_i_5_n_0\,
      O => done_i_6_n_0
    );
done_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCAAAAFFFFAAFF"
    )
        port map (
      I0 => data_out_ready_i_7_n_0,
      I1 => data_out_ready20_out,
      I2 => data_out_ready23_out,
      I3 => mod_type(1),
      I4 => mod_type(2),
      I5 => mod_type(0),
      O => done_i_7_n_0
    );
done_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \data_out[5]_i_47_n_0\,
      I1 => i_reg(30),
      I2 => i_reg(31),
      I3 => \data_out[5]_i_20_n_0\,
      I4 => \data_out[5]_i_21_n_0\,
      I5 => done_reg_n_0,
      O => done_i_8_n_0
    );
done_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => data_out_ready_i_19_n_0,
      I1 => data_out_ready_i_18_n_0,
      I2 => \data_out[5]_i_43_n_0\,
      I3 => \data_out[5]_i_20_n_0\,
      I4 => \data_out[5]_i_21_n_0\,
      I5 => done_reg_n_0,
      O => done_i_9_n_0
    );
done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => done_i_1_n_0,
      Q => done_reg_n_0,
      R => '0'
    );
done_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => done_i_4_n_0,
      I1 => done_i_5_n_0,
      O => \done__8\,
      S => \data_out[5]_i_7_n_0\
    );
done_reg_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => done_i_6_n_0,
      I1 => done_i_7_n_0,
      O => done_reg_i_3_n_0,
      S => \data_out[5]_i_7_n_0\
    );
\i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => done_reg_n_0,
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => reset,
      O => \i[0]_i_1_n_0\
    );
\i[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AB000000"
    )
        port map (
      I0 => mod_type(0),
      I1 => mod_type(2),
      I2 => mod_type(1),
      I3 => data_in_ready,
      I4 => data_in_valid,
      I5 => reset,
      O => \i[0]_i_2_n_0\
    );
\i[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(0),
      O => \i[0]_i_4_n_0\
    );
\i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[0]_i_3_n_15\,
      Q => i_reg(0),
      R => \i[0]_i_1_n_0\
    );
\i_reg[0]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \i_reg[0]_i_3_n_0\,
      CO(6) => \i_reg[0]_i_3_n_1\,
      CO(5) => \i_reg[0]_i_3_n_2\,
      CO(4) => \i_reg[0]_i_3_n_3\,
      CO(3) => \i_reg[0]_i_3_n_4\,
      CO(2) => \i_reg[0]_i_3_n_5\,
      CO(1) => \i_reg[0]_i_3_n_6\,
      CO(0) => \i_reg[0]_i_3_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \i_reg[0]_i_3_n_8\,
      O(6) => \i_reg[0]_i_3_n_9\,
      O(5) => \i_reg[0]_i_3_n_10\,
      O(4) => \i_reg[0]_i_3_n_11\,
      O(3) => \i_reg[0]_i_3_n_12\,
      O(2) => \i_reg[0]_i_3_n_13\,
      O(1) => \i_reg[0]_i_3_n_14\,
      O(0) => \i_reg[0]_i_3_n_15\,
      S(7 downto 1) => i_reg(7 downto 1),
      S(0) => \i[0]_i_4_n_0\
    );
\i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[8]_i_1_n_13\,
      Q => i_reg(10),
      R => \i[0]_i_1_n_0\
    );
\i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[8]_i_1_n_12\,
      Q => i_reg(11),
      R => \i[0]_i_1_n_0\
    );
\i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[8]_i_1_n_11\,
      Q => i_reg(12),
      R => \i[0]_i_1_n_0\
    );
\i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[8]_i_1_n_10\,
      Q => i_reg(13),
      R => \i[0]_i_1_n_0\
    );
\i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[8]_i_1_n_9\,
      Q => i_reg(14),
      R => \i[0]_i_1_n_0\
    );
\i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[8]_i_1_n_8\,
      Q => i_reg(15),
      R => \i[0]_i_1_n_0\
    );
\i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[16]_i_1_n_15\,
      Q => i_reg(16),
      R => \i[0]_i_1_n_0\
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
      O(7) => \i_reg[16]_i_1_n_8\,
      O(6) => \i_reg[16]_i_1_n_9\,
      O(5) => \i_reg[16]_i_1_n_10\,
      O(4) => \i_reg[16]_i_1_n_11\,
      O(3) => \i_reg[16]_i_1_n_12\,
      O(2) => \i_reg[16]_i_1_n_13\,
      O(1) => \i_reg[16]_i_1_n_14\,
      O(0) => \i_reg[16]_i_1_n_15\,
      S(7 downto 0) => i_reg(23 downto 16)
    );
\i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[16]_i_1_n_14\,
      Q => i_reg(17),
      R => \i[0]_i_1_n_0\
    );
\i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[16]_i_1_n_13\,
      Q => i_reg(18),
      R => \i[0]_i_1_n_0\
    );
\i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[16]_i_1_n_12\,
      Q => i_reg(19),
      R => \i[0]_i_1_n_0\
    );
\i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[0]_i_3_n_14\,
      Q => i_reg(1),
      R => \i[0]_i_1_n_0\
    );
\i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[16]_i_1_n_11\,
      Q => i_reg(20),
      R => \i[0]_i_1_n_0\
    );
\i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[16]_i_1_n_10\,
      Q => i_reg(21),
      R => \i[0]_i_1_n_0\
    );
\i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[16]_i_1_n_9\,
      Q => i_reg(22),
      R => \i[0]_i_1_n_0\
    );
\i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[16]_i_1_n_8\,
      Q => i_reg(23),
      R => \i[0]_i_1_n_0\
    );
\i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[24]_i_1_n_15\,
      Q => i_reg(24),
      R => \i[0]_i_1_n_0\
    );
\i_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \i_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_i_reg[24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \i_reg[24]_i_1_n_1\,
      CO(5) => \i_reg[24]_i_1_n_2\,
      CO(4) => \i_reg[24]_i_1_n_3\,
      CO(3) => \i_reg[24]_i_1_n_4\,
      CO(2) => \i_reg[24]_i_1_n_5\,
      CO(1) => \i_reg[24]_i_1_n_6\,
      CO(0) => \i_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \i_reg[24]_i_1_n_8\,
      O(6) => \i_reg[24]_i_1_n_9\,
      O(5) => \i_reg[24]_i_1_n_10\,
      O(4) => \i_reg[24]_i_1_n_11\,
      O(3) => \i_reg[24]_i_1_n_12\,
      O(2) => \i_reg[24]_i_1_n_13\,
      O(1) => \i_reg[24]_i_1_n_14\,
      O(0) => \i_reg[24]_i_1_n_15\,
      S(7 downto 0) => i_reg(31 downto 24)
    );
\i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[24]_i_1_n_14\,
      Q => i_reg(25),
      R => \i[0]_i_1_n_0\
    );
\i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[24]_i_1_n_13\,
      Q => i_reg(26),
      R => \i[0]_i_1_n_0\
    );
\i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[24]_i_1_n_12\,
      Q => i_reg(27),
      R => \i[0]_i_1_n_0\
    );
\i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[24]_i_1_n_11\,
      Q => i_reg(28),
      R => \i[0]_i_1_n_0\
    );
\i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[24]_i_1_n_10\,
      Q => i_reg(29),
      R => \i[0]_i_1_n_0\
    );
\i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[0]_i_3_n_13\,
      Q => i_reg(2),
      R => \i[0]_i_1_n_0\
    );
\i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[24]_i_1_n_9\,
      Q => i_reg(30),
      R => \i[0]_i_1_n_0\
    );
\i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[24]_i_1_n_8\,
      Q => i_reg(31),
      R => \i[0]_i_1_n_0\
    );
\i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[0]_i_3_n_12\,
      Q => i_reg(3),
      R => \i[0]_i_1_n_0\
    );
\i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[0]_i_3_n_11\,
      Q => i_reg(4),
      R => \i[0]_i_1_n_0\
    );
\i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[0]_i_3_n_10\,
      Q => i_reg(5),
      R => \i[0]_i_1_n_0\
    );
\i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[0]_i_3_n_9\,
      Q => i_reg(6),
      R => \i[0]_i_1_n_0\
    );
\i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[0]_i_3_n_8\,
      Q => i_reg(7),
      R => \i[0]_i_1_n_0\
    );
\i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[8]_i_1_n_15\,
      Q => i_reg(8),
      R => \i[0]_i_1_n_0\
    );
\i_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \i_reg[0]_i_3_n_0\,
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
      O(7) => \i_reg[8]_i_1_n_8\,
      O(6) => \i_reg[8]_i_1_n_9\,
      O(5) => \i_reg[8]_i_1_n_10\,
      O(4) => \i_reg[8]_i_1_n_11\,
      O(3) => \i_reg[8]_i_1_n_12\,
      O(2) => \i_reg[8]_i_1_n_13\,
      O(1) => \i_reg[8]_i_1_n_14\,
      O(0) => \i_reg[8]_i_1_n_15\,
      S(7 downto 0) => i_reg(15 downto 8)
    );
\i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i[0]_i_2_n_0\,
      D => \i_reg[8]_i_1_n_14\,
      Q => i_reg(9),
      R => \i[0]_i_1_n_0\
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
  attribute x_interface_parameter of data_in_valid : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN Design_2_clk, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 672} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value dout} size {attribs {resolve_type generated dependency block_size format long minimum {} maximum {}} value 21} stride {attribs {resolve_type generated dependency block_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency width format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency fractwidth format long minimum {} maximum {}} value 0} signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value true}}}}}}} TDATA_WIDTH 32 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_fdo {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value fdo} enabled {attribs {resolve_type generated dependency fdo_enabled format bool minimum {} maximum {}} value 0} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency fdo_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} field_block_start {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value block_start} enabled {attribs {resolve_type generated dependency block_start_enabled format bool minimum {} maximum {}} value 0} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency block_start_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} field_rdy {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rdy} enabled {attribs {resolve_type generated dependency rdy_enabled format bool minimum {} maximum {}} value 0} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency rdy_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency rdy_bitoffset format long minimum {} maximum {}} value 0}}} field_block_end {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value block_end} enabled {attribs {resolve_type generated dependency block_end_enabled format bool minimum {} maximum {}} value 0} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency block_end_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency block_end_bitoffset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0";
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
