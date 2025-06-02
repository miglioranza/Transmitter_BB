-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Fri Apr  4 13:56:30 2025
-- Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_mapper_0_0_sim_netlist.vhdl
-- Design      : Design_2_mapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mapper is
  port (
    i_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    q_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    data_out_valid : out STD_LOGIC;
    data_out_ready : out STD_LOGIC;
    mod_type : in STD_LOGIC_VECTOR ( 2 downto 0 );
    data_in_valid : in STD_LOGIC;
    data_in_ready : in STD_LOGIC;
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mapper is
  signal \buff_counter[0]_i_10_n_0\ : STD_LOGIC;
  signal \buff_counter[0]_i_11_n_0\ : STD_LOGIC;
  signal \buff_counter[0]_i_12_n_0\ : STD_LOGIC;
  signal \buff_counter[0]_i_13_n_0\ : STD_LOGIC;
  signal \buff_counter[0]_i_14_n_0\ : STD_LOGIC;
  signal \buff_counter[0]_i_15_n_0\ : STD_LOGIC;
  signal \buff_counter[0]_i_16_n_0\ : STD_LOGIC;
  signal \buff_counter[0]_i_17_n_0\ : STD_LOGIC;
  signal \buff_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \buff_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \buff_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \buff_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \buff_counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \buff_counter[0]_i_7_n_0\ : STD_LOGIC;
  signal \buff_counter[0]_i_8_n_0\ : STD_LOGIC;
  signal \buff_counter[0]_i_9_n_0\ : STD_LOGIC;
  signal \buff_counter[16]_i_10_n_0\ : STD_LOGIC;
  signal \buff_counter[16]_i_11_n_0\ : STD_LOGIC;
  signal \buff_counter[16]_i_12_n_0\ : STD_LOGIC;
  signal \buff_counter[16]_i_13_n_0\ : STD_LOGIC;
  signal \buff_counter[16]_i_14_n_0\ : STD_LOGIC;
  signal \buff_counter[16]_i_15_n_0\ : STD_LOGIC;
  signal \buff_counter[16]_i_16_n_0\ : STD_LOGIC;
  signal \buff_counter[16]_i_17_n_0\ : STD_LOGIC;
  signal \buff_counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \buff_counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \buff_counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \buff_counter[16]_i_5_n_0\ : STD_LOGIC;
  signal \buff_counter[16]_i_6_n_0\ : STD_LOGIC;
  signal \buff_counter[16]_i_7_n_0\ : STD_LOGIC;
  signal \buff_counter[16]_i_8_n_0\ : STD_LOGIC;
  signal \buff_counter[16]_i_9_n_0\ : STD_LOGIC;
  signal \buff_counter[24]_i_10_n_0\ : STD_LOGIC;
  signal \buff_counter[24]_i_11_n_0\ : STD_LOGIC;
  signal \buff_counter[24]_i_12_n_0\ : STD_LOGIC;
  signal \buff_counter[24]_i_13_n_0\ : STD_LOGIC;
  signal \buff_counter[24]_i_14_n_0\ : STD_LOGIC;
  signal \buff_counter[24]_i_15_n_0\ : STD_LOGIC;
  signal \buff_counter[24]_i_16_n_0\ : STD_LOGIC;
  signal \buff_counter[24]_i_2_n_0\ : STD_LOGIC;
  signal \buff_counter[24]_i_3_n_0\ : STD_LOGIC;
  signal \buff_counter[24]_i_4_n_0\ : STD_LOGIC;
  signal \buff_counter[24]_i_5_n_0\ : STD_LOGIC;
  signal \buff_counter[24]_i_6_n_0\ : STD_LOGIC;
  signal \buff_counter[24]_i_7_n_0\ : STD_LOGIC;
  signal \buff_counter[24]_i_8_n_0\ : STD_LOGIC;
  signal \buff_counter[24]_i_9_n_0\ : STD_LOGIC;
  signal \buff_counter[8]_i_10_n_0\ : STD_LOGIC;
  signal \buff_counter[8]_i_11_n_0\ : STD_LOGIC;
  signal \buff_counter[8]_i_12_n_0\ : STD_LOGIC;
  signal \buff_counter[8]_i_13_n_0\ : STD_LOGIC;
  signal \buff_counter[8]_i_14_n_0\ : STD_LOGIC;
  signal \buff_counter[8]_i_15_n_0\ : STD_LOGIC;
  signal \buff_counter[8]_i_16_n_0\ : STD_LOGIC;
  signal \buff_counter[8]_i_17_n_0\ : STD_LOGIC;
  signal \buff_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \buff_counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \buff_counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \buff_counter[8]_i_5_n_0\ : STD_LOGIC;
  signal \buff_counter[8]_i_6_n_0\ : STD_LOGIC;
  signal \buff_counter[8]_i_7_n_0\ : STD_LOGIC;
  signal \buff_counter[8]_i_8_n_0\ : STD_LOGIC;
  signal \buff_counter[8]_i_9_n_0\ : STD_LOGIC;
  signal buff_counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \buff_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \buff_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \buff_counter_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \buff_counter_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \buff_counter_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \buff_counter_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \buff_counter_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \buff_counter_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \buff_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \buff_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \buff_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \buff_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \buff_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \buff_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \buff_counter_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \buff_counter_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \buff_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \buff_counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \buff_counter_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \buff_counter_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \buff_counter_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \buff_counter_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \buff_counter_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \buff_counter_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \buff_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \buff_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \buff_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \buff_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \buff_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \buff_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \buff_counter_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \buff_counter_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \buff_counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \buff_counter_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \buff_counter_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \buff_counter_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \buff_counter_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \buff_counter_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \buff_counter_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \buff_counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \buff_counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \buff_counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \buff_counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \buff_counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \buff_counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \buff_counter_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \buff_counter_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \buff_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \buff_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \buff_counter_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \buff_counter_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \buff_counter_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \buff_counter_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \buff_counter_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \buff_counter_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \buff_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \buff_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \buff_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \buff_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \buff_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \buff_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \buff_counter_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \buff_counter_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \buff_reg[0][5]_i_2_n_0\ : STD_LOGIC;
  signal \buff_reg[0]_4\ : STD_LOGIC;
  signal \buff_reg[1]_0\ : STD_LOGIC;
  signal \buff_reg[2]_1\ : STD_LOGIC;
  signal \buff_reg[3][5]_i_2_n_0\ : STD_LOGIC;
  signal \buff_reg[3][5]_i_3_n_0\ : STD_LOGIC;
  signal \buff_reg[3][5]_i_4_n_0\ : STD_LOGIC;
  signal \buff_reg[3][5]_i_5_n_0\ : STD_LOGIC;
  signal \buff_reg[3][5]_i_6_n_0\ : STD_LOGIC;
  signal \buff_reg[3]_3\ : STD_LOGIC;
  signal \buff_reg[4][5]_i_2_n_0\ : STD_LOGIC;
  signal \buff_reg[4][5]_i_3_n_0\ : STD_LOGIC;
  signal \buff_reg[4][5]_i_4_n_0\ : STD_LOGIC;
  signal \buff_reg[4][5]_i_5_n_0\ : STD_LOGIC;
  signal \buff_reg[4][5]_i_6_n_0\ : STD_LOGIC;
  signal \buff_reg[4][5]_i_7_n_0\ : STD_LOGIC;
  signal \buff_reg[4]_2\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_1_n_0\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_2_n_0\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_3_n_0\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_4_n_0\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_5_n_0\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_6_n_0\ : STD_LOGIC;
  signal \buff_reg_reg[0]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \buff_reg_reg[1]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \buff_reg_reg[2]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \buff_reg_reg[3]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \buff_reg_reg[4]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \buff_reg_reg[5]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^data_out_ready\ : STD_LOGIC;
  signal data_out_ready_i_1_n_0 : STD_LOGIC;
  signal data_out_ready_i_3_n_0 : STD_LOGIC;
  signal data_out_ready_i_4_n_0 : STD_LOGIC;
  signal data_out_ready_i_5_n_0 : STD_LOGIC;
  signal data_out_ready_i_6_n_0 : STD_LOGIC;
  signal data_out_ready_i_7_n_0 : STD_LOGIC;
  signal data_out_valid0 : STD_LOGIC;
  signal \data_out_valid2_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \data_out_valid2_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \data_out_valid2_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \data_out_valid2_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \data_out_valid2_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \data_out_valid2_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \data_out_valid2_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \data_out_valid2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \data_out_valid2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \data_out_valid2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \data_out_valid2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \data_out_valid2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \data_out_valid2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \data_out_valid2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \data_out_valid2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \data_out_valid2_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \data_out_valid2_carry__0_n_0\ : STD_LOGIC;
  signal \data_out_valid2_carry__0_n_1\ : STD_LOGIC;
  signal \data_out_valid2_carry__0_n_2\ : STD_LOGIC;
  signal \data_out_valid2_carry__0_n_3\ : STD_LOGIC;
  signal \data_out_valid2_carry__0_n_4\ : STD_LOGIC;
  signal \data_out_valid2_carry__0_n_5\ : STD_LOGIC;
  signal \data_out_valid2_carry__0_n_6\ : STD_LOGIC;
  signal \data_out_valid2_carry__0_n_7\ : STD_LOGIC;
  signal data_out_valid2_carry_i_10_n_0 : STD_LOGIC;
  signal data_out_valid2_carry_i_11_n_0 : STD_LOGIC;
  signal data_out_valid2_carry_i_12_n_0 : STD_LOGIC;
  signal data_out_valid2_carry_i_13_n_0 : STD_LOGIC;
  signal data_out_valid2_carry_i_14_n_0 : STD_LOGIC;
  signal data_out_valid2_carry_i_15_n_0 : STD_LOGIC;
  signal data_out_valid2_carry_i_16_n_0 : STD_LOGIC;
  signal data_out_valid2_carry_i_1_n_0 : STD_LOGIC;
  signal data_out_valid2_carry_i_2_n_0 : STD_LOGIC;
  signal data_out_valid2_carry_i_3_n_0 : STD_LOGIC;
  signal data_out_valid2_carry_i_4_n_0 : STD_LOGIC;
  signal data_out_valid2_carry_i_5_n_0 : STD_LOGIC;
  signal data_out_valid2_carry_i_6_n_0 : STD_LOGIC;
  signal data_out_valid2_carry_i_7_n_0 : STD_LOGIC;
  signal data_out_valid2_carry_i_8_n_0 : STD_LOGIC;
  signal data_out_valid2_carry_i_9_n_0 : STD_LOGIC;
  signal data_out_valid2_carry_n_0 : STD_LOGIC;
  signal data_out_valid2_carry_n_1 : STD_LOGIC;
  signal data_out_valid2_carry_n_2 : STD_LOGIC;
  signal data_out_valid2_carry_n_3 : STD_LOGIC;
  signal data_out_valid2_carry_n_4 : STD_LOGIC;
  signal data_out_valid2_carry_n_5 : STD_LOGIC;
  signal data_out_valid2_carry_n_6 : STD_LOGIC;
  signal data_out_valid2_carry_n_7 : STD_LOGIC;
  signal \g0_b0__0_n_0\ : STD_LOGIC;
  signal \g0_b0__1_n_0\ : STD_LOGIC;
  signal \g0_b0__2_n_0\ : STD_LOGIC;
  signal \g0_b0__3_n_0\ : STD_LOGIC;
  signal \g0_b0__4_n_0\ : STD_LOGIC;
  signal g0_b0_n_0 : STD_LOGIC;
  signal \g0_b10__0_n_0\ : STD_LOGIC;
  signal \g0_b10__1_n_0\ : STD_LOGIC;
  signal \g0_b10__2_n_0\ : STD_LOGIC;
  signal \g0_b10__3_n_0\ : STD_LOGIC;
  signal \g0_b10__4_n_0\ : STD_LOGIC;
  signal g0_b10_i_1_n_0 : STD_LOGIC;
  signal g0_b10_i_2_n_0 : STD_LOGIC;
  signal g0_b10_i_3_n_0 : STD_LOGIC;
  signal g0_b10_i_4_n_0 : STD_LOGIC;
  signal g0_b10_i_5_n_0 : STD_LOGIC;
  signal g0_b10_i_6_n_0 : STD_LOGIC;
  signal g0_b10_n_0 : STD_LOGIC;
  signal g0_b11_n_0 : STD_LOGIC;
  signal \g0_b1__0_n_0\ : STD_LOGIC;
  signal \g0_b1__1_n_0\ : STD_LOGIC;
  signal \g0_b1__2_n_0\ : STD_LOGIC;
  signal \g0_b1__3_n_0\ : STD_LOGIC;
  signal \g0_b1__4_n_0\ : STD_LOGIC;
  signal g0_b1_n_0 : STD_LOGIC;
  signal \g0_b2__0_n_0\ : STD_LOGIC;
  signal \g0_b2__1_n_0\ : STD_LOGIC;
  signal \g0_b2__2_n_0\ : STD_LOGIC;
  signal g0_b2_n_0 : STD_LOGIC;
  signal \g0_b3__0_n_0\ : STD_LOGIC;
  signal \g0_b3__1_n_0\ : STD_LOGIC;
  signal \g0_b3__2_n_0\ : STD_LOGIC;
  signal g0_b3_n_0 : STD_LOGIC;
  signal \g0_b4__0_n_0\ : STD_LOGIC;
  signal \g0_b4__1_n_0\ : STD_LOGIC;
  signal \g0_b4__2_n_0\ : STD_LOGIC;
  signal g0_b4_n_0 : STD_LOGIC;
  signal \g0_b5__0_n_0\ : STD_LOGIC;
  signal \g0_b5__1_n_0\ : STD_LOGIC;
  signal \g0_b5__2_n_0\ : STD_LOGIC;
  signal g0_b5_n_0 : STD_LOGIC;
  signal \g0_b6__0_n_0\ : STD_LOGIC;
  signal \g0_b6__1_n_0\ : STD_LOGIC;
  signal \g0_b6__2_n_0\ : STD_LOGIC;
  signal g0_b6_n_0 : STD_LOGIC;
  signal \g0_b7__0_n_0\ : STD_LOGIC;
  signal \g0_b7__1_n_0\ : STD_LOGIC;
  signal \g0_b7__2_n_0\ : STD_LOGIC;
  signal g0_b7_n_0 : STD_LOGIC;
  signal \g0_b8__0_n_0\ : STD_LOGIC;
  signal \g0_b8__1_n_0\ : STD_LOGIC;
  signal \g0_b8__2_n_0\ : STD_LOGIC;
  signal \g0_b8__3_n_0\ : STD_LOGIC;
  signal \g0_b8__4_n_0\ : STD_LOGIC;
  signal g0_b8_n_0 : STD_LOGIC;
  signal \g0_b9__0_n_0\ : STD_LOGIC;
  signal \g0_b9__1_n_0\ : STD_LOGIC;
  signal \g0_b9__2_n_0\ : STD_LOGIC;
  signal \g0_b9__3_n_0\ : STD_LOGIC;
  signal \g0_b9__4_n_0\ : STD_LOGIC;
  signal g0_b9_n_0 : STD_LOGIC;
  signal \i_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[0]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[10]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[10]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[11]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[11]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[11]_i_5_n_0\ : STD_LOGIC;
  signal \i_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[1]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[1]_i_5_n_0\ : STD_LOGIC;
  signal \i_out[1]_i_6_n_0\ : STD_LOGIC;
  signal \i_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[3]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[5]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[6]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[8]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[8]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[8]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[8]_i_5_n_0\ : STD_LOGIC;
  signal \i_out[8]_i_6_n_0\ : STD_LOGIC;
  signal \i_out[8]_i_7_n_0\ : STD_LOGIC;
  signal \i_out[9]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[9]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[9]_i_5_n_0\ : STD_LOGIC;
  signal i_out_5 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \i_out_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \i_out_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \i_out_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \i_out_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \i_out_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \i_out_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \i_out_reg[9]_i_4_n_0\ : STD_LOGIC;
  signal input_data : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal input_data0 : STD_LOGIC;
  signal \input_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \input_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \input_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \input_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \input_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \input_data[1]_i_3_n_0\ : STD_LOGIC;
  signal \input_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \input_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \input_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \input_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \input_data[4]_i_3_n_0\ : STD_LOGIC;
  signal \input_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \input_data[5]_i_3_n_0\ : STD_LOGIC;
  signal \input_data[5]_i_4_n_0\ : STD_LOGIC;
  signal k0 : STD_LOGIC;
  signal \k[0]_i_1_n_0\ : STD_LOGIC;
  signal \k[0]_i_3_n_0\ : STD_LOGIC;
  signal \k[0]_i_4_n_0\ : STD_LOGIC;
  signal \k[0]_i_5_n_0\ : STD_LOGIC;
  signal \k[0]_i_6_n_0\ : STD_LOGIC;
  signal k_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \k_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \k_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \k_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \k_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \k_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \q_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[10]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[10]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[10]_i_5_n_0\ : STD_LOGIC;
  signal \q_out[11]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[1]_i_4_n_0\ : STD_LOGIC;
  signal \q_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[5]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[5]_i_4_n_0\ : STD_LOGIC;
  signal \q_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[6]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[6]_i_4_n_0\ : STD_LOGIC;
  signal \q_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[8]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[8]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[8]_i_4_n_0\ : STD_LOGIC;
  signal \q_out[8]_i_5_n_0\ : STD_LOGIC;
  signal \q_out[9]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[9]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[9]_i_4_n_0\ : STD_LOGIC;
  signal \q_out[9]_i_5_n_0\ : STD_LOGIC;
  signal \q_out[9]_i_6_n_0\ : STD_LOGIC;
  signal q_out_6 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \q_out_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \q_out_reg[10]_i_4_n_0\ : STD_LOGIC;
  signal \q_out_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \q_out_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal \NLW_buff_counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_data_out_valid2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_data_out_valid2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_k_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_k_reg[0]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \buff_counter_reg[0]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \buff_counter_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \buff_counter_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \buff_counter_reg[8]_i_1\ : label is 16;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \buff_reg[0][5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \buff_reg[3][5]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \buff_reg[3][5]_i_4\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \buff_reg[4][5]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \buff_reg[5][5]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \buff_reg[5][5]_i_6\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of data_out_ready_i_5 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of data_out_ready_i_7 : label is "soft_lutpair0";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of data_out_valid2_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \data_out_valid2_carry__0\ : label is 11;
  attribute SOFT_HLUTNM of g0_b0 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \g0_b0__1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \g0_b10__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \g0_b1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of g0_b2 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \g0_b2__2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of g0_b3 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \g0_b3__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \g0_b3__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \g0_b3__2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of g0_b4 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \g0_b4__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \g0_b4__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \g0_b4__2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of g0_b5 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \g0_b5__1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of g0_b6 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \g0_b6__2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of g0_b7 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \g0_b7__2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of g0_b8 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \g0_b8__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \g0_b8__1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \g0_b8__2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \g0_b8__4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of g0_b9 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \g0_b9__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \g0_b9__4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i_out[0]_i_4\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \i_out[10]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \i_out[10]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \i_out[11]_i_5\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \i_out[1]_i_5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i_out[1]_i_6\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \i_out[2]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \i_out[3]_i_4\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \i_out[4]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \i_out[5]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \i_out[6]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \i_out[8]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \i_out[8]_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \i_out[8]_i_6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \i_out[8]_i_7\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i_out[9]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \i_out[9]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q_out[10]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \q_out[11]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \q_out[1]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \q_out[1]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q_out[2]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \q_out[5]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \q_out[6]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \q_out[6]_i_4\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \q_out[8]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q_out[8]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \q_out[9]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \q_out[9]_i_5\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \q_out[9]_i_6\ : label is "soft_lutpair19";
begin
  data_out_ready <= \^data_out_ready\;
\buff_counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => data_in_valid,
      I1 => data_in_ready,
      I2 => \data_out_valid2_carry__0_n_0\,
      O => \buff_counter[0]_i_1_n_0\
    );
\buff_counter[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(7),
      O => \buff_counter[0]_i_10_n_0\
    );
\buff_counter[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(6),
      O => \buff_counter[0]_i_11_n_0\
    );
\buff_counter[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(5),
      O => \buff_counter[0]_i_12_n_0\
    );
\buff_counter[0]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(4),
      O => \buff_counter[0]_i_13_n_0\
    );
