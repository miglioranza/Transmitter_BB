-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Thu Jun 12 16:31:33 2025
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
    data_out_last : out STD_LOGIC;
    last_frame : out STD_LOGIC;
    mod_type : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pilot_insertion : in STD_LOGIC;
    data_in_ready : in STD_LOGIC;
    data_in_valid : in STD_LOGIC;
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    reset : in STD_LOGIC;
    end_of_frame : in STD_LOGIC;
    signal_field_en : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mapper is
  signal \buff_counter[0]_i_10_n_0\ : STD_LOGIC;
  signal \buff_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \buff_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \buff_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \buff_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \buff_counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \buff_counter[0]_i_7_n_0\ : STD_LOGIC;
  signal \buff_counter[0]_i_8_n_0\ : STD_LOGIC;
  signal \buff_counter[0]_i_9_n_0\ : STD_LOGIC;
  signal \buff_counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \buff_counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \buff_counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \buff_counter[16]_i_5_n_0\ : STD_LOGIC;
  signal \buff_counter[16]_i_6_n_0\ : STD_LOGIC;
  signal \buff_counter[16]_i_7_n_0\ : STD_LOGIC;
  signal \buff_counter[16]_i_8_n_0\ : STD_LOGIC;
  signal \buff_counter[16]_i_9_n_0\ : STD_LOGIC;
  signal \buff_counter[24]_i_2_n_0\ : STD_LOGIC;
  signal \buff_counter[24]_i_3_n_0\ : STD_LOGIC;
  signal \buff_counter[24]_i_4_n_0\ : STD_LOGIC;
  signal \buff_counter[24]_i_5_n_0\ : STD_LOGIC;
  signal \buff_counter[24]_i_6_n_0\ : STD_LOGIC;
  signal \buff_counter[24]_i_7_n_0\ : STD_LOGIC;
  signal \buff_counter[24]_i_8_n_0\ : STD_LOGIC;
  signal \buff_counter[24]_i_9_n_0\ : STD_LOGIC;
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
  signal \buff_reg[0][5]_i_3_n_0\ : STD_LOGIC;
  signal \buff_reg[0][5]_i_4_n_0\ : STD_LOGIC;
  signal \buff_reg[0][5]_i_5_n_0\ : STD_LOGIC;
  signal \buff_reg[0][5]_i_6_n_0\ : STD_LOGIC;
  signal \buff_reg[0][5]_i_7_n_0\ : STD_LOGIC;
  signal \buff_reg[0]_1\ : STD_LOGIC;
  signal \buff_reg[1]_2\ : STD_LOGIC;
  signal \buff_reg[2]_3\ : STD_LOGIC;
  signal \buff_reg[3][5]_i_2_n_0\ : STD_LOGIC;
  signal \buff_reg[3]_4\ : STD_LOGIC;
  signal \buff_reg[4][5]_i_2_n_0\ : STD_LOGIC;
  signal \buff_reg[4][5]_i_3_n_0\ : STD_LOGIC;
  signal \buff_reg[4][5]_i_4_n_0\ : STD_LOGIC;
  signal \buff_reg[4][5]_i_5_n_0\ : STD_LOGIC;
  signal \buff_reg[4]_0\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_10_n_0\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_11_n_0\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_12_n_0\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_13_n_0\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_14_n_0\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_15_n_0\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_16_n_0\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_17_n_0\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_18_n_0\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_19_n_0\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_1_n_0\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_20_n_0\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_21_n_0\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_22_n_0\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_2_n_0\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_5_n_0\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_6_n_0\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_7_n_0\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_8_n_0\ : STD_LOGIC;
  signal \buff_reg[5][5]_i_9_n_0\ : STD_LOGIC;
  signal \buff_reg_reg[0]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \buff_reg_reg[1]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \buff_reg_reg[2]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \buff_reg_reg[3]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \buff_reg_reg[4]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \buff_reg_reg[5]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \buff_reg_reg[5][5]_i_3_n_0\ : STD_LOGIC;
  signal \buff_reg_reg[5][5]_i_3_n_1\ : STD_LOGIC;
  signal \buff_reg_reg[5][5]_i_3_n_2\ : STD_LOGIC;
  signal \buff_reg_reg[5][5]_i_3_n_3\ : STD_LOGIC;
  signal \buff_reg_reg[5][5]_i_3_n_4\ : STD_LOGIC;
  signal \buff_reg_reg[5][5]_i_3_n_5\ : STD_LOGIC;
  signal \buff_reg_reg[5][5]_i_3_n_6\ : STD_LOGIC;
  signal \buff_reg_reg[5][5]_i_3_n_7\ : STD_LOGIC;
  signal \buff_reg_reg[5][5]_i_4_n_0\ : STD_LOGIC;
  signal \buff_reg_reg[5][5]_i_4_n_1\ : STD_LOGIC;
  signal \buff_reg_reg[5][5]_i_4_n_2\ : STD_LOGIC;
  signal \buff_reg_reg[5][5]_i_4_n_3\ : STD_LOGIC;
  signal \buff_reg_reg[5][5]_i_4_n_4\ : STD_LOGIC;
  signal \buff_reg_reg[5][5]_i_4_n_5\ : STD_LOGIC;
  signal \buff_reg_reg[5][5]_i_4_n_6\ : STD_LOGIC;
  signal \buff_reg_reg[5][5]_i_4_n_7\ : STD_LOGIC;
  signal \^data_out_last\ : STD_LOGIC;
  signal data_out_last15_out : STD_LOGIC;
  signal data_out_last_i_1_n_0 : STD_LOGIC;
  signal data_out_last_i_2_n_0 : STD_LOGIC;
  signal data_out_last_i_3_n_0 : STD_LOGIC;
  signal data_out_last_i_5_n_0 : STD_LOGIC;
  signal \^data_out_ready\ : STD_LOGIC;
  signal data_out_ready_i_1_n_0 : STD_LOGIC;
  signal data_out_ready_i_2_n_0 : STD_LOGIC;
  signal data_out_valid0 : STD_LOGIC;
  signal \data_out_valid0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \data_out_valid0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \data_out_valid0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \data_out_valid0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \data_out_valid0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \data_out_valid0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \data_out_valid0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \data_out_valid0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \data_out_valid0_carry__0_n_1\ : STD_LOGIC;
  signal \data_out_valid0_carry__0_n_2\ : STD_LOGIC;
  signal \data_out_valid0_carry__0_n_3\ : STD_LOGIC;
  signal \data_out_valid0_carry__0_n_4\ : STD_LOGIC;
  signal \data_out_valid0_carry__0_n_5\ : STD_LOGIC;
  signal \data_out_valid0_carry__0_n_6\ : STD_LOGIC;
  signal \data_out_valid0_carry__0_n_7\ : STD_LOGIC;
  signal data_out_valid0_carry_i_10_n_0 : STD_LOGIC;
  signal data_out_valid0_carry_i_11_n_0 : STD_LOGIC;
  signal data_out_valid0_carry_i_12_n_0 : STD_LOGIC;
  signal data_out_valid0_carry_i_13_n_0 : STD_LOGIC;
  signal data_out_valid0_carry_i_1_n_0 : STD_LOGIC;
  signal data_out_valid0_carry_i_2_n_0 : STD_LOGIC;
  signal data_out_valid0_carry_i_3_n_0 : STD_LOGIC;
  signal data_out_valid0_carry_i_4_n_0 : STD_LOGIC;
  signal data_out_valid0_carry_i_5_n_0 : STD_LOGIC;
  signal data_out_valid0_carry_i_6_n_0 : STD_LOGIC;
  signal data_out_valid0_carry_i_7_n_0 : STD_LOGIC;
  signal data_out_valid0_carry_i_8_n_0 : STD_LOGIC;
  signal data_out_valid0_carry_i_9_n_0 : STD_LOGIC;
  signal data_out_valid0_carry_n_0 : STD_LOGIC;
  signal data_out_valid0_carry_n_1 : STD_LOGIC;
  signal data_out_valid0_carry_n_2 : STD_LOGIC;
  signal data_out_valid0_carry_n_3 : STD_LOGIC;
  signal data_out_valid0_carry_n_4 : STD_LOGIC;
  signal data_out_valid0_carry_n_5 : STD_LOGIC;
  signal data_out_valid0_carry_n_6 : STD_LOGIC;
  signal data_out_valid0_carry_n_7 : STD_LOGIC;
  signal data_out_valid122_out : STD_LOGIC;
  signal \data_out_valid4_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \data_out_valid4_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \data_out_valid4_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \data_out_valid4_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \data_out_valid4_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \data_out_valid4_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \data_out_valid4_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \data_out_valid4_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \data_out_valid4_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \data_out_valid4_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \data_out_valid4_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \data_out_valid4_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \data_out_valid4_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \data_out_valid4_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \data_out_valid4_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \data_out_valid4_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \data_out_valid4_carry__0_n_0\ : STD_LOGIC;
  signal \data_out_valid4_carry__0_n_1\ : STD_LOGIC;
  signal \data_out_valid4_carry__0_n_2\ : STD_LOGIC;
  signal \data_out_valid4_carry__0_n_3\ : STD_LOGIC;
  signal \data_out_valid4_carry__0_n_4\ : STD_LOGIC;
  signal \data_out_valid4_carry__0_n_5\ : STD_LOGIC;
  signal \data_out_valid4_carry__0_n_6\ : STD_LOGIC;
  signal \data_out_valid4_carry__0_n_7\ : STD_LOGIC;
  signal data_out_valid4_carry_i_10_n_0 : STD_LOGIC;
  signal data_out_valid4_carry_i_11_n_0 : STD_LOGIC;
  signal data_out_valid4_carry_i_12_n_0 : STD_LOGIC;
  signal data_out_valid4_carry_i_13_n_0 : STD_LOGIC;
  signal data_out_valid4_carry_i_14_n_0 : STD_LOGIC;
  signal data_out_valid4_carry_i_15_n_0 : STD_LOGIC;
  signal data_out_valid4_carry_i_16_n_0 : STD_LOGIC;
  signal data_out_valid4_carry_i_1_n_0 : STD_LOGIC;
  signal data_out_valid4_carry_i_2_n_0 : STD_LOGIC;
  signal data_out_valid4_carry_i_3_n_0 : STD_LOGIC;
  signal data_out_valid4_carry_i_4_n_0 : STD_LOGIC;
  signal data_out_valid4_carry_i_5_n_0 : STD_LOGIC;
  signal data_out_valid4_carry_i_6_n_0 : STD_LOGIC;
  signal data_out_valid4_carry_i_7_n_0 : STD_LOGIC;
  signal data_out_valid4_carry_i_8_n_0 : STD_LOGIC;
  signal data_out_valid4_carry_i_9_n_0 : STD_LOGIC;
  signal data_out_valid4_carry_n_0 : STD_LOGIC;
  signal data_out_valid4_carry_n_1 : STD_LOGIC;
  signal data_out_valid4_carry_n_2 : STD_LOGIC;
  signal data_out_valid4_carry_n_3 : STD_LOGIC;
  signal data_out_valid4_carry_n_4 : STD_LOGIC;
  signal data_out_valid4_carry_n_5 : STD_LOGIC;
  signal data_out_valid4_carry_n_6 : STD_LOGIC;
  signal data_out_valid4_carry_n_7 : STD_LOGIC;
  signal \g0_b0__0_n_0\ : STD_LOGIC;
  signal \g0_b0__1_n_0\ : STD_LOGIC;
  signal \g0_b0__2_n_0\ : STD_LOGIC;
  signal \g0_b0__3_n_0\ : STD_LOGIC;
  signal \g0_b0__4_n_0\ : STD_LOGIC;
  signal g0_b0_i_1_n_0 : STD_LOGIC;
  signal g0_b0_i_2_n_0 : STD_LOGIC;
  signal g0_b0_i_3_n_0 : STD_LOGIC;
  signal g0_b0_i_4_n_0 : STD_LOGIC;
  signal g0_b0_i_5_n_0 : STD_LOGIC;
  signal g0_b0_i_6_n_0 : STD_LOGIC;
  signal g0_b0_n_0 : STD_LOGIC;
  signal \g0_b10__0_n_0\ : STD_LOGIC;
  signal \g0_b10__1_n_0\ : STD_LOGIC;
  signal \g0_b10__2_n_0\ : STD_LOGIC;
  signal \g0_b10__3_n_0\ : STD_LOGIC;
  signal \g0_b10__4_n_0\ : STD_LOGIC;
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
  signal g0_b5_i_1_n_0 : STD_LOGIC;
  signal g0_b5_i_2_n_0 : STD_LOGIC;
  signal g0_b5_i_3_n_0 : STD_LOGIC;
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
  signal \i_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \i_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[0]_i_5_n_0\ : STD_LOGIC;
  signal \i_out[0]_i_6_n_0\ : STD_LOGIC;
  signal \i_out[10]_i_1_n_0\ : STD_LOGIC;
  signal \i_out[10]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[10]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[10]_i_5_n_0\ : STD_LOGIC;
  signal \i_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \i_out[11]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[11]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[11]_i_5_n_0\ : STD_LOGIC;
  signal \i_out[11]_i_6_n_0\ : STD_LOGIC;
  signal \i_out[11]_i_7_n_0\ : STD_LOGIC;
  signal \i_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \i_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[1]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[1]_i_5_n_0\ : STD_LOGIC;
  signal \i_out[1]_i_7_n_0\ : STD_LOGIC;
  signal \i_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \i_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \i_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[3]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \i_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[4]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \i_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \i_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[6]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[6]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[6]_i_5_n_0\ : STD_LOGIC;
  signal \i_out[6]_i_6_n_0\ : STD_LOGIC;
  signal \i_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \i_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \i_out[8]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[8]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[8]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[8]_i_5_n_0\ : STD_LOGIC;
  signal \i_out[8]_i_6_n_0\ : STD_LOGIC;
  signal \i_out[8]_i_7_n_0\ : STD_LOGIC;
  signal \i_out[8]_i_9_n_0\ : STD_LOGIC;
  signal \i_out[9]_i_1_n_0\ : STD_LOGIC;
  signal \i_out[9]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[9]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[9]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[9]_i_5_n_0\ : STD_LOGIC;
  signal \i_out[9]_i_6_n_0\ : STD_LOGIC;
  signal \i_out[9]_i_7_n_0\ : STD_LOGIC;
  signal \i_out_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \i_out_reg[10]_i_4_n_0\ : STD_LOGIC;
  signal \i_out_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \i_out_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \i_out_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \i_out_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \i_out_reg[6]_i_7_n_0\ : STD_LOGIC;
  signal \i_out_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \i_out_reg[8]_i_8_n_0\ : STD_LOGIC;
  signal input_data : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal input_data0 : STD_LOGIC;
  signal \input_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \input_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \input_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \input_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \input_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \input_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \input_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \input_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \input_data[4]_i_3_n_0\ : STD_LOGIC;
  signal \input_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \input_data[5]_i_3_n_0\ : STD_LOGIC;
  signal \input_data[5]_i_4_n_0\ : STD_LOGIC;
  signal \k[0]_i_1_n_0\ : STD_LOGIC;
  signal \k[0]_i_3_n_0\ : STD_LOGIC;
  signal \k[0]_i_4_n_0\ : STD_LOGIC;
  signal \k[0]_i_5_n_0\ : STD_LOGIC;
  signal \k[0]_i_6_n_0\ : STD_LOGIC;
  signal \k[0]_i_7_n_0\ : STD_LOGIC;
  signal \k[0]_i_8_n_0\ : STD_LOGIC;
  signal \k[0]_i_9_n_0\ : STD_LOGIC;
  signal k_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \k_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \k_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \k_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \k_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \k_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \^last_frame\ : STD_LOGIC;
  signal last_frame_i_1_n_0 : STD_LOGIC;
  signal \q_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[10]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[10]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[10]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[11]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[11]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[1]_i_4_n_0\ : STD_LOGIC;
  signal \q_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[2]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[5]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[5]_i_4_n_0\ : STD_LOGIC;
  signal \q_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[6]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[7]_i_4_n_0\ : STD_LOGIC;
  signal \q_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[8]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[8]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[8]_i_4_n_0\ : STD_LOGIC;
  signal \q_out[8]_i_5_n_0\ : STD_LOGIC;
  signal \q_out[8]_i_6_n_0\ : STD_LOGIC;
  signal \q_out[8]_i_7_n_0\ : STD_LOGIC;
  signal \q_out[9]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[9]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[9]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[9]_i_4_n_0\ : STD_LOGIC;
  signal \q_out[9]_i_5_n_0\ : STD_LOGIC;
  signal \q_out[9]_i_6_n_0\ : STD_LOGIC;
  signal \q_out_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \q_out_reg[10]_i_4_n_0\ : STD_LOGIC;
  signal \q_out_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \q_out_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \q_out_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \q_out_reg[9]_i_7_n_0\ : STD_LOGIC;
  signal symbol_counter0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal symbol_counter0_5 : STD_LOGIC;
  signal \symbol_counter[0]_i_10_n_0\ : STD_LOGIC;
  signal \symbol_counter[0]_i_11_n_0\ : STD_LOGIC;
  signal \symbol_counter[0]_i_13_n_0\ : STD_LOGIC;
  signal \symbol_counter[0]_i_14_n_0\ : STD_LOGIC;
  signal \symbol_counter[0]_i_15_n_0\ : STD_LOGIC;
  signal \symbol_counter[0]_i_16_n_0\ : STD_LOGIC;
  signal \symbol_counter[0]_i_17_n_0\ : STD_LOGIC;
  signal \symbol_counter[0]_i_18_n_0\ : STD_LOGIC;
  signal \symbol_counter[0]_i_19_n_0\ : STD_LOGIC;
  signal \symbol_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \symbol_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \symbol_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \symbol_counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \symbol_counter[0]_i_7_n_0\ : STD_LOGIC;
  signal \symbol_counter[0]_i_8_n_0\ : STD_LOGIC;
  signal \symbol_counter[0]_i_9_n_0\ : STD_LOGIC;
  signal \symbol_counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \symbol_counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \symbol_counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \symbol_counter[16]_i_5_n_0\ : STD_LOGIC;
  signal \symbol_counter[16]_i_6_n_0\ : STD_LOGIC;
  signal \symbol_counter[16]_i_7_n_0\ : STD_LOGIC;
  signal \symbol_counter[16]_i_8_n_0\ : STD_LOGIC;
  signal \symbol_counter[16]_i_9_n_0\ : STD_LOGIC;
  signal \symbol_counter[24]_i_2_n_0\ : STD_LOGIC;
  signal \symbol_counter[24]_i_3_n_0\ : STD_LOGIC;
  signal \symbol_counter[24]_i_4_n_0\ : STD_LOGIC;
  signal \symbol_counter[24]_i_5_n_0\ : STD_LOGIC;
  signal \symbol_counter[24]_i_6_n_0\ : STD_LOGIC;
  signal \symbol_counter[24]_i_7_n_0\ : STD_LOGIC;
  signal \symbol_counter[24]_i_8_n_0\ : STD_LOGIC;
  signal \symbol_counter[24]_i_9_n_0\ : STD_LOGIC;
  signal \symbol_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \symbol_counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \symbol_counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \symbol_counter[8]_i_5_n_0\ : STD_LOGIC;
  signal \symbol_counter[8]_i_6_n_0\ : STD_LOGIC;
  signal \symbol_counter[8]_i_7_n_0\ : STD_LOGIC;
  signal \symbol_counter[8]_i_8_n_0\ : STD_LOGIC;
  signal \symbol_counter[8]_i_9_n_0\ : STD_LOGIC;
  signal symbol_counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \symbol_counter_reg[0]_i_12_n_0\ : STD_LOGIC;
  signal \symbol_counter_reg[0]_i_12_n_1\ : STD_LOGIC;
  signal \symbol_counter_reg[0]_i_12_n_2\ : STD_LOGIC;
  signal \symbol_counter_reg[0]_i_12_n_3\ : STD_LOGIC;
  signal \symbol_counter_reg[0]_i_12_n_4\ : STD_LOGIC;
  signal \symbol_counter_reg[0]_i_12_n_5\ : STD_LOGIC;
  signal \symbol_counter_reg[0]_i_12_n_6\ : STD_LOGIC;
  signal \symbol_counter_reg[0]_i_12_n_7\ : STD_LOGIC;
  signal \symbol_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \symbol_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \symbol_counter_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \symbol_counter_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \symbol_counter_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \symbol_counter_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \symbol_counter_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \symbol_counter_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \symbol_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \symbol_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \symbol_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \symbol_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \symbol_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \symbol_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \symbol_counter_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \symbol_counter_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \symbol_counter_reg[16]_i_10_n_0\ : STD_LOGIC;
  signal \symbol_counter_reg[16]_i_10_n_1\ : STD_LOGIC;
  signal \symbol_counter_reg[16]_i_10_n_2\ : STD_LOGIC;
  signal \symbol_counter_reg[16]_i_10_n_3\ : STD_LOGIC;
  signal \symbol_counter_reg[16]_i_10_n_4\ : STD_LOGIC;
  signal \symbol_counter_reg[16]_i_10_n_5\ : STD_LOGIC;
  signal \symbol_counter_reg[16]_i_10_n_6\ : STD_LOGIC;
  signal \symbol_counter_reg[16]_i_10_n_7\ : STD_LOGIC;
  signal \symbol_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \symbol_counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \symbol_counter_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \symbol_counter_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \symbol_counter_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \symbol_counter_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \symbol_counter_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \symbol_counter_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \symbol_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \symbol_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \symbol_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \symbol_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \symbol_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \symbol_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \symbol_counter_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \symbol_counter_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \symbol_counter_reg[24]_i_10_n_2\ : STD_LOGIC;
  signal \symbol_counter_reg[24]_i_10_n_3\ : STD_LOGIC;
  signal \symbol_counter_reg[24]_i_10_n_4\ : STD_LOGIC;
  signal \symbol_counter_reg[24]_i_10_n_5\ : STD_LOGIC;
  signal \symbol_counter_reg[24]_i_10_n_6\ : STD_LOGIC;
  signal \symbol_counter_reg[24]_i_10_n_7\ : STD_LOGIC;
  signal \symbol_counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \symbol_counter_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \symbol_counter_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \symbol_counter_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \symbol_counter_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \symbol_counter_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \symbol_counter_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \symbol_counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \symbol_counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \symbol_counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \symbol_counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \symbol_counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \symbol_counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \symbol_counter_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \symbol_counter_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \symbol_counter_reg[8]_i_10_n_0\ : STD_LOGIC;
  signal \symbol_counter_reg[8]_i_10_n_1\ : STD_LOGIC;
  signal \symbol_counter_reg[8]_i_10_n_2\ : STD_LOGIC;
  signal \symbol_counter_reg[8]_i_10_n_3\ : STD_LOGIC;
  signal \symbol_counter_reg[8]_i_10_n_4\ : STD_LOGIC;
  signal \symbol_counter_reg[8]_i_10_n_5\ : STD_LOGIC;
  signal \symbol_counter_reg[8]_i_10_n_6\ : STD_LOGIC;
  signal \symbol_counter_reg[8]_i_10_n_7\ : STD_LOGIC;
  signal \symbol_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \symbol_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \symbol_counter_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \symbol_counter_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \symbol_counter_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \symbol_counter_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \symbol_counter_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \symbol_counter_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \symbol_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \symbol_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \symbol_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \symbol_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \symbol_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \symbol_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \symbol_counter_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \symbol_counter_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \NLW_buff_counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_buff_reg_reg[5][5]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_buff_reg_reg[5][5]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_data_out_valid0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_data_out_valid0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_data_out_valid4_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_data_out_valid4_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_k_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_k_reg[0]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_symbol_counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_symbol_counter_reg[24]_i_10_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_symbol_counter_reg[24]_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \buff_counter_reg[0]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \buff_counter_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \buff_counter_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \buff_counter_reg[8]_i_1\ : label is 16;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \buff_reg[3][5]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \buff_reg[4][5]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \buff_reg[4][5]_i_5\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \buff_reg[5][5]_i_2\ : label is "soft_lutpair32";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \buff_reg_reg[5][5]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \buff_reg_reg[5][5]_i_4\ : label is 11;
  attribute SOFT_HLUTNM of data_out_last_i_2 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of data_out_last_i_3 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of data_out_last_i_4 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of data_out_last_i_5 : label is "soft_lutpair5";
  attribute COMPARATOR_THRESHOLD of data_out_valid0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \data_out_valid0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of data_out_valid4_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \data_out_valid4_carry__0\ : label is 11;
  attribute SOFT_HLUTNM of \g0_b0__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \g0_b0__4\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \g0_b10__3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \g0_b1__3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \g0_b2__1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \g0_b2__2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \g0_b3__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \g0_b3__2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of g0_b5 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \g0_b5__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \g0_b5__1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \g0_b5__2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \g0_b6__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \g0_b6__2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \g0_b8__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \g0_b8__3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \g0_b8__4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of g0_b9 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \g0_b9__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \g0_b9__3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \i_out[0]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \i_out[0]_i_5\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \i_out[0]_i_6\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \i_out[10]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i_out[10]_i_5\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \i_out[11]_i_7\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \i_out[1]_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i_out[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i_out[3]_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \i_out[4]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i_out[6]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \i_out[6]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \i_out[6]_i_5\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \i_out[6]_i_6\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \i_out[7]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i_out[8]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \i_out[8]_i_5\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \i_out[8]_i_6\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \i_out[9]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i_out[9]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i_out[9]_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \i_out[9]_i_6\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \i_out[9]_i_7\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \input_data[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \k[0]_i_7\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of last_frame_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \q_out[0]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q_out[11]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \q_out[11]_i_3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \q_out[1]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q_out[2]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \q_out[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q_out[5]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \q_out[7]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q_out[7]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q_out[8]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q_out[8]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \q_out[8]_i_5\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \q_out[8]_i_7\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \q_out[9]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \q_out[9]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \q_out[9]_i_5\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \q_out[9]_i_6\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \symbol_counter[0]_i_3\ : label is "soft_lutpair5";
  attribute ADDER_THRESHOLD of \symbol_counter_reg[0]_i_12\ : label is 35;
  attribute ADDER_THRESHOLD of \symbol_counter_reg[0]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \symbol_counter_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \symbol_counter_reg[16]_i_10\ : label is 35;
  attribute ADDER_THRESHOLD of \symbol_counter_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \symbol_counter_reg[24]_i_10\ : label is 35;
  attribute ADDER_THRESHOLD of \symbol_counter_reg[8]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \symbol_counter_reg[8]_i_10\ : label is 35;
begin
  data_out_last <= \^data_out_last\;
  data_out_ready <= \^data_out_ready\;
  last_frame <= \^last_frame\;
\buff_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A0C00"
    )
        port map (
      I0 => \data_out_valid4_carry__0_n_0\,
      I1 => \buff_reg_reg[5][5]_i_3_n_0\,
      I2 => pilot_insertion,
      I3 => data_in_valid,
      I4 => data_in_ready,
      O => \buff_counter[0]_i_1_n_0\
    );
\buff_counter[0]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(0),
      O => \buff_counter[0]_i_10_n_0\
    );
\buff_counter[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(7),
      O => \buff_counter[0]_i_3_n_0\
    );
\buff_counter[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(6),
      O => \buff_counter[0]_i_4_n_0\
    );
\buff_counter[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(5),
      O => \buff_counter[0]_i_5_n_0\
    );
\buff_counter[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(4),
      O => \buff_counter[0]_i_6_n_0\
    );
\buff_counter[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(3),
      O => \buff_counter[0]_i_7_n_0\
    );
\buff_counter[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(2),
      O => \buff_counter[0]_i_8_n_0\
    );
\buff_counter[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(1),
      O => \buff_counter[0]_i_9_n_0\
    );
\buff_counter[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(23),
      O => \buff_counter[16]_i_2_n_0\
    );
\buff_counter[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(22),
      O => \buff_counter[16]_i_3_n_0\
    );
\buff_counter[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(21),
      O => \buff_counter[16]_i_4_n_0\
    );
\buff_counter[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(20),
      O => \buff_counter[16]_i_5_n_0\
    );
\buff_counter[16]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(19),
      O => \buff_counter[16]_i_6_n_0\
    );