\buff_counter[0]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(3),
      O => \buff_counter[0]_i_14_n_0\
    );
\buff_counter[0]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(2),
      O => \buff_counter[0]_i_15_n_0\
    );
\buff_counter[0]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(1),
      O => \buff_counter[0]_i_16_n_0\
    );
\buff_counter[0]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(0),
      O => \buff_counter[0]_i_17_n_0\
    );
\buff_counter[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[0]_i_3_n_0\
    );
\buff_counter[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[0]_i_4_n_0\
    );
\buff_counter[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[0]_i_5_n_0\
    );
\buff_counter[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[0]_i_6_n_0\
    );
\buff_counter[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[0]_i_7_n_0\
    );
\buff_counter[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[0]_i_8_n_0\
    );
\buff_counter[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[0]_i_9_n_0\
    );
\buff_counter[16]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(23),
      O => \buff_counter[16]_i_10_n_0\
    );
\buff_counter[16]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(22),
      O => \buff_counter[16]_i_11_n_0\
    );
\buff_counter[16]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(21),
      O => \buff_counter[16]_i_12_n_0\
    );
\buff_counter[16]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(20),
      O => \buff_counter[16]_i_13_n_0\
    );
\buff_counter[16]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(19),
      O => \buff_counter[16]_i_14_n_0\
    );
\buff_counter[16]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(18),
      O => \buff_counter[16]_i_15_n_0\
    );
\buff_counter[16]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(17),
      O => \buff_counter[16]_i_16_n_0\
    );
\buff_counter[16]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(16),
      O => \buff_counter[16]_i_17_n_0\
    );
\buff_counter[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[16]_i_2_n_0\
    );
\buff_counter[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[16]_i_3_n_0\
    );
\buff_counter[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[16]_i_4_n_0\
    );
\buff_counter[16]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[16]_i_5_n_0\
    );
\buff_counter[16]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[16]_i_6_n_0\
    );
\buff_counter[16]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[16]_i_7_n_0\
    );
\buff_counter[16]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[16]_i_8_n_0\
    );
\buff_counter[16]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[16]_i_9_n_0\
    );
\buff_counter[24]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(30),
      O => \buff_counter[24]_i_10_n_0\
    );
\buff_counter[24]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(29),
      O => \buff_counter[24]_i_11_n_0\
    );
\buff_counter[24]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(28),
      O => \buff_counter[24]_i_12_n_0\
    );
\buff_counter[24]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(27),
      O => \buff_counter[24]_i_13_n_0\
    );
\buff_counter[24]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(26),
      O => \buff_counter[24]_i_14_n_0\
    );
\buff_counter[24]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(25),
      O => \buff_counter[24]_i_15_n_0\
    );
\buff_counter[24]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(24),
      O => \buff_counter[24]_i_16_n_0\
    );
\buff_counter[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[24]_i_2_n_0\
    );
\buff_counter[24]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[24]_i_3_n_0\
    );
\buff_counter[24]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[24]_i_4_n_0\
    );
\buff_counter[24]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[24]_i_5_n_0\
    );
\buff_counter[24]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[24]_i_6_n_0\
    );
\buff_counter[24]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[24]_i_7_n_0\
    );
\buff_counter[24]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[24]_i_8_n_0\
    );
\buff_counter[24]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56AA"
    )
        port map (
      I0 => buff_counter_reg(31),
      I1 => data_in_valid,
      I2 => \data_out_valid2_carry__0_n_0\,
      I3 => data_in_ready,
      O => \buff_counter[24]_i_9_n_0\
    );
\buff_counter[8]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(15),
      O => \buff_counter[8]_i_10_n_0\
    );
\buff_counter[8]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(14),
      O => \buff_counter[8]_i_11_n_0\
    );
\buff_counter[8]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(13),
      O => \buff_counter[8]_i_12_n_0\
    );
\buff_counter[8]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(12),
      O => \buff_counter[8]_i_13_n_0\
    );
\buff_counter[8]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(11),
      O => \buff_counter[8]_i_14_n_0\
    );
\buff_counter[8]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(10),
      O => \buff_counter[8]_i_15_n_0\
    );
\buff_counter[8]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(9),
      O => \buff_counter[8]_i_16_n_0\
    );
\buff_counter[8]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => buff_counter_reg(8),
      O => \buff_counter[8]_i_17_n_0\
    );
\buff_counter[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[8]_i_2_n_0\
    );
\buff_counter[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[8]_i_3_n_0\
    );
\buff_counter[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[8]_i_4_n_0\
    );
\buff_counter[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[8]_i_5_n_0\
    );
\buff_counter[8]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[8]_i_6_n_0\
    );
\buff_counter[8]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[8]_i_7_n_0\
    );
\buff_counter[8]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[8]_i_8_n_0\
    );
\buff_counter[8]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \buff_counter[8]_i_9_n_0\
    );
\buff_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[0]_i_2_n_15\,
      Q => buff_counter_reg(0)
    );
\buff_counter_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \buff_counter_reg[0]_i_2_n_0\,
      CO(6) => \buff_counter_reg[0]_i_2_n_1\,
      CO(5) => \buff_counter_reg[0]_i_2_n_2\,
      CO(4) => \buff_counter_reg[0]_i_2_n_3\,
      CO(3) => \buff_counter_reg[0]_i_2_n_4\,
      CO(2) => \buff_counter_reg[0]_i_2_n_5\,
      CO(1) => \buff_counter_reg[0]_i_2_n_6\,
      CO(0) => \buff_counter_reg[0]_i_2_n_7\,
      DI(7) => \buff_counter[0]_i_3_n_0\,
      DI(6) => \buff_counter[0]_i_4_n_0\,
      DI(5) => \buff_counter[0]_i_5_n_0\,
      DI(4) => \buff_counter[0]_i_6_n_0\,
      DI(3) => \buff_counter[0]_i_7_n_0\,
      DI(2) => \buff_counter[0]_i_8_n_0\,
      DI(1) => \buff_counter[0]_i_9_n_0\,
      DI(0) => '1',
      O(7) => \buff_counter_reg[0]_i_2_n_8\,
      O(6) => \buff_counter_reg[0]_i_2_n_9\,
      O(5) => \buff_counter_reg[0]_i_2_n_10\,
      O(4) => \buff_counter_reg[0]_i_2_n_11\,
      O(3) => \buff_counter_reg[0]_i_2_n_12\,
      O(2) => \buff_counter_reg[0]_i_2_n_13\,
      O(1) => \buff_counter_reg[0]_i_2_n_14\,
      O(0) => \buff_counter_reg[0]_i_2_n_15\,
      S(7) => \buff_counter[0]_i_10_n_0\,
      S(6) => \buff_counter[0]_i_11_n_0\,
      S(5) => \buff_counter[0]_i_12_n_0\,
      S(4) => \buff_counter[0]_i_13_n_0\,
      S(3) => \buff_counter[0]_i_14_n_0\,
      S(2) => \buff_counter[0]_i_15_n_0\,
      S(1) => \buff_counter[0]_i_16_n_0\,
      S(0) => \buff_counter[0]_i_17_n_0\
    );