\buff_counter[16]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(18),
      O => \buff_counter[16]_i_7_n_0\
    );
\buff_counter[16]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(17),
      O => \buff_counter[16]_i_8_n_0\
    );
\buff_counter[16]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(16),
      O => \buff_counter[16]_i_9_n_0\
    );
\buff_counter[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => buff_counter_reg(31),
      I1 => data_out_valid122_out,
      O => \buff_counter[24]_i_2_n_0\
    );
\buff_counter[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(30),
      O => \buff_counter[24]_i_3_n_0\
    );
\buff_counter[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(29),
      O => \buff_counter[24]_i_4_n_0\
    );
\buff_counter[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(28),
      O => \buff_counter[24]_i_5_n_0\
    );
\buff_counter[24]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(27),
      O => \buff_counter[24]_i_6_n_0\
    );
\buff_counter[24]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(26),
      O => \buff_counter[24]_i_7_n_0\
    );
\buff_counter[24]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(25),
      O => \buff_counter[24]_i_8_n_0\
    );
\buff_counter[24]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(24),
      O => \buff_counter[24]_i_9_n_0\
    );
\buff_counter[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(15),
      O => \buff_counter[8]_i_2_n_0\
    );
\buff_counter[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(14),
      O => \buff_counter[8]_i_3_n_0\
    );
\buff_counter[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(13),
      O => \buff_counter[8]_i_4_n_0\
    );
\buff_counter[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(12),
      O => \buff_counter[8]_i_5_n_0\
    );
\buff_counter[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(11),
      O => \buff_counter[8]_i_6_n_0\
    );
\buff_counter[8]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(10),
      O => \buff_counter[8]_i_7_n_0\
    );
\buff_counter[8]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(9),
      O => \buff_counter[8]_i_8_n_0\
    );
\buff_counter[8]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => buff_counter_reg(8),
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
      DI(7) => data_out_valid122_out,
      DI(6) => data_out_valid122_out,
      DI(5) => data_out_valid122_out,
      DI(4) => data_out_valid122_out,
      DI(3) => data_out_valid122_out,
      DI(2) => data_out_valid122_out,
      DI(1) => data_out_valid122_out,
      DI(0) => '1',
      O(7) => \buff_counter_reg[0]_i_2_n_8\,
      O(6) => \buff_counter_reg[0]_i_2_n_9\,
      O(5) => \buff_counter_reg[0]_i_2_n_10\,
      O(4) => \buff_counter_reg[0]_i_2_n_11\,
      O(3) => \buff_counter_reg[0]_i_2_n_12\,
      O(2) => \buff_counter_reg[0]_i_2_n_13\,
      O(1) => \buff_counter_reg[0]_i_2_n_14\,
      O(0) => \buff_counter_reg[0]_i_2_n_15\,
      S(7) => \buff_counter[0]_i_3_n_0\,
      S(6) => \buff_counter[0]_i_4_n_0\,
      S(5) => \buff_counter[0]_i_5_n_0\,
      S(4) => \buff_counter[0]_i_6_n_0\,
      S(3) => \buff_counter[0]_i_7_n_0\,
      S(2) => \buff_counter[0]_i_8_n_0\,
      S(1) => \buff_counter[0]_i_9_n_0\,
      S(0) => \buff_counter[0]_i_10_n_0\
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
      DI(7) => data_out_valid122_out,
      DI(6) => data_out_valid122_out,
      DI(5) => data_out_valid122_out,
      DI(4) => data_out_valid122_out,
      DI(3) => data_out_valid122_out,
      DI(2) => data_out_valid122_out,
      DI(1) => data_out_valid122_out,
      DI(0) => data_out_valid122_out,
      O(7) => \buff_counter_reg[16]_i_1_n_8\,
      O(6) => \buff_counter_reg[16]_i_1_n_9\,
      O(5) => \buff_counter_reg[16]_i_1_n_10\,
      O(4) => \buff_counter_reg[16]_i_1_n_11\,
      O(3) => \buff_counter_reg[16]_i_1_n_12\,
      O(2) => \buff_counter_reg[16]_i_1_n_13\,
      O(1) => \buff_counter_reg[16]_i_1_n_14\,
      O(0) => \buff_counter_reg[16]_i_1_n_15\,
      S(7) => \buff_counter[16]_i_2_n_0\,
      S(6) => \buff_counter[16]_i_3_n_0\,
      S(5) => \buff_counter[16]_i_4_n_0\,
      S(4) => \buff_counter[16]_i_5_n_0\,
      S(3) => \buff_counter[16]_i_6_n_0\,
      S(2) => \buff_counter[16]_i_7_n_0\,
      S(1) => \buff_counter[16]_i_8_n_0\,
      S(0) => \buff_counter[16]_i_9_n_0\
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
      DI(6) => data_out_valid122_out,
      DI(5) => data_out_valid122_out,
      DI(4) => data_out_valid122_out,
      DI(3) => data_out_valid122_out,
      DI(2) => data_out_valid122_out,
      DI(1) => data_out_valid122_out,
      DI(0) => data_out_valid122_out,
      O(7) => \buff_counter_reg[24]_i_1_n_8\,
      O(6) => \buff_counter_reg[24]_i_1_n_9\,
      O(5) => \buff_counter_reg[24]_i_1_n_10\,
      O(4) => \buff_counter_reg[24]_i_1_n_11\,
      O(3) => \buff_counter_reg[24]_i_1_n_12\,
      O(2) => \buff_counter_reg[24]_i_1_n_13\,
      O(1) => \buff_counter_reg[24]_i_1_n_14\,
      O(0) => \buff_counter_reg[24]_i_1_n_15\,
      S(7) => \buff_counter[24]_i_2_n_0\,
      S(6) => \buff_counter[24]_i_3_n_0\,
      S(5) => \buff_counter[24]_i_4_n_0\,
      S(4) => \buff_counter[24]_i_5_n_0\,
      S(3) => \buff_counter[24]_i_6_n_0\,
      S(2) => \buff_counter[24]_i_7_n_0\,
      S(1) => \buff_counter[24]_i_8_n_0\,
      S(0) => \buff_counter[24]_i_9_n_0\
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
      DI(7) => data_out_valid122_out,
      DI(6) => data_out_valid122_out,
      DI(5) => data_out_valid122_out,
      DI(4) => data_out_valid122_out,
      DI(3) => data_out_valid122_out,
      DI(2) => data_out_valid122_out,
      DI(1) => data_out_valid122_out,
      DI(0) => data_out_valid122_out,
      O(7) => \buff_counter_reg[8]_i_1_n_8\,
      O(6) => \buff_counter_reg[8]_i_1_n_9\,
      O(5) => \buff_counter_reg[8]_i_1_n_10\,
      O(4) => \buff_counter_reg[8]_i_1_n_11\,
      O(3) => \buff_counter_reg[8]_i_1_n_12\,
      O(2) => \buff_counter_reg[8]_i_1_n_13\,
      O(1) => \buff_counter_reg[8]_i_1_n_14\,
      O(0) => \buff_counter_reg[8]_i_1_n_15\,
      S(7) => \buff_counter[8]_i_2_n_0\,
      S(6) => \buff_counter[8]_i_3_n_0\,
      S(5) => \buff_counter[8]_i_4_n_0\,
      S(4) => \buff_counter[8]_i_5_n_0\,
      S(3) => \buff_counter[8]_i_6_n_0\,
      S(2) => \buff_counter[8]_i_7_n_0\,
      S(1) => \buff_counter[8]_i_8_n_0\,
      S(0) => \buff_counter[8]_i_9_n_0\
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
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \buff_reg[4][5]_i_3_n_0\,
      I1 => \buff_reg[0][5]_i_2_n_0\,
      I2 => \buff_reg[0][5]_i_3_n_0\,
      I3 => \buff_reg[0][5]_i_4_n_0\,
      I4 => \buff_reg[3][5]_i_2_n_0\,
      I5 => \buff_reg[0][5]_i_5_n_0\,
      O => \buff_reg[0]_1\
    );