\buff_counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[8]_i_1_n_13\,
      Q => buff_counter_reg(10)
    );
\buff_counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[8]_i_1_n_12\,
      Q => buff_counter_reg(11)
    );
\buff_counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[8]_i_1_n_11\,
      Q => buff_counter_reg(12)
    );
\buff_counter_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[8]_i_1_n_10\,
      Q => buff_counter_reg(13)
    );
\buff_counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[8]_i_1_n_9\,
      Q => buff_counter_reg(14)
    );
\buff_counter_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[8]_i_1_n_8\,
      Q => buff_counter_reg(15)
    );
\buff_counter_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[16]_i_1_n_15\,
      Q => buff_counter_reg(16)
    );
\buff_counter_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \buff_counter_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \buff_counter_reg[16]_i_1_n_0\,
      CO(6) => \buff_counter_reg[16]_i_1_n_1\,
      CO(5) => \buff_counter_reg[16]_i_1_n_2\,
      CO(4) => \buff_counter_reg[16]_i_1_n_3\,
      CO(3) => \buff_counter_reg[16]_i_1_n_4\,
      CO(2) => \buff_counter_reg[16]_i_1_n_5\,
      CO(1) => \buff_counter_reg[16]_i_1_n_6\,
      CO(0) => \buff_counter_reg[16]_i_1_n_7\,
      DI(7) => \buff_counter[16]_i_2_n_0\,
      DI(6) => \buff_counter[16]_i_3_n_0\,
      DI(5) => \buff_counter[16]_i_4_n_0\,
      DI(4) => \buff_counter[16]_i_5_n_0\,
      DI(3) => \buff_counter[16]_i_6_n_0\,
      DI(2) => \buff_counter[16]_i_7_n_0\,
      DI(1) => \buff_counter[16]_i_8_n_0\,
      DI(0) => \buff_counter[16]_i_9_n_0\,
      O(7) => \buff_counter_reg[16]_i_1_n_8\,
      O(6) => \buff_counter_reg[16]_i_1_n_9\,
      O(5) => \buff_counter_reg[16]_i_1_n_10\,
      O(4) => \buff_counter_reg[16]_i_1_n_11\,
      O(3) => \buff_counter_reg[16]_i_1_n_12\,
      O(2) => \buff_counter_reg[16]_i_1_n_13\,
      O(1) => \buff_counter_reg[16]_i_1_n_14\,
      O(0) => \buff_counter_reg[16]_i_1_n_15\,
      S(7) => \buff_counter[16]_i_10_n_0\,
      S(6) => \buff_counter[16]_i_11_n_0\,
      S(5) => \buff_counter[16]_i_12_n_0\,
      S(4) => \buff_counter[16]_i_13_n_0\,
      S(3) => \buff_counter[16]_i_14_n_0\,
      S(2) => \buff_counter[16]_i_15_n_0\,
      S(1) => \buff_counter[16]_i_16_n_0\,
      S(0) => \buff_counter[16]_i_17_n_0\
    );
\buff_counter_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[16]_i_1_n_14\,
      Q => buff_counter_reg(17)
    );
\buff_counter_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[16]_i_1_n_13\,
      Q => buff_counter_reg(18)
    );
\buff_counter_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[16]_i_1_n_12\,
      Q => buff_counter_reg(19)
    );
\buff_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[0]_i_2_n_14\,
      Q => buff_counter_reg(1)
    );
\buff_counter_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[16]_i_1_n_11\,
      Q => buff_counter_reg(20)
    );
\buff_counter_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[16]_i_1_n_10\,
      Q => buff_counter_reg(21)
    );
\buff_counter_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[16]_i_1_n_9\,
      Q => buff_counter_reg(22)
    );
\buff_counter_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[16]_i_1_n_8\,
      Q => buff_counter_reg(23)
    );
\buff_counter_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[24]_i_1_n_15\,
      Q => buff_counter_reg(24)
    );
\buff_counter_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \buff_counter_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_buff_counter_reg[24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \buff_counter_reg[24]_i_1_n_1\,
      CO(5) => \buff_counter_reg[24]_i_1_n_2\,
      CO(4) => \buff_counter_reg[24]_i_1_n_3\,
      CO(3) => \buff_counter_reg[24]_i_1_n_4\,
      CO(2) => \buff_counter_reg[24]_i_1_n_5\,
      CO(1) => \buff_counter_reg[24]_i_1_n_6\,
      CO(0) => \buff_counter_reg[24]_i_1_n_7\,
      DI(7) => '0',
      DI(6) => \buff_counter[24]_i_2_n_0\,
      DI(5) => \buff_counter[24]_i_3_n_0\,
      DI(4) => \buff_counter[24]_i_4_n_0\,
      DI(3) => \buff_counter[24]_i_5_n_0\,
      DI(2) => \buff_counter[24]_i_6_n_0\,
      DI(1) => \buff_counter[24]_i_7_n_0\,
      DI(0) => \buff_counter[24]_i_8_n_0\,
      O(7) => \buff_counter_reg[24]_i_1_n_8\,
      O(6) => \buff_counter_reg[24]_i_1_n_9\,
      O(5) => \buff_counter_reg[24]_i_1_n_10\,
      O(4) => \buff_counter_reg[24]_i_1_n_11\,
      O(3) => \buff_counter_reg[24]_i_1_n_12\,
      O(2) => \buff_counter_reg[24]_i_1_n_13\,
      O(1) => \buff_counter_reg[24]_i_1_n_14\,
      O(0) => \buff_counter_reg[24]_i_1_n_15\,
      S(7) => \buff_counter[24]_i_9_n_0\,
      S(6) => \buff_counter[24]_i_10_n_0\,
      S(5) => \buff_counter[24]_i_11_n_0\,
      S(4) => \buff_counter[24]_i_12_n_0\,
      S(3) => \buff_counter[24]_i_13_n_0\,
      S(2) => \buff_counter[24]_i_14_n_0\,
      S(1) => \buff_counter[24]_i_15_n_0\,
      S(0) => \buff_counter[24]_i_16_n_0\
    );
\buff_counter_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[24]_i_1_n_14\,
      Q => buff_counter_reg(25)
    );
\buff_counter_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[24]_i_1_n_13\,
      Q => buff_counter_reg(26)
    );
\buff_counter_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[24]_i_1_n_12\,
      Q => buff_counter_reg(27)
    );
\buff_counter_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[24]_i_1_n_11\,
      Q => buff_counter_reg(28)
    );
\buff_counter_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[24]_i_1_n_10\,
      Q => buff_counter_reg(29)
    );
\buff_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[0]_i_2_n_13\,
      Q => buff_counter_reg(2)
    );
\buff_counter_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[24]_i_1_n_9\,
      Q => buff_counter_reg(30)
    );
\buff_counter_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[24]_i_1_n_8\,
      Q => buff_counter_reg(31)
    );
\buff_counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[0]_i_2_n_12\,
      Q => buff_counter_reg(3)
    );
\buff_counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[0]_i_2_n_11\,
      Q => buff_counter_reg(4)
    );
\buff_counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[0]_i_2_n_10\,
      Q => buff_counter_reg(5)
    );
\buff_counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[0]_i_2_n_9\,
      Q => buff_counter_reg(6)
    );
\buff_counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[0]_i_2_n_8\,
      Q => buff_counter_reg(7)
    );
\buff_counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[8]_i_1_n_15\,
      Q => buff_counter_reg(8)
    );
\buff_counter_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \buff_counter_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \buff_counter_reg[8]_i_1_n_0\,
      CO(6) => \buff_counter_reg[8]_i_1_n_1\,
      CO(5) => \buff_counter_reg[8]_i_1_n_2\,
      CO(4) => \buff_counter_reg[8]_i_1_n_3\,
      CO(3) => \buff_counter_reg[8]_i_1_n_4\,
      CO(2) => \buff_counter_reg[8]_i_1_n_5\,
      CO(1) => \buff_counter_reg[8]_i_1_n_6\,
      CO(0) => \buff_counter_reg[8]_i_1_n_7\,
      DI(7) => \buff_counter[8]_i_2_n_0\,
      DI(6) => \buff_counter[8]_i_3_n_0\,
      DI(5) => \buff_counter[8]_i_4_n_0\,
      DI(4) => \buff_counter[8]_i_5_n_0\,
      DI(3) => \buff_counter[8]_i_6_n_0\,
      DI(2) => \buff_counter[8]_i_7_n_0\,
      DI(1) => \buff_counter[8]_i_8_n_0\,
      DI(0) => \buff_counter[8]_i_9_n_0\,
      O(7) => \buff_counter_reg[8]_i_1_n_8\,
      O(6) => \buff_counter_reg[8]_i_1_n_9\,
      O(5) => \buff_counter_reg[8]_i_1_n_10\,
      O(4) => \buff_counter_reg[8]_i_1_n_11\,
      O(3) => \buff_counter_reg[8]_i_1_n_12\,
      O(2) => \buff_counter_reg[8]_i_1_n_13\,
      O(1) => \buff_counter_reg[8]_i_1_n_14\,
      O(0) => \buff_counter_reg[8]_i_1_n_15\,
      S(7) => \buff_counter[8]_i_10_n_0\,
      S(6) => \buff_counter[8]_i_11_n_0\,
      S(5) => \buff_counter[8]_i_12_n_0\,
      S(4) => \buff_counter[8]_i_13_n_0\,
      S(3) => \buff_counter[8]_i_14_n_0\,
      S(2) => \buff_counter[8]_i_15_n_0\,
      S(1) => \buff_counter[8]_i_16_n_0\,
      S(0) => \buff_counter[8]_i_17_n_0\
    );
\buff_counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_counter[0]_i_1_n_0\,
      CLR => reset,
      D => \buff_counter_reg[8]_i_1_n_14\,
      Q => buff_counter_reg(9)
    );
\buff_reg[0][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \buff_reg[5][5]_i_2_n_0\,
      I1 => buff_counter_reg(16),
      I2 => buff_counter_reg(17),
      I3 => buff_counter_reg(15),
      I4 => \buff_reg[0][5]_i_2_n_0\,
      I5 => \buff_reg[5][5]_i_4_n_0\,
      O => \buff_reg[0]_4\
    );
\buff_reg[0][5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => buff_counter_reg(13),
      I1 => buff_counter_reg(14),
      I2 => buff_counter_reg(2),
      I3 => buff_counter_reg(1),
      I4 => buff_counter_reg(0),
      O => \buff_reg[0][5]_i_2_n_0\
    );
\buff_reg[1][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \buff_reg[4][5]_i_2_n_0\,
      I1 => buff_counter_reg(0),
      I2 => buff_counter_reg(1),
      I3 => buff_counter_reg(3),
      I4 => buff_counter_reg(2),
      I5 => \buff_reg[4][5]_i_3_n_0\,
      O => \buff_reg[1]_0\
    );
\buff_reg[2][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \buff_reg[4][5]_i_2_n_0\,
      I1 => buff_counter_reg(3),
      I2 => buff_counter_reg(0),
      I3 => buff_counter_reg(1),
      I4 => buff_counter_reg(2),
      I5 => \buff_reg[4][5]_i_3_n_0\,
      O => \buff_reg[2]_1\
    );
\buff_reg[3][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \buff_reg[3][5]_i_2_n_0\,
      I1 => \buff_reg[5][5]_i_4_n_0\,
      I2 => \buff_reg[3][5]_i_3_n_0\,
      I3 => buff_counter_reg(0),
      I4 => \buff_reg[3][5]_i_4_n_0\,
      I5 => \buff_reg[3][5]_i_5_n_0\,
      O => \buff_reg[3]_3\
    );
\buff_reg[3][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080008080"
    )
        port map (
      I0 => \buff_reg[3][5]_i_6_n_0\,
      I1 => \buff_reg[4][5]_i_5_n_0\,
      I2 => \buff_reg[4][5]_i_4_n_0\,
      I3 => buff_counter_reg(25),
      I4 => buff_counter_reg(24),
      I5 => \buff_reg[4][5]_i_7_n_0\,
      O => \buff_reg[3][5]_i_2_n_0\
    );
\buff_reg[3][5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => buff_counter_reg(2),
      I1 => buff_counter_reg(1),
      O => \buff_reg[3][5]_i_3_n_0\
    );