\buff_reg[0][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => buff_counter_reg(8),
      I1 => buff_counter_reg(9),
      I2 => buff_counter_reg(6),
      I3 => buff_counter_reg(7),
      I4 => buff_counter_reg(11),
      I5 => buff_counter_reg(10),
      O => \buff_reg[0][5]_i_2_n_0\
    );
\buff_reg[0][5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => buff_counter_reg(25),
      I1 => buff_counter_reg(24),
      I2 => buff_counter_reg(31),
      I3 => buff_counter_reg(30),
      I4 => buff_counter_reg(28),
      I5 => buff_counter_reg(29),
      O => \buff_reg[0][5]_i_3_n_0\
    );
\buff_reg[0][5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \buff_reg[0][5]_i_6_n_0\,
      I1 => buff_counter_reg(14),
      I2 => buff_counter_reg(15),
      I3 => buff_counter_reg(13),
      I4 => buff_counter_reg(12),
      I5 => \buff_reg[4][5]_i_5_n_0\,
      O => \buff_reg[0][5]_i_4_n_0\
    );
\buff_reg[0][5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \buff_reg[0][5]_i_7_n_0\,
      I1 => buff_counter_reg(16),
      I2 => buff_counter_reg(17),
      I3 => buff_counter_reg(1),
      I4 => buff_counter_reg(2),
      I5 => buff_counter_reg(0),
      O => \buff_reg[0][5]_i_5_n_0\
    );
\buff_reg[0][5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => buff_counter_reg(19),
      I1 => buff_counter_reg(18),
      I2 => buff_counter_reg(20),
      I3 => buff_counter_reg(21),
      I4 => buff_counter_reg(22),
      I5 => buff_counter_reg(23),
      O => \buff_reg[0][5]_i_6_n_0\
    );
\buff_reg[0][5]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(26),
      I1 => buff_counter_reg(27),
      O => \buff_reg[0][5]_i_7_n_0\
    );
\buff_reg[1][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \buff_reg[4][5]_i_2_n_0\,
      I1 => buff_counter_reg(1),
      I2 => buff_counter_reg(0),
      I3 => buff_counter_reg(2),
      I4 => buff_counter_reg(3),
      I5 => \buff_reg[4][5]_i_3_n_0\,
      O => \buff_reg[1]_2\
    );
\buff_reg[2][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \buff_reg[4][5]_i_2_n_0\,
      I1 => buff_counter_reg(0),
      I2 => buff_counter_reg(3),
      I3 => buff_counter_reg(1),
      I4 => buff_counter_reg(2),
      I5 => \buff_reg[4][5]_i_3_n_0\,
      O => \buff_reg[2]_3\
    );
\buff_reg[3][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \buff_reg[4][5]_i_2_n_0\,
      I1 => \buff_reg[3][5]_i_2_n_0\,
      I2 => buff_counter_reg(0),
      I3 => buff_counter_reg(2),
      I4 => buff_counter_reg(1),
      I5 => \buff_reg[4][5]_i_3_n_0\,
      O => \buff_reg[3]_4\
    );
\buff_reg[3][5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => buff_counter_reg(5),
      I1 => buff_counter_reg(4),
      I2 => buff_counter_reg(3),
      O => \buff_reg[3][5]_i_2_n_0\
    );
\buff_reg[4][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \buff_reg[4][5]_i_2_n_0\,
      I1 => buff_counter_reg(2),
      I2 => buff_counter_reg(3),
      I3 => buff_counter_reg(1),
      I4 => buff_counter_reg(0),
      I5 => \buff_reg[4][5]_i_3_n_0\,
      O => \buff_reg[4]_0\
    );
\buff_reg[4][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \buff_reg[4][5]_i_4_n_0\,
      I1 => \buff_reg[4][5]_i_5_n_0\,
      I2 => buff_counter_reg(12),
      I3 => buff_counter_reg(13),
      I4 => buff_counter_reg(14),
      I5 => \buff_reg[0][5]_i_2_n_0\,
      O => \buff_reg[4][5]_i_2_n_0\
    );
\buff_reg[4][5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => data_in_ready,
      I1 => data_in_valid,
      I2 => pilot_insertion,
      I3 => \buff_reg_reg[5][5]_i_3_n_0\,
      O => \buff_reg[4][5]_i_3_n_0\
    );
\buff_reg[4][5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \buff_reg[0][5]_i_3_n_0\,
      I1 => buff_counter_reg(15),
      I2 => \buff_reg[0][5]_i_7_n_0\,
      I3 => buff_counter_reg(16),
      I4 => buff_counter_reg(17),
      I5 => \buff_reg[0][5]_i_6_n_0\,
      O => \buff_reg[4][5]_i_4_n_0\
    );
\buff_reg[4][5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(4),
      I1 => buff_counter_reg(5),
      O => \buff_reg[4][5]_i_5_n_0\
    );
\buff_reg[5][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10005555"
    )
        port map (
      I0 => data_out_last_i_3_n_0,
      I1 => buff_counter_reg(1),
      I2 => buff_counter_reg(0),
      I3 => \buff_reg[5][5]_i_2_n_0\,
      I4 => \buff_reg_reg[5][5]_i_3_n_0\,
      O => \buff_reg[5][5]_i_1_n_0\
    );
\buff_reg[5][5]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(21),
      I1 => buff_counter_reg(20),
      O => \buff_reg[5][5]_i_10_n_0\
    );
\buff_reg[5][5]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(19),
      I1 => buff_counter_reg(18),
      O => \buff_reg[5][5]_i_11_n_0\
    );
\buff_reg[5][5]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(17),
      I1 => buff_counter_reg(16),
      O => \buff_reg[5][5]_i_12_n_0\
    );
\buff_reg[5][5]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(3),
      I1 => buff_counter_reg(2),
      O => \buff_reg[5][5]_i_13_n_0\
    );
\buff_reg[5][5]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(1),
      I1 => buff_counter_reg(0),
      O => \buff_reg[5][5]_i_14_n_0\
    );
\buff_reg[5][5]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(14),
      I1 => buff_counter_reg(15),
      O => \buff_reg[5][5]_i_15_n_0\
    );
\buff_reg[5][5]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(13),
      I1 => buff_counter_reg(12),
      O => \buff_reg[5][5]_i_16_n_0\
    );
\buff_reg[5][5]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(10),
      I1 => buff_counter_reg(11),
      O => \buff_reg[5][5]_i_17_n_0\
    );
\buff_reg[5][5]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(9),
      I1 => buff_counter_reg(8),
      O => \buff_reg[5][5]_i_18_n_0\
    );
\buff_reg[5][5]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(7),
      I1 => buff_counter_reg(6),
      O => \buff_reg[5][5]_i_19_n_0\
    );
\buff_reg[5][5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => buff_counter_reg(3),
      I1 => buff_counter_reg(2),
      I2 => \buff_reg[4][5]_i_2_n_0\,
      O => \buff_reg[5][5]_i_2_n_0\
    );
\buff_reg[5][5]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(5),
      I1 => buff_counter_reg(4),
      O => \buff_reg[5][5]_i_20_n_0\
    );
\buff_reg[5][5]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => buff_counter_reg(2),
      I1 => buff_counter_reg(3),
      O => \buff_reg[5][5]_i_21_n_0\
    );
\buff_reg[5][5]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => buff_counter_reg(0),
      I1 => buff_counter_reg(1),
      O => \buff_reg[5][5]_i_22_n_0\
    );
\buff_reg[5][5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(31),
      I1 => buff_counter_reg(30),
      O => \buff_reg[5][5]_i_5_n_0\
    );
\buff_reg[5][5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(28),
      I1 => buff_counter_reg(29),
      O => \buff_reg[5][5]_i_6_n_0\
    );
\buff_reg[5][5]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(26),
      I1 => buff_counter_reg(27),
      O => \buff_reg[5][5]_i_7_n_0\
    );
\buff_reg[5][5]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(24),
      I1 => buff_counter_reg(25),
      O => \buff_reg[5][5]_i_8_n_0\
    );
\buff_reg[5][5]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(23),
      I1 => buff_counter_reg(22),
      O => \buff_reg[5][5]_i_9_n_0\
    );
\buff_reg_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \buff_reg[0]_1\,
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
      CE => \buff_reg[0]_1\,
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
      CE => \buff_reg[0]_1\,
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
      CE => \buff_reg[0]_1\,
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
      CE => \buff_reg[0]_1\,
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
      CE => \buff_reg[0]_1\,
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
      CE => \buff_reg[1]_2\,
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
      CE => \buff_reg[1]_2\,
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
      CE => \buff_reg[1]_2\,
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
      CE => \buff_reg[1]_2\,
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
      CE => \buff_reg[1]_2\,
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
      CE => \buff_reg[1]_2\,
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
      CE => \buff_reg[2]_3\,
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
      CE => \buff_reg[2]_3\,
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
      CE => \buff_reg[2]_3\,
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
      CE => \buff_reg[2]_3\,
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
      CE => \buff_reg[2]_3\,
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
      CE => \buff_reg[2]_3\,
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
      CE => \buff_reg[3]_4\,
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
      CE => \buff_reg[3]_4\,
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
      CE => \buff_reg[3]_4\,
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
      CE => \buff_reg[3]_4\,
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
      CE => \buff_reg[3]_4\,
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
      CE => \buff_reg[3]_4\,
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
      CE => \buff_reg[4]_0\,
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
      CE => \buff_reg[4]_0\,
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
      CE => \buff_reg[4]_0\,
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
      CE => \buff_reg[4]_0\,
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
      CE => \buff_reg[4]_0\,
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
      CE => \buff_reg[4]_0\,
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
\buff_reg_reg[5][5]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \buff_reg_reg[5][5]_i_4_n_0\,
      CI_TOP => '0',
      CO(7) => \buff_reg_reg[5][5]_i_3_n_0\,
      CO(6) => \buff_reg_reg[5][5]_i_3_n_1\,
      CO(5) => \buff_reg_reg[5][5]_i_3_n_2\,
      CO(4) => \buff_reg_reg[5][5]_i_3_n_3\,
      CO(3) => \buff_reg_reg[5][5]_i_3_n_4\,
      CO(2) => \buff_reg_reg[5][5]_i_3_n_5\,
      CO(1) => \buff_reg_reg[5][5]_i_3_n_6\,
      CO(0) => \buff_reg_reg[5][5]_i_3_n_7\,
      DI(7) => buff_counter_reg(31),
      DI(6 downto 0) => B"0000000",
      O(7 downto 0) => \NLW_buff_reg_reg[5][5]_i_3_O_UNCONNECTED\(7 downto 0),
      S(7) => \buff_reg[5][5]_i_5_n_0\,
      S(6) => \buff_reg[5][5]_i_6_n_0\,
      S(5) => \buff_reg[5][5]_i_7_n_0\,
      S(4) => \buff_reg[5][5]_i_8_n_0\,
      S(3) => \buff_reg[5][5]_i_9_n_0\,
      S(2) => \buff_reg[5][5]_i_10_n_0\,
      S(1) => \buff_reg[5][5]_i_11_n_0\,
      S(0) => \buff_reg[5][5]_i_12_n_0\
    );
\buff_reg_reg[5][5]_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \buff_reg_reg[5][5]_i_4_n_0\,
      CO(6) => \buff_reg_reg[5][5]_i_4_n_1\,
      CO(5) => \buff_reg_reg[5][5]_i_4_n_2\,
      CO(4) => \buff_reg_reg[5][5]_i_4_n_3\,
      CO(3) => \buff_reg_reg[5][5]_i_4_n_4\,
      CO(2) => \buff_reg_reg[5][5]_i_4_n_5\,
      CO(1) => \buff_reg_reg[5][5]_i_4_n_6\,
      CO(0) => \buff_reg_reg[5][5]_i_4_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => \buff_reg[5][5]_i_13_n_0\,
      DI(0) => \buff_reg[5][5]_i_14_n_0\,
      O(7 downto 0) => \NLW_buff_reg_reg[5][5]_i_4_O_UNCONNECTED\(7 downto 0),
      S(7) => \buff_reg[5][5]_i_15_n_0\,
      S(6) => \buff_reg[5][5]_i_16_n_0\,
      S(5) => \buff_reg[5][5]_i_17_n_0\,
      S(4) => \buff_reg[5][5]_i_18_n_0\,
      S(3) => \buff_reg[5][5]_i_19_n_0\,
      S(2) => \buff_reg[5][5]_i_20_n_0\,
      S(1) => \buff_reg[5][5]_i_21_n_0\,
      S(0) => \buff_reg[5][5]_i_22_n_0\
    );
data_out_last_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8B8B8B8B8B8"
    )
        port map (
      I0 => \^data_out_last\,
      I1 => reset,
      I2 => data_out_last_i_2_n_0,
      I3 => data_out_last_i_3_n_0,
      I4 => data_out_last15_out,
      I5 => data_out_last_i_5_n_0,
      O => data_out_last_i_1_n_0
    );
data_out_last_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => signal_field_en,
      I2 => data_out_valid0,
      O => data_out_last_i_2_n_0
    );
data_out_last_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => pilot_insertion,
      I1 => data_in_valid,
      I2 => data_in_ready,
      O => data_out_last_i_3_n_0
    );
data_out_last_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => end_of_frame,
      I1 => data_out_valid0,
      O => data_out_last15_out
    );
data_out_last_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => \k[0]_i_3_n_0\,
      I2 => pilot_insertion,
      O => data_out_last_i_5_n_0
    );
data_out_last_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_out_last_i_1_n_0,
      Q => \^data_out_last\,
      R => '0'
    );
data_out_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA8B880000"
    )
        port map (
      I0 => \^data_out_ready\,
      I1 => data_out_valid122_out,
      I2 => end_of_frame,
      I3 => \i_out[11]_i_4_n_0\,
      I4 => data_out_ready_i_2_n_0,
      I5 => reset,
      O => data_out_ready_i_1_n_0
    );
data_out_ready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFB00FBFBFBFB"
    )
        port map (
      I0 => data_in_ready,
      I1 => data_in_valid,
      I2 => pilot_insertion,
      I3 => data_out_valid0,
      I4 => signal_field_en,
      I5 => data_out_valid122_out,
      O => data_out_ready_i_2_n_0
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
data_out_valid0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => data_out_valid0_carry_n_0,
      CO(6) => data_out_valid0_carry_n_1,
      CO(5) => data_out_valid0_carry_n_2,
      CO(4) => data_out_valid0_carry_n_3,
      CO(3) => data_out_valid0_carry_n_4,
      CO(2) => data_out_valid0_carry_n_5,
      CO(1) => data_out_valid0_carry_n_6,
      CO(0) => data_out_valid0_carry_n_7,
      DI(7 downto 5) => B"000",
      DI(4) => data_out_valid0_carry_i_1_n_0,
      DI(3) => data_out_valid0_carry_i_2_n_0,
      DI(2) => data_out_valid0_carry_i_3_n_0,
      DI(1) => data_out_valid0_carry_i_4_n_0,
      DI(0) => data_out_valid0_carry_i_5_n_0,
      O(7 downto 0) => NLW_data_out_valid0_carry_O_UNCONNECTED(7 downto 0),
      S(7) => data_out_valid0_carry_i_6_n_0,
      S(6) => data_out_valid0_carry_i_7_n_0,
      S(5) => data_out_valid0_carry_i_8_n_0,
      S(4) => data_out_valid0_carry_i_9_n_0,
      S(3) => data_out_valid0_carry_i_10_n_0,
      S(2) => data_out_valid0_carry_i_11_n_0,
      S(1) => data_out_valid0_carry_i_12_n_0,
      S(0) => data_out_valid0_carry_i_13_n_0
    );
\data_out_valid0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => data_out_valid0_carry_n_0,
      CI_TOP => '0',
      CO(7) => data_out_valid0,
      CO(6) => \data_out_valid0_carry__0_n_1\,
      CO(5) => \data_out_valid0_carry__0_n_2\,
      CO(4) => \data_out_valid0_carry__0_n_3\,
      CO(3) => \data_out_valid0_carry__0_n_4\,
      CO(2) => \data_out_valid0_carry__0_n_5\,
      CO(1) => \data_out_valid0_carry__0_n_6\,
      CO(0) => \data_out_valid0_carry__0_n_7\,
      DI(7) => symbol_counter_reg(31),
      DI(6 downto 0) => B"0000000",
      O(7 downto 0) => \NLW_data_out_valid0_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \data_out_valid0_carry__0_i_1_n_0\,
      S(6) => \data_out_valid0_carry__0_i_2_n_0\,
      S(5) => \data_out_valid0_carry__0_i_3_n_0\,
      S(4) => \data_out_valid0_carry__0_i_4_n_0\,
      S(3) => \data_out_valid0_carry__0_i_5_n_0\,
      S(2) => \data_out_valid0_carry__0_i_6_n_0\,
      S(1) => \data_out_valid0_carry__0_i_7_n_0\,
      S(0) => \data_out_valid0_carry__0_i_8_n_0\
    );
\data_out_valid0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => symbol_counter_reg(30),
      I1 => symbol_counter_reg(31),
      O => \data_out_valid0_carry__0_i_1_n_0\
    );
\data_out_valid0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => symbol_counter_reg(28),
      I1 => symbol_counter_reg(29),
      O => \data_out_valid0_carry__0_i_2_n_0\
    );
\data_out_valid0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => symbol_counter_reg(26),
      I1 => symbol_counter_reg(27),
      O => \data_out_valid0_carry__0_i_3_n_0\
    );
\data_out_valid0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => symbol_counter_reg(24),
      I1 => symbol_counter_reg(25),
      O => \data_out_valid0_carry__0_i_4_n_0\
    );
\data_out_valid0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => symbol_counter_reg(22),
      I1 => symbol_counter_reg(23),
      O => \data_out_valid0_carry__0_i_5_n_0\
    );
\data_out_valid0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => symbol_counter_reg(20),
      I1 => symbol_counter_reg(21),
      O => \data_out_valid0_carry__0_i_6_n_0\
    );
\data_out_valid0_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => symbol_counter_reg(18),
      I1 => symbol_counter_reg(19),
      O => \data_out_valid0_carry__0_i_7_n_0\
    );
\data_out_valid0_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => symbol_counter_reg(16),
      I1 => symbol_counter_reg(17),
      O => \data_out_valid0_carry__0_i_8_n_0\
    );
data_out_valid0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => symbol_counter_reg(9),
      I1 => symbol_counter_reg(8),
      O => data_out_valid0_carry_i_1_n_0
    );
data_out_valid0_carry_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => symbol_counter_reg(6),
      I1 => symbol_counter_reg(7),
      O => data_out_valid0_carry_i_10_n_0
    );
data_out_valid0_carry_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => symbol_counter_reg(4),
      I1 => symbol_counter_reg(5),
      O => data_out_valid0_carry_i_11_n_0
    );
data_out_valid0_carry_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => symbol_counter_reg(2),
      I1 => symbol_counter_reg(3),
      O => data_out_valid0_carry_i_12_n_0
    );
data_out_valid0_carry_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => symbol_counter_reg(0),
      I1 => symbol_counter_reg(1),
      O => data_out_valid0_carry_i_13_n_0
    );
data_out_valid0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => symbol_counter_reg(6),
      I1 => symbol_counter_reg(7),
      O => data_out_valid0_carry_i_2_n_0
    );
data_out_valid0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => symbol_counter_reg(5),
      I1 => symbol_counter_reg(4),
      O => data_out_valid0_carry_i_3_n_0
    );
data_out_valid0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => symbol_counter_reg(3),
      I1 => symbol_counter_reg(2),
      O => data_out_valid0_carry_i_4_n_0
    );
data_out_valid0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => symbol_counter_reg(1),
      I1 => symbol_counter_reg(0),
      O => data_out_valid0_carry_i_5_n_0
    );
data_out_valid0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => symbol_counter_reg(14),
      I1 => symbol_counter_reg(15),
      O => data_out_valid0_carry_i_6_n_0
    );
data_out_valid0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => symbol_counter_reg(12),
      I1 => symbol_counter_reg(13),
      O => data_out_valid0_carry_i_7_n_0
    );
data_out_valid0_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => symbol_counter_reg(10),
      I1 => symbol_counter_reg(11),
      O => data_out_valid0_carry_i_8_n_0
    );
data_out_valid0_carry_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => symbol_counter_reg(8),
      I1 => symbol_counter_reg(9),
      O => data_out_valid0_carry_i_9_n_0
    );
data_out_valid4_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => data_out_valid4_carry_n_0,
      CO(6) => data_out_valid4_carry_n_1,
      CO(5) => data_out_valid4_carry_n_2,
      CO(4) => data_out_valid4_carry_n_3,
      CO(3) => data_out_valid4_carry_n_4,
      CO(2) => data_out_valid4_carry_n_5,
      CO(1) => data_out_valid4_carry_n_6,
      CO(0) => data_out_valid4_carry_n_7,
      DI(7) => data_out_valid4_carry_i_1_n_0,
      DI(6) => data_out_valid4_carry_i_2_n_0,
      DI(5) => data_out_valid4_carry_i_3_n_0,
      DI(4) => data_out_valid4_carry_i_4_n_0,
      DI(3) => data_out_valid4_carry_i_5_n_0,
      DI(2) => data_out_valid4_carry_i_6_n_0,
      DI(1) => data_out_valid4_carry_i_7_n_0,
      DI(0) => data_out_valid4_carry_i_8_n_0,
      O(7 downto 0) => NLW_data_out_valid4_carry_O_UNCONNECTED(7 downto 0),
      S(7) => data_out_valid4_carry_i_9_n_0,
      S(6) => data_out_valid4_carry_i_10_n_0,
      S(5) => data_out_valid4_carry_i_11_n_0,
      S(4) => data_out_valid4_carry_i_12_n_0,
      S(3) => data_out_valid4_carry_i_13_n_0,
      S(2) => data_out_valid4_carry_i_14_n_0,
      S(1) => data_out_valid4_carry_i_15_n_0,
      S(0) => data_out_valid4_carry_i_16_n_0
    );
\data_out_valid4_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => data_out_valid4_carry_n_0,
      CI_TOP => '0',
      CO(7) => \data_out_valid4_carry__0_n_0\,
      CO(6) => \data_out_valid4_carry__0_n_1\,
      CO(5) => \data_out_valid4_carry__0_n_2\,
      CO(4) => \data_out_valid4_carry__0_n_3\,
      CO(3) => \data_out_valid4_carry__0_n_4\,
      CO(2) => \data_out_valid4_carry__0_n_5\,
      CO(1) => \data_out_valid4_carry__0_n_6\,
      CO(0) => \data_out_valid4_carry__0_n_7\,
      DI(7) => \data_out_valid4_carry__0_i_1_n_0\,
      DI(6) => \data_out_valid4_carry__0_i_2_n_0\,
      DI(5) => \data_out_valid4_carry__0_i_3_n_0\,
      DI(4) => \data_out_valid4_carry__0_i_4_n_0\,
      DI(3) => \data_out_valid4_carry__0_i_5_n_0\,
      DI(2) => \data_out_valid4_carry__0_i_6_n_0\,
      DI(1) => \data_out_valid4_carry__0_i_7_n_0\,
      DI(0) => \data_out_valid4_carry__0_i_8_n_0\,
      O(7 downto 0) => \NLW_data_out_valid4_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \data_out_valid4_carry__0_i_9_n_0\,
      S(6) => \data_out_valid4_carry__0_i_10_n_0\,
      S(5) => \data_out_valid4_carry__0_i_11_n_0\,
      S(4) => \data_out_valid4_carry__0_i_12_n_0\,
      S(3) => \data_out_valid4_carry__0_i_13_n_0\,
      S(2) => \data_out_valid4_carry__0_i_14_n_0\,
      S(1) => \data_out_valid4_carry__0_i_15_n_0\,
      S(0) => \data_out_valid4_carry__0_i_16_n_0\
    );
\data_out_valid4_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => buff_counter_reg(30),
      I1 => buff_counter_reg(31),
      O => \data_out_valid4_carry__0_i_1_n_0\
    );
\data_out_valid4_carry__0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(28),
      I1 => buff_counter_reg(29),
      O => \data_out_valid4_carry__0_i_10_n_0\
    );
\data_out_valid4_carry__0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(26),
      I1 => buff_counter_reg(27),
      O => \data_out_valid4_carry__0_i_11_n_0\
    );
\data_out_valid4_carry__0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(24),
      I1 => buff_counter_reg(25),
      O => \data_out_valid4_carry__0_i_12_n_0\
    );
\data_out_valid4_carry__0_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(23),
      I1 => buff_counter_reg(22),
      O => \data_out_valid4_carry__0_i_13_n_0\
    );
\data_out_valid4_carry__0_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(21),
      I1 => buff_counter_reg(20),
      O => \data_out_valid4_carry__0_i_14_n_0\
    );
\data_out_valid4_carry__0_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(19),
      I1 => buff_counter_reg(18),
      O => \data_out_valid4_carry__0_i_15_n_0\
    );
\data_out_valid4_carry__0_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(17),
      I1 => buff_counter_reg(16),
      O => \data_out_valid4_carry__0_i_16_n_0\
    );
\data_out_valid4_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(29),
      I1 => buff_counter_reg(28),
      O => \data_out_valid4_carry__0_i_2_n_0\
    );
\data_out_valid4_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(27),
      I1 => buff_counter_reg(26),
      O => \data_out_valid4_carry__0_i_3_n_0\
    );
\data_out_valid4_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(25),
      I1 => buff_counter_reg(24),
      O => \data_out_valid4_carry__0_i_4_n_0\
    );
\data_out_valid4_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(22),
      I1 => buff_counter_reg(23),
      O => \data_out_valid4_carry__0_i_5_n_0\
    );
\data_out_valid4_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(20),
      I1 => buff_counter_reg(21),
      O => \data_out_valid4_carry__0_i_6_n_0\
    );
\data_out_valid4_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(18),
      I1 => buff_counter_reg(19),
      O => \data_out_valid4_carry__0_i_7_n_0\
    );
\data_out_valid4_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(16),
      I1 => buff_counter_reg(17),
      O => \data_out_valid4_carry__0_i_8_n_0\
    );
\data_out_valid4_carry__0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(31),
      I1 => buff_counter_reg(30),
      O => \data_out_valid4_carry__0_i_9_n_0\
    );
data_out_valid4_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(15),
      I1 => buff_counter_reg(14),
      O => data_out_valid4_carry_i_1_n_0
    );
data_out_valid4_carry_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(13),
      I1 => buff_counter_reg(12),
      O => data_out_valid4_carry_i_10_n_0
    );
data_out_valid4_carry_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(10),
      I1 => buff_counter_reg(11),
      O => data_out_valid4_carry_i_11_n_0
    );
data_out_valid4_carry_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(9),
      I1 => buff_counter_reg(8),
      O => data_out_valid4_carry_i_12_n_0
    );
data_out_valid4_carry_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(7),
      I1 => buff_counter_reg(6),
      O => data_out_valid4_carry_i_13_n_0
    );
data_out_valid4_carry_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(5),
      I1 => buff_counter_reg(4),
      O => data_out_valid4_carry_i_14_n_0
    );
data_out_valid4_carry_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(3),
      I1 => buff_counter_reg(2),
      O => data_out_valid4_carry_i_15_n_0
    );
data_out_valid4_carry_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(1),
      I1 => buff_counter_reg(0),
      O => data_out_valid4_carry_i_16_n_0
    );
data_out_valid4_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(12),
      I1 => buff_counter_reg(13),
      O => data_out_valid4_carry_i_2_n_0
    );
data_out_valid4_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(11),
      I1 => buff_counter_reg(10),
      O => data_out_valid4_carry_i_3_n_0
    );
data_out_valid4_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(8),
      I1 => buff_counter_reg(9),
      O => data_out_valid4_carry_i_4_n_0
    );
data_out_valid4_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(6),
      I1 => buff_counter_reg(7),
      O => data_out_valid4_carry_i_5_n_0
    );
data_out_valid4_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(4),
      I1 => buff_counter_reg(5),
      O => data_out_valid4_carry_i_6_n_0
    );
data_out_valid4_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(2),
      I1 => buff_counter_reg(3),
      O => data_out_valid4_carry_i_7_n_0
    );
data_out_valid4_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(0),
      I1 => buff_counter_reg(1),
      O => data_out_valid4_carry_i_8_n_0
    );
data_out_valid4_carry_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(14),
      I1 => buff_counter_reg(15),
      O => data_out_valid4_carry_i_9_n_0
    );
data_out_valid_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \i_out[11]_i_1_n_0\,
      Q => data_out_valid
    );
g0_b0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6E"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[4]_i_1_n_0\,
      O => g0_b0_n_0
    );
\g0_b0__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      O => \g0_b0__0_n_0\
    );
\g0_b0__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9E"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[4]_i_1_n_0\,
      O => \g0_b0__1_n_0\
    );
\g0_b0__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D8EC"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[4]_i_1_n_0\,
      I3 => \input_data[5]_i_2_n_0\,
      O => \g0_b0__2_n_0\
    );
\g0_b0__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8DBA"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[4]_i_1_n_0\,
      I3 => \input_data[5]_i_2_n_0\,
      O => \g0_b0__3_n_0\
    );
\g0_b0__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => \input_data[0]_i_1_n_0\,
      O => \g0_b0__4_n_0\
    );
g0_b0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1D1D0C3F"
    )
        port map (
      I0 => g0_b0_i_3_n_0,
      I1 => data_in_valid,
      I2 => data_in(2),
      I3 => input_data(2),
      I4 => \data_out_valid4_carry__0_n_0\,
      O => g0_b0_i_1_n_0
    );
g0_b0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0053FF53"
    )
        port map (
      I0 => g0_b0_i_4_n_0,
      I1 => input_data(3),
      I2 => \data_out_valid4_carry__0_n_0\,
      I3 => data_in_valid,
      I4 => data_in(3),
      O => g0_b0_i_2_n_0
    );
g0_b0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \buff_reg_reg[5]\(2),
      I1 => k_reg(0),
      I2 => \buff_reg_reg[4]\(2),
      I3 => k_reg(2),
      I4 => g0_b0_i_5_n_0,
      O => g0_b0_i_3_n_0
    );
g0_b0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \buff_reg_reg[5]\(3),
      I1 => k_reg(0),
      I2 => \buff_reg_reg[4]\(3),
      I3 => k_reg(2),
      I4 => g0_b0_i_6_n_0,
      O => g0_b0_i_4_n_0
    );