\buff_reg[3][5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => buff_counter_reg(7),
      I1 => buff_counter_reg(6),
      I2 => buff_counter_reg(17),
      I3 => buff_counter_reg(16),
      O => \buff_reg[3][5]_i_4_n_0\
    );
\buff_reg[3][5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \buff_reg[5][5]_i_5_n_0\,
      I1 => buff_counter_reg(12),
      I2 => buff_counter_reg(13),
      I3 => buff_counter_reg(14),
      I4 => buff_counter_reg(15),
      O => \buff_reg[3][5]_i_5_n_0\
    );
\buff_reg[3][5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => buff_counter_reg(19),
      I1 => buff_counter_reg(18),
      I2 => buff_counter_reg(20),
      I3 => buff_counter_reg(21),
      I4 => buff_counter_reg(22),
      I5 => buff_counter_reg(23),
      O => \buff_reg[3][5]_i_6_n_0\
    );
\buff_reg[4][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \buff_reg[4][5]_i_2_n_0\,
      I1 => buff_counter_reg(3),
      I2 => buff_counter_reg(0),
      I3 => buff_counter_reg(2),
      I4 => buff_counter_reg(1),
      I5 => \buff_reg[4][5]_i_3_n_0\,
      O => \buff_reg[4]_2\
    );
\buff_reg[4][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => data_out_ready_i_3_n_0,
      I1 => \buff_reg[4][5]_i_4_n_0\,
      I2 => \buff_reg[4][5]_i_5_n_0\,
      I3 => data_out_ready_i_4_n_0,
      I4 => \buff_reg[4][5]_i_6_n_0\,
      I5 => \buff_reg[4][5]_i_7_n_0\,
      O => \buff_reg[4][5]_i_2_n_0\
    );
\buff_reg[4][5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => buff_counter_reg(5),
      I1 => buff_counter_reg(4),
      I2 => buff_counter_reg(7),
      I3 => buff_counter_reg(6),
      O => \buff_reg[4][5]_i_3_n_0\
    );
\buff_reg[4][5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(26),
      I1 => buff_counter_reg(27),
      O => \buff_reg[4][5]_i_4_n_0\
    );
\buff_reg[4][5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in_valid,
      I1 => data_in_ready,
      O => \buff_reg[4][5]_i_5_n_0\
    );
\buff_reg[4][5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(24),
      I1 => buff_counter_reg(25),
      O => \buff_reg[4][5]_i_6_n_0\
    );
\buff_reg[4][5]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => buff_counter_reg(29),
      I1 => buff_counter_reg(28),
      I2 => buff_counter_reg(30),
      I3 => buff_counter_reg(31),
      O => \buff_reg[4][5]_i_7_n_0\
    );
\buff_reg[5][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \buff_reg[5][5]_i_2_n_0\,
      I1 => buff_counter_reg(16),
      I2 => buff_counter_reg(17),
      I3 => buff_counter_reg(15),
      I4 => \buff_reg[5][5]_i_3_n_0\,
      I5 => \buff_reg[5][5]_i_4_n_0\,
      O => \buff_reg[5][5]_i_1_n_0\
    );
\buff_reg[5][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000202200000000"
    )
        port map (
      I0 => \buff_reg[3][5]_i_2_n_0\,
      I1 => buff_counter_reg(14),
      I2 => buff_counter_reg(13),
      I3 => buff_counter_reg(12),
      I4 => \buff_reg[5][5]_i_5_n_0\,
      I5 => \buff_reg[5][5]_i_6_n_0\,
      O => \buff_reg[5][5]_i_2_n_0\
    );
\buff_reg[5][5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => buff_counter_reg(2),
      I1 => buff_counter_reg(5),
      I2 => buff_counter_reg(1),
      I3 => buff_counter_reg(0),
      I4 => buff_counter_reg(13),
      I5 => buff_counter_reg(14),
      O => \buff_reg[5][5]_i_3_n_0\
    );
\buff_reg[5][5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => buff_counter_reg(3),
      I1 => buff_counter_reg(25),
      I2 => buff_counter_reg(26),
      I3 => buff_counter_reg(5),
      I4 => buff_counter_reg(4),
      O => \buff_reg[5][5]_i_4_n_0\
    );
\buff_reg[5][5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => buff_counter_reg(11),
      I1 => buff_counter_reg(10),
      I2 => buff_counter_reg(9),
      I3 => buff_counter_reg(8),
      O => \buff_reg[5][5]_i_5_n_0\
    );
\buff_reg[5][5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(6),
      I1 => buff_counter_reg(7),
      O => \buff_reg[5][5]_i_6_n_0\
    );
\buff_reg_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[0]_4\,
      CLR => reset,
      D => data_in(0),
      Q => \buff_reg_reg[0]\(0)
    );
\buff_reg_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[0]_4\,
      CLR => reset,
      D => data_in(1),
      Q => \buff_reg_reg[0]\(1)
    );
\buff_reg_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[0]_4\,
      CLR => reset,
      D => data_in(2),
      Q => \buff_reg_reg[0]\(2)
    );
\buff_reg_reg[0][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[0]_4\,
      CLR => reset,
      D => data_in(3),
      Q => \buff_reg_reg[0]\(3)
    );
\buff_reg_reg[0][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[0]_4\,
      CLR => reset,
      D => data_in(4),
      Q => \buff_reg_reg[0]\(4)
    );
\buff_reg_reg[0][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[0]_4\,
      CLR => reset,
      D => data_in(5),
      Q => \buff_reg_reg[0]\(5)
    );
\buff_reg_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[1]_0\,
      CLR => reset,
      D => data_in(0),
      Q => \buff_reg_reg[1]\(0)
    );
\buff_reg_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[1]_0\,
      CLR => reset,
      D => data_in(1),
      Q => \buff_reg_reg[1]\(1)
    );
\buff_reg_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[1]_0\,
      CLR => reset,
      D => data_in(2),
      Q => \buff_reg_reg[1]\(2)
    );
\buff_reg_reg[1][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[1]_0\,
      CLR => reset,
      D => data_in(3),
      Q => \buff_reg_reg[1]\(3)
    );
\buff_reg_reg[1][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[1]_0\,
      CLR => reset,
      D => data_in(4),
      Q => \buff_reg_reg[1]\(4)
    );
\buff_reg_reg[1][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[1]_0\,
      CLR => reset,
      D => data_in(5),
      Q => \buff_reg_reg[1]\(5)
    );
\buff_reg_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[2]_1\,
      CLR => reset,
      D => data_in(0),
      Q => \buff_reg_reg[2]\(0)
    );
\buff_reg_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[2]_1\,
      CLR => reset,
      D => data_in(1),
      Q => \buff_reg_reg[2]\(1)
    );
\buff_reg_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[2]_1\,
      CLR => reset,
      D => data_in(2),
      Q => \buff_reg_reg[2]\(2)
    );
\buff_reg_reg[2][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[2]_1\,
      CLR => reset,
      D => data_in(3),
      Q => \buff_reg_reg[2]\(3)
    );
\buff_reg_reg[2][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[2]_1\,
      CLR => reset,
      D => data_in(4),
      Q => \buff_reg_reg[2]\(4)
    );
\buff_reg_reg[2][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[2]_1\,
      CLR => reset,
      D => data_in(5),
      Q => \buff_reg_reg[2]\(5)
    );
\buff_reg_reg[3][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[3]_3\,
      CLR => reset,
      D => data_in(0),
      Q => \buff_reg_reg[3]\(0)
    );
\buff_reg_reg[3][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[3]_3\,
      CLR => reset,
      D => data_in(1),
      Q => \buff_reg_reg[3]\(1)
    );
\buff_reg_reg[3][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[3]_3\,
      CLR => reset,
      D => data_in(2),
      Q => \buff_reg_reg[3]\(2)
    );
\buff_reg_reg[3][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[3]_3\,
      CLR => reset,
      D => data_in(3),
      Q => \buff_reg_reg[3]\(3)
    );
\buff_reg_reg[3][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[3]_3\,
      CLR => reset,
      D => data_in(4),
      Q => \buff_reg_reg[3]\(4)
    );
\buff_reg_reg[3][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[3]_3\,
      CLR => reset,
      D => data_in(5),
      Q => \buff_reg_reg[3]\(5)
    );
\buff_reg_reg[4][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[4]_2\,
      CLR => reset,
      D => data_in(0),
      Q => \buff_reg_reg[4]\(0)
    );
\buff_reg_reg[4][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[4]_2\,
      CLR => reset,
      D => data_in(1),
      Q => \buff_reg_reg[4]\(1)
    );
\buff_reg_reg[4][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[4]_2\,
      CLR => reset,
      D => data_in(2),
      Q => \buff_reg_reg[4]\(2)
    );
\buff_reg_reg[4][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[4]_2\,
      CLR => reset,
      D => data_in(3),
      Q => \buff_reg_reg[4]\(3)
    );
\buff_reg_reg[4][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[4]_2\,
      CLR => reset,
      D => data_in(4),
      Q => \buff_reg_reg[4]\(4)
    );
\buff_reg_reg[4][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[4]_2\,
      CLR => reset,
      D => data_in(5),
      Q => \buff_reg_reg[4]\(5)
    );
\buff_reg_reg[5][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[5][5]_i_1_n_0\,
      CLR => reset,
      D => data_in(0),
      Q => \buff_reg_reg[5]\(0)
    );
\buff_reg_reg[5][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[5][5]_i_1_n_0\,
      CLR => reset,
      D => data_in(1),
      Q => \buff_reg_reg[5]\(1)
    );
\buff_reg_reg[5][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[5][5]_i_1_n_0\,
      CLR => reset,
      D => data_in(2),
      Q => \buff_reg_reg[5]\(2)
    );
\buff_reg_reg[5][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[5][5]_i_1_n_0\,
      CLR => reset,
      D => data_in(3),
      Q => \buff_reg_reg[5]\(3)
    );
\buff_reg_reg[5][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[5][5]_i_1_n_0\,
      CLR => reset,
      D => data_in(4),
      Q => \buff_reg_reg[5]\(4)
    );
\buff_reg_reg[5][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[5][5]_i_1_n_0\,
      CLR => reset,
      D => data_in(5),
      Q => \buff_reg_reg[5]\(5)
    );
data_out_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAB8AA00AAF0"
    )
        port map (
      I0 => \^data_out_ready\,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => k0,
      I3 => reset,
      I4 => data_in_valid,
      I5 => data_in_ready,
      O => data_out_ready_i_1_n_0
    );
data_out_ready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => data_out_ready_i_3_n_0,
      I1 => data_out_ready_i_4_n_0,
      I2 => buff_counter_reg(6),
      I3 => buff_counter_reg(7),
      I4 => data_out_ready_i_5_n_0,
      I5 => data_out_ready_i_6_n_0,
      O => k0
    );
data_out_ready_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => buff_counter_reg(15),
      I1 => buff_counter_reg(14),
      I2 => buff_counter_reg(13),
      I3 => buff_counter_reg(12),
      I4 => \buff_reg[5][5]_i_5_n_0\,
      I5 => \buff_reg[3][5]_i_6_n_0\,
      O => data_out_ready_i_3_n_0
    );
data_out_ready_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(16),
      I1 => buff_counter_reg(17),
      O => data_out_ready_i_4_n_0
    );
data_out_ready_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \buff_reg[4][5]_i_7_n_0\,
      I1 => buff_counter_reg(26),
      I2 => buff_counter_reg(27),
      I3 => buff_counter_reg(1),
      I4 => buff_counter_reg(2),
      O => data_out_ready_i_5_n_0
    );
data_out_ready_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => \buff_reg[4][5]_i_6_n_0\,
      I1 => data_in_valid,
      I2 => data_in_ready,
      I3 => data_out_ready_i_7_n_0,
      I4 => buff_counter_reg(0),
      I5 => buff_counter_reg(3),
      O => data_out_ready_i_6_n_0
    );
data_out_ready_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(4),
      I1 => buff_counter_reg(5),
      O => data_out_ready_i_7_n_0
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
data_out_valid2_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => data_out_valid2_carry_n_0,
      CO(6) => data_out_valid2_carry_n_1,
      CO(5) => data_out_valid2_carry_n_2,
      CO(4) => data_out_valid2_carry_n_3,
      CO(3) => data_out_valid2_carry_n_4,
      CO(2) => data_out_valid2_carry_n_5,
      CO(1) => data_out_valid2_carry_n_6,
      CO(0) => data_out_valid2_carry_n_7,
      DI(7) => data_out_valid2_carry_i_1_n_0,
      DI(6) => data_out_valid2_carry_i_2_n_0,
      DI(5) => data_out_valid2_carry_i_3_n_0,
      DI(4) => data_out_valid2_carry_i_4_n_0,
      DI(3) => data_out_valid2_carry_i_5_n_0,
      DI(2) => data_out_valid2_carry_i_6_n_0,
      DI(1) => data_out_valid2_carry_i_7_n_0,
      DI(0) => data_out_valid2_carry_i_8_n_0,
      O(7 downto 0) => NLW_data_out_valid2_carry_O_UNCONNECTED(7 downto 0),
      S(7) => data_out_valid2_carry_i_9_n_0,
      S(6) => data_out_valid2_carry_i_10_n_0,
      S(5) => data_out_valid2_carry_i_11_n_0,
      S(4) => data_out_valid2_carry_i_12_n_0,
      S(3) => data_out_valid2_carry_i_13_n_0,
      S(2) => data_out_valid2_carry_i_14_n_0,
      S(1) => data_out_valid2_carry_i_15_n_0,
      S(0) => data_out_valid2_carry_i_16_n_0
    );
\data_out_valid2_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => data_out_valid2_carry_n_0,
      CI_TOP => '0',
      CO(7) => \data_out_valid2_carry__0_n_0\,
      CO(6) => \data_out_valid2_carry__0_n_1\,
      CO(5) => \data_out_valid2_carry__0_n_2\,
      CO(4) => \data_out_valid2_carry__0_n_3\,
      CO(3) => \data_out_valid2_carry__0_n_4\,
      CO(2) => \data_out_valid2_carry__0_n_5\,
      CO(1) => \data_out_valid2_carry__0_n_6\,
      CO(0) => \data_out_valid2_carry__0_n_7\,
      DI(7) => \data_out_valid2_carry__0_i_1_n_0\,
      DI(6) => \data_out_valid2_carry__0_i_2_n_0\,
      DI(5) => \data_out_valid2_carry__0_i_3_n_0\,
      DI(4) => \data_out_valid2_carry__0_i_4_n_0\,
      DI(3) => \data_out_valid2_carry__0_i_5_n_0\,
      DI(2) => \data_out_valid2_carry__0_i_6_n_0\,
      DI(1) => \data_out_valid2_carry__0_i_7_n_0\,
      DI(0) => \data_out_valid2_carry__0_i_8_n_0\,
      O(7 downto 0) => \NLW_data_out_valid2_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \data_out_valid2_carry__0_i_9_n_0\,
      S(6) => \data_out_valid2_carry__0_i_10_n_0\,
      S(5) => \data_out_valid2_carry__0_i_11_n_0\,
      S(4) => \data_out_valid2_carry__0_i_12_n_0\,
      S(3) => \data_out_valid2_carry__0_i_13_n_0\,
      S(2) => \data_out_valid2_carry__0_i_14_n_0\,
      S(1) => \data_out_valid2_carry__0_i_15_n_0\,
      S(0) => \data_out_valid2_carry__0_i_16_n_0\
    );
\data_out_valid2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => buff_counter_reg(30),
      I1 => buff_counter_reg(31),
      O => \data_out_valid2_carry__0_i_1_n_0\
    );
\data_out_valid2_carry__0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(28),
      I1 => buff_counter_reg(29),
      O => \data_out_valid2_carry__0_i_10_n_0\
    );
\data_out_valid2_carry__0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(26),
      I1 => buff_counter_reg(27),
      O => \data_out_valid2_carry__0_i_11_n_0\
    );
\data_out_valid2_carry__0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(24),
      I1 => buff_counter_reg(25),
      O => \data_out_valid2_carry__0_i_12_n_0\
    );
\data_out_valid2_carry__0_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(22),
      I1 => buff_counter_reg(23),
      O => \data_out_valid2_carry__0_i_13_n_0\
    );
\data_out_valid2_carry__0_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(20),
      I1 => buff_counter_reg(21),
      O => \data_out_valid2_carry__0_i_14_n_0\
    );
\data_out_valid2_carry__0_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(18),
      I1 => buff_counter_reg(19),
      O => \data_out_valid2_carry__0_i_15_n_0\
    );
\data_out_valid2_carry__0_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(16),
      I1 => buff_counter_reg(17),
      O => \data_out_valid2_carry__0_i_16_n_0\
    );
\data_out_valid2_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(29),
      I1 => buff_counter_reg(28),
      O => \data_out_valid2_carry__0_i_2_n_0\
    );
\data_out_valid2_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(27),
      I1 => buff_counter_reg(26),
      O => \data_out_valid2_carry__0_i_3_n_0\
    );
\data_out_valid2_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(25),
      I1 => buff_counter_reg(24),
      O => \data_out_valid2_carry__0_i_4_n_0\
    );
\data_out_valid2_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(23),
      I1 => buff_counter_reg(22),
      O => \data_out_valid2_carry__0_i_5_n_0\
    );
\data_out_valid2_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(21),
      I1 => buff_counter_reg(20),
      O => \data_out_valid2_carry__0_i_6_n_0\
    );
\data_out_valid2_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(19),
      I1 => buff_counter_reg(18),
      O => \data_out_valid2_carry__0_i_7_n_0\
    );
\data_out_valid2_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(17),
      I1 => buff_counter_reg(16),
      O => \data_out_valid2_carry__0_i_8_n_0\
    );
\data_out_valid2_carry__0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(31),
      I1 => buff_counter_reg(30),
      O => \data_out_valid2_carry__0_i_9_n_0\
    );
data_out_valid2_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(15),
      I1 => buff_counter_reg(14),
      O => data_out_valid2_carry_i_1_n_0
    );
data_out_valid2_carry_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(12),
      I1 => buff_counter_reg(13),
      O => data_out_valid2_carry_i_10_n_0
    );
data_out_valid2_carry_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(10),
      I1 => buff_counter_reg(11),
      O => data_out_valid2_carry_i_11_n_0
    );
data_out_valid2_carry_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(8),
      I1 => buff_counter_reg(9),
      O => data_out_valid2_carry_i_12_n_0
    );
data_out_valid2_carry_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(6),
      I1 => buff_counter_reg(7),
      O => data_out_valid2_carry_i_13_n_0
    );
data_out_valid2_carry_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(4),
      I1 => buff_counter_reg(5),
      O => data_out_valid2_carry_i_14_n_0
    );
data_out_valid2_carry_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(2),
      I1 => buff_counter_reg(3),
      O => data_out_valid2_carry_i_15_n_0
    );
data_out_valid2_carry_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(0),
      I1 => buff_counter_reg(1),
      O => data_out_valid2_carry_i_16_n_0
    );
data_out_valid2_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(13),
      I1 => buff_counter_reg(12),
      O => data_out_valid2_carry_i_2_n_0
    );
data_out_valid2_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(11),
      I1 => buff_counter_reg(10),
      O => data_out_valid2_carry_i_3_n_0
    );
data_out_valid2_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(9),
      I1 => buff_counter_reg(8),
      O => data_out_valid2_carry_i_4_n_0
    );
data_out_valid2_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(7),
      I1 => buff_counter_reg(6),
      O => data_out_valid2_carry_i_5_n_0
    );
data_out_valid2_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(5),
      I1 => buff_counter_reg(4),
      O => data_out_valid2_carry_i_6_n_0
    );
data_out_valid2_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(3),
      I1 => buff_counter_reg(2),
      O => data_out_valid2_carry_i_7_n_0
    );
data_out_valid2_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(1),
      I1 => buff_counter_reg(0),
      O => data_out_valid2_carry_i_8_n_0
    );
data_out_valid2_carry_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(14),
      I1 => buff_counter_reg(15),
      O => data_out_valid2_carry_i_9_n_0
    );
data_out_valid_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => data_out_valid0,
      Q => data_out_valid
    );
g0_b0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \input_data[0]_i_1_n_0\,
      I1 => \input_data[1]_i_1_n_0\,
      O => g0_b0_n_0
    );
\g0_b0__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6E"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[4]_i_1_n_0\,
      O => \g0_b0__0_n_0\
    );
\g0_b0__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      O => \g0_b0__1_n_0\
    );
\g0_b0__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9E"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[4]_i_1_n_0\,
      O => \g0_b0__2_n_0\
    );
\g0_b0__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D8EC"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[4]_i_1_n_0\,
      I3 => \input_data[5]_i_2_n_0\,
      O => \g0_b0__3_n_0\
    );
\g0_b0__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8DBA"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[4]_i_1_n_0\,
      I3 => \input_data[5]_i_2_n_0\,
      O => \g0_b0__4_n_0\
    );
g0_b1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F86"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[1]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => g0_b1_n_0
    );
g0_b10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[1]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => g0_b10_n_0
    );
\g0_b10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"708F"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[1]_i_1_n_0\,
      O => \g0_b10__0_n_0\
    );
\g0_b10__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"87B4"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => \g0_b10__1_n_0\
    );
\g0_b10__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FD2C3F0"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b10__2_n_0\
    );
\g0_b10__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AB55AA55AA75AA"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[1]_i_1_n_0\,
      I4 => \input_data[4]_i_1_n_0\,
      I5 => \input_data[5]_i_2_n_0\,
      O => \g0_b10__3_n_0\
    );
\g0_b10__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D20F3CF0"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[1]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b10__4_n_0\
    );
g0_b10_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1D1D0C3F"
    )
        port map (
      I0 => g0_b10_i_3_n_0,
      I1 => data_in_valid,
      I2 => data_in(2),
      I3 => input_data(2),
      I4 => \data_out_valid2_carry__0_n_0\,
      O => g0_b10_i_1_n_0
    );
g0_b10_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0053FF53"
    )
        port map (
      I0 => g0_b10_i_4_n_0,
      I1 => input_data(3),
      I2 => \data_out_valid2_carry__0_n_0\,
      I3 => data_in_valid,
      I4 => data_in(3),
      O => g0_b10_i_2_n_0
    );
g0_b10_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \buff_reg_reg[5]\(2),
      I1 => k_reg(0),
      I2 => \buff_reg_reg[4]\(2),
      I3 => k_reg(2),
      I4 => g0_b10_i_5_n_0,
      O => g0_b10_i_3_n_0
    );
g0_b10_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \buff_reg_reg[5]\(3),
      I1 => k_reg(0),
      I2 => \buff_reg_reg[4]\(3),
      I3 => k_reg(2),
      I4 => g0_b10_i_6_n_0,
      O => g0_b10_i_4_n_0
    );
g0_b10_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \buff_reg_reg[3]\(2),
      I1 => \buff_reg_reg[2]\(2),
      I2 => k_reg(1),
      I3 => \buff_reg_reg[1]\(2),
      I4 => k_reg(0),
      I5 => \buff_reg_reg[0]\(2),
      O => g0_b10_i_5_n_0
    );
g0_b10_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \buff_reg_reg[3]\(3),
      I1 => \buff_reg_reg[2]\(3),
      I2 => k_reg(1),
      I3 => \buff_reg_reg[1]\(3),
      I4 => k_reg(0),
      I5 => \buff_reg_reg[0]\(3),
      O => g0_b10_i_6_n_0
    );
g0_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554555555557555"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[1]_i_1_n_0\,
      I4 => \input_data[4]_i_1_n_0\,
      I5 => \input_data[5]_i_2_n_0\,
      O => g0_b11_n_0
    );
\g0_b1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"77F8"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[1]_i_1_n_0\,
      O => \g0_b1__0_n_0\
    );
\g0_b1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F86"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => \g0_b1__1_n_0\
    );
\g0_b1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0F7B50C"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b1__2_n_0\
    );
\g0_b1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5ABF5AAF5AAF5AA"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[1]_i_1_n_0\,
      I4 => \input_data[4]_i_1_n_0\,
      I5 => \input_data[5]_i_2_n_0\,
      O => \g0_b1__3_n_0\
    );
\g0_b1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7D0E50A"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[1]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b1__4_n_0\
    );
g0_b2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A97"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[1]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => g0_b2_n_0
    );
\g0_b2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A97"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => \g0_b2__0_n_0\
    );
\g0_b2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1CF0697B"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b2__1_n_0\
    );
\g0_b2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F01C967D"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[1]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b2__2_n_0\
    );
g0_b3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C3B4"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[1]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => g0_b3_n_0
    );
\g0_b3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3CD2"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => \g0_b3__0_n_0\
    );
\g0_b3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A75A4B69"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b3__1_n_0\
    );
\g0_b3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5AA71E69"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[1]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b3__2_n_0\
    );
g0_b4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69B4"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[1]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => g0_b4_n_0
    );
\g0_b4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"96D2"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => \g0_b4__0_n_0\
    );
\g0_b4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78B40FB4"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b4__1_n_0\
    );
\g0_b4__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4780FD2"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[1]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b4__2_n_0\
    );
g0_b5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1EF0A5C3"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => g0_b5_n_0
    );
\g0_b5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F01EA5A5"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[1]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b5__0_n_0\
    );
\g0_b5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"93"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => \input_data[0]_i_1_n_0\,
      I2 => \input_data[4]_i_1_n_0\,
      O => \g0_b5__1_n_0\
    );
\g0_b5__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"93"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => \input_data[1]_i_1_n_0\,
      I2 => \input_data[4]_i_1_n_0\,
      O => \g0_b5__2_n_0\
    );
g0_b6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69E1"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[1]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => g0_b6_n_0
    );
\g0_b6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"96E1"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => \g0_b6__0_n_0\
    );
\g0_b6__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"782DF00F"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b6__1_n_0\
    );
\g0_b6__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2D78F00F"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[1]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b6__2_n_0\
    );
g0_b7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1ED2"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[1]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => g0_b7_n_0
    );
\g0_b7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => \g0_b7__0_n_0\
    );
\g0_b7__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C69C35A"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b7__1_n_0\
    );
\g0_b7__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"693C3C3C"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[1]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b7__2_n_0\
    );