g0_b0_i_5: unisim.vcomponents.LUT6
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
      O => g0_b0_i_5_n_0
    );
g0_b0_i_6: unisim.vcomponents.LUT6
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
      O => g0_b0_i_6_n_0
    );
g0_b1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F86"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => g0_b1_n_0
    );
g0_b10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"87B4"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => g0_b10_n_0
    );
\g0_b10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FD2C3F0"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b10__0_n_0\
    );
\g0_b10__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"59AAA555"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b10__1_n_0\
    );
\g0_b10__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999B999999999D99"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[0]_i_1_n_0\,
      I4 => \input_data[4]_i_1_n_0\,
      I5 => \input_data[5]_i_2_n_0\,
      O => \g0_b10__2_n_0\
    );
\g0_b10__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"95AA"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[0]_i_1_n_0\,
      O => \g0_b10__3_n_0\
    );
\g0_b10__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A659"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[4]_i_1_n_0\,
      O => \g0_b10__4_n_0\
    );
g0_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3331333333333733"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[0]_i_1_n_0\,
      I4 => \input_data[4]_i_1_n_0\,
      I5 => \input_data[5]_i_2_n_0\,
      O => g0_b11_n_0
    );
\g0_b1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0F7B50C"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b1__0_n_0\
    );
\g0_b1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F517688"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b1__1_n_0\
    );
\g0_b1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD9BDD99DD99DD99"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[0]_i_1_n_0\,
      I4 => \input_data[4]_i_1_n_0\,
      I5 => \input_data[5]_i_2_n_0\,
      O => \g0_b1__2_n_0\
    );
\g0_b1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF95"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[0]_i_1_n_0\,
      O => \g0_b1__3_n_0\
    );
\g0_b1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB68"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[4]_i_1_n_0\,
      O => \g0_b1__4_n_0\
    );
g0_b2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A97"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => g0_b2_n_0
    );
\g0_b2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1CF0697B"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b2__0_n_0\
    );
\g0_b2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55A169B7"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b2__1_n_0\
    );
\g0_b2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"996B"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[4]_i_1_n_0\,
      O => \g0_b2__2_n_0\
    );
g0_b3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3CD2"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => g0_b3_n_0
    );
\g0_b3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A75A4B69"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b3__0_n_0\
    );
\g0_b3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"996EA996"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b3__1_n_0\
    );
\g0_b3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A65"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[4]_i_1_n_0\,
      O => \g0_b3__2_n_0\
    );
g0_b4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"96D2"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => g0_b4_n_0
    );
\g0_b4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78B40FB4"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b4__0_n_0\
    );
\g0_b4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6595AA59"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b4__1_n_0\
    );
\g0_b4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9665"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[4]_i_1_n_0\,
      O => \g0_b4__2_n_0\
    );
g0_b5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1EF0A5C3"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => g0_b5_n_0
    );
\g0_b5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"93"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => \input_data[0]_i_1_n_0\,
      I2 => \input_data[4]_i_1_n_0\,
      O => \g0_b5__0_n_0\
    );
\g0_b5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => \input_data[4]_i_1_n_0\,
      O => \g0_b5__1_n_0\
    );
\g0_b5__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55A96666"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b5__2_n_0\
    );
g0_b5_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1D1D0C3F"
    )
        port map (
      I0 => g0_b5_i_2_n_0,
      I1 => data_in_valid,
      I2 => data_in(1),
      I3 => input_data(1),
      I4 => \data_out_valid4_carry__0_n_0\,
      O => g0_b5_i_1_n_0
    );
g0_b5_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \buff_reg_reg[5]\(1),
      I1 => k_reg(0),
      I2 => \buff_reg_reg[4]\(1),
      I3 => k_reg(2),
      I4 => g0_b5_i_3_n_0,
      O => g0_b5_i_2_n_0
    );
g0_b5_i_3: unisim.vcomponents.LUT6
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
      O => g0_b5_i_3_n_0
    );
g0_b6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"96E1"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => g0_b6_n_0
    );
\g0_b6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"782DF00F"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b6__0_n_0\
    );
\g0_b6__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A69555AA"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b6__1_n_0\
    );
\g0_b6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9656"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[4]_i_1_n_0\,
      O => \g0_b6__2_n_0\
    );
g0_b7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => g0_b7_n_0
    );
\g0_b7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C69C35A"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b7__0_n_0\
    );
\g0_b7__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96A5A5A5"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b7__1_n_0\
    );
\g0_b7__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[4]_i_1_n_0\,
      O => \g0_b7__2_n_0\
    );
g0_b8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A4B"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => g0_b8_n_0
    );
\g0_b8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2DC31EB4"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b8__0_n_0\
    );
\g0_b8__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5AA69A59"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b8__1_n_0\
    );
\g0_b8__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCECCCCCCCCC8CC"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[0]_i_1_n_0\,
      I4 => \input_data[4]_i_1_n_0\,
      I5 => \input_data[5]_i_2_n_0\,
      O => \g0_b8__2_n_0\
    );
\g0_b8__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA95"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[0]_i_1_n_0\,
      O => \g0_b8__3_n_0\
    );
\g0_b8__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"99A6"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[4]_i_1_n_0\,
      O => \g0_b8__4_n_0\
    );
g0_b9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C3E1"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      O => g0_b9_n_0
    );
\g0_b9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FA5B4A5"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b9__0_n_0\
    );
\g0_b9__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66AA565A"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[4]_i_1_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      O => \g0_b9__1_n_0\
    );
\g0_b9__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"669B669966996299"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[0]_i_1_n_0\,
      I4 => \input_data[4]_i_1_n_0\,
      I5 => \input_data[5]_i_2_n_0\,
      O => \g0_b9__2_n_0\
    );
\g0_b9__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      O => \g0_b9__3_n_0\
    );
\g0_b9__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A556"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[4]_i_1_n_0\,
      O => \g0_b9__4_n_0\
    );
\i_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF3FA0FFAFFFAFFF"
    )
        port map (
      I0 => \i_out[0]_i_2_n_0\,
      I1 => \i_out[0]_i_3_n_0\,
      I2 => data_out_valid122_out,
      I3 => mod_type(2),
      I4 => mod_type(1),
      I5 => mod_type(0),
      O => \i_out[0]_i_1_n_0\
    );
\i_out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB8B8"
    )
        port map (
      I0 => \i_out_reg[0]_i_4_n_0\,
      I1 => mod_type(1),
      I2 => \i_out[0]_i_5_n_0\,
      I3 => \i_out[0]_i_6_n_0\,
      I4 => \input_data[5]_i_2_n_0\,
      I5 => \i_out[11]_i_7_n_0\,
      O => \i_out[0]_i_2_n_0\
    );
\i_out[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => \input_data[0]_i_1_n_0\,
      I2 => g0_b0_i_2_n_0,
      O => \i_out[0]_i_3_n_0\
    );
\i_out[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => g0_b0_i_2_n_0,
      I1 => mod_type(0),
      I2 => g0_b0_i_1_n_0,
      O => \i_out[0]_i_5_n_0\
    );
\i_out[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => mod_type(0),
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[4]_i_1_n_0\,
      O => \i_out[0]_i_6_n_0\
    );
\i_out[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A0C0C0CFC0"
    )
        port map (
      I0 => \i_out[10]_i_2_n_0\,
      I1 => \i_out[10]_i_3_n_0\,
      I2 => data_out_valid122_out,
      I3 => mod_type(0),
      I4 => mod_type(1),
      I5 => mod_type(2),
      O => \i_out[10]_i_1_n_0\
    );
\i_out[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8BBB8B8B8B8"
    )
        port map (
      I0 => \i_out_reg[10]_i_4_n_0\,
      I1 => mod_type(1),
      I2 => \i_out[10]_i_5_n_0\,
      I3 => \input_data[0]_i_1_n_0\,
      I4 => g0_b0_i_1_n_0,
      I5 => mod_type(0),
      O => \i_out[10]_i_2_n_0\
    );
\i_out[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8BB88"
    )
        port map (
      I0 => \i_out[6]_i_3_n_0\,
      I1 => mod_type(1),
      I2 => g0_b5_i_1_n_0,
      I3 => \input_data[0]_i_1_n_0\,
      I4 => mod_type(0),
      O => \i_out[10]_i_3_n_0\
    );
\i_out[10]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \input_data[4]_i_1_n_0\,
      I1 => \input_data[5]_i_2_n_0\,
      I2 => mod_type(0),
      O => \i_out[10]_i_5_n_0\
    );
\i_out[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => \i_out[11]_i_4_n_0\,
      I2 => data_out_valid0,
      I3 => end_of_frame,
      O => \i_out[11]_i_1_n_0\
    );
\i_out[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0CFA0C0A0CFAFCF"
    )
        port map (
      I0 => \i_out[11]_i_5_n_0\,
      I1 => \i_out[11]_i_6_n_0\,
      I2 => data_out_valid122_out,
      I3 => mod_type(2),
      I4 => mod_type(1),
      I5 => mod_type(0),
      O => \i_out[11]_i_2_n_0\
    );
\i_out[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => pilot_insertion,
      I1 => data_in_ready,
      I2 => \data_out_valid4_carry__0_n_0\,
      I3 => data_in_valid,
      O => data_out_valid122_out
    );
\i_out[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pilot_insertion,
      I1 => \k[0]_i_3_n_0\,
      O => \i_out[11]_i_4_n_0\
    );
\i_out[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC8888CCCCDDD8"
    )
        port map (
      I0 => mod_type(1),
      I1 => \input_data[0]_i_1_n_0\,
      I2 => \input_data[4]_i_1_n_0\,
      I3 => \i_out[11]_i_7_n_0\,
      I4 => mod_type(0),
      I5 => \input_data[5]_i_2_n_0\,
      O => \i_out[11]_i_5_n_0\
    );
\i_out[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F99FF550F990055"
    )
        port map (
      I0 => \input_data[0]_i_1_n_0\,
      I1 => g0_b5_i_1_n_0,
      I2 => \input_data[4]_i_1_n_0\,
      I3 => mod_type(1),
      I4 => mod_type(0),
      I5 => g0_b0_i_2_n_0,
      O => \i_out[11]_i_6_n_0\
    );
\i_out[11]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => \input_data[0]_i_1_n_0\,
      I2 => g0_b0_i_2_n_0,
      I3 => g0_b0_i_1_n_0,
      O => \i_out[11]_i_7_n_0\
    );
\i_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF04FFFFFF040000"
    )
        port map (
      I0 => \i_out[1]_i_2_n_0\,
      I1 => mod_type(2),
      I2 => mod_type(1),
      I3 => \i_out[1]_i_3_n_0\,
      I4 => data_out_valid122_out,
      I5 => mod_type(0),
      O => \i_out[1]_i_1_n_0\
    );
\i_out[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"38083808083B0808"
    )
        port map (
      I0 => \i_out[1]_i_4_n_0\,
      I1 => mod_type(0),
      I2 => g0_b0_i_2_n_0,
      I3 => \input_data[5]_i_2_n_0\,
      I4 => \i_out[11]_i_7_n_0\,
      I5 => \input_data[4]_i_1_n_0\,
      O => \i_out[1]_i_2_n_0\
    );
\i_out[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFE0E0E0E"
    )
        port map (
      I0 => \i_out[8]_i_3_n_0\,
      I1 => \i_out[1]_i_5_n_0\,
      I2 => mod_type(2),
      I3 => \i_out_reg[1]_i_6_n_0\,
      I4 => mod_type(1),
      I5 => \i_out[1]_i_7_n_0\,
      O => \i_out[1]_i_3_n_0\
    );
\i_out[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \input_data[0]_i_1_n_0\,
      I1 => g0_b0_i_1_n_0,
      O => \i_out[1]_i_4_n_0\
    );
\i_out[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08800808"
    )
        port map (
      I0 => mod_type(1),
      I1 => mod_type(0),
      I2 => \input_data[4]_i_1_n_0\,
      I3 => g0_b0_i_1_n_0,
      I4 => g0_b0_i_2_n_0,
      O => \i_out[1]_i_5_n_0\
    );
\i_out[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D0550000"
    )
        port map (
      I0 => g0_b0_i_2_n_0,
      I1 => \input_data[0]_i_1_n_0\,
      I2 => g0_b0_i_1_n_0,
      I3 => mod_type(0),
      I4 => mod_type(1),
      I5 => mod_type(2),
      O => \i_out[1]_i_7_n_0\
    );
\i_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0C0CFA0A0C0C0"
    )
        port map (
      I0 => \i_out[2]_i_2_n_0\,
      I1 => \i_out[10]_i_3_n_0\,
      I2 => data_out_valid122_out,
      I3 => mod_type(1),
      I4 => mod_type(2),
      I5 => mod_type(0),
      O => \i_out[2]_i_1_n_0\
    );
\i_out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4000000F400"
    )
        port map (
      I0 => g0_b0_i_2_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => \i_out[6]_i_6_n_0\,
      I3 => \i_out[8]_i_7_n_0\,
      I4 => mod_type(1),
      I5 => \i_out_reg[2]_i_3_n_0\,
      O => \i_out[2]_i_2_n_0\
    );
\i_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => \i_out[3]_i_2_n_0\,
      I1 => data_out_valid122_out,
      I2 => mod_type(2),
      I3 => mod_type(0),
      I4 => mod_type(1),
      O => \i_out[3]_i_1_n_0\
    );
\i_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0DDF000F0DDF0"
    )
        port map (
      I0 => \i_out[9]_i_7_n_0\,
      I1 => \i_out[3]_i_3_n_0\,
      I2 => \i_out[3]_i_4_n_0\,
      I3 => mod_type(2),
      I4 => mod_type(1),
      I5 => \i_out_reg[3]_i_5_n_0\,
      O => \i_out[3]_i_2_n_0\
    );
\i_out[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mod_type(0),
      I1 => \input_data[0]_i_1_n_0\,
      O => \i_out[3]_i_3_n_0\
    );
\i_out[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA33AA33F0FF0F00"
    )
        port map (
      I0 => \input_data[4]_i_1_n_0\,
      I1 => g0_b0_i_2_n_0,
      I2 => g0_b5_i_1_n_0,
      I3 => mod_type(0),
      I4 => \input_data[0]_i_1_n_0\,
      I5 => mod_type(1),
      O => \i_out[3]_i_4_n_0\
    );
\i_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA00FCFFFC00"
    )
        port map (
      I0 => \i_out[4]_i_2_n_0\,
      I1 => \i_out[9]_i_3_n_0\,
      I2 => \i_out[8]_i_4_n_0\,
      I3 => data_out_valid122_out,
      I4 => \i_out[9]_i_5_n_0\,
      I5 => mod_type(2),
      O => \i_out[4]_i_1_n_0\
    );
\i_out[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBB888B8B88"
    )
        port map (
      I0 => \i_out_reg[4]_i_3_n_0\,
      I1 => mod_type(1),
      I2 => mod_type(0),
      I3 => \input_data[5]_i_2_n_0\,
      I4 => \input_data[4]_i_1_n_0\,
      I5 => \i_out[4]_i_4_n_0\,
      O => \i_out[4]_i_2_n_0\
    );
\i_out[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D200"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => mod_type(0),
      O => \i_out[4]_i_4_n_0\
    );
\i_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2EEE2EEE2EEE2E22"
    )
        port map (
      I0 => \i_out[8]_i_5_n_0\,
      I1 => data_out_valid122_out,
      I2 => \i_out[5]_i_2_n_0\,
      I3 => mod_type(2),
      I4 => \i_out[8]_i_3_n_0\,
      I5 => \i_out[9]_i_4_n_0\,
      O => \i_out[5]_i_1_n_0\
    );
\i_out[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0DFD0D0D0DFDFDFD"
    )
        port map (
      I0 => \i_out[8]_i_7_n_0\,
      I1 => \i_out[9]_i_6_n_0\,
      I2 => mod_type(1),
      I3 => g0_b5_n_0,
      I4 => mod_type(0),
      I5 => \g0_b5__0_n_0\,
      O => \i_out[5]_i_2_n_0\
    );
\i_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF5101"
    )
        port map (
      I0 => mod_type(2),
      I1 => \i_out[6]_i_2_n_0\,
      I2 => mod_type(1),
      I3 => \i_out[6]_i_3_n_0\,
      I4 => \i_out[6]_i_4_n_0\,
      I5 => \i_out[6]_i_5_n_0\,
      O => \i_out[6]_i_1_n_0\
    );
\i_out[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => mod_type(0),
      I2 => \input_data[0]_i_1_n_0\,
      O => \i_out[6]_i_2_n_0\
    );
\i_out[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6C3C0FF0"
    )
        port map (
      I0 => \input_data[0]_i_1_n_0\,
      I1 => \input_data[4]_i_1_n_0\,
      I2 => g0_b0_i_1_n_0,
      I3 => g0_b0_i_2_n_0,
      I4 => mod_type(0),
      O => \i_out[6]_i_3_n_0\
    );