g0_b8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A2D"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[1]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => g0_b8_n_0
    );
\g0_b8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"07F8"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[1]_i_1_n_0\,
      O => \g0_b8__0_n_0\
    );
\g0_b8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A4B"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => \g0_b8__1_n_0\
    );
\g0_b8__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2DC31EB4"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b8__2_n_0\
    );
\g0_b8__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAAAAAA8AAA"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[1]_i_1_n_0\,
      I4 => \input_data[4]_i_1_n_0\,
      I5 => \input_data[5]_i_2_n_0\,
      O => \g0_b8__3_n_0\
    );
\g0_b8__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C32D4BD2"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[1]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b8__4_n_0\
    );
g0_b9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3CE1"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[1]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => g0_b9_n_0
    );
\g0_b9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[1]_i_1_n_0\,
      O => \g0_b9__0_n_0\
    );
\g0_b9__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C3E1"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => \g0_b9__1_n_0\
    );
\g0_b9__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FA5B4A5"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b9__2_n_0\
    );
\g0_b9__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A55BA55AA55A855A"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[1]_i_1_n_0\,
      I4 => \input_data[4]_i_1_n_0\,
      I5 => \input_data[5]_i_2_n_0\,
      O => \g0_b9__3_n_0\
    );
\g0_b9__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A50FE1C3"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[1]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b9__4_n_0\
    );
\i_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AF3F3FAFAF3F3F"
    )
        port map (
      I0 => \i_out_reg[0]_i_2_n_0\,
      I1 => \i_out[0]_i_3_n_0\,
      I2 => mod_type(2),
      I3 => mod_type(0),
      I4 => mod_type(1),
      I5 => \i_out[0]_i_4_n_0\,
      O => i_out_5(0)
    );
\i_out[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CBC8CBC8CBC8FBFB"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => mod_type(0),
      I2 => g0_b10_i_2_n_0,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      I5 => \i_out[1]_i_5_n_0\,
      O => \i_out[0]_i_3_n_0\
    );
\i_out[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C4"
    )
        port map (
      I0 => g0_b10_i_2_n_0,
      I1 => g0_b10_i_1_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      O => \i_out[0]_i_4_n_0\
    );
\i_out[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \i_out_reg[10]_i_2_n_0\,
      I1 => mod_type(1),
      I2 => \i_out[10]_i_3_n_0\,
      I3 => mod_type(2),
      I4 => \i_out[10]_i_4_n_0\,
      O => i_out_5(10)
    );
\i_out[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99990FF0"
    )
        port map (
      I0 => \input_data[0]_i_1_n_0\,
      I1 => g0_b10_i_1_n_0,
      I2 => \input_data[5]_i_2_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => mod_type(0),
      O => \i_out[10]_i_3_n_0\
    );
\i_out[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B88BBB88"
    )
        port map (
      I0 => \i_out[6]_i_2_n_0\,
      I1 => mod_type(1),
      I2 => \input_data[1]_i_1_n_0\,
      I3 => \input_data[0]_i_1_n_0\,
      I4 => mod_type(0),
      O => \i_out[10]_i_4_n_0\
    );
\i_out[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => data_out_valid0
    );
\i_out[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F055C055F355F355"
    )
        port map (
      I0 => \i_out[11]_i_3_n_0\,
      I1 => mod_type(1),
      I2 => \input_data[0]_i_1_n_0\,
      I3 => mod_type(2),
      I4 => mod_type(0),
      I5 => \i_out[11]_i_4_n_0\,
      O => i_out_5(11)
    );
\i_out[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00099AAF0FF99AA"
    )
        port map (
      I0 => \input_data[0]_i_1_n_0\,
      I1 => \input_data[1]_i_1_n_0\,
      I2 => \input_data[4]_i_1_n_0\,
      I3 => mod_type(0),
      I4 => mod_type(1),
      I5 => g0_b10_i_2_n_0,
      O => \i_out[11]_i_3_n_0\
    );
\i_out[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEFEEEEEEEEEEE"
    )
        port map (
      I0 => \input_data[5]_i_2_n_0\,
      I1 => mod_type(0),
      I2 => g0_b10_i_1_n_0,
      I3 => \i_out[11]_i_5_n_0\,
      I4 => \input_data[4]_i_1_n_0\,
      I5 => \input_data[1]_i_1_n_0\,
      O => \i_out[11]_i_4_n_0\
    );
\i_out[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \input_data[0]_i_1_n_0\,
      I1 => g0_b10_i_2_n_0,
      O => \i_out[11]_i_5_n_0\
    );
\i_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \i_out_reg[1]_i_2_n_0\,
      I1 => mod_type(1),
      I2 => \i_out[1]_i_3_n_0\,
      I3 => mod_type(2),
      I4 => \i_out[8]_i_2_n_0\,
      I5 => \i_out[1]_i_4_n_0\,
      O => i_out_5(1)
    );
\i_out[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF15441555"
    )
        port map (
      I0 => mod_type(0),
      I1 => \input_data[4]_i_1_n_0\,
      I2 => g0_b10_i_2_n_0,
      I3 => \input_data[5]_i_2_n_0\,
      I4 => \i_out[1]_i_5_n_0\,
      I5 => \i_out[1]_i_6_n_0\,
      O => \i_out[1]_i_3_n_0\
    );
\i_out[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E600DDFF00000000"
    )
        port map (
      I0 => \input_data[4]_i_1_n_0\,
      I1 => g0_b10_i_1_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => mod_type(0),
      I4 => g0_b10_i_2_n_0,
      I5 => mod_type(1),
      O => \i_out[1]_i_4_n_0\
    );
\i_out[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \input_data[0]_i_1_n_0\,
      I1 => g0_b10_i_2_n_0,
      I2 => g0_b10_i_1_n_0,
      I3 => \input_data[1]_i_1_n_0\,
      O => \i_out[1]_i_5_n_0\
    );
\i_out[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC04"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => mod_type(0),
      I2 => \input_data[0]_i_1_n_0\,
      I3 => g0_b10_i_2_n_0,
      O => \i_out[1]_i_6_n_0\
    );
\i_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFFF4440000"
    )
        port map (
      I0 => \i_out[8]_i_6_n_0\,
      I1 => \i_out[2]_i_2_n_0\,
      I2 => mod_type(1),
      I3 => \i_out_reg[2]_i_3_n_0\,
      I4 => mod_type(2),
      I5 => \i_out[10]_i_4_n_0\,
      O => i_out_5(2)
    );
\i_out[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F3BF"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => mod_type(0),
      I2 => \input_data[0]_i_1_n_0\,
      I3 => g0_b10_i_2_n_0,
      O => \i_out[2]_i_2_n_0\
    );
\i_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A3A3A3A30FFFF000"
    )
        port map (
      I0 => \input_data[4]_i_1_n_0\,
      I1 => g0_b10_i_2_n_0,
      I2 => mod_type(0),
      I3 => \input_data[1]_i_1_n_0\,
      I4 => \input_data[0]_i_1_n_0\,
      I5 => mod_type(1),
      O => \i_out[3]_i_2_n_0\
    );
\i_out[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b3__1_n_0\,
      I1 => \g0_b3__0_n_0\,
      I2 => mod_type(1),
      I3 => \input_data[0]_i_1_n_0\,
      I4 => mod_type(0),
      I5 => \i_out[3]_i_4_n_0\,
      O => \i_out[3]_i_3_n_0\
    );
\i_out[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1221"
    )
        port map (
      I0 => g0_b10_i_2_n_0,
      I1 => mod_type(0),
      I2 => \input_data[5]_i_2_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => \i_out[3]_i_4_n_0\
    );
\i_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0EEE0EEE0EEE0E0"
    )
        port map (
      I0 => \i_out[8]_i_3_n_0\,
      I1 => \i_out[9]_i_2_n_0\,
      I2 => \i_out[4]_i_2_n_0\,
      I3 => mod_type(1),
      I4 => \i_out[8]_i_5_n_0\,
      I5 => \i_out[4]_i_3_n_0\,
      O => i_out_5(4)
    );
\i_out[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3BB3333"
    )
        port map (
      I0 => \g0_b4__0_n_0\,
      I1 => mod_type(2),
      I2 => \g0_b4__1_n_0\,
      I3 => mod_type(0),
      I4 => mod_type(1),
      O => \i_out[4]_i_2_n_0\
    );
\i_out[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => mod_type(0),
      I1 => \input_data[4]_i_1_n_0\,
      I2 => \input_data[5]_i_2_n_0\,
      O => \i_out[4]_i_3_n_0\
    );
\i_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00FE00FE00FEFE"
    )
        port map (
      I0 => mod_type(2),
      I1 => \i_out[8]_i_2_n_0\,
      I2 => \i_out[9]_i_3_n_0\,
      I3 => \i_out[5]_i_2_n_0\,
      I4 => \i_out[5]_i_3_n_0\,
      I5 => \i_out[8]_i_6_n_0\,
      O => i_out_5(5)
    );
\i_out[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3BB3333"
    )
        port map (
      I0 => \g0_b5__1_n_0\,
      I1 => mod_type(2),
      I2 => g0_b5_n_0,
      I3 => mod_type(0),
      I4 => mod_type(1),
      O => \i_out[5]_i_2_n_0\
    );
\i_out[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8228"
    )
        port map (
      I0 => mod_type(0),
      I1 => \input_data[0]_i_1_n_0\,
      I2 => g0_b10_i_1_n_0,
      I3 => g0_b10_i_2_n_0,
      O => \i_out[5]_i_3_n_0\
    );
\i_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E000EAEAEAEAEAEA"
    )
        port map (
      I0 => \i_out[9]_i_2_n_0\,
      I1 => \i_out[6]_i_2_n_0\,
      I2 => mod_type(1),
      I3 => \i_out_reg[6]_i_3_n_0\,
      I4 => mod_type(2),
      I5 => \i_out[6]_i_4_n_0\,
      O => i_out_5(6)
    );
\i_out[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6C3C0FF0"
    )
        port map (
      I0 => \input_data[0]_i_1_n_0\,
      I1 => \input_data[4]_i_1_n_0\,
      I2 => g0_b10_i_1_n_0,
      I3 => g0_b10_i_2_n_0,
      I4 => mod_type(0),
      O => \i_out[6]_i_2_n_0\
    );
\i_out[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEBEBEEBEBBBBBE"
    )
        port map (
      I0 => mod_type(1),
      I1 => g0_b10_i_2_n_0,
      I2 => mod_type(0),
      I3 => \input_data[5]_i_2_n_0\,
      I4 => \input_data[4]_i_1_n_0\,
      I5 => \input_data[0]_i_1_n_0\,
      O => \i_out[6]_i_4_n_0\
    );
\i_out[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \i_out_reg[7]_i_2_n_0\,
      I1 => mod_type(1),
      I2 => \i_out[7]_i_3_n_0\,
      I3 => mod_type(2),
      I4 => \i_out[11]_i_3_n_0\,
      O => i_out_5(7)
    );
\i_out[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D002DFF2DFF2D00"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => mod_type(0),
      I4 => \input_data[4]_i_1_n_0\,
      I5 => \input_data[5]_i_2_n_0\,
      O => \i_out[7]_i_3_n_0\
    );
\i_out[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00FE00FE00FEFE"
    )
        port map (
      I0 => mod_type(2),
      I1 => \i_out[8]_i_2_n_0\,
      I2 => \i_out[8]_i_3_n_0\,
      I3 => \i_out[8]_i_4_n_0\,
      I4 => \i_out[8]_i_5_n_0\,
      I5 => \i_out[8]_i_6_n_0\,
      O => i_out_5(8)
    );
\i_out[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B4"
    )
        port map (
      I0 => \input_data[1]_i_1_n_0\,
      I1 => mod_type(0),
      I2 => \input_data[0]_i_1_n_0\,
      I3 => mod_type(1),
      O => \i_out[8]_i_2_n_0\
    );
\i_out[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A828282802288228"
    )
        port map (
      I0 => mod_type(1),
      I1 => g0_b10_i_2_n_0,
      I2 => g0_b10_i_1_n_0,
      I3 => mod_type(0),
      I4 => \input_data[0]_i_1_n_0\,
      I5 => \input_data[4]_i_1_n_0\,
      O => \i_out[8]_i_3_n_0\
    );
\i_out[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3BB3333"
    )
        port map (
      I0 => \g0_b8__1_n_0\,
      I1 => mod_type(2),
      I2 => \g0_b8__2_n_0\,
      I3 => mod_type(0),
      I4 => mod_type(1),
      O => \i_out[8]_i_4_n_0\
    );
\i_out[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D020"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => g0_b10_i_2_n_0,
      I2 => mod_type(0),
      I3 => \input_data[0]_i_1_n_0\,
      O => \i_out[8]_i_5_n_0\
    );
\i_out[8]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAE"
    )
        port map (
      I0 => mod_type(1),
      I1 => \i_out[8]_i_7_n_0\,
      I2 => mod_type(0),
      I3 => \input_data[5]_i_2_n_0\,
      O => \i_out[8]_i_6_n_0\
    );
\i_out[8]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDFFFFF"
    )
        port map (
      I0 => \input_data[1]_i_1_n_0\,
      I1 => \input_data[4]_i_1_n_0\,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => g0_b10_i_2_n_0,
      I4 => g0_b10_i_1_n_0,
      O => \i_out[8]_i_7_n_0\
    );
\i_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E000EEEEEE0EEEEE"
    )
        port map (
      I0 => \i_out[9]_i_2_n_0\,
      I1 => \i_out[9]_i_3_n_0\,
      I2 => mod_type(1),
      I3 => \i_out_reg[9]_i_4_n_0\,
      I4 => mod_type(2),
      I5 => \i_out[9]_i_5_n_0\,
      O => i_out_5(9)
    );
\i_out[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABFEA"
    )
        port map (
      I0 => mod_type(2),
      I1 => mod_type(0),
      I2 => \input_data[1]_i_1_n_0\,
      I3 => \input_data[0]_i_1_n_0\,
      I4 => mod_type(1),
      O => \i_out[9]_i_2_n_0\
    );
\i_out[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2D550000"
    )
        port map (
      I0 => g0_b10_i_2_n_0,
      I1 => g0_b10_i_1_n_0,
      I2 => \input_data[4]_i_1_n_0\,
      I3 => mod_type(0),
      I4 => mod_type(1),
      O => \i_out[9]_i_3_n_0\
    );
\i_out[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666F00F99990FF0"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => \input_data[0]_i_1_n_0\,
      I2 => \input_data[4]_i_1_n_0\,
      I3 => \input_data[5]_i_2_n_0\,
      I4 => mod_type(0),
      I5 => g0_b10_i_2_n_0,
      O => \i_out[9]_i_5_n_0\
    );
\i_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_valid0,
      CLR => reset,
      D => i_out_5(0),
      Q => i_out(0)
    );
\i_out_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__2_n_0\,
      I1 => \g0_b0__3_n_0\,
      O => \i_out_reg[0]_i_2_n_0\,
      S => mod_type(0)
    );
\i_out_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_valid0,
      CLR => reset,
      D => i_out_5(10),
      Q => i_out(10)
    );
\i_out_reg[10]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b10__1_n_0\,
      I1 => \g0_b10__2_n_0\,
      O => \i_out_reg[10]_i_2_n_0\,
      S => mod_type(0)
    );
\i_out_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_valid0,
      CLR => reset,
      D => i_out_5(11),
      Q => i_out(11)
    );
\i_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_valid0,
      CLR => reset,
      D => i_out_5(1),
      Q => i_out(1)
    );
\i_out_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__1_n_0\,
      I1 => \g0_b1__2_n_0\,
      O => \i_out_reg[1]_i_2_n_0\,
      S => mod_type(0)
    );
\i_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_valid0,
      CLR => reset,
      D => i_out_5(2),
      Q => i_out(2)
    );
\i_out_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__0_n_0\,
      I1 => \g0_b2__1_n_0\,
      O => \i_out_reg[2]_i_3_n_0\,
      S => mod_type(0)
    );
\i_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_valid0,
      CLR => reset,
      D => i_out_5(3),
      Q => i_out(3)
    );
\i_out_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \i_out[3]_i_2_n_0\,
      I1 => \i_out[3]_i_3_n_0\,
      O => i_out_5(3),
      S => mod_type(2)
    );
\i_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_valid0,
      CLR => reset,
      D => i_out_5(4),
      Q => i_out(4)
    );
\i_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_valid0,
      CLR => reset,
      D => i_out_5(5),
      Q => i_out(5)
    );
\i_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_valid0,
      CLR => reset,
      D => i_out_5(6),
      Q => i_out(6)
    );
\i_out_reg[6]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b6__0_n_0\,
      I1 => \g0_b6__1_n_0\,
      O => \i_out_reg[6]_i_3_n_0\,
      S => mod_type(0)
    );
\i_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_valid0,
      CLR => reset,
      D => i_out_5(7),
      Q => i_out(7)
    );
\i_out_reg[7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b7__0_n_0\,
      I1 => \g0_b7__1_n_0\,
      O => \i_out_reg[7]_i_2_n_0\,
      S => mod_type(0)
    );
\i_out_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_valid0,
      CLR => reset,
      D => i_out_5(8),
      Q => i_out(8)
    );
\i_out_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_valid0,
      CLR => reset,
      D => i_out_5(9),
      Q => i_out(9)
    );
\i_out_reg[9]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b9__1_n_0\,
      I1 => \g0_b9__2_n_0\,
      O => \i_out_reg[9]_i_4_n_0\,
      S => mod_type(0)
    );
\input_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCF0AA"
    )
        port map (
      I0 => input_data(0),
      I1 => data_in(0),
      I2 => \input_data[0]_i_2_n_0\,
      I3 => \data_out_valid2_carry__0_n_0\,
      I4 => data_in_valid,
      O => \input_data[0]_i_1_n_0\
    );
\input_data[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \buff_reg_reg[5]\(0),
      I1 => k_reg(0),
      I2 => \buff_reg_reg[4]\(0),
      I3 => k_reg(2),
      I4 => \input_data[0]_i_3_n_0\,
      O => \input_data[0]_i_2_n_0\
    );
\input_data[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \buff_reg_reg[3]\(0),
      I1 => \buff_reg_reg[2]\(0),
      I2 => k_reg(1),
      I3 => \buff_reg_reg[1]\(0),
      I4 => k_reg(0),
      I5 => \buff_reg_reg[0]\(0),
      O => \input_data[0]_i_3_n_0\
    );
\input_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAF0CC"
    )
        port map (
      I0 => data_in(1),
      I1 => input_data(1),
      I2 => \input_data[1]_i_2_n_0\,
      I3 => \data_out_valid2_carry__0_n_0\,
      I4 => data_in_valid,
      O => \input_data[1]_i_1_n_0\
    );
\input_data[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \buff_reg_reg[5]\(1),
      I1 => k_reg(0),
      I2 => \buff_reg_reg[4]\(1),
      I3 => k_reg(2),
      I4 => \input_data[1]_i_3_n_0\,
      O => \input_data[1]_i_2_n_0\
    );
\input_data[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \buff_reg_reg[3]\(1),
      I1 => \buff_reg_reg[2]\(1),
      I2 => k_reg(1),
      I3 => \buff_reg_reg[1]\(1),
      I4 => k_reg(0),
      I5 => \buff_reg_reg[0]\(1),
      O => \input_data[1]_i_3_n_0\
    );
\input_data[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      O => \input_data[2]_i_1_n_0\
    );
\input_data[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => g0_b10_i_2_n_0,
      O => \input_data[3]_i_1_n_0\
    );
\input_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAF0CC"
    )
        port map (
      I0 => data_in(4),
      I1 => input_data(4),
      I2 => \input_data[4]_i_2_n_0\,
      I3 => \data_out_valid2_carry__0_n_0\,
      I4 => data_in_valid,
      O => \input_data[4]_i_1_n_0\
    );
\input_data[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \buff_reg_reg[5]\(4),
      I1 => k_reg(0),
      I2 => \buff_reg_reg[4]\(4),
      I3 => k_reg(2),
      I4 => \input_data[4]_i_3_n_0\,
      O => \input_data[4]_i_2_n_0\
    );
\input_data[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \buff_reg_reg[3]\(4),
      I1 => \buff_reg_reg[2]\(4),
      I2 => k_reg(1),
      I3 => \buff_reg_reg[1]\(4),
      I4 => k_reg(0),
      I5 => \buff_reg_reg[0]\(4),
      O => \input_data[4]_i_3_n_0\
    );
\input_data[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => reset,
      O => input_data0
    );
\input_data[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(5),
      I1 => data_in_valid,
      I2 => \input_data[5]_i_3_n_0\,
      I3 => \data_out_valid2_carry__0_n_0\,
      I4 => input_data(5),
      O => \input_data[5]_i_2_n_0\
    );
\input_data[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \buff_reg_reg[5]\(5),
      I1 => k_reg(0),
      I2 => \buff_reg_reg[4]\(5),
      I3 => k_reg(2),
      I4 => \input_data[5]_i_4_n_0\,
      O => \input_data[5]_i_3_n_0\
    );
\input_data[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \buff_reg_reg[3]\(5),
      I1 => \buff_reg_reg[2]\(5),
      I2 => k_reg(1),
      I3 => \buff_reg_reg[1]\(5),
      I4 => k_reg(0),
      I5 => \buff_reg_reg[0]\(5),
      O => \input_data[5]_i_4_n_0\
    );
\input_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => input_data0,
      D => \input_data[0]_i_1_n_0\,
      Q => input_data(0),
      R => '0'
    );
\input_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => input_data0,
      D => \input_data[1]_i_1_n_0\,
      Q => input_data(1),
      R => '0'
    );
\input_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => input_data0,
      D => \input_data[2]_i_1_n_0\,
      Q => input_data(2),
      R => '0'
    );
\input_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => input_data0,
      D => \input_data[3]_i_1_n_0\,
      Q => input_data(3),
      R => '0'
    );
\input_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => input_data0,
      D => \input_data[4]_i_1_n_0\,
      Q => input_data(4),
      R => '0'
    );
\input_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => input_data0,
      D => \input_data[5]_i_2_n_0\,
      Q => input_data(5),
      R => '0'
    );
\k[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5F08"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      I3 => k0,
      O => \k[0]_i_1_n_0\
    );
\k[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => data_in_ready,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_valid,
      O => \k[0]_i_3_n_0\
    );
\k[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => k_reg(2),
      O => \k[0]_i_4_n_0\
    );
\k[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => data_in_valid,
      I1 => \data_out_valid2_carry__0_n_0\,
      I2 => data_in_ready,
      I3 => k_reg(1),
      O => \k[0]_i_5_n_0\
    );
\k[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5400"
    )
        port map (
      I0 => k_reg(0),
      I1 => data_in_valid,
      I2 => \data_out_valid2_carry__0_n_0\,
      I3 => data_in_ready,
      O => \k[0]_i_6_n_0\
    );
\k_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \k[0]_i_1_n_0\,
      CLR => reset,
      D => \k_reg[0]_i_2_n_15\,
      Q => k_reg(0)
    );
\k_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_k_reg[0]_i_2_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \k_reg[0]_i_2_n_6\,
      CO(0) => \k_reg[0]_i_2_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \k[0]_i_3_n_0\,
      O(7 downto 3) => \NLW_k_reg[0]_i_2_O_UNCONNECTED\(7 downto 3),
      O(2) => \k_reg[0]_i_2_n_13\,
      O(1) => \k_reg[0]_i_2_n_14\,
      O(0) => \k_reg[0]_i_2_n_15\,
      S(7 downto 3) => B"00000",
      S(2) => \k[0]_i_4_n_0\,
      S(1) => \k[0]_i_5_n_0\,
      S(0) => \k[0]_i_6_n_0\
    );
\k_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \k[0]_i_1_n_0\,
      CLR => reset,
      D => \k_reg[0]_i_2_n_14\,
      Q => k_reg(1)
    );
\k_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \k[0]_i_1_n_0\,
      CLR => reset,
      D => \k_reg[0]_i_2_n_13\,
      Q => k_reg(2)
    );
\q_out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BCBCBC8CBCBCBCBC"
    )
        port map (
      I0 => \g0_b0__1_n_0\,
      I1 => mod_type(0),
      I2 => mod_type(1),
      I3 => \input_data[0]_i_1_n_0\,
      I4 => \input_data[1]_i_1_n_0\,
      I5 => \q_out[8]_i_3_n_0\,
      O => \q_out[0]_i_2_n_0\
    );
\q_out[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888B888BBBBB8888"
    )
        port map (
      I0 => \q_out_reg[0]_i_4_n_0\,
      I1 => mod_type(1),
      I2 => g0_b10_i_1_n_0,
      I3 => g0_b10_i_2_n_0,
      I4 => g0_b0_n_0,
      I5 => mod_type(0),
      O => \q_out[0]_i_3_n_0\
    );
\q_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q_out[10]_i_2_n_0\,
      I1 => mod_type(2),
      I2 => \q_out[10]_i_3_n_0\,
      O => q_out_6(10)
    );
\q_out[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF99F0000099F0"
    )
        port map (
      I0 => \input_data[1]_i_1_n_0\,
      I1 => g0_b10_i_2_n_0,
      I2 => \g0_b10__3_n_0\,
      I3 => mod_type(0),
      I4 => mod_type(1),
      I5 => \q_out_reg[10]_i_4_n_0\,
      O => \q_out[10]_i_2_n_0\
    );
\q_out[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFC050"
    )
        port map (
      I0 => \input_data[1]_i_1_n_0\,
      I1 => \g0_b10__0_n_0\,
      I2 => mod_type(0),
      I3 => mod_type(1),
      I4 => \q_out[10]_i_5_n_0\,
      O => \q_out[10]_i_3_n_0\
    );
\q_out[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00000000000D00"
    )
        port map (
      I0 => g0_b10_i_2_n_0,
      I1 => g0_b10_i_1_n_0,
      I2 => mod_type(0),
      I3 => mod_type(1),
      I4 => \input_data[1]_i_1_n_0\,
      I5 => \input_data[0]_i_1_n_0\,
      O => \q_out[10]_i_5_n_0\
    );