\i_out[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0F0F0F7F0F7F0F"
    )
        port map (
      I0 => \i_out[9]_i_7_n_0\,
      I1 => \i_out[6]_i_6_n_0\,
      I2 => data_out_valid122_out,
      I3 => mod_type(2),
      I4 => \i_out_reg[6]_i_7_n_0\,
      I5 => mod_type(1),
      O => \i_out[6]_i_4_n_0\
    );
\i_out[6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => mod_type(2),
      I1 => mod_type(0),
      I2 => data_out_valid122_out,
      O => \i_out[6]_i_5_n_0\
    );
\i_out[6]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9F"
    )
        port map (
      I0 => g0_b0_i_2_n_0,
      I1 => \input_data[0]_i_1_n_0\,
      I2 => mod_type(0),
      O => \i_out[6]_i_6_n_0\
    );
\i_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC05050CFC05F50"
    )
        port map (
      I0 => \i_out[11]_i_6_n_0\,
      I1 => \i_out[7]_i_2_n_0\,
      I2 => data_out_valid122_out,
      I3 => mod_type(0),
      I4 => mod_type(2),
      I5 => mod_type(1),
      O => \i_out[7]_i_1_n_0\
    );
\i_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF455445544554"
    )
        port map (
      I0 => \i_out[7]_i_3_n_0\,
      I1 => mod_type(0),
      I2 => \input_data[4]_i_1_n_0\,
      I3 => \input_data[5]_i_2_n_0\,
      I4 => mod_type(1),
      I5 => \i_out_reg[7]_i_4_n_0\,
      O => \i_out[7]_i_2_n_0\
    );
\i_out[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAEEAEA"
    )
        port map (
      I0 => mod_type(1),
      I1 => mod_type(0),
      I2 => \input_data[0]_i_1_n_0\,
      I3 => g0_b0_i_2_n_0,
      I4 => g0_b0_i_1_n_0,
      O => \i_out[7]_i_3_n_0\
    );
\i_out[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8FFFFBBB80000"
    )
        port map (
      I0 => \i_out[8]_i_2_n_0\,
      I1 => mod_type(2),
      I2 => \i_out[8]_i_3_n_0\,
      I3 => \i_out[8]_i_4_n_0\,
      I4 => data_out_valid122_out,
      I5 => \i_out[8]_i_5_n_0\,
      O => \i_out[8]_i_1_n_0\
    );
\i_out[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD7000000D700"
    )
        port map (
      I0 => mod_type(0),
      I1 => \input_data[0]_i_1_n_0\,
      I2 => \i_out[8]_i_6_n_0\,
      I3 => \i_out[8]_i_7_n_0\,
      I4 => mod_type(1),
      I5 => \i_out_reg[8]_i_8_n_0\,
      O => \i_out[8]_i_2_n_0\
    );
\i_out[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => mod_type(0),
      I2 => \input_data[0]_i_1_n_0\,
      I3 => mod_type(1),
      O => \i_out[8]_i_3_n_0\
    );
\i_out[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E666169600000000"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => mod_type(0),
      I3 => \input_data[0]_i_1_n_0\,
      I4 => \input_data[4]_i_1_n_0\,
      I5 => mod_type(1),
      O => \i_out[8]_i_4_n_0\
    );
\i_out[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => mod_type(0),
      I1 => mod_type(1),
      I2 => mod_type(2),
      O => \i_out[8]_i_5_n_0\
    );
\i_out[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      O => \i_out[8]_i_6_n_0\
    );
\i_out[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAABAAAAA"
    )
        port map (
      I0 => \i_out[8]_i_9_n_0\,
      I1 => g0_b5_i_1_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      I3 => g0_b0_i_2_n_0,
      I4 => g0_b0_i_1_n_0,
      I5 => \input_data[4]_i_1_n_0\,
      O => \i_out[8]_i_7_n_0\
    );
\i_out[8]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFEEEBBABBAAA"
    )
        port map (
      I0 => mod_type(0),
      I1 => data_in_valid,
      I2 => \data_out_valid4_carry__0_n_0\,
      I3 => \input_data[5]_i_3_n_0\,
      I4 => input_data(5),
      I5 => data_in(5),
      O => \i_out[8]_i_9_n_0\
    );
\i_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA00FCFFFC00"
    )
        port map (
      I0 => \i_out[9]_i_2_n_0\,
      I1 => \i_out[9]_i_3_n_0\,
      I2 => \i_out[9]_i_4_n_0\,
      I3 => data_out_valid122_out,
      I4 => \i_out[9]_i_5_n_0\,
      I5 => mod_type(2),
      O => \i_out[9]_i_1_n_0\
    );
\i_out[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B8FFB8FF"
    )
        port map (
      I0 => \g0_b9__0_n_0\,
      I1 => mod_type(0),
      I2 => g0_b9_n_0,
      I3 => mod_type(1),
      I4 => \i_out[9]_i_6_n_0\,
      I5 => \i_out[9]_i_7_n_0\,
      O => \i_out[9]_i_2_n_0\
    );
\i_out[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4414"
    )
        port map (
      I0 => mod_type(1),
      I1 => \input_data[0]_i_1_n_0\,
      I2 => mod_type(0),
      I3 => g0_b5_i_1_n_0,
      O => \i_out[9]_i_3_n_0\
    );
\i_out[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2D550000"
    )
        port map (
      I0 => g0_b0_i_2_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => \input_data[4]_i_1_n_0\,
      I3 => mod_type(0),
      I4 => mod_type(1),
      O => \i_out[9]_i_4_n_0\
    );
\i_out[9]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mod_type(0),
      I1 => mod_type(1),
      O => \i_out[9]_i_5_n_0\
    );
\i_out[9]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8228"
    )
        port map (
      I0 => mod_type(0),
      I1 => \input_data[0]_i_1_n_0\,
      I2 => g0_b0_i_1_n_0,
      I3 => g0_b0_i_2_n_0,
      O => \i_out[9]_i_6_n_0\
    );
\i_out[9]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F9F6"
    )
        port map (
      I0 => \input_data[4]_i_1_n_0\,
      I1 => \input_data[5]_i_2_n_0\,
      I2 => mod_type(0),
      I3 => g0_b0_i_2_n_0,
      O => \i_out[9]_i_7_n_0\
    );
\i_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i_out[11]_i_1_n_0\,
      CLR => reset,
      D => \i_out[0]_i_1_n_0\,
      Q => i_out(0)
    );
\i_out_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__1_n_0\,
      I1 => \g0_b0__2_n_0\,
      O => \i_out_reg[0]_i_4_n_0\,
      S => mod_type(0)
    );
\i_out_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i_out[11]_i_1_n_0\,
      CLR => reset,
      D => \i_out[10]_i_1_n_0\,
      Q => i_out(10)
    );
\i_out_reg[10]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b10_n_0,
      I1 => \g0_b10__0_n_0\,
      O => \i_out_reg[10]_i_4_n_0\,
      S => mod_type(0)
    );
\i_out_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i_out[11]_i_1_n_0\,
      CLR => reset,
      D => \i_out[11]_i_2_n_0\,
      Q => i_out(11)
    );
\i_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i_out[11]_i_1_n_0\,
      CLR => reset,
      D => \i_out[1]_i_1_n_0\,
      Q => i_out(1)
    );
\i_out_reg[1]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b1_n_0,
      I1 => \g0_b1__0_n_0\,
      O => \i_out_reg[1]_i_6_n_0\,
      S => mod_type(0)
    );
\i_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i_out[11]_i_1_n_0\,
      CLR => reset,
      D => \i_out[2]_i_1_n_0\,
      Q => i_out(2)
    );
\i_out_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b2_n_0,
      I1 => \g0_b2__0_n_0\,
      O => \i_out_reg[2]_i_3_n_0\,
      S => mod_type(0)
    );
\i_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i_out[11]_i_1_n_0\,
      CLR => reset,
      D => \i_out[3]_i_1_n_0\,
      Q => i_out(3)
    );
\i_out_reg[3]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b3_n_0,
      I1 => \g0_b3__0_n_0\,
      O => \i_out_reg[3]_i_5_n_0\,
      S => mod_type(0)
    );
\i_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i_out[11]_i_1_n_0\,
      CLR => reset,
      D => \i_out[4]_i_1_n_0\,
      Q => i_out(4)
    );
\i_out_reg[4]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b4_n_0,
      I1 => \g0_b4__0_n_0\,
      O => \i_out_reg[4]_i_3_n_0\,
      S => mod_type(0)
    );
\i_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i_out[11]_i_1_n_0\,
      CLR => reset,
      D => \i_out[5]_i_1_n_0\,
      Q => i_out(5)
    );
\i_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i_out[11]_i_1_n_0\,
      CLR => reset,
      D => \i_out[6]_i_1_n_0\,
      Q => i_out(6)
    );
\i_out_reg[6]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b6_n_0,
      I1 => \g0_b6__0_n_0\,
      O => \i_out_reg[6]_i_7_n_0\,
      S => mod_type(0)
    );
\i_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i_out[11]_i_1_n_0\,
      CLR => reset,
      D => \i_out[7]_i_1_n_0\,
      Q => i_out(7)
    );
\i_out_reg[7]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b7_n_0,
      I1 => \g0_b7__0_n_0\,
      O => \i_out_reg[7]_i_4_n_0\,
      S => mod_type(0)
    );
\i_out_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i_out[11]_i_1_n_0\,
      CLR => reset,
      D => \i_out[8]_i_1_n_0\,
      Q => i_out(8)
    );
\i_out_reg[8]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b8_n_0,
      I1 => \g0_b8__0_n_0\,
      O => \i_out_reg[8]_i_8_n_0\,
      S => mod_type(0)
    );
\i_out_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i_out[11]_i_1_n_0\,
      CLR => reset,
      D => \i_out[9]_i_1_n_0\,
      Q => i_out(9)
    );
\input_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCF0AA"
    )
        port map (
      I0 => input_data(0),
      I1 => data_in(0),
      I2 => \input_data[0]_i_2_n_0\,
      I3 => \data_out_valid4_carry__0_n_0\,
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
\input_data[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      O => \input_data[1]_i_1_n_0\
    );
\input_data[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      O => \input_data[2]_i_1_n_0\
    );
\input_data[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => g0_b0_i_2_n_0,
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
      I3 => \data_out_valid4_carry__0_n_0\,
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
\input_data[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => reset,
      O => input_data0
    );
\input_data[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAF0CC"
    )
        port map (
      I0 => data_in(5),
      I1 => input_data(5),
      I2 => \input_data[5]_i_3_n_0\,
      I3 => \data_out_valid4_carry__0_n_0\,
      I4 => data_in_valid,
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
\k[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111F11111"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => \k[0]_i_3_n_0\,
      I2 => data_in_ready,
      I3 => pilot_insertion,
      I4 => \data_out_valid4_carry__0_n_0\,
      I5 => data_in_valid,
      O => \k[0]_i_1_n_0\
    );
\k[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF7FFFFF"
    )
        port map (
      I0 => \buff_reg[4][5]_i_4_n_0\,
      I1 => \k[0]_i_7_n_0\,
      I2 => data_in_ready,
      I3 => data_in_valid,
      I4 => \k[0]_i_8_n_0\,
      I5 => \k[0]_i_9_n_0\,
      O => \k[0]_i_3_n_0\
    );
\k[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => k_reg(2),
      O => \k[0]_i_4_n_0\
    );
\k[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => k_reg(1),
      O => \k[0]_i_5_n_0\
    );
\k[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => k_reg(0),
      I1 => data_out_valid122_out,
      O => \k[0]_i_6_n_0\
    );
\k[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(3),
      I1 => buff_counter_reg(2),
      O => \k[0]_i_7_n_0\
    );
\k[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(1),
      I1 => buff_counter_reg(0),
      O => \k[0]_i_8_n_0\
    );
\k[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \buff_reg[0][5]_i_2_n_0\,
      I1 => buff_counter_reg(14),
      I2 => buff_counter_reg(13),
      I3 => buff_counter_reg(12),
      I4 => buff_counter_reg(4),
      I5 => buff_counter_reg(5),
      O => \k[0]_i_9_n_0\
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
      DI(0) => data_out_valid122_out,
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
last_frame_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2F0020"
    )
        port map (
      I0 => end_of_frame,
      I1 => data_out_valid0,
      I2 => data_out_last_i_5_n_0,
      I3 => reset,
      I4 => \^last_frame\,
      O => last_frame_i_1_n_0
    );
last_frame_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => last_frame_i_1_n_0,
      Q => \^last_frame\,
      R => '0'
    );
\q_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFAFCFC0"
    )
        port map (
      I0 => \q_out[0]_i_2_n_0\,
      I1 => \q_out[0]_i_3_n_0\,
      I2 => data_out_valid122_out,
      I3 => mod_type(1),
      I4 => mod_type(2),
      I5 => mod_type(0),
      O => \q_out[0]_i_1_n_0\
    );
\q_out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888BBBBB888B8888"
    )
        port map (
      I0 => \q_out_reg[0]_i_4_n_0\,
      I1 => mod_type(1),
      I2 => g0_b0_i_1_n_0,
      I3 => g0_b0_i_2_n_0,
      I4 => mod_type(0),
      I5 => \g0_b0__4_n_0\,
      O => \q_out[0]_i_2_n_0\
    );
\q_out[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F707F0F0"
    )
        port map (
      I0 => \q_out[11]_i_3_n_0\,
      I1 => g0_b5_i_1_n_0,
      I2 => mod_type(0),
      I3 => \g0_b0__0_n_0\,
      I4 => mod_type(1),
      O => \q_out[0]_i_3_n_0\
    );
\q_out[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F101FEFEF1010E0E"
    )
        port map (
      I0 => mod_type(1),
      I1 => mod_type(0),
      I2 => data_out_valid122_out,
      I3 => \q_out[10]_i_2_n_0\,
      I4 => mod_type(2),
      I5 => \q_out[10]_i_3_n_0\,
      O => \q_out[10]_i_1_n_0\
    );
\q_out[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F6FFF006060F00"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => mod_type(1),
      I3 => \g0_b10__2_n_0\,
      I4 => mod_type(0),
      I5 => \q_out_reg[10]_i_4_n_0\,
      O => \q_out[10]_i_2_n_0\
    );
\q_out[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080B080B08CBC80"
    )
        port map (
      I0 => \g0_b10__3_n_0\,
      I1 => mod_type(1),
      I2 => mod_type(0),
      I3 => g0_b5_i_1_n_0,
      I4 => \input_data[0]_i_1_n_0\,
      I5 => \q_out[11]_i_3_n_0\,
      O => \q_out[10]_i_3_n_0\
    );
\q_out[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => \q_out[11]_i_2_n_0\,
      O => \q_out[11]_i_1_n_0\
    );
\q_out[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000CF770077"
    )
        port map (
      I0 => g0_b11_n_0,
      I1 => mod_type(2),
      I2 => \q_out[11]_i_3_n_0\,
      I3 => mod_type(1),
      I4 => g0_b5_i_1_n_0,
      I5 => mod_type(0),
      O => \q_out[11]_i_2_n_0\
    );
\q_out[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => g0_b0_i_2_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => \input_data[0]_i_1_n_0\,
      O => \q_out[11]_i_3_n_0\
    );
\q_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555444FFFFFFFF"
    )
        port map (
      I0 => \q_out[1]_i_2_n_0\,
      I1 => \q_out[5]_i_3_n_0\,
      I2 => \g0_b1__3_n_0\,
      I3 => \i_out[9]_i_5_n_0\,
      I4 => \q_out[8]_i_3_n_0\,
      I5 => \q_out[7]_i_4_n_0\,
      O => \q_out[1]_i_1_n_0\
    );
\q_out[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4700FFFF"
    )
        port map (
      I0 => \q_out_reg[1]_i_3_n_0\,
      I1 => mod_type(1),
      I2 => \q_out[1]_i_4_n_0\,
      I3 => mod_type(2),
      I4 => data_out_valid122_out,
      O => \q_out[1]_i_2_n_0\
    );
\q_out[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFFBA00"
    )
        port map (
      I0 => g0_b0_i_1_n_0,
      I1 => g0_b0_i_2_n_0,
      I2 => g0_b5_i_1_n_0,
      I3 => mod_type(0),
      I4 => \g0_b1__2_n_0\,
      O => \q_out[1]_i_4_n_0\
    );
\q_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFA0AFCFC0"
    )
        port map (
      I0 => \q_out[2]_i_2_n_0\,
      I1 => \q_out[10]_i_3_n_0\,
      I2 => data_out_valid122_out,
      I3 => mod_type(0),
      I4 => mod_type(2),
      I5 => mod_type(1),
      O => \q_out[2]_i_1_n_0\
    );