\q_out[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F3F088F0F0F088"
    )
        port map (
      I0 => g0_b11_n_0,
      I1 => mod_type(2),
      I2 => \input_data[1]_i_1_n_0\,
      I3 => mod_type(0),
      I4 => mod_type(1),
      I5 => \q_out[11]_i_2_n_0\,
      O => q_out_6(11)
    );
\q_out[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => g0_b10_i_2_n_0,
      I1 => g0_b10_i_1_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      O => \q_out[11]_i_2_n_0\
    );
\q_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0EEE000EEEEEEEE"
    )
        port map (
      I0 => \q_out[1]_i_2_n_0\,
      I1 => \q_out[5]_i_4_n_0\,
      I2 => \q_out_reg[1]_i_3_n_0\,
      I3 => mod_type(1),
      I4 => \q_out[1]_i_4_n_0\,
      I5 => mod_type(2),
      O => q_out_6(1)
    );
\q_out[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDCCCDCC"
    )
        port map (
      I0 => \input_data[1]_i_1_n_0\,
      I1 => mod_type(2),
      I2 => mod_type(1),
      I3 => mod_type(0),
      I4 => \g0_b1__0_n_0\,
      O => \q_out[1]_i_2_n_0\
    );
\q_out[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFFAB00"
    )
        port map (
      I0 => g0_b10_i_1_n_0,
      I1 => \input_data[1]_i_1_n_0\,
      I2 => g0_b10_i_2_n_0,
      I3 => mod_type(0),
      I4 => \g0_b1__3_n_0\,
      O => \q_out[1]_i_4_n_0\
    );
\q_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFD0FFFFFFD00000"
    )
        port map (
      I0 => \q_out[6]_i_4_n_0\,
      I1 => \q_out[8]_i_3_n_0\,
      I2 => \q_out[8]_i_4_n_0\,
      I3 => \q_out[2]_i_2_n_0\,
      I4 => mod_type(2),
      I5 => \q_out[10]_i_3_n_0\,
      O => q_out_6(2)
    );
\q_out[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA0FCA00"
    )
        port map (
      I0 => g0_b2_n_0,
      I1 => \g0_b2__2_n_0\,
      I2 => mod_type(0),
      I3 => mod_type(1),
      I4 => \g0_b8__3_n_0\,
      O => \q_out[2]_i_2_n_0\
    );
\q_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBB8B88B888"
    )
        port map (
      I0 => \q_out[3]_i_2_n_0\,
      I1 => mod_type(2),
      I2 => \input_data[1]_i_1_n_0\,
      I3 => mod_type(0),
      I4 => mod_type(1),
      I5 => \q_out[5]_i_4_n_0\,
      O => q_out_6(3)
    );
\q_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCFC0A0A0CFC0"
    )
        port map (
      I0 => \g0_b3__2_n_0\,
      I1 => g0_b3_n_0,
      I2 => mod_type(1),
      I3 => \g0_b9__3_n_0\,
      I4 => mod_type(0),
      I5 => \input_data[1]_i_1_n_0\,
      O => \q_out[3]_i_2_n_0\
    );
\q_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0E0FFE0EEE0E0E0"
    )
        port map (
      I0 => \q_out[8]_i_5_n_0\,
      I1 => mod_type(2),
      I2 => \q_out[4]_i_2_n_0\,
      I3 => \q_out[8]_i_4_n_0\,
      I4 => \q_out[8]_i_3_n_0\,
      I5 => \input_data[1]_i_1_n_0\,
      O => q_out_6(4)
    );
\q_out[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F555FDFDF5555D5D"
    )
        port map (
      I0 => mod_type(2),
      I1 => \g0_b10__3_n_0\,
      I2 => mod_type(1),
      I3 => \g0_b4__2_n_0\,
      I4 => mod_type(0),
      I5 => g0_b4_n_0,
      O => \q_out[4]_i_2_n_0\
    );
\q_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8A8A8A8A8A8A8"
    )
        port map (
      I0 => \q_out[5]_i_2_n_0\,
      I1 => \q_out[5]_i_3_n_0\,
      I2 => \q_out[5]_i_4_n_0\,
      I3 => mod_type(1),
      I4 => mod_type(0),
      I5 => \g0_b9__0_n_0\,
      O => q_out_6(5)
    );
\q_out[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C5CFC5C0FFFFFFFF"
    )
        port map (
      I0 => \q_out[9]_i_5_n_0\,
      I1 => \q_out_reg[5]_i_5_n_0\,
      I2 => mod_type(1),
      I3 => mod_type(0),
      I4 => \g0_b8__3_n_0\,
      I5 => mod_type(2),
      O => \q_out[5]_i_2_n_0\
    );
\q_out[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => mod_type(2),
      I1 => \input_data[1]_i_1_n_0\,
      I2 => mod_type(0),
      I3 => mod_type(1),
      O => \q_out[5]_i_3_n_0\
    );
\q_out[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202020202020002"
    )
        port map (
      I0 => mod_type(1),
      I1 => mod_type(0),
      I2 => \input_data[1]_i_1_n_0\,
      I3 => g0_b10_i_2_n_0,
      I4 => g0_b10_i_1_n_0,
      I5 => \input_data[0]_i_1_n_0\,
      O => \q_out[5]_i_4_n_0\
    );
\q_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE0EEEEE0E0E0E0"
    )
        port map (
      I0 => \q_out[9]_i_3_n_0\,
      I1 => \q_out[6]_i_2_n_0\,
      I2 => \q_out[6]_i_3_n_0\,
      I3 => \q_out[6]_i_4_n_0\,
      I4 => mod_type(0),
      I5 => \q_out[9]_i_6_n_0\,
      O => q_out_6(6)
    );
\q_out[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \q_out[10]_i_5_n_0\,
      I1 => mod_type(1),
      I2 => mod_type(0),
      I3 => \g0_b10__0_n_0\,
      O => \q_out[6]_i_2_n_0\
    );
\q_out[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3BB3333"
    )
        port map (
      I0 => g0_b6_n_0,
      I1 => mod_type(2),
      I2 => \g0_b6__2_n_0\,
      I3 => mod_type(0),
      I4 => mod_type(1),
      O => \q_out[6]_i_3_n_0\
    );
\q_out[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \input_data[1]_i_1_n_0\,
      I1 => g0_b10_i_1_n_0,
      O => \q_out[6]_i_4_n_0\
    );
\q_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E00000F0EEEEFEFE"
    )
        port map (
      I0 => \q_out[7]_i_2_n_0\,
      I1 => mod_type(2),
      I2 => \q_out[8]_i_4_n_0\,
      I3 => \q_out[8]_i_3_n_0\,
      I4 => \input_data[1]_i_1_n_0\,
      I5 => \q_out[7]_i_3_n_0\,
      O => q_out_6(7)
    );
\q_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF00EF00"
    )
        port map (
      I0 => \input_data[0]_i_1_n_0\,
      I1 => g0_b10_i_1_n_0,
      I2 => g0_b10_i_2_n_0,
      I3 => mod_type(1),
      I4 => mod_type(0),
      I5 => \input_data[1]_i_1_n_0\,
      O => \q_out[7]_i_2_n_0\
    );
\q_out[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50503030F0F000F0"
    )
        port map (
      I0 => \g0_b7__2_n_0\,
      I1 => g0_b7_n_0,
      I2 => mod_type(2),
      I3 => \g0_b10__3_n_0\,
      I4 => mod_type(0),
      I5 => mod_type(1),
      O => \q_out[7]_i_3_n_0\
    );
\q_out[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEBBAAAAE0BBA0A0"
    )
        port map (
      I0 => \q_out[8]_i_2_n_0\,
      I1 => \q_out[8]_i_3_n_0\,
      I2 => mod_type(2),
      I3 => \input_data[1]_i_1_n_0\,
      I4 => \q_out[8]_i_4_n_0\,
      I5 => \q_out[8]_i_5_n_0\,
      O => q_out_6(8)
    );
\q_out[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCFCF0F0FFF0F"
    )
        port map (
      I0 => \g0_b8__4_n_0\,
      I1 => g0_b8_n_0,
      I2 => mod_type(2),
      I3 => \g0_b8__3_n_0\,
      I4 => mod_type(0),
      I5 => mod_type(1),
      O => \q_out[8]_i_2_n_0\
    );
\q_out[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b10_i_2_n_0,
      I1 => g0_b10_i_1_n_0,
      O => \q_out[8]_i_3_n_0\
    );
\q_out[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mod_type(0),
      I1 => mod_type(1),
      O => \q_out[8]_i_4_n_0\
    );
\q_out[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \q_out[10]_i_5_n_0\,
      I1 => mod_type(1),
      I2 => mod_type(0),
      I3 => \g0_b8__0_n_0\,
      O => \q_out[8]_i_5_n_0\
    );
\q_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDD0DDD0D0D0D0"
    )
        port map (
      I0 => \q_out[9]_i_2_n_0\,
      I1 => \q_out[9]_i_3_n_0\,
      I2 => \q_out[9]_i_4_n_0\,
      I3 => mod_type(0),
      I4 => \q_out[9]_i_5_n_0\,
      I5 => \q_out[9]_i_6_n_0\,
      O => q_out_6(9)
    );
\q_out[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1555"
    )
        port map (
      I0 => \q_out[5]_i_4_n_0\,
      I1 => mod_type(1),
      I2 => mod_type(0),
      I3 => \g0_b9__0_n_0\,
      O => \q_out[9]_i_2_n_0\
    );
\q_out[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => mod_type(2),
      I1 => mod_type(0),
      I2 => mod_type(1),
      I3 => \input_data[1]_i_1_n_0\,
      O => \q_out[9]_i_3_n_0\
    );
\q_out[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3BB3333"
    )
        port map (
      I0 => g0_b9_n_0,
      I1 => mod_type(2),
      I2 => \g0_b9__4_n_0\,
      I3 => mod_type(0),
      I4 => mod_type(1),
      O => \q_out[9]_i_4_n_0\
    );
\q_out[9]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => g0_b10_i_2_n_0,
      I1 => g0_b10_i_1_n_0,
      I2 => \input_data[1]_i_1_n_0\,
      O => \q_out[9]_i_5_n_0\
    );
\q_out[9]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => mod_type(1),
      I1 => \g0_b9__3_n_0\,
      I2 => mod_type(0),
      O => \q_out[9]_i_6_n_0\
    );
\q_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_valid0,
      CLR => reset,
      D => q_out_6(0),
      Q => q_out(0)
    );
\q_out_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q_out[0]_i_2_n_0\,
      I1 => \q_out[0]_i_3_n_0\,
      O => q_out_6(0),
      S => mod_type(2)
    );
\q_out_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__0_n_0\,
      I1 => \g0_b0__4_n_0\,
      O => \q_out_reg[0]_i_4_n_0\,
      S => mod_type(0)
    );
\q_out_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_valid0,
      CLR => reset,
      D => q_out_6(10),
      Q => q_out(10)
    );
\q_out_reg[10]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b10_n_0,
      I1 => \g0_b10__4_n_0\,
      O => \q_out_reg[10]_i_4_n_0\,
      S => mod_type(0)
    );
\q_out_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_valid0,
      CLR => reset,
      D => q_out_6(11),
      Q => q_out(11)
    );
\q_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_valid0,
      CLR => reset,
      D => q_out_6(1),
      Q => q_out(1)
    );
\q_out_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b1_n_0,
      I1 => \g0_b1__4_n_0\,
      O => \q_out_reg[1]_i_3_n_0\,
      S => mod_type(0)
    );
\q_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_valid0,
      CLR => reset,
      D => q_out_6(2),
      Q => q_out(2)
    );
\q_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_valid0,
      CLR => reset,
      D => q_out_6(3),
      Q => q_out(3)
    );
\q_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_valid0,
      CLR => reset,
      D => q_out_6(4),
      Q => q_out(4)
    );
\q_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_valid0,
      CLR => reset,
      D => q_out_6(5),
      Q => q_out(5)
    );
\q_out_reg[5]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b5__2_n_0\,
      I1 => \g0_b5__0_n_0\,
      O => \q_out_reg[5]_i_5_n_0\,
      S => mod_type(0)
    );
\q_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_valid0,
      CLR => reset,
      D => q_out_6(6),
      Q => q_out(6)
    );
\q_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_valid0,
      CLR => reset,
      D => q_out_6(7),
      Q => q_out(7)
    );
\q_out_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_valid0,
      CLR => reset,
      D => q_out_6(8),
      Q => q_out(8)
    );
\q_out_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_valid0,
      CLR => reset,
      D => q_out_6(9),
      Q => q_out(9)
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
    data_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    data_in_valid : in STD_LOGIC;
    data_in_ready : in STD_LOGIC;
    i_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    q_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    data_out_ready : out STD_LOGIC;
    data_out_valid : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Design_2_mapper_0_0,mapper,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mapper,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Design_2_clk, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mapper
     port map (
      clk => clk,
      data_in(5 downto 0) => data_in(5 downto 0),
      data_in_ready => data_in_ready,
      data_in_valid => data_in_valid,
      data_out_ready => data_out_ready,
      data_out_valid => data_out_valid,
      i_out(11 downto 0) => i_out(11 downto 0),
      mod_type(2 downto 0) => mod_type(2 downto 0),
      q_out(11 downto 0) => q_out(11 downto 0),
      reset => reset
    );
end STRUCTURE;