\q_out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00007600"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      I2 => g0_b0_i_2_n_0,
      I3 => mod_type(0),
      I4 => mod_type(1),
      I5 => \q_out[2]_i_3_n_0\,
      O => \q_out[2]_i_2_n_0\
    );
\q_out[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0AFC0A0"
    )
        port map (
      I0 => \g0_b2__2_n_0\,
      I1 => \g0_b2__1_n_0\,
      I2 => mod_type(1),
      I3 => mod_type(0),
      I4 => \g0_b8__2_n_0\,
      O => \q_out[2]_i_3_n_0\
    );
\q_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFB4B4"
    )
        port map (
      I0 => mod_type(0),
      I1 => mod_type(2),
      I2 => mod_type(1),
      I3 => \q_out[3]_i_2_n_0\,
      I4 => data_out_valid122_out,
      O => \q_out[3]_i_1_n_0\
    );
\q_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8BBBB8BB88BBB"
    )
        port map (
      I0 => \q_out[3]_i_3_n_0\,
      I1 => mod_type(2),
      I2 => g0_b5_i_1_n_0,
      I3 => mod_type(1),
      I4 => mod_type(0),
      I5 => \q_out[11]_i_3_n_0\,
      O => \q_out[3]_i_2_n_0\
    );
\q_out[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC05050CFCF5F5"
    )
        port map (
      I0 => \g0_b9__2_n_0\,
      I1 => g0_b5_i_1_n_0,
      I2 => mod_type(1),
      I3 => \g0_b3__1_n_0\,
      I4 => mod_type(0),
      I5 => \g0_b3__2_n_0\,
      O => \q_out[3]_i_3_n_0\
    );
\q_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8FFFFBBB80000"
    )
        port map (
      I0 => \q_out[4]_i_2_n_0\,
      I1 => mod_type(2),
      I2 => \q_out[9]_i_3_n_0\,
      I3 => \q_out[8]_i_4_n_0\,
      I4 => data_out_valid122_out,
      I5 => \q_out[9]_i_5_n_0\,
      O => \q_out[4]_i_1_n_0\
    );
\q_out[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88BBBBBB88B8888"
    )
        port map (
      I0 => \q_out_reg[4]_i_3_n_0\,
      I1 => mod_type(1),
      I2 => g0_b5_i_1_n_0,
      I3 => \q_out[8]_i_7_n_0\,
      I4 => mod_type(0),
      I5 => \g0_b10__2_n_0\,
      O => \q_out[4]_i_2_n_0\
    );
\q_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBBBAAA"
    )
        port map (
      I0 => \q_out[8]_i_2_n_0\,
      I1 => \q_out[5]_i_2_n_0\,
      I2 => \g0_b9__3_n_0\,
      I3 => \i_out[9]_i_5_n_0\,
      I4 => \q_out[5]_i_3_n_0\,
      I5 => \q_out[8]_i_3_n_0\,
      O => \q_out[5]_i_1_n_0\
    );
\q_out[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55145555FFFFFFFF"
    )
        port map (
      I0 => \q_out[5]_i_4_n_0\,
      I1 => \q_out[9]_i_6_n_0\,
      I2 => g0_b0_i_2_n_0,
      I3 => mod_type(1),
      I4 => mod_type(0),
      I5 => data_out_valid122_out,
      O => \q_out[5]_i_2_n_0\
    );
\q_out[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => \q_out[11]_i_3_n_0\,
      I2 => mod_type(0),
      I3 => mod_type(1),
      O => \q_out[5]_i_3_n_0\
    );
\q_out[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55F5FFDD55F555"
    )
        port map (
      I0 => mod_type(2),
      I1 => \g0_b5__2_n_0\,
      I2 => \g0_b5__1_n_0\,
      I3 => mod_type(1),
      I4 => mod_type(0),
      I5 => \g0_b8__2_n_0\,
      O => \q_out[5]_i_4_n_0\
    );
\q_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000DADAFF0FDADA"
    )
        port map (
      I0 => mod_type(1),
      I1 => mod_type(0),
      I2 => mod_type(2),
      I3 => \q_out[6]_i_2_n_0\,
      I4 => data_out_valid122_out,
      I5 => \q_out[6]_i_3_n_0\,
      O => \q_out[6]_i_1_n_0\
    );
\q_out[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b6__1_n_0\,
      I1 => \g0_b6__2_n_0\,
      I2 => mod_type(1),
      I3 => \q_out[9]_i_6_n_0\,
      I4 => mod_type(0),
      I5 => \g0_b9__2_n_0\,
      O => \q_out[6]_i_2_n_0\
    );
\q_out[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F4F7F4F7F43734F"
    )
        port map (
      I0 => \g0_b10__3_n_0\,
      I1 => mod_type(1),
      I2 => mod_type(0),
      I3 => g0_b5_i_1_n_0,
      I4 => \input_data[0]_i_1_n_0\,
      I5 => \q_out[11]_i_3_n_0\,
      O => \q_out[6]_i_3_n_0\
    );
\q_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E000E0E0FFFFFFFF"
    )
        port map (
      I0 => \q_out[7]_i_2_n_0\,
      I1 => \q_out[8]_i_3_n_0\,
      I2 => data_out_valid122_out,
      I3 => \q_out[7]_i_3_n_0\,
      I4 => mod_type(2),
      I5 => \q_out[7]_i_4_n_0\,
      O => \q_out[7]_i_1_n_0\
    );
\q_out[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D000"
    )
        port map (
      I0 => \q_out[11]_i_3_n_0\,
      I1 => mod_type(0),
      I2 => mod_type(1),
      I3 => g0_b5_i_1_n_0,
      O => \q_out[7]_i_2_n_0\
    );
\q_out[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0CACFCACFCAC0CA"
    )
        port map (
      I0 => \g0_b10__2_n_0\,
      I1 => \q_out_reg[7]_i_5_n_0\,
      I2 => mod_type(1),
      I3 => mod_type(0),
      I4 => \q_out[8]_i_7_n_0\,
      I5 => g0_b5_i_1_n_0,
      O => \q_out[7]_i_3_n_0\
    );
\q_out[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAAB"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => mod_type(0),
      I2 => mod_type(2),
      I3 => mod_type(1),
      O => \q_out[7]_i_4_n_0\
    );
\q_out[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAAFEAAFEAAAAAA"
    )
        port map (
      I0 => \q_out[8]_i_2_n_0\,
      I1 => \q_out[8]_i_3_n_0\,
      I2 => \q_out[8]_i_4_n_0\,
      I3 => data_out_valid122_out,
      I4 => \q_out[8]_i_5_n_0\,
      I5 => \q_out[8]_i_6_n_0\,
      O => \q_out[8]_i_1_n_0\
    );
\q_out[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1554"
    )
        port map (
      I0 => data_out_valid122_out,
      I1 => mod_type(0),
      I2 => mod_type(1),
      I3 => mod_type(2),
      O => \q_out[8]_i_2_n_0\
    );
\q_out[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => mod_type(2),
      I1 => mod_type(0),
      I2 => mod_type(1),
      I3 => g0_b5_i_1_n_0,
      O => \q_out[8]_i_3_n_0\
    );
\q_out[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF14000000140000"
    )
        port map (
      I0 => \q_out[11]_i_3_n_0\,
      I1 => \input_data[0]_i_1_n_0\,
      I2 => g0_b5_i_1_n_0,
      I3 => mod_type(0),
      I4 => mod_type(1),
      I5 => \g0_b8__3_n_0\,
      O => \q_out[8]_i_4_n_0\
    );
\q_out[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => mod_type(1),
      I1 => mod_type(0),
      I2 => \q_out[8]_i_7_n_0\,
      I3 => g0_b5_i_1_n_0,
      O => \q_out[8]_i_5_n_0\
    );
\q_out[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDF5F55D5D55F55"
    )
        port map (
      I0 => mod_type(2),
      I1 => \g0_b8__1_n_0\,
      I2 => mod_type(0),
      I3 => \g0_b8__2_n_0\,
      I4 => mod_type(1),
      I5 => \g0_b8__4_n_0\,
      O => \q_out[8]_i_6_n_0\
    );
\q_out[8]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => g0_b0_i_2_n_0,
      I1 => g0_b0_i_1_n_0,
      O => \q_out[8]_i_7_n_0\
    );
\q_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8FFFFBBB80000"
    )
        port map (
      I0 => \q_out[9]_i_2_n_0\,
      I1 => mod_type(2),
      I2 => \q_out[9]_i_3_n_0\,
      I3 => \q_out[9]_i_4_n_0\,
      I4 => data_out_valid122_out,
      I5 => \q_out[9]_i_5_n_0\,
      O => \q_out[9]_i_1_n_0\
    );
\q_out[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2EE200002EE2"
    )
        port map (
      I0 => \g0_b9__2_n_0\,
      I1 => mod_type(0),
      I2 => \q_out[9]_i_6_n_0\,
      I3 => g0_b0_i_2_n_0,
      I4 => mod_type(1),
      I5 => \q_out_reg[9]_i_7_n_0\,
      O => \q_out[9]_i_2_n_0\
    );
\q_out[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => mod_type(1),
      I1 => mod_type(0),
      I2 => g0_b5_i_1_n_0,
      O => \q_out[9]_i_3_n_0\
    );
\q_out[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4000400"
    )
        port map (
      I0 => \q_out[11]_i_3_n_0\,
      I1 => g0_b5_i_1_n_0,
      I2 => mod_type(0),
      I3 => mod_type(1),
      I4 => \g0_b9__3_n_0\,
      O => \q_out[9]_i_4_n_0\
    );
\q_out[9]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"26"
    )
        port map (
      I0 => mod_type(1),
      I1 => mod_type(2),
      I2 => mod_type(0),
      O => \q_out[9]_i_5_n_0\
    );
\q_out[9]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => g0_b5_i_1_n_0,
      I1 => g0_b0_i_1_n_0,
      O => \q_out[9]_i_6_n_0\
    );
\q_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i_out[11]_i_1_n_0\,
      CLR => reset,
      D => \q_out[0]_i_1_n_0\,
      Q => q_out(0)
    );
\q_out_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b0_n_0,
      I1 => \g0_b0__3_n_0\,
      O => \q_out_reg[0]_i_4_n_0\,
      S => mod_type(0)
    );
\q_out_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i_out[11]_i_1_n_0\,
      CLR => reset,
      D => \q_out[10]_i_1_n_0\,
      Q => q_out(10)
    );
\q_out_reg[10]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b10__4_n_0\,
      I1 => \g0_b10__1_n_0\,
      O => \q_out_reg[10]_i_4_n_0\,
      S => mod_type(0)
    );
\q_out_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i_out[11]_i_1_n_0\,
      CLR => reset,
      D => \q_out[11]_i_1_n_0\,
      Q => q_out(11)
    );
\q_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i_out[11]_i_1_n_0\,
      CLR => reset,
      D => \q_out[1]_i_1_n_0\,
      Q => q_out(1)
    );
\q_out_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__4_n_0\,
      I1 => \g0_b1__1_n_0\,
      O => \q_out_reg[1]_i_3_n_0\,
      S => mod_type(0)
    );
\q_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i_out[11]_i_1_n_0\,
      CLR => reset,
      D => \q_out[2]_i_1_n_0\,
      Q => q_out(2)
    );
\q_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i_out[11]_i_1_n_0\,
      CLR => reset,
      D => \q_out[3]_i_1_n_0\,
      Q => q_out(3)
    );
\q_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i_out[11]_i_1_n_0\,
      CLR => reset,
      D => \q_out[4]_i_1_n_0\,
      Q => q_out(4)
    );
\q_out_reg[4]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__2_n_0\,
      I1 => \g0_b4__1_n_0\,
      O => \q_out_reg[4]_i_3_n_0\,
      S => mod_type(0)
    );
\q_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i_out[11]_i_1_n_0\,
      CLR => reset,
      D => \q_out[5]_i_1_n_0\,
      Q => q_out(5)
    );
\q_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i_out[11]_i_1_n_0\,
      CLR => reset,
      D => \q_out[6]_i_1_n_0\,
      Q => q_out(6)
    );
\q_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i_out[11]_i_1_n_0\,
      CLR => reset,
      D => \q_out[7]_i_1_n_0\,
      Q => q_out(7)
    );
\q_out_reg[7]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b7__2_n_0\,
      I1 => \g0_b7__1_n_0\,
      O => \q_out_reg[7]_i_5_n_0\,
      S => mod_type(0)
    );
\q_out_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i_out[11]_i_1_n_0\,
      CLR => reset,
      D => \q_out[8]_i_1_n_0\,
      Q => q_out(8)
    );
\q_out_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \i_out[11]_i_1_n_0\,
      CLR => reset,
      D => \q_out[9]_i_1_n_0\,
      Q => q_out(9)
    );
\q_out_reg[9]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b9__4_n_0\,
      I1 => \g0_b9__1_n_0\,
      O => \q_out_reg[9]_i_7_n_0\,
      S => mod_type(0)
    );
\symbol_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002A22"
    )
        port map (
      I0 => \symbol_counter[0]_i_3_n_0\,
      I1 => data_out_valid122_out,
      I2 => signal_field_en,
      I3 => data_out_valid0,
      I4 => reset,
      O => symbol_counter0_5
    );
\symbol_counter[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(1),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(1),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[0]_i_10_n_0\
    );
\symbol_counter[0]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => data_out_last_i_5_n_0,
      I1 => symbol_counter_reg(0),
      I2 => data_out_valid122_out,
      O => \symbol_counter[0]_i_11_n_0\
    );
\symbol_counter[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => pilot_insertion,
      I1 => data_in_valid,
      I2 => \symbol_counter[0]_i_14_n_0\,
      I3 => \symbol_counter[0]_i_15_n_0\,
      I4 => \symbol_counter[0]_i_16_n_0\,
      I5 => data_in_ready,
      O => \symbol_counter[0]_i_13_n_0\
    );
\symbol_counter[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => buff_counter_reg(28),
      I1 => buff_counter_reg(29),
      I2 => buff_counter_reg(27),
      I3 => buff_counter_reg(25),
      I4 => buff_counter_reg(26),
      I5 => buff_counter_reg(24),
      O => \symbol_counter[0]_i_14_n_0\
    );
\symbol_counter[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \buff_reg[0][5]_i_2_n_0\,
      I1 => \symbol_counter[0]_i_17_n_0\,
      I2 => buff_counter_reg(14),
      I3 => \symbol_counter[0]_i_18_n_0\,
      I4 => buff_counter_reg(15),
      I5 => \buff_reg[0][5]_i_6_n_0\,
      O => \symbol_counter[0]_i_15_n_0\
    );
\symbol_counter[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \symbol_counter[0]_i_19_n_0\,
      I1 => buff_counter_reg(3),
      I2 => \buff_reg[4][5]_i_5_n_0\,
      I3 => buff_counter_reg(0),
      I4 => buff_counter_reg(2),
      I5 => buff_counter_reg(1),
      O => \symbol_counter[0]_i_16_n_0\
    );
\symbol_counter[0]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(12),
      I1 => buff_counter_reg(13),
      O => \symbol_counter[0]_i_17_n_0\
    );
\symbol_counter[0]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buff_counter_reg(16),
      I1 => buff_counter_reg(17),
      O => \symbol_counter[0]_i_18_n_0\
    );
\symbol_counter[0]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buff_counter_reg(31),
      I1 => buff_counter_reg(30),
      O => \symbol_counter[0]_i_19_n_0\
    );
\symbol_counter[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FFF0F8"
    )
        port map (
      I0 => end_of_frame,
      I1 => data_out_valid0,
      I2 => data_out_valid122_out,
      I3 => \k[0]_i_3_n_0\,
      I4 => pilot_insertion,
      O => \symbol_counter[0]_i_3_n_0\
    );
\symbol_counter[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(7),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(7),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[0]_i_4_n_0\
    );
\symbol_counter[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(6),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(6),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[0]_i_5_n_0\
    );
\symbol_counter[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(5),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(5),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[0]_i_6_n_0\
    );
\symbol_counter[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(4),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(4),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[0]_i_7_n_0\
    );
\symbol_counter[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(3),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(3),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[0]_i_8_n_0\
    );
\symbol_counter[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(2),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(2),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[0]_i_9_n_0\
    );
\symbol_counter[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(23),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(23),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[16]_i_2_n_0\
    );
\symbol_counter[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(22),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(22),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[16]_i_3_n_0\
    );
\symbol_counter[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(21),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(21),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[16]_i_4_n_0\
    );
\symbol_counter[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(20),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(20),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[16]_i_5_n_0\
    );
\symbol_counter[16]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(19),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(19),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[16]_i_6_n_0\
    );
\symbol_counter[16]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(18),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(18),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[16]_i_7_n_0\
    );
\symbol_counter[16]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(17),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(17),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[16]_i_8_n_0\
    );
\symbol_counter[16]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(16),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(16),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[16]_i_9_n_0\
    );
\symbol_counter[24]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(31),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(31),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[24]_i_2_n_0\
    );
\symbol_counter[24]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(30),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(30),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[24]_i_3_n_0\
    );
\symbol_counter[24]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(29),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(29),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[24]_i_4_n_0\
    );
\symbol_counter[24]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(28),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(28),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[24]_i_5_n_0\
    );
\symbol_counter[24]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(27),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(27),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[24]_i_6_n_0\
    );
\symbol_counter[24]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(26),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(26),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[24]_i_7_n_0\
    );
\symbol_counter[24]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(25),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(25),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[24]_i_8_n_0\
    );
\symbol_counter[24]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(24),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(24),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[24]_i_9_n_0\
    );
\symbol_counter[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(15),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(15),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[8]_i_2_n_0\
    );
\symbol_counter[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(14),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(14),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[8]_i_3_n_0\
    );
\symbol_counter[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(13),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(13),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[8]_i_4_n_0\
    );
\symbol_counter[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(12),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(12),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[8]_i_5_n_0\
    );
\symbol_counter[8]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(11),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(11),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[8]_i_6_n_0\
    );
\symbol_counter[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(10),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(10),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[8]_i_7_n_0\
    );
\symbol_counter[8]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(9),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(9),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[8]_i_8_n_0\
    );
\symbol_counter[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => symbol_counter_reg(8),
      I1 => data_out_valid122_out,
      I2 => symbol_counter0(8),
      I3 => \symbol_counter[0]_i_13_n_0\,
      O => \symbol_counter[8]_i_9_n_0\
    );
\symbol_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[0]_i_2_n_15\,
      Q => symbol_counter_reg(0),
      R => '0'
    );
\symbol_counter_reg[0]_i_12\: unisim.vcomponents.CARRY8
     port map (
      CI => symbol_counter_reg(0),
      CI_TOP => '0',
      CO(7) => \symbol_counter_reg[0]_i_12_n_0\,
      CO(6) => \symbol_counter_reg[0]_i_12_n_1\,
      CO(5) => \symbol_counter_reg[0]_i_12_n_2\,
      CO(4) => \symbol_counter_reg[0]_i_12_n_3\,
      CO(3) => \symbol_counter_reg[0]_i_12_n_4\,
      CO(2) => \symbol_counter_reg[0]_i_12_n_5\,
      CO(1) => \symbol_counter_reg[0]_i_12_n_6\,
      CO(0) => \symbol_counter_reg[0]_i_12_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => symbol_counter0(8 downto 1),
      S(7 downto 0) => symbol_counter_reg(8 downto 1)
    );
\symbol_counter_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \symbol_counter_reg[0]_i_2_n_0\,
      CO(6) => \symbol_counter_reg[0]_i_2_n_1\,
      CO(5) => \symbol_counter_reg[0]_i_2_n_2\,
      CO(4) => \symbol_counter_reg[0]_i_2_n_3\,
      CO(3) => \symbol_counter_reg[0]_i_2_n_4\,
      CO(2) => \symbol_counter_reg[0]_i_2_n_5\,
      CO(1) => \symbol_counter_reg[0]_i_2_n_6\,
      CO(0) => \symbol_counter_reg[0]_i_2_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => data_out_valid122_out,
      O(7) => \symbol_counter_reg[0]_i_2_n_8\,
      O(6) => \symbol_counter_reg[0]_i_2_n_9\,
      O(5) => \symbol_counter_reg[0]_i_2_n_10\,
      O(4) => \symbol_counter_reg[0]_i_2_n_11\,
      O(3) => \symbol_counter_reg[0]_i_2_n_12\,
      O(2) => \symbol_counter_reg[0]_i_2_n_13\,
      O(1) => \symbol_counter_reg[0]_i_2_n_14\,
      O(0) => \symbol_counter_reg[0]_i_2_n_15\,
      S(7) => \symbol_counter[0]_i_4_n_0\,
      S(6) => \symbol_counter[0]_i_5_n_0\,
      S(5) => \symbol_counter[0]_i_6_n_0\,
      S(4) => \symbol_counter[0]_i_7_n_0\,
      S(3) => \symbol_counter[0]_i_8_n_0\,
      S(2) => \symbol_counter[0]_i_9_n_0\,
      S(1) => \symbol_counter[0]_i_10_n_0\,
      S(0) => \symbol_counter[0]_i_11_n_0\
    );
\symbol_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[8]_i_1_n_13\,
      Q => symbol_counter_reg(10),
      R => '0'
    );
\symbol_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[8]_i_1_n_12\,
      Q => symbol_counter_reg(11),
      R => '0'
    );
\symbol_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[8]_i_1_n_11\,
      Q => symbol_counter_reg(12),
      R => '0'
    );
\symbol_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[8]_i_1_n_10\,
      Q => symbol_counter_reg(13),
      R => '0'
    );
\symbol_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[8]_i_1_n_9\,
      Q => symbol_counter_reg(14),
      R => '0'
    );
\symbol_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[8]_i_1_n_8\,
      Q => symbol_counter_reg(15),
      R => '0'
    );
\symbol_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[16]_i_1_n_15\,
      Q => symbol_counter_reg(16),
      R => '0'
    );
\symbol_counter_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \symbol_counter_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \symbol_counter_reg[16]_i_1_n_0\,
      CO(6) => \symbol_counter_reg[16]_i_1_n_1\,
      CO(5) => \symbol_counter_reg[16]_i_1_n_2\,
      CO(4) => \symbol_counter_reg[16]_i_1_n_3\,
      CO(3) => \symbol_counter_reg[16]_i_1_n_4\,
      CO(2) => \symbol_counter_reg[16]_i_1_n_5\,
      CO(1) => \symbol_counter_reg[16]_i_1_n_6\,
      CO(0) => \symbol_counter_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \symbol_counter_reg[16]_i_1_n_8\,
      O(6) => \symbol_counter_reg[16]_i_1_n_9\,
      O(5) => \symbol_counter_reg[16]_i_1_n_10\,
      O(4) => \symbol_counter_reg[16]_i_1_n_11\,
      O(3) => \symbol_counter_reg[16]_i_1_n_12\,
      O(2) => \symbol_counter_reg[16]_i_1_n_13\,
      O(1) => \symbol_counter_reg[16]_i_1_n_14\,
      O(0) => \symbol_counter_reg[16]_i_1_n_15\,
      S(7) => \symbol_counter[16]_i_2_n_0\,
      S(6) => \symbol_counter[16]_i_3_n_0\,
      S(5) => \symbol_counter[16]_i_4_n_0\,
      S(4) => \symbol_counter[16]_i_5_n_0\,
      S(3) => \symbol_counter[16]_i_6_n_0\,
      S(2) => \symbol_counter[16]_i_7_n_0\,
      S(1) => \symbol_counter[16]_i_8_n_0\,
      S(0) => \symbol_counter[16]_i_9_n_0\
    );
\symbol_counter_reg[16]_i_10\: unisim.vcomponents.CARRY8
     port map (
      CI => \symbol_counter_reg[8]_i_10_n_0\,
      CI_TOP => '0',
      CO(7) => \symbol_counter_reg[16]_i_10_n_0\,
      CO(6) => \symbol_counter_reg[16]_i_10_n_1\,
      CO(5) => \symbol_counter_reg[16]_i_10_n_2\,
      CO(4) => \symbol_counter_reg[16]_i_10_n_3\,
      CO(3) => \symbol_counter_reg[16]_i_10_n_4\,
      CO(2) => \symbol_counter_reg[16]_i_10_n_5\,
      CO(1) => \symbol_counter_reg[16]_i_10_n_6\,
      CO(0) => \symbol_counter_reg[16]_i_10_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => symbol_counter0(24 downto 17),
      S(7 downto 0) => symbol_counter_reg(24 downto 17)
    );
\symbol_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[16]_i_1_n_14\,
      Q => symbol_counter_reg(17),
      R => '0'
    );
\symbol_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[16]_i_1_n_13\,
      Q => symbol_counter_reg(18),
      R => '0'
    );
\symbol_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[16]_i_1_n_12\,
      Q => symbol_counter_reg(19),
      R => '0'
    );
\symbol_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[0]_i_2_n_14\,
      Q => symbol_counter_reg(1),
      R => '0'
    );
\symbol_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[16]_i_1_n_11\,
      Q => symbol_counter_reg(20),
      R => '0'
    );
\symbol_counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[16]_i_1_n_10\,
      Q => symbol_counter_reg(21),
      R => '0'
    );
\symbol_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[16]_i_1_n_9\,
      Q => symbol_counter_reg(22),
      R => '0'
    );
\symbol_counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[16]_i_1_n_8\,
      Q => symbol_counter_reg(23),
      R => '0'
    );
\symbol_counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[24]_i_1_n_15\,
      Q => symbol_counter_reg(24),
      R => '0'
    );
\symbol_counter_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \symbol_counter_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_symbol_counter_reg[24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \symbol_counter_reg[24]_i_1_n_1\,
      CO(5) => \symbol_counter_reg[24]_i_1_n_2\,
      CO(4) => \symbol_counter_reg[24]_i_1_n_3\,
      CO(3) => \symbol_counter_reg[24]_i_1_n_4\,
      CO(2) => \symbol_counter_reg[24]_i_1_n_5\,
      CO(1) => \symbol_counter_reg[24]_i_1_n_6\,
      CO(0) => \symbol_counter_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \symbol_counter_reg[24]_i_1_n_8\,
      O(6) => \symbol_counter_reg[24]_i_1_n_9\,
      O(5) => \symbol_counter_reg[24]_i_1_n_10\,
      O(4) => \symbol_counter_reg[24]_i_1_n_11\,
      O(3) => \symbol_counter_reg[24]_i_1_n_12\,
      O(2) => \symbol_counter_reg[24]_i_1_n_13\,
      O(1) => \symbol_counter_reg[24]_i_1_n_14\,
      O(0) => \symbol_counter_reg[24]_i_1_n_15\,
      S(7) => \symbol_counter[24]_i_2_n_0\,
      S(6) => \symbol_counter[24]_i_3_n_0\,
      S(5) => \symbol_counter[24]_i_4_n_0\,
      S(4) => \symbol_counter[24]_i_5_n_0\,
      S(3) => \symbol_counter[24]_i_6_n_0\,
      S(2) => \symbol_counter[24]_i_7_n_0\,
      S(1) => \symbol_counter[24]_i_8_n_0\,
      S(0) => \symbol_counter[24]_i_9_n_0\
    );
\symbol_counter_reg[24]_i_10\: unisim.vcomponents.CARRY8
     port map (
      CI => \symbol_counter_reg[16]_i_10_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_symbol_counter_reg[24]_i_10_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \symbol_counter_reg[24]_i_10_n_2\,
      CO(4) => \symbol_counter_reg[24]_i_10_n_3\,
      CO(3) => \symbol_counter_reg[24]_i_10_n_4\,
      CO(2) => \symbol_counter_reg[24]_i_10_n_5\,
      CO(1) => \symbol_counter_reg[24]_i_10_n_6\,
      CO(0) => \symbol_counter_reg[24]_i_10_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_symbol_counter_reg[24]_i_10_O_UNCONNECTED\(7),
      O(6 downto 0) => symbol_counter0(31 downto 25),
      S(7) => '0',
      S(6 downto 0) => symbol_counter_reg(31 downto 25)
    );
\symbol_counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[24]_i_1_n_14\,
      Q => symbol_counter_reg(25),
      R => '0'
    );
\symbol_counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[24]_i_1_n_13\,
      Q => symbol_counter_reg(26),
      R => '0'
    );
\symbol_counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[24]_i_1_n_12\,
      Q => symbol_counter_reg(27),
      R => '0'
    );
\symbol_counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[24]_i_1_n_11\,
      Q => symbol_counter_reg(28),
      R => '0'
    );
\symbol_counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[24]_i_1_n_10\,
      Q => symbol_counter_reg(29),
      R => '0'
    );
\symbol_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[0]_i_2_n_13\,
      Q => symbol_counter_reg(2),
      R => '0'
    );
\symbol_counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[24]_i_1_n_9\,
      Q => symbol_counter_reg(30),
      R => '0'
    );
\symbol_counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[24]_i_1_n_8\,
      Q => symbol_counter_reg(31),
      R => '0'
    );
\symbol_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[0]_i_2_n_12\,
      Q => symbol_counter_reg(3),
      R => '0'
    );
\symbol_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[0]_i_2_n_11\,
      Q => symbol_counter_reg(4),
      R => '0'
    );
\symbol_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[0]_i_2_n_10\,
      Q => symbol_counter_reg(5),
      R => '0'
    );
\symbol_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[0]_i_2_n_9\,
      Q => symbol_counter_reg(6),
      R => '0'
    );
\symbol_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[0]_i_2_n_8\,
      Q => symbol_counter_reg(7),
      R => '0'
    );
\symbol_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[8]_i_1_n_15\,
      Q => symbol_counter_reg(8),
      R => '0'
    );
\symbol_counter_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \symbol_counter_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \symbol_counter_reg[8]_i_1_n_0\,
      CO(6) => \symbol_counter_reg[8]_i_1_n_1\,
      CO(5) => \symbol_counter_reg[8]_i_1_n_2\,
      CO(4) => \symbol_counter_reg[8]_i_1_n_3\,
      CO(3) => \symbol_counter_reg[8]_i_1_n_4\,
      CO(2) => \symbol_counter_reg[8]_i_1_n_5\,
      CO(1) => \symbol_counter_reg[8]_i_1_n_6\,
      CO(0) => \symbol_counter_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \symbol_counter_reg[8]_i_1_n_8\,
      O(6) => \symbol_counter_reg[8]_i_1_n_9\,
      O(5) => \symbol_counter_reg[8]_i_1_n_10\,
      O(4) => \symbol_counter_reg[8]_i_1_n_11\,
      O(3) => \symbol_counter_reg[8]_i_1_n_12\,
      O(2) => \symbol_counter_reg[8]_i_1_n_13\,
      O(1) => \symbol_counter_reg[8]_i_1_n_14\,
      O(0) => \symbol_counter_reg[8]_i_1_n_15\,
      S(7) => \symbol_counter[8]_i_2_n_0\,
      S(6) => \symbol_counter[8]_i_3_n_0\,
      S(5) => \symbol_counter[8]_i_4_n_0\,
      S(4) => \symbol_counter[8]_i_5_n_0\,
      S(3) => \symbol_counter[8]_i_6_n_0\,
      S(2) => \symbol_counter[8]_i_7_n_0\,
      S(1) => \symbol_counter[8]_i_8_n_0\,
      S(0) => \symbol_counter[8]_i_9_n_0\
    );
\symbol_counter_reg[8]_i_10\: unisim.vcomponents.CARRY8
     port map (
      CI => \symbol_counter_reg[0]_i_12_n_0\,
      CI_TOP => '0',
      CO(7) => \symbol_counter_reg[8]_i_10_n_0\,
      CO(6) => \symbol_counter_reg[8]_i_10_n_1\,
      CO(5) => \symbol_counter_reg[8]_i_10_n_2\,
      CO(4) => \symbol_counter_reg[8]_i_10_n_3\,
      CO(3) => \symbol_counter_reg[8]_i_10_n_4\,
      CO(2) => \symbol_counter_reg[8]_i_10_n_5\,
      CO(1) => \symbol_counter_reg[8]_i_10_n_6\,
      CO(0) => \symbol_counter_reg[8]_i_10_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => symbol_counter0(16 downto 9),
      S(7 downto 0) => symbol_counter_reg(16 downto 9)
    );
\symbol_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => symbol_counter0_5,
      D => \symbol_counter_reg[8]_i_1_n_14\,
      Q => symbol_counter_reg(9),
      R => '0'
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
    end_of_frame : in STD_LOGIC;
    signal_field_en : in STD_LOGIC;
    pilot_insertion : in STD_LOGIC;
    i_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    q_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    data_out_last : out STD_LOGIC;
    last_frame : out STD_LOGIC;
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
      data_out_last => data_out_last,
      data_out_ready => data_out_ready,
      data_out_valid => data_out_valid,
      end_of_frame => end_of_frame,
      i_out(11 downto 0) => i_out(11 downto 0),
      last_frame => last_frame,
      mod_type(2 downto 0) => mod_type(2 downto 0),
      pilot_insertion => pilot_insertion,
      q_out(11 downto 0) => q_out(11 downto 0),
      reset => reset,
      signal_field_en => signal_field_en
    );
end STRUCTURE;
