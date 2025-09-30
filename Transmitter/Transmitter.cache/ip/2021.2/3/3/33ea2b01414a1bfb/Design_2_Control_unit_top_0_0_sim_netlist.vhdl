-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Tue Sep 30 11:42:59 2025
-- Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_Control_unit_top_0_0_sim_netlist.vhdl
-- Design      : Design_2_Control_unit_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_unit_top is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    control_unit_din_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    control_unit_din_valid : in STD_LOGIC;
    control_unit_end_of_frame : in STD_LOGIC;
    control_unit_dout_ready : out STD_LOGIC;
    control_unit_enable : out STD_LOGIC;
    mod_cod_schemes : in STD_LOGIC_VECTOR ( 4 downto 0 );
    num_streams : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ref_distance : in STD_LOGIC_VECTOR ( 7 downto 0 );
    scrambler_init : in STD_LOGIC_VECTOR ( 31 downto 1 );
    num_words : in STD_LOGIC_VECTOR ( 15 downto 0 );
    start_tx : in STD_LOGIC;
    phy_src_address : in STD_LOGIC_VECTOR ( 4 downto 0 );
    phy_dest_address : in STD_LOGIC_VECTOR ( 4 downto 0 );
    scrambler_din_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    scrambler_seed : out STD_LOGIC_VECTOR ( 31 downto 1 );
    scrambler_din_valid : out STD_LOGIC;
    scrambler_din_last : out STD_LOGIC;
    scrambler_control_enable : out STD_LOGIC;
    scrambler_last_frame : out STD_LOGIC;
    encoder_code_rate : out STD_LOGIC_VECTOR ( 1 downto 0 );
    encoder_reset_fifos : out STD_LOGIC;
    interleaver_dout_valid : in STD_LOGIC;
    interleaver_dout_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    interleaver_last_frame : in STD_LOGIC;
    interleaver_din_ready : out STD_LOGIC;
    mapper_dout_last : in STD_LOGIC;
    mapper_selected_mod : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mapper_din_data : out STD_LOGIC_VECTOR ( 5 downto 0 );
    mapper_din_valid : out STD_LOGIC;
    mapper_din_last : out STD_LOGIC;
    dpd_din_valid : out STD_LOGIC;
    dpd_din_data_I : out STD_LOGIC_VECTOR ( 11 downto 0 );
    dpd_din_data_Q : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_unit_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_unit_top is
  signal \<const0>\ : STD_LOGIC;
  signal control_unit_dout_ready_i_1_n_0 : STD_LOGIC;
  signal \^control_unit_enable\ : STD_LOGIC;
  signal control_unit_enable_i_1_n_0 : STD_LOGIC;
  signal control_unit_enable_i_2_n_0 : STD_LOGIC;
  signal control_unit_enable_i_3_n_0 : STD_LOGIC;
  signal \control_unit_states.i[0]_i_1_n_0\ : STD_LOGIC;
  signal \control_unit_states.i[1]_i_1_n_0\ : STD_LOGIC;
  signal \control_unit_states.i[2]_i_1_n_0\ : STD_LOGIC;
  signal \control_unit_states.i[3]_i_2_n_0\ : STD_LOGIC;
  signal \control_unit_states.i[3]_i_3_n_0\ : STD_LOGIC;
  signal \control_unit_states.i[3]_i_4_n_0\ : STD_LOGIC;
  signal \control_unit_states.i[3]_i_5_n_0\ : STD_LOGIC;
  signal \control_unit_states.i_reg_n_0_[0]\ : STD_LOGIC;
  signal \control_unit_states.i_reg_n_0_[1]\ : STD_LOGIC;
  signal \control_unit_states.i_reg_n_0_[2]\ : STD_LOGIC;
  signal \control_unit_states.i_reg_n_0_[3]\ : STD_LOGIC;
  signal \control_unit_states.k[0]_i_1_n_0\ : STD_LOGIC;
  signal \control_unit_states.k[1]_i_1_n_0\ : STD_LOGIC;
  signal \control_unit_states.k[2]_i_1_n_0\ : STD_LOGIC;
  signal \control_unit_states.k[3]_i_1_n_0\ : STD_LOGIC;
  signal \control_unit_states.k[4]_i_1_n_0\ : STD_LOGIC;
  signal \control_unit_states.k[4]_i_2_n_0\ : STD_LOGIC;
  signal \control_unit_states.k[5]_i_1_n_0\ : STD_LOGIC;
  signal \control_unit_states.k[5]_i_2_n_0\ : STD_LOGIC;
  signal \control_unit_states.k[6]_i_2_n_0\ : STD_LOGIC;
  signal \control_unit_states.k_reg_n_0_[0]\ : STD_LOGIC;
  signal \control_unit_states.k_reg_n_0_[1]\ : STD_LOGIC;
  signal \control_unit_states.k_reg_n_0_[2]\ : STD_LOGIC;
  signal \control_unit_states.k_reg_n_0_[3]\ : STD_LOGIC;
  signal \control_unit_states.k_reg_n_0_[4]\ : STD_LOGIC;
  signal \control_unit_states.k_reg_n_0_[5]\ : STD_LOGIC;
  signal \control_unit_states.k_reg_n_0_[6]\ : STD_LOGIC;
  signal \control_unit_states.n[0]_i_1_n_0\ : STD_LOGIC;
  signal \control_unit_states.n[1]_i_1_n_0\ : STD_LOGIC;
  signal \control_unit_states.n[2]_i_1_n_0\ : STD_LOGIC;
  signal \control_unit_states.n[3]_i_1_n_0\ : STD_LOGIC;
  signal \control_unit_states.n_reg_n_0_[0]\ : STD_LOGIC;
  signal \control_unit_states.n_reg_n_0_[1]\ : STD_LOGIC;
  signal \control_unit_states.n_reg_n_0_[2]\ : STD_LOGIC;
  signal \control_unit_states.n_reg_n_0_[3]\ : STD_LOGIC;
  signal data_process_i_1_n_0 : STD_LOGIC;
  signal data_process_reg_n_0 : STD_LOGIC;
  signal \data_splitter.index[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_splitter.index[5]_i_3_n_0\ : STD_LOGIC;
  signal \data_splitter.index[5]_i_4_n_0\ : STD_LOGIC;
  signal \data_splitter.index_reg\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^dpd_din_data_i\ : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal dpd_din_data_I1 : STD_LOGIC;
  signal \dpd_din_data_I[10]_i_1_n_0\ : STD_LOGIC;
  signal \dpd_din_data_I[10]_i_2_n_0\ : STD_LOGIC;
  signal \dpd_din_data_I[10]_i_3_n_0\ : STD_LOGIC;
  signal \dpd_din_data_I[10]_i_6_n_0\ : STD_LOGIC;
  signal \dpd_din_data_I[11]_i_1_n_0\ : STD_LOGIC;
  signal \dpd_din_data_I[11]_i_2_n_0\ : STD_LOGIC;
  signal \dpd_din_data_I[11]_i_3_n_0\ : STD_LOGIC;
  signal \dpd_din_data_I[11]_i_4_n_0\ : STD_LOGIC;
  signal \dpd_din_data_I[11]_i_5_n_0\ : STD_LOGIC;
  signal \dpd_din_data_I_reg[11]_i_6_n_0\ : STD_LOGIC;
  signal \dpd_din_data_I_reg[11]_i_7_n_0\ : STD_LOGIC;
  signal dpd_din_valid_i_1_n_0 : STD_LOGIC;
  signal dpd_din_valid_i_2_n_0 : STD_LOGIC;
  signal encoder_code_rate0 : STD_LOGIC;
  signal \g0_b1__0_n_0\ : STD_LOGIC;
  signal g0_b1_n_0 : STD_LOGIC;
  signal \g0_b2__0_n_0\ : STD_LOGIC;
  signal g0_b2_n_0 : STD_LOGIC;
  signal \g1_b1__0_n_0\ : STD_LOGIC;
  signal g1_b1_n_0 : STD_LOGIC;
  signal \g1_b2__0_n_0\ : STD_LOGIC;
  signal g1_b2_n_0 : STD_LOGIC;
  signal i0 : STD_LOGIC;
  signal \^interleaver_din_ready\ : STD_LOGIC;
  signal interleaver_din_ready015_out : STD_LOGIC;
  signal interleaver_din_ready_i_2_n_0 : STD_LOGIC;
  signal interleaver_din_ready_i_3_n_0 : STD_LOGIC;
  signal k0 : STD_LOGIC;
  signal \mapper_din_data[0]_i_10_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_11_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_12_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_13_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_14_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_15_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_16_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_17_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_18_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_19_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_20_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_21_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_22_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_23_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_24_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_25_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_26_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_27_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_28_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_29_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_30_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_31_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_32_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_33_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_34_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_35_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_36_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_37_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_38_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_39_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_40_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_41_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_4_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_5_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_6_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_7_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_8_n_0\ : STD_LOGIC;
  signal \mapper_din_data[0]_i_9_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_10_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_11_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_12_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_13_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_14_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_15_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_16_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_17_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_18_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_19_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_20_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_21_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_22_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_23_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_24_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_25_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_26_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_27_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_28_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_3_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_4_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_5_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_6_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_7_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_8_n_0\ : STD_LOGIC;
  signal \mapper_din_data[1]_i_9_n_0\ : STD_LOGIC;
  signal \mapper_din_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \mapper_din_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \mapper_din_data[2]_i_3_n_0\ : STD_LOGIC;
  signal \mapper_din_data[2]_i_4_n_0\ : STD_LOGIC;
  signal \mapper_din_data[2]_i_5_n_0\ : STD_LOGIC;
  signal \mapper_din_data[2]_i_6_n_0\ : STD_LOGIC;
  signal \mapper_din_data[2]_i_7_n_0\ : STD_LOGIC;
  signal \mapper_din_data[3]_i_10_n_0\ : STD_LOGIC;
  signal \mapper_din_data[3]_i_11_n_0\ : STD_LOGIC;
  signal \mapper_din_data[3]_i_12_n_0\ : STD_LOGIC;
  signal \mapper_din_data[3]_i_13_n_0\ : STD_LOGIC;
  signal \mapper_din_data[3]_i_14_n_0\ : STD_LOGIC;
  signal \mapper_din_data[3]_i_15_n_0\ : STD_LOGIC;
  signal \mapper_din_data[3]_i_16_n_0\ : STD_LOGIC;
  signal \mapper_din_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \mapper_din_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \mapper_din_data[3]_i_3_n_0\ : STD_LOGIC;
  signal \mapper_din_data[3]_i_4_n_0\ : STD_LOGIC;
  signal \mapper_din_data[3]_i_5_n_0\ : STD_LOGIC;
  signal \mapper_din_data[3]_i_6_n_0\ : STD_LOGIC;
  signal \mapper_din_data[3]_i_7_n_0\ : STD_LOGIC;
  signal \mapper_din_data[3]_i_8_n_0\ : STD_LOGIC;
  signal \mapper_din_data[3]_i_9_n_0\ : STD_LOGIC;
  signal \mapper_din_data[4]_i_10_n_0\ : STD_LOGIC;
  signal \mapper_din_data[4]_i_11_n_0\ : STD_LOGIC;
  signal \mapper_din_data[4]_i_12_n_0\ : STD_LOGIC;
  signal \mapper_din_data[4]_i_13_n_0\ : STD_LOGIC;
  signal \mapper_din_data[4]_i_14_n_0\ : STD_LOGIC;
  signal \mapper_din_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \mapper_din_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \mapper_din_data[4]_i_3_n_0\ : STD_LOGIC;
  signal \mapper_din_data[4]_i_4_n_0\ : STD_LOGIC;
  signal \mapper_din_data[4]_i_5_n_0\ : STD_LOGIC;
  signal \mapper_din_data[4]_i_6_n_0\ : STD_LOGIC;
  signal \mapper_din_data[4]_i_7_n_0\ : STD_LOGIC;
  signal \mapper_din_data[4]_i_8_n_0\ : STD_LOGIC;
  signal \mapper_din_data[4]_i_9_n_0\ : STD_LOGIC;
  signal \mapper_din_data[5]_i_10_n_0\ : STD_LOGIC;
  signal \mapper_din_data[5]_i_11_n_0\ : STD_LOGIC;
  signal \mapper_din_data[5]_i_12_n_0\ : STD_LOGIC;
  signal \mapper_din_data[5]_i_13_n_0\ : STD_LOGIC;
  signal \mapper_din_data[5]_i_14_n_0\ : STD_LOGIC;
  signal \mapper_din_data[5]_i_15_n_0\ : STD_LOGIC;
  signal \mapper_din_data[5]_i_16_n_0\ : STD_LOGIC;
  signal \mapper_din_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \mapper_din_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \mapper_din_data[5]_i_3_n_0\ : STD_LOGIC;
  signal \mapper_din_data[5]_i_4_n_0\ : STD_LOGIC;
  signal \mapper_din_data[5]_i_5_n_0\ : STD_LOGIC;
  signal \mapper_din_data[5]_i_6_n_0\ : STD_LOGIC;
  signal \mapper_din_data[5]_i_7_n_0\ : STD_LOGIC;
  signal \mapper_din_data[5]_i_8_n_0\ : STD_LOGIC;
  signal \mapper_din_data[5]_i_9_n_0\ : STD_LOGIC;
  signal mapper_din_last_i_1_n_0 : STD_LOGIC;
  signal mapper_din_valid_i_1_n_0 : STD_LOGIC;
  signal mapper_din_valid_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_12_in : STD_LOGIC;
  signal \pilot_I[0]0\ : STD_LOGIC;
  signal pilot_symbols0 : STD_LOGIC;
  signal \pilot_symbols[0]_i_10_n_0\ : STD_LOGIC;
  signal \pilot_symbols[0]_i_3_n_0\ : STD_LOGIC;
  signal \pilot_symbols[0]_i_4_n_0\ : STD_LOGIC;
  signal \pilot_symbols[0]_i_5_n_0\ : STD_LOGIC;
  signal \pilot_symbols[0]_i_6_n_0\ : STD_LOGIC;
  signal \pilot_symbols[0]_i_7_n_0\ : STD_LOGIC;
  signal \pilot_symbols[0]_i_8_n_0\ : STD_LOGIC;
  signal \pilot_symbols[0]_i_9_n_0\ : STD_LOGIC;
  signal \pilot_symbols[16]_i_2_n_0\ : STD_LOGIC;
  signal \pilot_symbols[16]_i_3_n_0\ : STD_LOGIC;
  signal \pilot_symbols[16]_i_4_n_0\ : STD_LOGIC;
  signal \pilot_symbols[16]_i_5_n_0\ : STD_LOGIC;
  signal \pilot_symbols[16]_i_6_n_0\ : STD_LOGIC;
  signal \pilot_symbols[16]_i_7_n_0\ : STD_LOGIC;
  signal \pilot_symbols[16]_i_8_n_0\ : STD_LOGIC;
  signal \pilot_symbols[16]_i_9_n_0\ : STD_LOGIC;
  signal \pilot_symbols[24]_i_2_n_0\ : STD_LOGIC;
  signal \pilot_symbols[24]_i_3_n_0\ : STD_LOGIC;
  signal \pilot_symbols[24]_i_4_n_0\ : STD_LOGIC;
  signal \pilot_symbols[24]_i_5_n_0\ : STD_LOGIC;
  signal \pilot_symbols[24]_i_6_n_0\ : STD_LOGIC;
  signal \pilot_symbols[24]_i_7_n_0\ : STD_LOGIC;
  signal \pilot_symbols[24]_i_8_n_0\ : STD_LOGIC;
  signal \pilot_symbols[24]_i_9_n_0\ : STD_LOGIC;
  signal \pilot_symbols[8]_i_2_n_0\ : STD_LOGIC;
  signal \pilot_symbols[8]_i_3_n_0\ : STD_LOGIC;
  signal \pilot_symbols[8]_i_4_n_0\ : STD_LOGIC;
  signal \pilot_symbols[8]_i_5_n_0\ : STD_LOGIC;
  signal \pilot_symbols[8]_i_6_n_0\ : STD_LOGIC;
  signal \pilot_symbols[8]_i_7_n_0\ : STD_LOGIC;
  signal \pilot_symbols[8]_i_8_n_0\ : STD_LOGIC;
  signal \pilot_symbols[8]_i_9_n_0\ : STD_LOGIC;
  signal pilot_symbols_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \pilot_symbols_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \pilot_symbols_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \pilot_symbols_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \pilot_symbols_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \pilot_symbols_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \pilot_symbols_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \pilot_symbols_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \pilot_symbols_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \pilot_symbols_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \pilot_symbols_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \pilot_symbols_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \pilot_symbols_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \pilot_symbols_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \pilot_symbols_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \pilot_symbols_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \pilot_symbols_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \pilot_symbols_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \pilot_symbols_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \pilot_symbols_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \pilot_symbols_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \pilot_symbols_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \pilot_symbols_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \pilot_symbols_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \pilot_symbols_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \pilot_symbols_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \pilot_symbols_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \pilot_symbols_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \pilot_symbols_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \pilot_symbols_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \pilot_symbols_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \pilot_symbols_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \pilot_symbols_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \pilot_symbols_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \pilot_symbols_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \pilot_symbols_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \pilot_symbols_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \pilot_symbols_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \pilot_symbols_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \pilot_symbols_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \pilot_symbols_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \pilot_symbols_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \pilot_symbols_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \pilot_symbols_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \pilot_symbols_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \pilot_symbols_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \pilot_symbols_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \pilot_symbols_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \pilot_symbols_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \pilot_symbols_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \pilot_symbols_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \pilot_symbols_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \pilot_symbols_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \pilot_symbols_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \pilot_symbols_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \pilot_symbols_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \pilot_symbols_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \pilot_symbols_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \pilot_symbols_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \pilot_symbols_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \pilot_symbols_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \pilot_symbols_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \pilot_symbols_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \pilot_symbols_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \pilot_symbols_reg__0\ : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \preamble_lts_ROM[0]0\ : STD_LOGIC;
  signal \^scrambler_control_enable\ : STD_LOGIC;
  signal \scrambler_din_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \scrambler_din_data[10]_i_2_n_0\ : STD_LOGIC;
  signal \scrambler_din_data[11]_i_2_n_0\ : STD_LOGIC;
  signal \scrambler_din_data[11]_i_3_n_0\ : STD_LOGIC;
  signal \scrambler_din_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \scrambler_din_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \scrambler_din_data[31]_i_2_n_0\ : STD_LOGIC;
  signal \scrambler_din_data[31]_i_3_n_0\ : STD_LOGIC;
  signal \scrambler_din_data[31]_i_4_n_0\ : STD_LOGIC;
  signal \scrambler_din_data[31]_i_5_n_0\ : STD_LOGIC;
  signal \scrambler_din_data[31]_i_6_n_0\ : STD_LOGIC;
  signal \scrambler_din_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \scrambler_din_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \scrambler_din_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \scrambler_din_data[6]_i_2_n_0\ : STD_LOGIC;
  signal \scrambler_din_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \scrambler_din_data[8]_i_2_n_0\ : STD_LOGIC;
  signal \scrambler_din_data[9]_i_2_n_0\ : STD_LOGIC;
  signal scrambler_din_last_i_1_n_0 : STD_LOGIC;
  signal scrambler_din_valid_i_1_n_0 : STD_LOGIC;
  signal scrambler_last_frame_i_1_n_0 : STD_LOGIC;
  signal signal_field_en : STD_LOGIC;
  signal signal_field_en_i_1_n_0 : STD_LOGIC;
  signal splitter_data_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_10_n_0\ : STD_LOGIC;
  signal \state[2]_i_11_n_0\ : STD_LOGIC;
  signal \state[2]_i_12_n_0\ : STD_LOGIC;
  signal \state[2]_i_13_n_0\ : STD_LOGIC;
  signal \state[2]_i_14_n_0\ : STD_LOGIC;
  signal \state[2]_i_15_n_0\ : STD_LOGIC;
  signal \state[2]_i_16_n_0\ : STD_LOGIC;
  signal \state[2]_i_17_n_0\ : STD_LOGIC;
  signal \state[2]_i_18_n_0\ : STD_LOGIC;
  signal \state[2]_i_19_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_4_n_0\ : STD_LOGIC;
  signal \state[2]_i_6_n_0\ : STD_LOGIC;
  signal \state[2]_i_7_n_0\ : STD_LOGIC;
  signal \state[2]_i_8_n_0\ : STD_LOGIC;
  signal \state[2]_i_9_n_0\ : STD_LOGIC;
  signal \state_reg[2]_i_3_n_4\ : STD_LOGIC;
  signal \state_reg[2]_i_3_n_5\ : STD_LOGIC;
  signal \state_reg[2]_i_3_n_6\ : STD_LOGIC;
  signal \state_reg[2]_i_3_n_7\ : STD_LOGIC;
  signal \state_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \state_reg[2]_i_5_n_1\ : STD_LOGIC;
  signal \state_reg[2]_i_5_n_2\ : STD_LOGIC;
  signal \state_reg[2]_i_5_n_3\ : STD_LOGIC;
  signal \state_reg[2]_i_5_n_4\ : STD_LOGIC;
  signal \state_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \state_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \state_reg[2]_i_5_n_7\ : STD_LOGIC;
  signal \symbol_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \symbol_counter[6]_i_2_n_0\ : STD_LOGIC;
  signal \symbol_counter[6]_i_3_n_0\ : STD_LOGIC;
  signal \symbol_counter[9]_i_2_n_0\ : STD_LOGIC;
  signal symbol_counter_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal temp_i_1_n_0 : STD_LOGIC;
  signal temp_i_2_n_0 : STD_LOGIC;
  signal temp_i_3_n_0 : STD_LOGIC;
  signal temp_i_4_n_0 : STD_LOGIC;
  signal temp_i_5_n_0 : STD_LOGIC;
  signal temp_i_6_n_0 : STD_LOGIC;
  signal temp_reg_n_0 : STD_LOGIC;
  signal \NLW_pilot_symbols_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_state_reg[2]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_state_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_state_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of control_unit_dout_ready_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of control_unit_enable_i_2 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of control_unit_enable_i_3 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \control_unit_states.i[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \control_unit_states.i[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \control_unit_states.i[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \control_unit_states.i[3]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \control_unit_states.i[3]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \control_unit_states.k[0]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \control_unit_states.k[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \control_unit_states.k[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \control_unit_states.k[4]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \control_unit_states.k[5]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \control_unit_states.k[6]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \control_unit_states.n[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \control_unit_states.n[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \control_unit_states.n[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \control_unit_states.n[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of data_process_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_splitter.index[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_splitter.index[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_splitter.index[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_splitter.index[5]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_splitter.index[5]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \dpd_din_data_I[10]_i_6\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \dpd_din_data_I[11]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of dpd_din_valid_i_2 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \mapper_din_data[0]_i_14\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mapper_din_data[0]_i_17\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \mapper_din_data[0]_i_27\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \mapper_din_data[0]_i_29\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \mapper_din_data[0]_i_31\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \mapper_din_data[0]_i_32\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \mapper_din_data[0]_i_33\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \mapper_din_data[0]_i_35\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \mapper_din_data[0]_i_38\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \mapper_din_data[0]_i_39\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \mapper_din_data[0]_i_41\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \mapper_din_data[1]_i_11\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \mapper_din_data[1]_i_17\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \mapper_din_data[1]_i_18\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \mapper_din_data[1]_i_19\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mapper_din_data[1]_i_23\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \mapper_din_data[1]_i_27\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \mapper_din_data[2]_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \mapper_din_data[3]_i_12\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \mapper_din_data[3]_i_16\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \mapper_din_data[3]_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \mapper_din_data[3]_i_9\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \mapper_din_data[4]_i_13\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \mapper_din_data[4]_i_14\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \mapper_din_data[4]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \mapper_din_data[4]_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \mapper_din_data[4]_i_8\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \mapper_din_data[4]_i_9\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \mapper_din_data[5]_i_15\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \mapper_din_data[5]_i_16\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \mapper_din_data[5]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \mapper_din_data[5]_i_5\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \mapper_din_data[5]_i_7\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of mapper_din_valid_i_2 : label is "soft_lutpair38";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \pilot_symbols_reg[0]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \pilot_symbols_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \pilot_symbols_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \pilot_symbols_reg[8]_i_1\ : label is 16;
  attribute SOFT_HLUTNM of \scrambler_din_data[0]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \scrambler_din_data[10]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \scrambler_din_data[11]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \scrambler_din_data[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \scrambler_din_data[2]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \scrambler_din_data[31]_i_5\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \scrambler_din_data[31]_i_6\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \scrambler_din_data[3]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \scrambler_din_data[4]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \scrambler_din_data[5]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \scrambler_din_data[6]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \scrambler_din_data[7]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \scrambler_din_data[8]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \scrambler_din_data[9]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of scrambler_din_valid_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of scrambler_last_frame_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of signal_field_en_i_1 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \state[2]_i_4\ : label is "soft_lutpair16";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \state_reg[2]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \state_reg[2]_i_5\ : label is 11;
  attribute SOFT_HLUTNM of \symbol_counter[1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \symbol_counter[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \symbol_counter[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \symbol_counter[5]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \symbol_counter[6]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \symbol_counter[9]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of temp_i_5 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of temp_i_6 : label is "soft_lutpair2";
begin
  control_unit_enable <= \^control_unit_enable\;
  dpd_din_data_I(11) <= \^dpd_din_data_i\(11);
  dpd_din_data_I(10) <= \^dpd_din_data_i\(9);
  dpd_din_data_I(9) <= \^dpd_din_data_i\(9);
  dpd_din_data_I(8) <= \^dpd_din_data_i\(9);
  dpd_din_data_I(7) <= \^dpd_din_data_i\(9);
  dpd_din_data_I(6) <= \^dpd_din_data_i\(9);
  dpd_din_data_I(5) <= \^dpd_din_data_i\(9);
  dpd_din_data_I(4) <= \^dpd_din_data_i\(9);
  dpd_din_data_I(3) <= \^dpd_din_data_i\(9);
  dpd_din_data_I(2) <= \^dpd_din_data_i\(9);
  dpd_din_data_I(1) <= \^dpd_din_data_i\(9);
  dpd_din_data_I(0) <= \<const0>\;
  dpd_din_data_Q(11) <= \<const0>\;
  dpd_din_data_Q(10) <= \<const0>\;
  dpd_din_data_Q(9) <= \<const0>\;
  dpd_din_data_Q(8) <= \<const0>\;
  dpd_din_data_Q(7) <= \<const0>\;
  dpd_din_data_Q(6) <= \<const0>\;
  dpd_din_data_Q(5) <= \<const0>\;
  dpd_din_data_Q(4) <= \<const0>\;
  dpd_din_data_Q(3) <= \<const0>\;
  dpd_din_data_Q(2) <= \<const0>\;
  dpd_din_data_Q(1) <= \<const0>\;
  dpd_din_data_Q(0) <= \<const0>\;
  interleaver_din_ready <= \^interleaver_din_ready\;
  scrambler_control_enable <= \^scrambler_control_enable\;
  scrambler_din_valid <= \^scrambler_control_enable\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
control_unit_dout_ready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      O => control_unit_dout_ready_i_1_n_0
    );
control_unit_dout_ready_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => control_unit_dout_ready_i_1_n_0,
      Q => control_unit_dout_ready
    );
control_unit_enable_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF4F0000004F"
    )
        port map (
      I0 => state(2),
      I1 => start_tx,
      I2 => control_unit_enable_i_2_n_0,
      I3 => control_unit_enable_i_3_n_0,
      I4 => reset,
      I5 => \^control_unit_enable\,
      O => control_unit_enable_i_1_n_0
    );
control_unit_enable_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => state(2),
      I1 => mapper_dout_last,
      I2 => dpd_din_data_I1,
      O => control_unit_enable_i_2_n_0
    );
control_unit_enable_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => control_unit_enable_i_3_n_0
    );
control_unit_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => control_unit_enable_i_1_n_0,
      Q => \^control_unit_enable\,
      R => '0'
    );
\control_unit_states.i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11133333"
    )
        port map (
      I0 => state(0),
      I1 => \control_unit_states.i_reg_n_0_[0]\,
      I2 => \control_unit_states.i_reg_n_0_[2]\,
      I3 => \control_unit_states.i_reg_n_0_[1]\,
      I4 => \control_unit_states.i_reg_n_0_[3]\,
      O => \control_unit_states.i[0]_i_1_n_0\
    );
\control_unit_states.i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"070F7070"
    )
        port map (
      I0 => \control_unit_states.i_reg_n_0_[3]\,
      I1 => state(0),
      I2 => \control_unit_states.i_reg_n_0_[1]\,
      I3 => \control_unit_states.i_reg_n_0_[2]\,
      I4 => \control_unit_states.i_reg_n_0_[0]\,
      O => \control_unit_states.i[1]_i_1_n_0\
    );
\control_unit_states.i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07770888"
    )
        port map (
      I0 => \control_unit_states.i_reg_n_0_[0]\,
      I1 => \control_unit_states.i_reg_n_0_[1]\,
      I2 => \control_unit_states.i_reg_n_0_[3]\,
      I3 => state(0),
      I4 => \control_unit_states.i_reg_n_0_[2]\,
      O => \control_unit_states.i[2]_i_1_n_0\
    );
\control_unit_states.i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002FF0202"
    )
        port map (
      I0 => \control_unit_states.i[3]_i_3_n_0\,
      I1 => state(2),
      I2 => state(1),
      I3 => \control_unit_states.i[3]_i_4_n_0\,
      I4 => \control_unit_states.i[3]_i_5_n_0\,
      I5 => reset,
      O => i0
    );
\control_unit_states.i[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05807F80"
    )
        port map (
      I0 => \control_unit_states.i_reg_n_0_[1]\,
      I1 => \control_unit_states.i_reg_n_0_[0]\,
      I2 => \control_unit_states.i_reg_n_0_[2]\,
      I3 => \control_unit_states.i_reg_n_0_[3]\,
      I4 => state(0),
      O => \control_unit_states.i[3]_i_2_n_0\
    );
\control_unit_states.i[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FD550000"
    )
        port map (
      I0 => \dpd_din_data_I[11]_i_3_n_0\,
      I1 => \control_unit_states.i_reg_n_0_[2]\,
      I2 => \control_unit_states.i_reg_n_0_[1]\,
      I3 => \control_unit_states.i_reg_n_0_[3]\,
      I4 => state(0),
      I5 => \control_unit_states.k_reg_n_0_[6]\,
      O => \control_unit_states.i[3]_i_3_n_0\
    );
\control_unit_states.i[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \dpd_din_data_I[11]_i_3_n_0\,
      I1 => \control_unit_states.k_reg_n_0_[6]\,
      O => \control_unit_states.i[3]_i_4_n_0\
    );
\control_unit_states.i[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      I3 => \control_unit_states.i_reg_n_0_[3]\,
      I4 => \control_unit_states.i_reg_n_0_[1]\,
      I5 => \control_unit_states.i_reg_n_0_[2]\,
      O => \control_unit_states.i[3]_i_5_n_0\
    );
\control_unit_states.i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0,
      D => \control_unit_states.i[0]_i_1_n_0\,
      Q => \control_unit_states.i_reg_n_0_[0]\,
      R => '0'
    );
\control_unit_states.i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0,
      D => \control_unit_states.i[1]_i_1_n_0\,
      Q => \control_unit_states.i_reg_n_0_[1]\,
      R => '0'
    );
\control_unit_states.i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0,
      D => \control_unit_states.i[2]_i_1_n_0\,
      Q => \control_unit_states.i_reg_n_0_[2]\,
      R => '0'
    );
\control_unit_states.i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => i0,
      D => \control_unit_states.i[3]_i_2_n_0\,
      Q => \control_unit_states.i_reg_n_0_[3]\,
      R => '0'
    );
\control_unit_states.k[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => state(0),
      I1 => \control_unit_states.k_reg_n_0_[6]\,
      I2 => \control_unit_states.k_reg_n_0_[0]\,
      O => \control_unit_states.k[0]_i_1_n_0\
    );
\control_unit_states.k[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0770"
    )
        port map (
      I0 => \control_unit_states.k_reg_n_0_[6]\,
      I1 => state(0),
      I2 => \control_unit_states.k_reg_n_0_[0]\,
      I3 => \control_unit_states.k_reg_n_0_[1]\,
      O => \control_unit_states.k[1]_i_1_n_0\
    );
\control_unit_states.k[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07777000"
    )
        port map (
      I0 => \control_unit_states.k_reg_n_0_[6]\,
      I1 => state(0),
      I2 => \control_unit_states.k_reg_n_0_[1]\,
      I3 => \control_unit_states.k_reg_n_0_[0]\,
      I4 => \control_unit_states.k_reg_n_0_[2]\,
      O => \control_unit_states.k[2]_i_1_n_0\
    );
\control_unit_states.k[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F7F7F00808080"
    )
        port map (
      I0 => \control_unit_states.k_reg_n_0_[1]\,
      I1 => \control_unit_states.k_reg_n_0_[0]\,
      I2 => \control_unit_states.k_reg_n_0_[2]\,
      I3 => state(0),
      I4 => \control_unit_states.k_reg_n_0_[6]\,
      I5 => \control_unit_states.k_reg_n_0_[3]\,
      O => \control_unit_states.k[3]_i_1_n_0\
    );
\control_unit_states.k[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \control_unit_states.k_reg_n_0_[2]\,
      I1 => \control_unit_states.k_reg_n_0_[0]\,
      I2 => \control_unit_states.k_reg_n_0_[1]\,
      I3 => \control_unit_states.k_reg_n_0_[3]\,
      I4 => \control_unit_states.k[4]_i_2_n_0\,
      I5 => \control_unit_states.k_reg_n_0_[4]\,
      O => \control_unit_states.k[4]_i_1_n_0\
    );
\control_unit_states.k[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \control_unit_states.k_reg_n_0_[6]\,
      I1 => state(0),
      O => \control_unit_states.k[4]_i_2_n_0\
    );
\control_unit_states.k[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A15"
    )
        port map (
      I0 => \control_unit_states.k[5]_i_2_n_0\,
      I1 => state(0),
      I2 => \control_unit_states.k_reg_n_0_[6]\,
      I3 => \control_unit_states.k_reg_n_0_[5]\,
      O => \control_unit_states.k[5]_i_1_n_0\
    );
\control_unit_states.k[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \control_unit_states.k_reg_n_0_[3]\,
      I1 => \control_unit_states.k_reg_n_0_[1]\,
      I2 => \control_unit_states.k_reg_n_0_[0]\,
      I3 => \control_unit_states.k_reg_n_0_[2]\,
      I4 => \control_unit_states.k_reg_n_0_[4]\,
      O => \control_unit_states.k[5]_i_2_n_0\
    );
\control_unit_states.k[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040406"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      I3 => \control_unit_states.i_reg_n_0_[3]\,
      I4 => dpd_din_valid_i_2_n_0,
      I5 => reset,
      O => k0
    );
\control_unit_states.k[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \dpd_din_data_I[11]_i_3_n_0\,
      I1 => \control_unit_states.k_reg_n_0_[6]\,
      I2 => state(0),
      O => \control_unit_states.k[6]_i_2_n_0\
    );
\control_unit_states.k_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => k0,
      D => \control_unit_states.k[0]_i_1_n_0\,
      Q => \control_unit_states.k_reg_n_0_[0]\,
      R => '0'
    );
\control_unit_states.k_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => k0,
      D => \control_unit_states.k[1]_i_1_n_0\,
      Q => \control_unit_states.k_reg_n_0_[1]\,
      R => '0'
    );
\control_unit_states.k_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => k0,
      D => \control_unit_states.k[2]_i_1_n_0\,
      Q => \control_unit_states.k_reg_n_0_[2]\,
      R => '0'
    );
\control_unit_states.k_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => k0,
      D => \control_unit_states.k[3]_i_1_n_0\,
      Q => \control_unit_states.k_reg_n_0_[3]\,
      R => '0'
    );
\control_unit_states.k_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => k0,
      D => \control_unit_states.k[4]_i_1_n_0\,
      Q => \control_unit_states.k_reg_n_0_[4]\,
      R => '0'
    );
\control_unit_states.k_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => k0,
      D => \control_unit_states.k[5]_i_1_n_0\,
      Q => \control_unit_states.k_reg_n_0_[5]\,
      R => '0'
    );
\control_unit_states.k_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => k0,
      D => \control_unit_states.k[6]_i_2_n_0\,
      Q => \control_unit_states.k_reg_n_0_[6]\,
      R => '0'
    );
\control_unit_states.n[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_unit_din_valid,
      I1 => \control_unit_states.n_reg_n_0_[3]\,
      I2 => \control_unit_states.n_reg_n_0_[0]\,
      O => \control_unit_states.n[0]_i_1_n_0\
    );
\control_unit_states.n[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => \control_unit_states.n_reg_n_0_[3]\,
      I1 => control_unit_din_valid,
      I2 => \control_unit_states.n_reg_n_0_[0]\,
      I3 => \control_unit_states.n_reg_n_0_[1]\,
      O => \control_unit_states.n[1]_i_1_n_0\
    );
\control_unit_states.n[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00700080"
    )
        port map (
      I0 => \control_unit_states.n_reg_n_0_[0]\,
      I1 => \control_unit_states.n_reg_n_0_[1]\,
      I2 => control_unit_din_valid,
      I3 => \control_unit_states.n_reg_n_0_[3]\,
      I4 => \control_unit_states.n_reg_n_0_[2]\,
      O => \control_unit_states.n[2]_i_1_n_0\
    );
\control_unit_states.n[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \control_unit_states.n_reg_n_0_[3]\,
      I1 => control_unit_din_valid,
      I2 => \control_unit_states.n_reg_n_0_[2]\,
      I3 => \control_unit_states.n_reg_n_0_[1]\,
      I4 => \control_unit_states.n_reg_n_0_[0]\,
      O => \control_unit_states.n[3]_i_1_n_0\
    );
\control_unit_states.n_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => encoder_code_rate0,
      D => \control_unit_states.n[0]_i_1_n_0\,
      Q => \control_unit_states.n_reg_n_0_[0]\,
      R => '0'
    );
\control_unit_states.n_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => encoder_code_rate0,
      D => \control_unit_states.n[1]_i_1_n_0\,
      Q => \control_unit_states.n_reg_n_0_[1]\,
      R => '0'
    );
\control_unit_states.n_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => encoder_code_rate0,
      D => \control_unit_states.n[2]_i_1_n_0\,
      Q => \control_unit_states.n_reg_n_0_[2]\,
      R => '0'
    );
\control_unit_states.n_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => encoder_code_rate0,
      D => \control_unit_states.n[3]_i_1_n_0\,
      Q => \control_unit_states.n_reg_n_0_[3]\,
      R => '0'
    );
data_process_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FB00"
    )
        port map (
      I0 => interleaver_din_ready_i_3_n_0,
      I1 => temp_reg_n_0,
      I2 => interleaver_dout_valid,
      I3 => data_process_reg_n_0,
      I4 => reset,
      O => data_process_i_1_n_0
    );
data_process_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data_process_i_1_n_0,
      Q => data_process_reg_n_0,
      S => interleaver_din_ready015_out
    );
\data_splitter.index[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => interleaver_dout_valid,
      I1 => data_process_reg_n_0,
      I2 => \data_splitter.index_reg\(0),
      O => \p_0_in__0\(0)
    );
\data_splitter.index[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0220"
    )
        port map (
      I0 => data_process_reg_n_0,
      I1 => interleaver_dout_valid,
      I2 => \data_splitter.index_reg\(0),
      I3 => \data_splitter.index_reg\(1),
      O => \p_0_in__0\(1)
    );
\data_splitter.index[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222000"
    )
        port map (
      I0 => data_process_reg_n_0,
      I1 => interleaver_dout_valid,
      I2 => \data_splitter.index_reg\(1),
      I3 => \data_splitter.index_reg\(0),
      I4 => \data_splitter.index_reg\(2),
      O => \p_0_in__0\(2)
    );
\data_splitter.index[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007800F0"
    )
        port map (
      I0 => \data_splitter.index_reg\(0),
      I1 => \data_splitter.index_reg\(1),
      I2 => \data_splitter.index_reg\(3),
      I3 => \data_splitter.index[5]_i_4_n_0\,
      I4 => \data_splitter.index_reg\(2),
      O => \p_0_in__0\(3)
    );
\data_splitter.index[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1222222222222222"
    )
        port map (
      I0 => \data_splitter.index_reg\(4),
      I1 => \data_splitter.index[5]_i_4_n_0\,
      I2 => \data_splitter.index_reg\(3),
      I3 => \data_splitter.index_reg\(2),
      I4 => \data_splitter.index_reg\(0),
      I5 => \data_splitter.index_reg\(1),
      O => \p_0_in__0\(4)
    );
\data_splitter.index[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => temp_reg_n_0,
      I1 => interleaver_dout_valid,
      I2 => data_process_reg_n_0,
      O => \data_splitter.index[5]_i_1_n_0\
    );
\data_splitter.index[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C6CCCCCC"
    )
        port map (
      I0 => \data_splitter.index_reg\(4),
      I1 => \data_splitter.index_reg\(5),
      I2 => \data_splitter.index[5]_i_3_n_0\,
      I3 => \data_splitter.index_reg\(2),
      I4 => \data_splitter.index_reg\(3),
      I5 => \data_splitter.index[5]_i_4_n_0\,
      O => \p_0_in__0\(5)
    );
\data_splitter.index[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \data_splitter.index_reg\(0),
      I1 => \data_splitter.index_reg\(1),
      O => \data_splitter.index[5]_i_3_n_0\
    );
\data_splitter.index[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => data_process_reg_n_0,
      I1 => interleaver_dout_valid,
      I2 => temp_reg_n_0,
      O => \data_splitter.index[5]_i_4_n_0\
    );
\data_splitter.index_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_splitter.index[5]_i_1_n_0\,
      CLR => reset,
      D => \p_0_in__0\(0),
      Q => \data_splitter.index_reg\(0)
    );
\data_splitter.index_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_splitter.index[5]_i_1_n_0\,
      CLR => reset,
      D => \p_0_in__0\(1),
      Q => \data_splitter.index_reg\(1)
    );
\data_splitter.index_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_splitter.index[5]_i_1_n_0\,
      CLR => reset,
      D => \p_0_in__0\(2),
      Q => \data_splitter.index_reg\(2)
    );
\data_splitter.index_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_splitter.index[5]_i_1_n_0\,
      CLR => reset,
      D => \p_0_in__0\(3),
      Q => \data_splitter.index_reg\(3)
    );
\data_splitter.index_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_splitter.index[5]_i_1_n_0\,
      CLR => reset,
      D => \p_0_in__0\(4),
      Q => \data_splitter.index_reg\(4)
    );
\data_splitter.index_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_splitter.index[5]_i_1_n_0\,
      CLR => reset,
      D => \p_0_in__0\(5),
      Q => \data_splitter.index_reg\(5)
    );
\dpd_din_data_I[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAEAAA"
    )
        port map (
      I0 => \dpd_din_data_I[10]_i_2_n_0\,
      I1 => \dpd_din_data_I[11]_i_3_n_0\,
      I2 => \dpd_din_data_I[10]_i_3_n_0\,
      I3 => state(0),
      I4 => state(1),
      I5 => state(2),
      O => \dpd_din_data_I[10]_i_1_n_0\
    );
\dpd_din_data_I[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF04040404040404"
    )
        port map (
      I0 => control_unit_enable_i_2_n_0,
      I1 => \pilot_I[0]0\,
      I2 => control_unit_enable_i_3_n_0,
      I3 => \control_unit_states.i[3]_i_4_n_0\,
      I4 => \control_unit_states.i[3]_i_5_n_0\,
      I5 => \preamble_lts_ROM[0]0\,
      O => \dpd_din_data_I[10]_i_2_n_0\
    );
\dpd_din_data_I[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4111144400000000"
    )
        port map (
      I0 => \control_unit_states.k_reg_n_0_[6]\,
      I1 => \control_unit_states.k_reg_n_0_[1]\,
      I2 => \control_unit_states.k_reg_n_0_[4]\,
      I3 => \control_unit_states.k_reg_n_0_[5]\,
      I4 => \control_unit_states.k_reg_n_0_[3]\,
      I5 => \dpd_din_data_I[10]_i_6_n_0\,
      O => \dpd_din_data_I[10]_i_3_n_0\
    );
\dpd_din_data_I[10]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \control_unit_states.i_reg_n_0_[2]\,
      I1 => \control_unit_states.i_reg_n_0_[1]\,
      I2 => \control_unit_states.i_reg_n_0_[3]\,
      O => \dpd_din_data_I[10]_i_6_n_0\
    );
\dpd_din_data_I[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAEA"
    )
        port map (
      I0 => \dpd_din_data_I[11]_i_2_n_0\,
      I1 => state(1),
      I2 => \control_unit_states.k_reg_n_0_[6]\,
      I3 => \dpd_din_data_I[11]_i_3_n_0\,
      I4 => \dpd_din_data_I[11]_i_4_n_0\,
      O => \dpd_din_data_I[11]_i_1_n_0\
    );
\dpd_din_data_I[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8FFE8"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => \dpd_din_data_I[11]_i_5_n_0\,
      I4 => \dpd_din_data_I_reg[11]_i_6_n_0\,
      I5 => \control_unit_states.i[3]_i_3_n_0\,
      O => \dpd_din_data_I[11]_i_2_n_0\
    );
\dpd_din_data_I[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \control_unit_states.k_reg_n_0_[4]\,
      I1 => \control_unit_states.k_reg_n_0_[2]\,
      I2 => \control_unit_states.k_reg_n_0_[0]\,
      I3 => \control_unit_states.k_reg_n_0_[1]\,
      I4 => \control_unit_states.k_reg_n_0_[3]\,
      I5 => \control_unit_states.k_reg_n_0_[5]\,
      O => \dpd_din_data_I[11]_i_3_n_0\
    );
\dpd_din_data_I[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE00FFEEEE00F0"
    )
        port map (
      I0 => \control_unit_states.i_reg_n_0_[3]\,
      I1 => dpd_din_valid_i_2_n_0,
      I2 => control_unit_enable_i_2_n_0,
      I3 => state(0),
      I4 => state(1),
      I5 => \dpd_din_data_I_reg[11]_i_7_n_0\,
      O => \dpd_din_data_I[11]_i_4_n_0\
    );
\dpd_din_data_I[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A950000"
    )
        port map (
      I0 => \control_unit_states.k_reg_n_0_[3]\,
      I1 => \control_unit_states.k_reg_n_0_[5]\,
      I2 => \control_unit_states.k_reg_n_0_[4]\,
      I3 => \control_unit_states.k_reg_n_0_[1]\,
      I4 => state(0),
      O => \dpd_din_data_I[11]_i_5_n_0\
    );
\dpd_din_data_I_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => \dpd_din_data_I[10]_i_1_n_0\,
      Q => \^dpd_din_data_i\(9),
      R => '0'
    );
\dpd_din_data_I_reg[10]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b1_n_0,
      I1 => g1_b1_n_0,
      O => \pilot_I[0]0\,
      S => pilot_symbols_reg(6)
    );
\dpd_din_data_I_reg[10]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__0_n_0\,
      I1 => \g1_b1__0_n_0\,
      O => \preamble_lts_ROM[0]0\,
      S => \control_unit_states.k_reg_n_0_[6]\
    );
\dpd_din_data_I_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => \dpd_din_data_I[11]_i_1_n_0\,
      Q => \^dpd_din_data_i\(11),
      R => '0'
    );
\dpd_din_data_I_reg[11]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__0_n_0\,
      I1 => \g1_b2__0_n_0\,
      O => \dpd_din_data_I_reg[11]_i_6_n_0\,
      S => \control_unit_states.k_reg_n_0_[6]\
    );
\dpd_din_data_I_reg[11]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b2_n_0,
      I1 => g1_b2_n_0,
      O => \dpd_din_data_I_reg[11]_i_7_n_0\,
      S => pilot_symbols_reg(6)
    );
dpd_din_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010101310131013D"
    )
        port map (
      I0 => control_unit_enable_i_2_n_0,
      I1 => state(1),
      I2 => state(0),
      I3 => state(2),
      I4 => \control_unit_states.i_reg_n_0_[3]\,
      I5 => dpd_din_valid_i_2_n_0,
      O => dpd_din_valid_i_1_n_0
    );
dpd_din_valid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \control_unit_states.i_reg_n_0_[1]\,
      I1 => \control_unit_states.i_reg_n_0_[2]\,
      O => dpd_din_valid_i_2_n_0
    );
dpd_din_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => dpd_din_valid_i_1_n_0,
      Q => dpd_din_valid
    );
\encoder_code_rate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => state(2),
      I1 => reset,
      I2 => state(1),
      I3 => state(0),
      O => encoder_code_rate0
    );
\encoder_code_rate_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => encoder_code_rate0,
      D => mod_cod_schemes(0),
      Q => encoder_code_rate(0),
      R => '0'
    );
\encoder_code_rate_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => encoder_code_rate0,
      D => mod_cod_schemes(1),
      Q => encoder_code_rate(1),
      R => '0'
    );
encoder_reset_fifos_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => reset,
      Q => encoder_reset_fifos
    );
g0_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"926EFBFA8391B4B6"
    )
        port map (
      I0 => pilot_symbols_reg(0),
      I1 => pilot_symbols_reg(1),
      I2 => pilot_symbols_reg(2),
      I3 => pilot_symbols_reg(3),
      I4 => pilot_symbols_reg(4),
      I5 => pilot_symbols_reg(5),
      O => g0_b1_n_0
    );
\g0_b1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5455BD96FE28E8DF"
    )
        port map (
      I0 => \control_unit_states.k_reg_n_0_[0]\,
      I1 => \control_unit_states.k_reg_n_0_[1]\,
      I2 => \control_unit_states.k_reg_n_0_[2]\,
      I3 => \control_unit_states.k_reg_n_0_[3]\,
      I4 => \control_unit_states.k_reg_n_0_[4]\,
      I5 => \control_unit_states.k_reg_n_0_[5]\,
      O => \g0_b1__0_n_0\
    );
g0_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6D9104057C6E4B49"
    )
        port map (
      I0 => pilot_symbols_reg(0),
      I1 => pilot_symbols_reg(1),
      I2 => pilot_symbols_reg(2),
      I3 => pilot_symbols_reg(3),
      I4 => pilot_symbols_reg(4),
      I5 => pilot_symbols_reg(5),
      O => g0_b2_n_0
    );
\g0_b2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAA426901D71720"
    )
        port map (
      I0 => \control_unit_states.k_reg_n_0_[0]\,
      I1 => \control_unit_states.k_reg_n_0_[1]\,
      I2 => \control_unit_states.k_reg_n_0_[2]\,
      I3 => \control_unit_states.k_reg_n_0_[3]\,
      I4 => \control_unit_states.k_reg_n_0_[4]\,
      I5 => \control_unit_states.k_reg_n_0_[5]\,
      O => \g0_b2__0_n_0\
    );
g1_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"344C809BD21506D2"
    )
        port map (
      I0 => pilot_symbols_reg(0),
      I1 => pilot_symbols_reg(1),
      I2 => pilot_symbols_reg(2),
      I3 => pilot_symbols_reg(3),
      I4 => pilot_symbols_reg(4),
      I5 => pilot_symbols_reg(5),
      O => g1_b1_n_0
    );
\g1_b1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C4BBB6C6D958D5D"
    )
        port map (
      I0 => \control_unit_states.k_reg_n_0_[0]\,
      I1 => \control_unit_states.k_reg_n_0_[1]\,
      I2 => \control_unit_states.k_reg_n_0_[2]\,
      I3 => \control_unit_states.k_reg_n_0_[3]\,
      I4 => \control_unit_states.k_reg_n_0_[4]\,
      I5 => \control_unit_states.k_reg_n_0_[5]\,
      O => \g1_b1__0_n_0\
    );
g1_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CBB37F642DEAF92D"
    )
        port map (
      I0 => pilot_symbols_reg(0),
      I1 => pilot_symbols_reg(1),
      I2 => pilot_symbols_reg(2),
      I3 => pilot_symbols_reg(3),
      I4 => pilot_symbols_reg(4),
      I5 => pilot_symbols_reg(5),
      O => g1_b2_n_0
    );
\g1_b2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3B44493926A72A2"
    )
        port map (
      I0 => \control_unit_states.k_reg_n_0_[0]\,
      I1 => \control_unit_states.k_reg_n_0_[1]\,
      I2 => \control_unit_states.k_reg_n_0_[2]\,
      I3 => \control_unit_states.k_reg_n_0_[3]\,
      I4 => \control_unit_states.k_reg_n_0_[4]\,
      I5 => \control_unit_states.k_reg_n_0_[5]\,
      O => \g1_b2__0_n_0\
    );
interleaver_din_ready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => temp_reg_n_0,
      I1 => interleaver_dout_valid,
      I2 => reset,
      I3 => data_process_reg_n_0,
      O => interleaver_din_ready015_out
    );
interleaver_din_ready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FF0000F4FF"
    )
        port map (
      I0 => interleaver_din_ready_i_3_n_0,
      I1 => temp_reg_n_0,
      I2 => interleaver_dout_valid,
      I3 => data_process_reg_n_0,
      I4 => reset,
      I5 => \^interleaver_din_ready\,
      O => interleaver_din_ready_i_2_n_0
    );
interleaver_din_ready_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA2AAA"
    )
        port map (
      I0 => interleaver_last_frame,
      I1 => symbol_counter_reg(8),
      I2 => symbol_counter_reg(7),
      I3 => symbol_counter_reg(9),
      I4 => dpd_din_data_I1,
      O => interleaver_din_ready_i_3_n_0
    );
interleaver_din_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => interleaver_din_ready_i_2_n_0,
      Q => \^interleaver_din_ready\,
      R => interleaver_din_ready015_out
    );
\mapper_din_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \mapper_din_data[0]_i_2_n_0\,
      I1 => \mapper_din_data[0]_i_3_n_0\,
      I2 => \mapper_din_data[0]_i_4_n_0\,
      I3 => \mapper_din_data[0]_i_5_n_0\,
      I4 => \mapper_din_data[0]_i_6_n_0\,
      I5 => \mapper_din_data[0]_i_7_n_0\,
      O => \mapper_din_data[0]_i_1_n_0\
    );
\mapper_din_data[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAAAEAEAAAAA"
    )
        port map (
      I0 => \mapper_din_data[0]_i_30_n_0\,
      I1 => splitter_data_in(21),
      I2 => \mapper_din_data[0]_i_31_n_0\,
      I3 => \mapper_din_data[0]_i_32_n_0\,
      I4 => \mapper_din_data[0]_i_33_n_0\,
      I5 => splitter_data_in(22),
      O => \mapper_din_data[0]_i_10_n_0\
    );
\mapper_din_data[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \mapper_din_data[0]_i_34_n_0\,
      I1 => \mapper_din_data[1]_i_23_n_0\,
      I2 => splitter_data_in(0),
      I3 => \mapper_din_data[1]_i_19_n_0\,
      I4 => \mapper_din_data[0]_i_13_n_0\,
      I5 => splitter_data_in(26),
      O => \mapper_din_data[0]_i_11_n_0\
    );
\mapper_din_data[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => splitter_data_in(16),
      I1 => \mapper_din_data[1]_i_14_n_0\,
      I2 => splitter_data_in(8),
      I3 => \mapper_din_data[1]_i_13_n_0\,
      O => \mapper_din_data[0]_i_12_n_0\
    );
\mapper_din_data[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => mod_cod_schemes(2),
      I1 => mod_cod_schemes(4),
      I2 => mod_cod_schemes(3),
      I3 => \data_splitter.index_reg\(4),
      I4 => \data_splitter.index_reg\(1),
      I5 => \data_splitter.index_reg\(0),
      O => \mapper_din_data[0]_i_13_n_0\
    );
\mapper_din_data[0]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => data_process_reg_n_0,
      I1 => interleaver_dout_valid,
      I2 => temp_reg_n_0,
      I3 => \data_splitter.index_reg\(3),
      I4 => \data_splitter.index_reg\(2),
      O => \mapper_din_data[0]_i_14_n_0\
    );
\mapper_din_data[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C0800000008000"
    )
        port map (
      I0 => splitter_data_in(18),
      I1 => \mapper_din_data[0]_i_33_n_0\,
      I2 => \mapper_din_data[5]_i_15_n_0\,
      I3 => \data_splitter.index_reg\(1),
      I4 => \data_splitter.index_reg\(0),
      I5 => splitter_data_in(17),
      O => \mapper_din_data[0]_i_15_n_0\
    );
\mapper_din_data[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \mapper_din_data[0]_i_35_n_0\,
      I1 => \mapper_din_data[1]_i_23_n_0\,
      I2 => splitter_data_in(16),
      I3 => temp_i_6_n_0,
      I4 => \mapper_din_data[0]_i_27_n_0\,
      I5 => splitter_data_in(15),
      O => \mapper_din_data[0]_i_16_n_0\
    );
\mapper_din_data[0]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C800080"
    )
        port map (
      I0 => splitter_data_in(10),
      I1 => \mapper_din_data[0]_i_36_n_0\,
      I2 => \data_splitter.index_reg\(1),
      I3 => \data_splitter.index_reg\(0),
      I4 => splitter_data_in(9),
      O => \mapper_din_data[0]_i_17_n_0\
    );
\mapper_din_data[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800080008C008000"
    )
        port map (
      I0 => \mapper_din_data[0]_i_37_n_0\,
      I1 => \mapper_din_data[0]_i_27_n_0\,
      I2 => \data_splitter.index_reg\(2),
      I3 => \mapper_din_data[0]_i_38_n_0\,
      I4 => splitter_data_in(11),
      I5 => \data_splitter.index[5]_i_3_n_0\,
      O => \mapper_din_data[0]_i_18_n_0\
    );
\mapper_din_data[0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8080CC808080"
    )
        port map (
      I0 => splitter_data_in(5),
      I1 => \mapper_din_data[0]_i_27_n_0\,
      I2 => \mapper_din_data[0]_i_31_n_0\,
      I3 => \mapper_din_data[0]_i_32_n_0\,
      I4 => splitter_data_in(6),
      I5 => \mapper_din_data[1]_i_25_n_0\,
      O => \mapper_din_data[0]_i_19_n_0\
    );
\mapper_din_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \mapper_din_data[3]_i_4_n_0\,
      I1 => splitter_data_in(5),
      I2 => \mapper_din_data[4]_i_7_n_0\,
      I3 => splitter_data_in(15),
      I4 => \mapper_din_data[0]_i_8_n_0\,
      I5 => \mapper_din_data[0]_i_9_n_0\,
      O => \mapper_din_data[0]_i_2_n_0\
    );
\mapper_din_data[0]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80000080800000"
    )
        port map (
      I0 => \mapper_din_data[0]_i_14_n_0\,
      I1 => \mapper_din_data[1]_i_23_n_0\,
      I2 => splitter_data_in(8),
      I3 => \mapper_din_data[3]_i_16_n_0\,
      I4 => \mapper_din_data[0]_i_27_n_0\,
      I5 => splitter_data_in(7),
      O => \mapper_din_data[0]_i_20_n_0\
    );
\mapper_din_data[0]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80000080800000"
    )
        port map (
      I0 => \mapper_din_data[0]_i_14_n_0\,
      I1 => \mapper_din_data[1]_i_23_n_0\,
      I2 => splitter_data_in(24),
      I3 => \mapper_din_data[3]_i_16_n_0\,
      I4 => \mapper_din_data[0]_i_33_n_0\,
      I5 => splitter_data_in(23),
      O => \mapper_din_data[0]_i_21_n_0\
    );
\mapper_din_data[0]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00800080008000"
    )
        port map (
      I0 => \mapper_din_data[1]_i_23_n_0\,
      I1 => \mapper_din_data[4]_i_9_n_0\,
      I2 => splitter_data_in(20),
      I3 => \mapper_din_data[0]_i_33_n_0\,
      I4 => \mapper_din_data[5]_i_15_n_0\,
      I5 => \mapper_din_data[0]_i_39_n_0\,
      O => \mapper_din_data[0]_i_22_n_0\
    );
\mapper_din_data[0]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F8000000880000"
    )
        port map (
      I0 => \mapper_din_data[0]_i_14_n_0\,
      I1 => splitter_data_in(22),
      I2 => \mapper_din_data[4]_i_9_n_0\,
      I3 => \data_splitter.index[5]_i_3_n_0\,
      I4 => \mapper_din_data[1]_i_17_n_0\,
      I5 => splitter_data_in(14),
      O => \mapper_din_data[0]_i_23_n_0\
    );
\mapper_din_data[0]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \mapper_din_data[0]_i_13_n_0\,
      I1 => \mapper_din_data[5]_i_15_n_0\,
      I2 => splitter_data_in(2),
      I3 => temp_i_6_n_0,
      I4 => \mapper_din_data[0]_i_33_n_0\,
      I5 => splitter_data_in(31),
      O => \mapper_din_data[0]_i_24_n_0\
    );
\mapper_din_data[0]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF400060204000"
    )
        port map (
      I0 => \data_splitter.index_reg\(0),
      I1 => \data_splitter.index_reg\(1),
      I2 => \mapper_din_data[0]_i_40_n_0\,
      I3 => splitter_data_in(26),
      I4 => splitter_data_in(25),
      I5 => \mapper_din_data[4]_i_3_n_0\,
      O => \mapper_din_data[0]_i_25_n_0\
    );
\mapper_din_data[0]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800080008C008000"
    )
        port map (
      I0 => \mapper_din_data[0]_i_41_n_0\,
      I1 => \mapper_din_data[0]_i_33_n_0\,
      I2 => \data_splitter.index_reg\(2),
      I3 => \mapper_din_data[0]_i_38_n_0\,
      I4 => splitter_data_in(27),
      I5 => \data_splitter.index[5]_i_3_n_0\,
      O => \mapper_din_data[0]_i_26_n_0\
    );
\mapper_din_data[0]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \data_splitter.index_reg\(4),
      I1 => mod_cod_schemes(3),
      I2 => mod_cod_schemes(4),
      I3 => mod_cod_schemes(2),
      O => \mapper_din_data[0]_i_27_n_0\
    );
\mapper_din_data[0]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BC8CB080"
    )
        port map (
      I0 => splitter_data_in(3),
      I1 => \data_splitter.index_reg\(0),
      I2 => \data_splitter.index_reg\(1),
      I3 => splitter_data_in(2),
      I4 => splitter_data_in(1),
      O => \mapper_din_data[0]_i_28_n_0\
    );
\mapper_din_data[0]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \data_splitter.index_reg\(1),
      I1 => \data_splitter.index_reg\(0),
      I2 => \data_splitter.index_reg\(2),
      I3 => \data_splitter.index[5]_i_4_n_0\,
      I4 => \data_splitter.index_reg\(3),
      O => \mapper_din_data[0]_i_29_n_0\
    );
\mapper_din_data[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mapper_din_data[1]_i_12_n_0\,
      I1 => splitter_data_in(20),
      I2 => \mapper_din_data[1]_i_8_n_0\,
      I3 => splitter_data_in(28),
      I4 => splitter_data_in(12),
      I5 => \mapper_din_data[1]_i_9_n_0\,
      O => \mapper_din_data[0]_i_3_n_0\
    );
\mapper_din_data[0]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \mapper_din_data[4]_i_13_n_0\,
      I1 => \data_splitter.index_reg\(4),
      I2 => splitter_data_in(30),
      I3 => mod_cod_schemes(3),
      I4 => mod_cod_schemes(2),
      I5 => \mapper_din_data[1]_i_19_n_0\,
      O => \mapper_din_data[0]_i_30_n_0\
    );
\mapper_din_data[0]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \data_splitter.index_reg\(1),
      I1 => \data_splitter.index_reg\(0),
      I2 => \data_splitter.index_reg\(2),
      I3 => \data_splitter.index[5]_i_4_n_0\,
      I4 => \data_splitter.index_reg\(3),
      O => \mapper_din_data[0]_i_31_n_0\
    );
\mapper_din_data[0]_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \data_splitter.index_reg\(0),
      I1 => \data_splitter.index_reg\(1),
      I2 => \data_splitter.index_reg\(2),
      I3 => \data_splitter.index[5]_i_4_n_0\,
      I4 => \data_splitter.index_reg\(3),
      O => \mapper_din_data[0]_i_32_n_0\
    );
\mapper_din_data[0]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \data_splitter.index_reg\(4),
      I1 => mod_cod_schemes(2),
      I2 => mod_cod_schemes(3),
      I3 => mod_cod_schemes(4),
      O => \mapper_din_data[0]_i_33_n_0\
    );
\mapper_din_data[0]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02AA0202020AAA0A"
    )
        port map (
      I0 => \mapper_din_data[5]_i_15_n_0\,
      I1 => \data_splitter.index_reg\(5),
      I2 => \data_splitter.index_reg\(4),
      I3 => mod_cod_schemes(3),
      I4 => mod_cod_schemes(2),
      I5 => mod_cod_schemes(4),
      O => \mapper_din_data[0]_i_34_n_0\
    );
\mapper_din_data[0]_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => mod_cod_schemes(4),
      I1 => mod_cod_schemes(3),
      I2 => mod_cod_schemes(2),
      I3 => \data_splitter.index_reg\(4),
      I4 => \mapper_din_data[5]_i_15_n_0\,
      O => \mapper_din_data[0]_i_35_n_0\
    );
\mapper_din_data[0]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \mapper_din_data[0]_i_27_n_0\,
      I1 => \data_splitter.index_reg\(2),
      I2 => \data_splitter.index_reg\(3),
      I3 => temp_reg_n_0,
      I4 => interleaver_dout_valid,
      I5 => data_process_reg_n_0,
      O => \mapper_din_data[0]_i_36_n_0\
    );
\mapper_din_data[0]_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => splitter_data_in(12),
      I1 => \data_splitter.index_reg\(0),
      I2 => \data_splitter.index_reg\(1),
      I3 => splitter_data_in(14),
      I4 => splitter_data_in(13),
      O => \mapper_din_data[0]_i_37_n_0\
    );
\mapper_din_data[0]_i_38\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \data_splitter.index_reg\(3),
      I1 => temp_reg_n_0,
      I2 => interleaver_dout_valid,
      I3 => data_process_reg_n_0,
      O => \mapper_din_data[0]_i_38_n_0\
    );
\mapper_din_data[0]_i_39\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => splitter_data_in(19),
      I1 => \data_splitter.index_reg\(1),
      I2 => \data_splitter.index_reg\(0),
      O => \mapper_din_data[0]_i_39_n_0\
    );
\mapper_din_data[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
        port map (
      I0 => \mapper_din_data[0]_i_10_n_0\,
      I1 => \mapper_din_data[0]_i_11_n_0\,
      I2 => \mapper_din_data[1]_i_10_n_0\,
      I3 => splitter_data_in(24),
      I4 => \mapper_din_data[0]_i_12_n_0\,
      O => \mapper_din_data[0]_i_4_n_0\
    );
\mapper_din_data[0]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \mapper_din_data[0]_i_33_n_0\,
      I1 => \data_splitter.index_reg\(2),
      I2 => \data_splitter.index_reg\(3),
      I3 => temp_reg_n_0,
      I4 => interleaver_dout_valid,
      I5 => data_process_reg_n_0,
      O => \mapper_din_data[0]_i_40_n_0\
    );
\mapper_din_data[0]_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => splitter_data_in(28),
      I1 => splitter_data_in(29),
      I2 => \data_splitter.index_reg\(0),
      I3 => \data_splitter.index_reg\(1),
      O => \mapper_din_data[0]_i_41_n_0\
    );
\mapper_din_data[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEA00"
    )
        port map (
      I0 => \mapper_din_data[5]_i_13_n_0\,
      I1 => \mapper_din_data[0]_i_13_n_0\,
      I2 => \mapper_din_data[0]_i_14_n_0\,
      I3 => splitter_data_in(18),
      I4 => \mapper_din_data[0]_i_15_n_0\,
      I5 => \mapper_din_data[0]_i_16_n_0\,
      O => \mapper_din_data[0]_i_5_n_0\
    );
\mapper_din_data[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEA"
    )
        port map (
      I0 => \mapper_din_data[0]_i_17_n_0\,
      I1 => splitter_data_in(10),
      I2 => \mapper_din_data[1]_i_21_n_0\,
      I3 => \mapper_din_data[0]_i_18_n_0\,
      I4 => \mapper_din_data[0]_i_19_n_0\,
      I5 => \mapper_din_data[0]_i_20_n_0\,
      O => \mapper_din_data[0]_i_6_n_0\
    );
\mapper_din_data[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \mapper_din_data[0]_i_21_n_0\,
      I1 => \mapper_din_data[0]_i_22_n_0\,
      I2 => \mapper_din_data[0]_i_23_n_0\,
      I3 => \mapper_din_data[0]_i_24_n_0\,
      I4 => \mapper_din_data[0]_i_25_n_0\,
      I5 => \mapper_din_data[0]_i_26_n_0\,
      O => \mapper_din_data[0]_i_7_n_0\
    );
\mapper_din_data[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AE00AA00AA00"
    )
        port map (
      I0 => \mapper_din_data[1]_i_28_n_0\,
      I1 => temp_i_6_n_0,
      I2 => \data_splitter.index_reg\(4),
      I3 => splitter_data_in(30),
      I4 => mod_cod_schemes(4),
      I5 => mod_cod_schemes(2),
      O => \mapper_din_data[0]_i_8_n_0\
    );
\mapper_din_data[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8080AA808080"
    )
        port map (
      I0 => \mapper_din_data[0]_i_27_n_0\,
      I1 => \mapper_din_data[5]_i_15_n_0\,
      I2 => \mapper_din_data[0]_i_28_n_0\,
      I3 => \mapper_din_data[0]_i_29_n_0\,
      I4 => splitter_data_in(4),
      I5 => \mapper_din_data[1]_i_11_n_0\,
      O => \mapper_din_data[0]_i_9_n_0\
    );
\mapper_din_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \mapper_din_data[1]_i_2_n_0\,
      I1 => \mapper_din_data[1]_i_3_n_0\,
      I2 => \mapper_din_data[1]_i_4_n_0\,
      I3 => \mapper_din_data[1]_i_5_n_0\,
      I4 => \mapper_din_data[1]_i_6_n_0\,
      I5 => \mapper_din_data[1]_i_7_n_0\,
      O => \mapper_din_data[1]_i_1_n_0\
    );
\mapper_din_data[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40000000"
    )
        port map (
      I0 => \data_splitter.index[5]_i_4_n_0\,
      I1 => \data_splitter.index_reg\(3),
      I2 => \data_splitter.index_reg\(2),
      I3 => \mapper_din_data[1]_i_17_n_0\,
      I4 => \mapper_din_data[1]_i_23_n_0\,
      I5 => \mapper_din_data[3]_i_14_n_0\,
      O => \mapper_din_data[1]_i_10_n_0\
    );
\mapper_din_data[1]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C08800"
    )
        port map (
      I0 => \mapper_din_data[3]_i_12_n_0\,
      I1 => \mapper_din_data[5]_i_15_n_0\,
      I2 => \mapper_din_data[1]_i_17_n_0\,
      I3 => \data_splitter.index_reg\(0),
      I4 => \data_splitter.index_reg\(1),
      O => \mapper_din_data[1]_i_11_n_0\
    );
\mapper_din_data[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF04000000"
    )
        port map (
      I0 => \data_splitter.index[5]_i_4_n_0\,
      I1 => \data_splitter.index_reg\(3),
      I2 => \data_splitter.index_reg\(2),
      I3 => \mapper_din_data[1]_i_17_n_0\,
      I4 => \mapper_din_data[4]_i_13_n_0\,
      I5 => \mapper_din_data[3]_i_13_n_0\,
      O => \mapper_din_data[1]_i_12_n_0\
    );
\mapper_din_data[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F8000800080008"
    )
        port map (
      I0 => \mapper_din_data[1]_i_17_n_0\,
      I1 => \mapper_din_data[4]_i_9_n_0\,
      I2 => \data_splitter.index_reg\(1),
      I3 => \data_splitter.index_reg\(0),
      I4 => \mapper_din_data[3]_i_12_n_0\,
      I5 => \mapper_din_data[5]_i_15_n_0\,
      O => \mapper_din_data[1]_i_13_n_0\
    );
\mapper_din_data[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000A00000C000"
    )
        port map (
      I0 => \mapper_din_data[1]_i_17_n_0\,
      I1 => \mapper_din_data[3]_i_12_n_0\,
      I2 => \mapper_din_data[1]_i_23_n_0\,
      I3 => \data_splitter.index_reg\(2),
      I4 => \data_splitter.index[5]_i_4_n_0\,
      I5 => \data_splitter.index_reg\(3),
      O => \mapper_din_data[1]_i_14_n_0\
    );
\mapper_din_data[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888F8888888888"
    )
        port map (
      I0 => \mapper_din_data[0]_i_14_n_0\,
      I1 => \mapper_din_data[0]_i_13_n_0\,
      I2 => \data_splitter.index[5]_i_3_n_0\,
      I3 => \mapper_din_data[1]_i_27_n_0\,
      I4 => \mapper_din_data[5]_i_16_n_0\,
      I5 => \mapper_din_data[5]_i_15_n_0\,
      O => \mapper_din_data[1]_i_15_n_0\
    );
\mapper_din_data[1]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \data_splitter.index[5]_i_3_n_0\,
      I1 => splitter_data_in(23),
      I2 => \mapper_din_data[1]_i_17_n_0\,
      I3 => \data_splitter.index[5]_i_4_n_0\,
      I4 => \data_splitter.index_reg\(3),
      I5 => \data_splitter.index_reg\(2),
      O => \mapper_din_data[1]_i_16_n_0\
    );
\mapper_din_data[1]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \data_splitter.index_reg\(4),
      I1 => mod_cod_schemes(3),
      I2 => mod_cod_schemes(4),
      I3 => mod_cod_schemes(2),
      O => \mapper_din_data[1]_i_17_n_0\
    );
\mapper_din_data[1]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_splitter.index_reg\(0),
      I1 => \data_splitter.index_reg\(1),
      O => \mapper_din_data[1]_i_18_n_0\
    );
\mapper_din_data[1]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => data_process_reg_n_0,
      I1 => interleaver_dout_valid,
      I2 => temp_reg_n_0,
      I3 => \data_splitter.index_reg\(3),
      I4 => \data_splitter.index_reg\(2),
      O => \mapper_din_data[1]_i_19_n_0\
    );
\mapper_din_data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mapper_din_data[1]_i_8_n_0\,
      I1 => splitter_data_in(29),
      I2 => \mapper_din_data[3]_i_4_n_0\,
      I3 => splitter_data_in(6),
      I4 => splitter_data_in(13),
      I5 => \mapper_din_data[1]_i_9_n_0\,
      O => \mapper_din_data[1]_i_2_n_0\
    );
\mapper_din_data[1]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F080808080808080"
    )
        port map (
      I0 => \mapper_din_data[3]_i_16_n_0\,
      I1 => splitter_data_in(15),
      I2 => \mapper_din_data[1]_i_17_n_0\,
      I3 => \mapper_din_data[1]_i_18_n_0\,
      I4 => \mapper_din_data[5]_i_15_n_0\,
      I5 => splitter_data_in(3),
      O => \mapper_din_data[1]_i_20_n_0\
    );
\mapper_din_data[1]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08F00800"
    )
        port map (
      I0 => \mapper_din_data[1]_i_17_n_0\,
      I1 => \mapper_din_data[4]_i_9_n_0\,
      I2 => \data_splitter.index_reg\(1),
      I3 => \data_splitter.index_reg\(0),
      I4 => \mapper_din_data[4]_i_12_n_0\,
      O => \mapper_din_data[1]_i_21_n_0\
    );
\mapper_din_data[1]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AE00AA00AA00"
    )
        port map (
      I0 => \mapper_din_data[1]_i_28_n_0\,
      I1 => temp_i_6_n_0,
      I2 => \data_splitter.index_reg\(4),
      I3 => splitter_data_in(31),
      I4 => mod_cod_schemes(4),
      I5 => mod_cod_schemes(2),
      O => \mapper_din_data[1]_i_22_n_0\
    );
\mapper_din_data[1]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \data_splitter.index_reg\(0),
      I1 => \data_splitter.index_reg\(1),
      O => \mapper_din_data[1]_i_23_n_0\
    );
\mapper_din_data[1]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"420046004200FE00"
    )
        port map (
      I0 => mod_cod_schemes(3),
      I1 => mod_cod_schemes(2),
      I2 => mod_cod_schemes(4),
      I3 => \mapper_din_data[5]_i_15_n_0\,
      I4 => \data_splitter.index_reg\(4),
      I5 => \data_splitter.index_reg\(5),
      O => \mapper_din_data[1]_i_24_n_0\
    );
\mapper_din_data[1]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80808C8000000000"
    )
        port map (
      I0 => \mapper_din_data[1]_i_17_n_0\,
      I1 => \data_splitter.index_reg\(0),
      I2 => \data_splitter.index_reg\(1),
      I3 => \mapper_din_data[1]_i_27_n_0\,
      I4 => \mapper_din_data[5]_i_16_n_0\,
      I5 => \mapper_din_data[5]_i_15_n_0\,
      O => \mapper_din_data[1]_i_25_n_0\
    );
\mapper_din_data[1]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => mod_cod_schemes(2),
      I1 => mod_cod_schemes(4),
      I2 => mod_cod_schemes(3),
      I3 => \data_splitter.index_reg\(4),
      I4 => \data_splitter.index_reg\(0),
      I5 => \data_splitter.index_reg\(1),
      O => \mapper_din_data[1]_i_26_n_0\
    );
\mapper_din_data[1]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => mod_cod_schemes(3),
      I1 => mod_cod_schemes(2),
      I2 => mod_cod_schemes(4),
      O => \mapper_din_data[1]_i_27_n_0\
    );
\mapper_din_data[1]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333030203020302"
    )
        port map (
      I0 => \data_splitter.index_reg\(3),
      I1 => \data_splitter.index[5]_i_4_n_0\,
      I2 => \mapper_din_data[4]_i_14_n_0\,
      I3 => \mapper_din_data[5]_i_16_n_0\,
      I4 => \data_splitter.index_reg\(2),
      I5 => temp_i_5_n_0,
      O => \mapper_din_data[1]_i_28_n_0\
    );
\mapper_din_data[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mapper_din_data[1]_i_10_n_0\,
      I1 => splitter_data_in(25),
      I2 => \mapper_din_data[1]_i_11_n_0\,
      I3 => splitter_data_in(5),
      I4 => splitter_data_in(21),
      I5 => \mapper_din_data[1]_i_12_n_0\,
      O => \mapper_din_data[1]_i_3_n_0\
    );
\mapper_din_data[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mapper_din_data[1]_i_13_n_0\,
      I1 => splitter_data_in(9),
      I2 => \mapper_din_data[1]_i_14_n_0\,
      I3 => splitter_data_in(17),
      I4 => splitter_data_in(19),
      I5 => \mapper_din_data[1]_i_15_n_0\,
      O => \mapper_din_data[1]_i_4_n_0\
    );
\mapper_din_data[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAAAAAAA"
    )
        port map (
      I0 => \mapper_din_data[1]_i_16_n_0\,
      I1 => splitter_data_in(27),
      I2 => \mapper_din_data[1]_i_17_n_0\,
      I3 => \mapper_din_data[1]_i_18_n_0\,
      I4 => \mapper_din_data[1]_i_19_n_0\,
      I5 => \mapper_din_data[1]_i_20_n_0\,
      O => \mapper_din_data[1]_i_5_n_0\
    );
\mapper_din_data[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mapper_din_data[1]_i_21_n_0\,
      I1 => splitter_data_in(11),
      I2 => \mapper_din_data[4]_i_7_n_0\,
      I3 => splitter_data_in(16),
      I4 => splitter_data_in(26),
      I5 => \mapper_din_data[4]_i_3_n_0\,
      O => \mapper_din_data[1]_i_6_n_0\
    );
\mapper_din_data[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAAAEAAAEAAA"
    )
        port map (
      I0 => \mapper_din_data[1]_i_22_n_0\,
      I1 => splitter_data_in(1),
      I2 => \mapper_din_data[1]_i_23_n_0\,
      I3 => \mapper_din_data[1]_i_24_n_0\,
      I4 => splitter_data_in(7),
      I5 => \mapper_din_data[1]_i_25_n_0\,
      O => \mapper_din_data[1]_i_7_n_0\
    );
\mapper_din_data[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0000000A000C0"
    )
        port map (
      I0 => \mapper_din_data[1]_i_26_n_0\,
      I1 => \mapper_din_data[3]_i_12_n_0\,
      I2 => \data_splitter.index_reg\(2),
      I3 => \data_splitter.index[5]_i_4_n_0\,
      I4 => \data_splitter.index_reg\(3),
      I5 => \data_splitter.index[5]_i_3_n_0\,
      O => \mapper_din_data[1]_i_8_n_0\
    );
\mapper_din_data[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000FF00F0008800"
    )
        port map (
      I0 => \mapper_din_data[4]_i_9_n_0\,
      I1 => \mapper_din_data[1]_i_17_n_0\,
      I2 => \mapper_din_data[3]_i_8_n_0\,
      I3 => \data_splitter.index_reg\(1),
      I4 => \data_splitter.index_reg\(0),
      I5 => \mapper_din_data[5]_i_9_n_0\,
      O => \mapper_din_data[1]_i_9_n_0\
    );
\mapper_din_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
        port map (
      I0 => \mapper_din_data[2]_i_2_n_0\,
      I1 => \mapper_din_data[2]_i_3_n_0\,
      I2 => splitter_data_in(7),
      I3 => \mapper_din_data[3]_i_4_n_0\,
      I4 => \mapper_din_data[2]_i_4_n_0\,
      O => \mapper_din_data[2]_i_1_n_0\
    );
\mapper_din_data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAAAEAAAEAAA"
    )
        port map (
      I0 => \mapper_din_data[2]_i_5_n_0\,
      I1 => splitter_data_in(12),
      I2 => \mapper_din_data[4]_i_13_n_0\,
      I3 => \mapper_din_data[4]_i_12_n_0\,
      I4 => splitter_data_in(18),
      I5 => \mapper_din_data[3]_i_7_n_0\,
      O => \mapper_din_data[2]_i_2_n_0\
    );
\mapper_din_data[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECC00000A0C00000"
    )
        port map (
      I0 => splitter_data_in(20),
      I1 => splitter_data_in(14),
      I2 => \mapper_din_data[5]_i_9_n_0\,
      I3 => \data_splitter.index_reg\(0),
      I4 => \data_splitter.index_reg\(1),
      I5 => \mapper_din_data[3]_i_8_n_0\,
      O => \mapper_din_data[2]_i_3_n_0\
    );
\mapper_din_data[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFEAFFEA"
    )
        port map (
      I0 => \mapper_din_data[2]_i_6_n_0\,
      I1 => \mapper_din_data[4]_i_3_n_0\,
      I2 => splitter_data_in(27),
      I3 => \mapper_din_data[2]_i_7_n_0\,
      I4 => \mapper_din_data[4]_i_7_n_0\,
      I5 => splitter_data_in(17),
      O => \mapper_din_data[2]_i_4_n_0\
    );
\mapper_din_data[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C800080"
    )
        port map (
      I0 => splitter_data_in(10),
      I1 => \mapper_din_data[3]_i_8_n_0\,
      I2 => \data_splitter.index_reg\(1),
      I3 => \data_splitter.index_reg\(0),
      I4 => splitter_data_in(6),
      O => \mapper_din_data[2]_i_5_n_0\
    );
\mapper_din_data[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mapper_din_data[3]_i_13_n_0\,
      I1 => splitter_data_in(22),
      I2 => \mapper_din_data[3]_i_14_n_0\,
      I3 => splitter_data_in(26),
      I4 => splitter_data_in(8),
      I5 => \mapper_din_data[5]_i_12_n_0\,
      O => \mapper_din_data[2]_i_6_n_0\
    );
\mapper_din_data[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \mapper_din_data[3]_i_15_n_0\,
      I1 => \mapper_din_data[1]_i_23_n_0\,
      I2 => splitter_data_in(2),
      I3 => \mapper_din_data[3]_i_16_n_0\,
      I4 => \mapper_din_data[3]_i_12_n_0\,
      I5 => splitter_data_in(30),
      O => \mapper_din_data[2]_i_7_n_0\
    );
\mapper_din_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
        port map (
      I0 => \mapper_din_data[3]_i_2_n_0\,
      I1 => \mapper_din_data[3]_i_3_n_0\,
      I2 => splitter_data_in(8),
      I3 => \mapper_din_data[3]_i_4_n_0\,
      I4 => \mapper_din_data[3]_i_5_n_0\,
      O => \mapper_din_data[3]_i_1_n_0\
    );
\mapper_din_data[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mapper_din_data[3]_i_13_n_0\,
      I1 => splitter_data_in(23),
      I2 => \mapper_din_data[3]_i_14_n_0\,
      I3 => splitter_data_in(27),
      I4 => splitter_data_in(9),
      I5 => \mapper_din_data[5]_i_12_n_0\,
      O => \mapper_din_data[3]_i_10_n_0\
    );
\mapper_din_data[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \mapper_din_data[3]_i_15_n_0\,
      I1 => \mapper_din_data[1]_i_23_n_0\,
      I2 => splitter_data_in(3),
      I3 => \mapper_din_data[3]_i_16_n_0\,
      I4 => \mapper_din_data[3]_i_12_n_0\,
      I5 => splitter_data_in(31),
      O => \mapper_din_data[3]_i_11_n_0\
    );
\mapper_din_data[3]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => mod_cod_schemes(4),
      I1 => mod_cod_schemes(2),
      I2 => mod_cod_schemes(3),
      O => \mapper_din_data[3]_i_12_n_0\
    );
\mapper_din_data[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0002200000000"
    )
        port map (
      I0 => \mapper_din_data[4]_i_8_n_0\,
      I1 => \mapper_din_data[5]_i_16_n_0\,
      I2 => \mapper_din_data[3]_i_12_n_0\,
      I3 => \data_splitter.index_reg\(1),
      I4 => \data_splitter.index_reg\(0),
      I5 => \mapper_din_data[4]_i_9_n_0\,
      O => \mapper_din_data[3]_i_13_n_0\
    );
\mapper_din_data[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0000000A000C0"
    )
        port map (
      I0 => \mapper_din_data[3]_i_12_n_0\,
      I1 => \mapper_din_data[1]_i_27_n_0\,
      I2 => \mapper_din_data[4]_i_9_n_0\,
      I3 => \data_splitter.index_reg\(0),
      I4 => \data_splitter.index_reg\(1),
      I5 => \mapper_din_data[5]_i_16_n_0\,
      O => \mapper_din_data[3]_i_14_n_0\
    );
\mapper_din_data[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101010F0F0001000"
    )
        port map (
      I0 => \data_splitter.index_reg\(5),
      I1 => \data_splitter.index_reg\(4),
      I2 => \mapper_din_data[5]_i_15_n_0\,
      I3 => mod_cod_schemes(4),
      I4 => mod_cod_schemes(2),
      I5 => mod_cod_schemes(3),
      O => \mapper_din_data[3]_i_15_n_0\
    );
\mapper_din_data[3]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \data_splitter.index_reg\(2),
      I1 => \data_splitter.index[5]_i_4_n_0\,
      I2 => \data_splitter.index_reg\(3),
      I3 => \data_splitter.index_reg\(1),
      I4 => \data_splitter.index_reg\(0),
      O => \mapper_din_data[3]_i_16_n_0\
    );
\mapper_din_data[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAAAEAAAEAAA"
    )
        port map (
      I0 => \mapper_din_data[3]_i_6_n_0\,
      I1 => splitter_data_in(13),
      I2 => \mapper_din_data[4]_i_13_n_0\,
      I3 => \mapper_din_data[4]_i_12_n_0\,
      I4 => splitter_data_in(19),
      I5 => \mapper_din_data[3]_i_7_n_0\,
      O => \mapper_din_data[3]_i_2_n_0\
    );
\mapper_din_data[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECC00000A0C00000"
    )
        port map (
      I0 => splitter_data_in(21),
      I1 => splitter_data_in(15),
      I2 => \mapper_din_data[5]_i_9_n_0\,
      I3 => \data_splitter.index_reg\(0),
      I4 => \data_splitter.index_reg\(1),
      I5 => \mapper_din_data[3]_i_8_n_0\,
      O => \mapper_din_data[3]_i_3_n_0\
    );
\mapper_din_data[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000280000000000"
    )
        port map (
      I0 => \mapper_din_data[3]_i_9_n_0\,
      I1 => mod_cod_schemes(4),
      I2 => mod_cod_schemes(2),
      I3 => mod_cod_schemes(3),
      I4 => \data_splitter.index_reg\(1),
      I5 => \data_splitter.index_reg\(0),
      O => \mapper_din_data[3]_i_4_n_0\
    );
\mapper_din_data[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFEAFFEA"
    )
        port map (
      I0 => \mapper_din_data[3]_i_10_n_0\,
      I1 => \mapper_din_data[4]_i_3_n_0\,
      I2 => splitter_data_in(28),
      I3 => \mapper_din_data[3]_i_11_n_0\,
      I4 => \mapper_din_data[4]_i_7_n_0\,
      I5 => splitter_data_in(18),
      O => \mapper_din_data[3]_i_5_n_0\
    );
\mapper_din_data[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C800080"
    )
        port map (
      I0 => splitter_data_in(11),
      I1 => \mapper_din_data[3]_i_8_n_0\,
      I2 => \data_splitter.index_reg\(1),
      I3 => \data_splitter.index_reg\(0),
      I4 => splitter_data_in(7),
      O => \mapper_din_data[3]_i_6_n_0\
    );
\mapper_din_data[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \data_splitter.index_reg\(3),
      I1 => \data_splitter.index[5]_i_4_n_0\,
      I2 => \data_splitter.index_reg\(2),
      I3 => \data_splitter.index_reg\(0),
      I4 => \data_splitter.index_reg\(1),
      I5 => \mapper_din_data[3]_i_12_n_0\,
      O => \mapper_din_data[3]_i_7_n_0\
    );
\mapper_din_data[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000042"
    )
        port map (
      I0 => mod_cod_schemes(3),
      I1 => mod_cod_schemes(2),
      I2 => mod_cod_schemes(4),
      I3 => \data_splitter.index_reg\(2),
      I4 => \data_splitter.index[5]_i_4_n_0\,
      I5 => \data_splitter.index_reg\(3),
      O => \mapper_din_data[3]_i_8_n_0\
    );
\mapper_din_data[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \data_splitter.index_reg\(2),
      I1 => \data_splitter.index[5]_i_4_n_0\,
      I2 => \data_splitter.index_reg\(3),
      I3 => \data_splitter.index_reg\(5),
      I4 => \data_splitter.index_reg\(4),
      O => \mapper_din_data[3]_i_9_n_0\
    );
\mapper_din_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEA"
    )
        port map (
      I0 => \mapper_din_data[4]_i_2_n_0\,
      I1 => \mapper_din_data[4]_i_3_n_0\,
      I2 => splitter_data_in(29),
      I3 => \mapper_din_data[4]_i_4_n_0\,
      I4 => \mapper_din_data[4]_i_5_n_0\,
      I5 => \mapper_din_data[4]_i_6_n_0\,
      O => \mapper_din_data[4]_i_1_n_0\
    );
\mapper_din_data[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \data_splitter.index_reg\(3),
      I1 => \data_splitter.index[5]_i_4_n_0\,
      I2 => \data_splitter.index_reg\(2),
      I3 => \mapper_din_data[1]_i_23_n_0\,
      I4 => \data_splitter.index_reg\(5),
      I5 => \data_splitter.index_reg\(4),
      O => \mapper_din_data[4]_i_10_n_0\
    );
\mapper_din_data[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8888888888888"
    )
        port map (
      I0 => splitter_data_in(10),
      I1 => \mapper_din_data[5]_i_12_n_0\,
      I2 => \mapper_din_data[3]_i_9_n_0\,
      I3 => \mapper_din_data[4]_i_14_n_0\,
      I4 => splitter_data_in(4),
      I5 => \mapper_din_data[1]_i_23_n_0\,
      O => \mapper_din_data[4]_i_11_n_0\
    );
\mapper_din_data[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002800000000"
    )
        port map (
      I0 => mod_cod_schemes(3),
      I1 => mod_cod_schemes(2),
      I2 => mod_cod_schemes(4),
      I3 => \data_splitter.index_reg\(4),
      I4 => \data_splitter.index_reg\(5),
      I5 => \mapper_din_data[5]_i_15_n_0\,
      O => \mapper_din_data[4]_i_12_n_0\
    );
\mapper_din_data[4]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_splitter.index_reg\(1),
      I1 => \data_splitter.index_reg\(0),
      O => \mapper_din_data[4]_i_13_n_0\
    );
\mapper_din_data[4]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => mod_cod_schemes(3),
      I1 => mod_cod_schemes(2),
      I2 => mod_cod_schemes(4),
      O => \mapper_din_data[4]_i_14_n_0\
    );
\mapper_din_data[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mapper_din_data[5]_i_14_n_0\,
      I1 => splitter_data_in(28),
      I2 => \mapper_din_data[3]_i_4_n_0\,
      I3 => splitter_data_in(9),
      I4 => splitter_data_in(19),
      I5 => \mapper_din_data[4]_i_7_n_0\,
      O => \mapper_din_data[4]_i_2_n_0\
    );
\mapper_din_data[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \data_splitter.index_reg\(4),
      I1 => \data_splitter.index_reg\(5),
      I2 => \mapper_din_data[4]_i_8_n_0\,
      I3 => \mapper_din_data[4]_i_9_n_0\,
      I4 => \data_splitter.index_reg\(0),
      I5 => \data_splitter.index_reg\(1),
      O => \mapper_din_data[4]_i_3_n_0\
    );
\mapper_din_data[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \data_splitter.index_reg\(0),
      I1 => \data_splitter.index_reg\(1),
      I2 => \mapper_din_data[5]_i_9_n_0\,
      I3 => splitter_data_in(22),
      O => \mapper_din_data[4]_i_4_n_0\
    );
\mapper_din_data[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28000000"
    )
        port map (
      I0 => splitter_data_in(24),
      I1 => mod_cod_schemes(4),
      I2 => mod_cod_schemes(2),
      I3 => mod_cod_schemes(3),
      I4 => \mapper_din_data[4]_i_10_n_0\,
      O => \mapper_din_data[4]_i_5_n_0\
    );
\mapper_din_data[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAAAAAEAEAAAAA"
    )
        port map (
      I0 => \mapper_din_data[4]_i_11_n_0\,
      I1 => splitter_data_in(16),
      I2 => \mapper_din_data[5]_i_9_n_0\,
      I3 => \mapper_din_data[4]_i_12_n_0\,
      I4 => \mapper_din_data[4]_i_13_n_0\,
      I5 => splitter_data_in(14),
      O => \mapper_din_data[4]_i_6_n_0\
    );
\mapper_din_data[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2800000000000000"
    )
        port map (
      I0 => \mapper_din_data[3]_i_9_n_0\,
      I1 => mod_cod_schemes(4),
      I2 => mod_cod_schemes(2),
      I3 => mod_cod_schemes(3),
      I4 => \data_splitter.index_reg\(1),
      I5 => \data_splitter.index_reg\(0),
      O => \mapper_din_data[4]_i_7_n_0\
    );
\mapper_din_data[4]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => mod_cod_schemes(4),
      I1 => mod_cod_schemes(2),
      I2 => mod_cod_schemes(3),
      O => \mapper_din_data[4]_i_8_n_0\
    );
\mapper_din_data[4]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \data_splitter.index_reg\(3),
      I1 => data_process_reg_n_0,
      I2 => interleaver_dout_valid,
      I3 => temp_reg_n_0,
      I4 => \data_splitter.index_reg\(2),
      O => \mapper_din_data[4]_i_9_n_0\
    );
\mapper_din_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFEEEEFFFFFFFF"
    )
        port map (
      I0 => \mapper_din_data[5]_i_3_n_0\,
      I1 => \mapper_din_data[5]_i_4_n_0\,
      I2 => \mapper_din_data[5]_i_5_n_0\,
      I3 => \data_splitter.index_reg\(3),
      I4 => \mapper_din_data[5]_i_6_n_0\,
      I5 => \mapper_din_data[5]_i_7_n_0\,
      O => \mapper_din_data[5]_i_1_n_0\
    );
\mapper_din_data[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FF7F7F7FFFFF7F"
    )
        port map (
      I0 => \data_splitter.index_reg\(1),
      I1 => \data_splitter.index_reg\(2),
      I2 => mod_cod_schemes(4),
      I3 => mod_cod_schemes(3),
      I4 => mod_cod_schemes(2),
      I5 => \data_splitter.index_reg\(0),
      O => \mapper_din_data[5]_i_10_n_0\
    );
\mapper_din_data[5]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => mod_cod_schemes(3),
      I1 => mod_cod_schemes(4),
      O => \mapper_din_data[5]_i_11_n_0\
    );
\mapper_din_data[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2002000000000000"
    )
        port map (
      I0 => \mapper_din_data[5]_i_15_n_0\,
      I1 => \mapper_din_data[5]_i_16_n_0\,
      I2 => mod_cod_schemes(3),
      I3 => mod_cod_schemes(2),
      I4 => mod_cod_schemes(4),
      I5 => \mapper_din_data[1]_i_18_n_0\,
      O => \mapper_din_data[5]_i_12_n_0\
    );
\mapper_din_data[5]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020020000"
    )
        port map (
      I0 => \mapper_din_data[5]_i_15_n_0\,
      I1 => \mapper_din_data[5]_i_16_n_0\,
      I2 => mod_cod_schemes(3),
      I3 => mod_cod_schemes(2),
      I4 => mod_cod_schemes(4),
      I5 => \data_splitter.index[5]_i_3_n_0\,
      O => \mapper_din_data[5]_i_13_n_0\
    );
\mapper_din_data[5]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000004000"
    )
        port map (
      I0 => \mapper_din_data[5]_i_16_n_0\,
      I1 => \mapper_din_data[1]_i_23_n_0\,
      I2 => \mapper_din_data[4]_i_9_n_0\,
      I3 => mod_cod_schemes(4),
      I4 => mod_cod_schemes(2),
      I5 => mod_cod_schemes(3),
      O => \mapper_din_data[5]_i_14_n_0\
    );
\mapper_din_data[5]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \data_splitter.index_reg\(3),
      I1 => data_process_reg_n_0,
      I2 => interleaver_dout_valid,
      I3 => temp_reg_n_0,
      I4 => \data_splitter.index_reg\(2),
      O => \mapper_din_data[5]_i_15_n_0\
    );
\mapper_din_data[5]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \data_splitter.index_reg\(4),
      I1 => \data_splitter.index_reg\(5),
      O => \mapper_din_data[5]_i_16_n_0\
    );
\mapper_din_data[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAEAAAAAAAEAAAA"
    )
        port map (
      I0 => \mapper_din_data[5]_i_8_n_0\,
      I1 => splitter_data_in(5),
      I2 => \data_splitter.index_reg\(0),
      I3 => \data_splitter.index_reg\(1),
      I4 => \mapper_din_data[5]_i_9_n_0\,
      I5 => splitter_data_in(17),
      O => \mapper_din_data[5]_i_2_n_0\
    );
\mapper_din_data[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => data_process_reg_n_0,
      I1 => interleaver_dout_valid,
      I2 => temp_reg_n_0,
      O => \mapper_din_data[5]_i_3_n_0\
    );
\mapper_din_data[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000004F"
    )
        port map (
      I0 => \data_splitter.index_reg\(3),
      I1 => \mapper_din_data[5]_i_10_n_0\,
      I2 => \mapper_din_data[5]_i_11_n_0\,
      I3 => \data_splitter.index_reg\(5),
      I4 => \data_splitter.index_reg\(4),
      I5 => mapper_din_valid_i_2_n_0,
      O => \mapper_din_data[5]_i_4_n_0\
    );
\mapper_din_data[5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \data_splitter.index_reg\(1),
      I1 => \data_splitter.index_reg\(0),
      I2 => \data_splitter.index_reg\(2),
      O => \mapper_din_data[5]_i_5_n_0\
    );
\mapper_din_data[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \data_splitter.index_reg\(5),
      I1 => interleaver_dout_valid,
      I2 => data_process_reg_n_0,
      I3 => mod_cod_schemes(2),
      I4 => mod_cod_schemes(3),
      I5 => mod_cod_schemes(4),
      O => \mapper_din_data[5]_i_6_n_0\
    );
\mapper_din_data[5]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => data_process_reg_n_0,
      I1 => interleaver_dout_valid,
      I2 => temp_reg_n_0,
      O => \mapper_din_data[5]_i_7_n_0\
    );
\mapper_din_data[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \mapper_din_data[5]_i_12_n_0\,
      I1 => splitter_data_in(11),
      I2 => \mapper_din_data[5]_i_13_n_0\,
      I3 => splitter_data_in(23),
      I4 => splitter_data_in(29),
      I5 => \mapper_din_data[5]_i_14_n_0\,
      O => \mapper_din_data[5]_i_8_n_0\
    );
\mapper_din_data[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008200000000"
    )
        port map (
      I0 => mod_cod_schemes(4),
      I1 => mod_cod_schemes(2),
      I2 => mod_cod_schemes(3),
      I3 => \data_splitter.index_reg\(4),
      I4 => \data_splitter.index_reg\(5),
      I5 => \mapper_din_data[5]_i_15_n_0\,
      O => \mapper_din_data[5]_i_9_n_0\
    );
\mapper_din_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \mapper_din_data[5]_i_1_n_0\,
      CLR => reset,
      D => \mapper_din_data[0]_i_1_n_0\,
      Q => mapper_din_data(0)
    );
\mapper_din_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \mapper_din_data[5]_i_1_n_0\,
      CLR => reset,
      D => \mapper_din_data[1]_i_1_n_0\,
      Q => mapper_din_data(1)
    );
\mapper_din_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \mapper_din_data[5]_i_1_n_0\,
      CLR => reset,
      D => \mapper_din_data[2]_i_1_n_0\,
      Q => mapper_din_data(2)
    );
\mapper_din_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \mapper_din_data[5]_i_1_n_0\,
      CLR => reset,
      D => \mapper_din_data[3]_i_1_n_0\,
      Q => mapper_din_data(3)
    );
\mapper_din_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \mapper_din_data[5]_i_1_n_0\,
      CLR => reset,
      D => \mapper_din_data[4]_i_1_n_0\,
      Q => mapper_din_data(4)
    );
\mapper_din_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \mapper_din_data[5]_i_1_n_0\,
      CLR => reset,
      D => \mapper_din_data[5]_i_2_n_0\,
      Q => mapper_din_data(5)
    );
mapper_din_last_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C00000004000"
    )
        port map (
      I0 => signal_field_en,
      I1 => symbol_counter_reg(8),
      I2 => symbol_counter_reg(7),
      I3 => symbol_counter_reg(9),
      I4 => mapper_din_valid_i_2_n_0,
      I5 => temp_reg_n_0,
      O => mapper_din_last_i_1_n_0
    );
mapper_din_last_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => mapper_din_last_i_1_n_0,
      Q => mapper_din_last
    );
mapper_din_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F00FFFF"
    )
        port map (
      I0 => symbol_counter_reg(8),
      I1 => symbol_counter_reg(7),
      I2 => symbol_counter_reg(9),
      I3 => interleaver_last_frame,
      I4 => temp_reg_n_0,
      I5 => mapper_din_valid_i_2_n_0,
      O => mapper_din_valid_i_1_n_0
    );
mapper_din_valid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => interleaver_dout_valid,
      I1 => data_process_reg_n_0,
      O => mapper_din_valid_i_2_n_0
    );
mapper_din_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => mapper_din_valid_i_1_n_0,
      Q => mapper_din_valid
    );
\mapper_selected_mod_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => mod_cod_schemes(2),
      Q => mapper_selected_mod(0),
      R => '0'
    );
\mapper_selected_mod_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => mod_cod_schemes(3),
      Q => mapper_selected_mod(1),
      R => '0'
    );
\mapper_selected_mod_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => mod_cod_schemes(4),
      Q => mapper_selected_mod(2),
      R => '0'
    );
\pilot_symbols[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => reset,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      I4 => mapper_dout_last,
      O => pilot_symbols0
    );
\pilot_symbols[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => pilot_symbols_reg(0),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[0]_i_10_n_0\
    );
\pilot_symbols[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(7),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[0]_i_3_n_0\
    );
\pilot_symbols[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pilot_symbols_reg(6),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[0]_i_4_n_0\
    );
\pilot_symbols[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pilot_symbols_reg(5),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[0]_i_5_n_0\
    );
\pilot_symbols[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pilot_symbols_reg(4),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[0]_i_6_n_0\
    );
\pilot_symbols[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pilot_symbols_reg(3),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[0]_i_7_n_0\
    );
\pilot_symbols[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pilot_symbols_reg(2),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[0]_i_8_n_0\
    );
\pilot_symbols[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pilot_symbols_reg(1),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[0]_i_9_n_0\
    );
\pilot_symbols[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(23),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[16]_i_2_n_0\
    );
\pilot_symbols[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(22),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[16]_i_3_n_0\
    );
\pilot_symbols[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(21),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[16]_i_4_n_0\
    );
\pilot_symbols[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(20),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[16]_i_5_n_0\
    );
\pilot_symbols[16]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(19),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[16]_i_6_n_0\
    );
\pilot_symbols[16]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(18),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[16]_i_7_n_0\
    );
\pilot_symbols[16]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(17),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[16]_i_8_n_0\
    );
\pilot_symbols[16]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(16),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[16]_i_9_n_0\
    );
\pilot_symbols[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(31),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[24]_i_2_n_0\
    );
\pilot_symbols[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(30),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[24]_i_3_n_0\
    );
\pilot_symbols[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(29),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[24]_i_4_n_0\
    );
\pilot_symbols[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(28),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[24]_i_5_n_0\
    );
\pilot_symbols[24]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(27),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[24]_i_6_n_0\
    );
\pilot_symbols[24]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(26),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[24]_i_7_n_0\
    );
\pilot_symbols[24]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(25),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[24]_i_8_n_0\
    );
\pilot_symbols[24]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(24),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[24]_i_9_n_0\
    );
\pilot_symbols[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(15),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[8]_i_2_n_0\
    );
\pilot_symbols[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(14),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[8]_i_3_n_0\
    );
\pilot_symbols[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(13),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[8]_i_4_n_0\
    );
\pilot_symbols[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(12),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[8]_i_5_n_0\
    );
\pilot_symbols[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(11),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[8]_i_6_n_0\
    );
\pilot_symbols[8]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(10),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[8]_i_7_n_0\
    );
\pilot_symbols[8]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(9),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[8]_i_8_n_0\
    );
\pilot_symbols[8]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(8),
      I1 => dpd_din_data_I1,
      O => \pilot_symbols[8]_i_9_n_0\
    );
\pilot_symbols_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[0]_i_2_n_15\,
      Q => pilot_symbols_reg(0),
      R => '0'
    );
\pilot_symbols_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \pilot_symbols_reg[0]_i_2_n_0\,
      CO(6) => \pilot_symbols_reg[0]_i_2_n_1\,
      CO(5) => \pilot_symbols_reg[0]_i_2_n_2\,
      CO(4) => \pilot_symbols_reg[0]_i_2_n_3\,
      CO(3) => \pilot_symbols_reg[0]_i_2_n_4\,
      CO(2) => \pilot_symbols_reg[0]_i_2_n_5\,
      CO(1) => \pilot_symbols_reg[0]_i_2_n_6\,
      CO(0) => \pilot_symbols_reg[0]_i_2_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => dpd_din_data_I1,
      O(7) => \pilot_symbols_reg[0]_i_2_n_8\,
      O(6) => \pilot_symbols_reg[0]_i_2_n_9\,
      O(5) => \pilot_symbols_reg[0]_i_2_n_10\,
      O(4) => \pilot_symbols_reg[0]_i_2_n_11\,
      O(3) => \pilot_symbols_reg[0]_i_2_n_12\,
      O(2) => \pilot_symbols_reg[0]_i_2_n_13\,
      O(1) => \pilot_symbols_reg[0]_i_2_n_14\,
      O(0) => \pilot_symbols_reg[0]_i_2_n_15\,
      S(7) => \pilot_symbols[0]_i_3_n_0\,
      S(6) => \pilot_symbols[0]_i_4_n_0\,
      S(5) => \pilot_symbols[0]_i_5_n_0\,
      S(4) => \pilot_symbols[0]_i_6_n_0\,
      S(3) => \pilot_symbols[0]_i_7_n_0\,
      S(2) => \pilot_symbols[0]_i_8_n_0\,
      S(1) => \pilot_symbols[0]_i_9_n_0\,
      S(0) => \pilot_symbols[0]_i_10_n_0\
    );
\pilot_symbols_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[8]_i_1_n_13\,
      Q => \pilot_symbols_reg__0\(10),
      R => '0'
    );
\pilot_symbols_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[8]_i_1_n_12\,
      Q => \pilot_symbols_reg__0\(11),
      R => '0'
    );
\pilot_symbols_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[8]_i_1_n_11\,
      Q => \pilot_symbols_reg__0\(12),
      R => '0'
    );
\pilot_symbols_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[8]_i_1_n_10\,
      Q => \pilot_symbols_reg__0\(13),
      R => '0'
    );
\pilot_symbols_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[8]_i_1_n_9\,
      Q => \pilot_symbols_reg__0\(14),
      R => '0'
    );
\pilot_symbols_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[8]_i_1_n_8\,
      Q => \pilot_symbols_reg__0\(15),
      R => '0'
    );
\pilot_symbols_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[16]_i_1_n_15\,
      Q => \pilot_symbols_reg__0\(16),
      R => '0'
    );
\pilot_symbols_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \pilot_symbols_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \pilot_symbols_reg[16]_i_1_n_0\,
      CO(6) => \pilot_symbols_reg[16]_i_1_n_1\,
      CO(5) => \pilot_symbols_reg[16]_i_1_n_2\,
      CO(4) => \pilot_symbols_reg[16]_i_1_n_3\,
      CO(3) => \pilot_symbols_reg[16]_i_1_n_4\,
      CO(2) => \pilot_symbols_reg[16]_i_1_n_5\,
      CO(1) => \pilot_symbols_reg[16]_i_1_n_6\,
      CO(0) => \pilot_symbols_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \pilot_symbols_reg[16]_i_1_n_8\,
      O(6) => \pilot_symbols_reg[16]_i_1_n_9\,
      O(5) => \pilot_symbols_reg[16]_i_1_n_10\,
      O(4) => \pilot_symbols_reg[16]_i_1_n_11\,
      O(3) => \pilot_symbols_reg[16]_i_1_n_12\,
      O(2) => \pilot_symbols_reg[16]_i_1_n_13\,
      O(1) => \pilot_symbols_reg[16]_i_1_n_14\,
      O(0) => \pilot_symbols_reg[16]_i_1_n_15\,
      S(7) => \pilot_symbols[16]_i_2_n_0\,
      S(6) => \pilot_symbols[16]_i_3_n_0\,
      S(5) => \pilot_symbols[16]_i_4_n_0\,
      S(4) => \pilot_symbols[16]_i_5_n_0\,
      S(3) => \pilot_symbols[16]_i_6_n_0\,
      S(2) => \pilot_symbols[16]_i_7_n_0\,
      S(1) => \pilot_symbols[16]_i_8_n_0\,
      S(0) => \pilot_symbols[16]_i_9_n_0\
    );
\pilot_symbols_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[16]_i_1_n_14\,
      Q => \pilot_symbols_reg__0\(17),
      R => '0'
    );
\pilot_symbols_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[16]_i_1_n_13\,
      Q => \pilot_symbols_reg__0\(18),
      R => '0'
    );
\pilot_symbols_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[16]_i_1_n_12\,
      Q => \pilot_symbols_reg__0\(19),
      R => '0'
    );
\pilot_symbols_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[0]_i_2_n_14\,
      Q => pilot_symbols_reg(1),
      R => '0'
    );
\pilot_symbols_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[16]_i_1_n_11\,
      Q => \pilot_symbols_reg__0\(20),
      R => '0'
    );
\pilot_symbols_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[16]_i_1_n_10\,
      Q => \pilot_symbols_reg__0\(21),
      R => '0'
    );
\pilot_symbols_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[16]_i_1_n_9\,
      Q => \pilot_symbols_reg__0\(22),
      R => '0'
    );
\pilot_symbols_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[16]_i_1_n_8\,
      Q => \pilot_symbols_reg__0\(23),
      R => '0'
    );
\pilot_symbols_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[24]_i_1_n_15\,
      Q => \pilot_symbols_reg__0\(24),
      R => '0'
    );
\pilot_symbols_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \pilot_symbols_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_pilot_symbols_reg[24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \pilot_symbols_reg[24]_i_1_n_1\,
      CO(5) => \pilot_symbols_reg[24]_i_1_n_2\,
      CO(4) => \pilot_symbols_reg[24]_i_1_n_3\,
      CO(3) => \pilot_symbols_reg[24]_i_1_n_4\,
      CO(2) => \pilot_symbols_reg[24]_i_1_n_5\,
      CO(1) => \pilot_symbols_reg[24]_i_1_n_6\,
      CO(0) => \pilot_symbols_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \pilot_symbols_reg[24]_i_1_n_8\,
      O(6) => \pilot_symbols_reg[24]_i_1_n_9\,
      O(5) => \pilot_symbols_reg[24]_i_1_n_10\,
      O(4) => \pilot_symbols_reg[24]_i_1_n_11\,
      O(3) => \pilot_symbols_reg[24]_i_1_n_12\,
      O(2) => \pilot_symbols_reg[24]_i_1_n_13\,
      O(1) => \pilot_symbols_reg[24]_i_1_n_14\,
      O(0) => \pilot_symbols_reg[24]_i_1_n_15\,
      S(7) => \pilot_symbols[24]_i_2_n_0\,
      S(6) => \pilot_symbols[24]_i_3_n_0\,
      S(5) => \pilot_symbols[24]_i_4_n_0\,
      S(4) => \pilot_symbols[24]_i_5_n_0\,
      S(3) => \pilot_symbols[24]_i_6_n_0\,
      S(2) => \pilot_symbols[24]_i_7_n_0\,
      S(1) => \pilot_symbols[24]_i_8_n_0\,
      S(0) => \pilot_symbols[24]_i_9_n_0\
    );
\pilot_symbols_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[24]_i_1_n_14\,
      Q => \pilot_symbols_reg__0\(25),
      R => '0'
    );
\pilot_symbols_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[24]_i_1_n_13\,
      Q => \pilot_symbols_reg__0\(26),
      R => '0'
    );
\pilot_symbols_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[24]_i_1_n_12\,
      Q => \pilot_symbols_reg__0\(27),
      R => '0'
    );
\pilot_symbols_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[24]_i_1_n_11\,
      Q => \pilot_symbols_reg__0\(28),
      R => '0'
    );
\pilot_symbols_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[24]_i_1_n_10\,
      Q => \pilot_symbols_reg__0\(29),
      R => '0'
    );
\pilot_symbols_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[0]_i_2_n_13\,
      Q => pilot_symbols_reg(2),
      R => '0'
    );
\pilot_symbols_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[24]_i_1_n_9\,
      Q => \pilot_symbols_reg__0\(30),
      R => '0'
    );
\pilot_symbols_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[24]_i_1_n_8\,
      Q => \pilot_symbols_reg__0\(31),
      R => '0'
    );
\pilot_symbols_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[0]_i_2_n_12\,
      Q => pilot_symbols_reg(3),
      R => '0'
    );
\pilot_symbols_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[0]_i_2_n_11\,
      Q => pilot_symbols_reg(4),
      R => '0'
    );
\pilot_symbols_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[0]_i_2_n_10\,
      Q => pilot_symbols_reg(5),
      R => '0'
    );
\pilot_symbols_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[0]_i_2_n_9\,
      Q => pilot_symbols_reg(6),
      R => '0'
    );
\pilot_symbols_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[0]_i_2_n_8\,
      Q => \pilot_symbols_reg__0\(7),
      R => '0'
    );
\pilot_symbols_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[8]_i_1_n_15\,
      Q => \pilot_symbols_reg__0\(8),
      R => '0'
    );
\pilot_symbols_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \pilot_symbols_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \pilot_symbols_reg[8]_i_1_n_0\,
      CO(6) => \pilot_symbols_reg[8]_i_1_n_1\,
      CO(5) => \pilot_symbols_reg[8]_i_1_n_2\,
      CO(4) => \pilot_symbols_reg[8]_i_1_n_3\,
      CO(3) => \pilot_symbols_reg[8]_i_1_n_4\,
      CO(2) => \pilot_symbols_reg[8]_i_1_n_5\,
      CO(1) => \pilot_symbols_reg[8]_i_1_n_6\,
      CO(0) => \pilot_symbols_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \pilot_symbols_reg[8]_i_1_n_8\,
      O(6) => \pilot_symbols_reg[8]_i_1_n_9\,
      O(5) => \pilot_symbols_reg[8]_i_1_n_10\,
      O(4) => \pilot_symbols_reg[8]_i_1_n_11\,
      O(3) => \pilot_symbols_reg[8]_i_1_n_12\,
      O(2) => \pilot_symbols_reg[8]_i_1_n_13\,
      O(1) => \pilot_symbols_reg[8]_i_1_n_14\,
      O(0) => \pilot_symbols_reg[8]_i_1_n_15\,
      S(7) => \pilot_symbols[8]_i_2_n_0\,
      S(6) => \pilot_symbols[8]_i_3_n_0\,
      S(5) => \pilot_symbols[8]_i_4_n_0\,
      S(4) => \pilot_symbols[8]_i_5_n_0\,
      S(3) => \pilot_symbols[8]_i_6_n_0\,
      S(2) => \pilot_symbols[8]_i_7_n_0\,
      S(1) => \pilot_symbols[8]_i_8_n_0\,
      S(0) => \pilot_symbols[8]_i_9_n_0\
    );
\pilot_symbols_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pilot_symbols0,
      D => \pilot_symbols_reg[8]_i_1_n_14\,
      Q => \pilot_symbols_reg__0\(9),
      R => '0'
    );
\scrambler_din_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => control_unit_din_data(0),
      I1 => \scrambler_din_data[31]_i_4_n_0\,
      I2 => \scrambler_din_data[0]_i_2_n_0\,
      O => p_0_in(0)
    );
\scrambler_din_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[11]_i_3_n_0\,
      I1 => num_words(15),
      I2 => \scrambler_din_data[31]_i_2_n_0\,
      I3 => mod_cod_schemes(0),
      I4 => scrambler_init(15),
      I5 => \scrambler_din_data[31]_i_3_n_0\,
      O => \scrambler_din_data[0]_i_2_n_0\
    );
\scrambler_din_data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => control_unit_din_data(10),
      I1 => \scrambler_din_data[31]_i_4_n_0\,
      I2 => \scrambler_din_data[10]_i_2_n_0\,
      O => p_0_in(10)
    );
\scrambler_din_data[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[11]_i_3_n_0\,
      I1 => phy_dest_address(3),
      I2 => \scrambler_din_data[31]_i_2_n_0\,
      I3 => ref_distance(0),
      I4 => scrambler_init(25),
      I5 => \scrambler_din_data[31]_i_3_n_0\,
      O => \scrambler_din_data[10]_i_2_n_0\
    );
\scrambler_din_data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => control_unit_din_data(11),
      I1 => \scrambler_din_data[31]_i_4_n_0\,
      I2 => \scrambler_din_data[11]_i_2_n_0\,
      O => p_0_in(11)
    );
\scrambler_din_data[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[11]_i_3_n_0\,
      I1 => phy_dest_address(4),
      I2 => \scrambler_din_data[31]_i_2_n_0\,
      I3 => ref_distance(1),
      I4 => scrambler_init(26),
      I5 => \scrambler_din_data[31]_i_3_n_0\,
      O => \scrambler_din_data[11]_i_2_n_0\
    );
\scrambler_din_data[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \control_unit_states.n_reg_n_0_[0]\,
      I1 => \control_unit_states.n_reg_n_0_[1]\,
      I2 => \scrambler_din_data[31]_i_6_n_0\,
      I3 => \scrambler_din_data[31]_i_5_n_0\,
      I4 => \control_unit_states.n_reg_n_0_[2]\,
      I5 => state(2),
      O => \scrambler_din_data[11]_i_3_n_0\
    );
\scrambler_din_data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[31]_i_2_n_0\,
      I1 => ref_distance(2),
      I2 => \scrambler_din_data[31]_i_3_n_0\,
      I3 => scrambler_init(27),
      I4 => control_unit_din_data(12),
      I5 => \scrambler_din_data[31]_i_4_n_0\,
      O => p_0_in(12)
    );
\scrambler_din_data[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[31]_i_2_n_0\,
      I1 => ref_distance(3),
      I2 => \scrambler_din_data[31]_i_3_n_0\,
      I3 => scrambler_init(28),
      I4 => control_unit_din_data(13),
      I5 => \scrambler_din_data[31]_i_4_n_0\,
      O => p_0_in(13)
    );
\scrambler_din_data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[31]_i_2_n_0\,
      I1 => ref_distance(4),
      I2 => \scrambler_din_data[31]_i_3_n_0\,
      I3 => scrambler_init(29),
      I4 => control_unit_din_data(14),
      I5 => \scrambler_din_data[31]_i_4_n_0\,
      O => p_0_in(14)
    );
\scrambler_din_data[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[31]_i_2_n_0\,
      I1 => ref_distance(5),
      I2 => \scrambler_din_data[31]_i_3_n_0\,
      I3 => scrambler_init(30),
      I4 => control_unit_din_data(15),
      I5 => \scrambler_din_data[31]_i_4_n_0\,
      O => p_0_in(15)
    );
\scrambler_din_data[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[31]_i_2_n_0\,
      I1 => ref_distance(6),
      I2 => \scrambler_din_data[31]_i_3_n_0\,
      I3 => scrambler_init(31),
      I4 => control_unit_din_data(16),
      I5 => \scrambler_din_data[31]_i_4_n_0\,
      O => p_0_in(16)
    );
\scrambler_din_data[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[31]_i_2_n_0\,
      I1 => ref_distance(7),
      I2 => \scrambler_din_data[31]_i_3_n_0\,
      I3 => num_words(0),
      I4 => control_unit_din_data(17),
      I5 => \scrambler_din_data[31]_i_4_n_0\,
      O => p_0_in(17)
    );
\scrambler_din_data[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[31]_i_2_n_0\,
      I1 => scrambler_init(1),
      I2 => \scrambler_din_data[31]_i_3_n_0\,
      I3 => num_words(1),
      I4 => control_unit_din_data(18),
      I5 => \scrambler_din_data[31]_i_4_n_0\,
      O => p_0_in(18)
    );
\scrambler_din_data[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[31]_i_2_n_0\,
      I1 => scrambler_init(2),
      I2 => \scrambler_din_data[31]_i_3_n_0\,
      I3 => num_words(2),
      I4 => control_unit_din_data(19),
      I5 => \scrambler_din_data[31]_i_4_n_0\,
      O => p_0_in(19)
    );
\scrambler_din_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => control_unit_din_data(1),
      I1 => \scrambler_din_data[31]_i_4_n_0\,
      I2 => \scrambler_din_data[1]_i_2_n_0\,
      O => p_0_in(1)
    );
\scrambler_din_data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[11]_i_3_n_0\,
      I1 => start_tx,
      I2 => \scrambler_din_data[31]_i_2_n_0\,
      I3 => mod_cod_schemes(1),
      I4 => scrambler_init(16),
      I5 => \scrambler_din_data[31]_i_3_n_0\,
      O => \scrambler_din_data[1]_i_2_n_0\
    );
\scrambler_din_data[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[31]_i_2_n_0\,
      I1 => scrambler_init(3),
      I2 => \scrambler_din_data[31]_i_3_n_0\,
      I3 => num_words(3),
      I4 => control_unit_din_data(20),
      I5 => \scrambler_din_data[31]_i_4_n_0\,
      O => p_0_in(20)
    );
\scrambler_din_data[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[31]_i_2_n_0\,
      I1 => scrambler_init(4),
      I2 => \scrambler_din_data[31]_i_3_n_0\,
      I3 => num_words(4),
      I4 => control_unit_din_data(21),
      I5 => \scrambler_din_data[31]_i_4_n_0\,
      O => p_0_in(21)
    );
\scrambler_din_data[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[31]_i_2_n_0\,
      I1 => scrambler_init(5),
      I2 => \scrambler_din_data[31]_i_3_n_0\,
      I3 => num_words(5),
      I4 => control_unit_din_data(22),
      I5 => \scrambler_din_data[31]_i_4_n_0\,
      O => p_0_in(22)
    );
\scrambler_din_data[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[31]_i_2_n_0\,
      I1 => scrambler_init(6),
      I2 => \scrambler_din_data[31]_i_3_n_0\,
      I3 => num_words(6),
      I4 => control_unit_din_data(23),
      I5 => \scrambler_din_data[31]_i_4_n_0\,
      O => p_0_in(23)
    );
\scrambler_din_data[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[31]_i_2_n_0\,
      I1 => scrambler_init(7),
      I2 => \scrambler_din_data[31]_i_3_n_0\,
      I3 => num_words(7),
      I4 => control_unit_din_data(24),
      I5 => \scrambler_din_data[31]_i_4_n_0\,
      O => p_0_in(24)
    );
\scrambler_din_data[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[31]_i_2_n_0\,
      I1 => scrambler_init(8),
      I2 => \scrambler_din_data[31]_i_3_n_0\,
      I3 => num_words(8),
      I4 => control_unit_din_data(25),
      I5 => \scrambler_din_data[31]_i_4_n_0\,
      O => p_0_in(25)
    );
\scrambler_din_data[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[31]_i_2_n_0\,
      I1 => scrambler_init(9),
      I2 => \scrambler_din_data[31]_i_3_n_0\,
      I3 => num_words(9),
      I4 => control_unit_din_data(26),
      I5 => \scrambler_din_data[31]_i_4_n_0\,
      O => p_0_in(26)
    );
\scrambler_din_data[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[31]_i_2_n_0\,
      I1 => scrambler_init(10),
      I2 => \scrambler_din_data[31]_i_3_n_0\,
      I3 => num_words(10),
      I4 => control_unit_din_data(27),
      I5 => \scrambler_din_data[31]_i_4_n_0\,
      O => p_0_in(27)
    );
\scrambler_din_data[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[31]_i_2_n_0\,
      I1 => scrambler_init(11),
      I2 => \scrambler_din_data[31]_i_3_n_0\,
      I3 => num_words(11),
      I4 => control_unit_din_data(28),
      I5 => \scrambler_din_data[31]_i_4_n_0\,
      O => p_0_in(28)
    );
\scrambler_din_data[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[31]_i_2_n_0\,
      I1 => scrambler_init(12),
      I2 => \scrambler_din_data[31]_i_3_n_0\,
      I3 => num_words(12),
      I4 => control_unit_din_data(29),
      I5 => \scrambler_din_data[31]_i_4_n_0\,
      O => p_0_in(29)
    );
\scrambler_din_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => control_unit_din_data(2),
      I1 => \scrambler_din_data[31]_i_4_n_0\,
      I2 => \scrambler_din_data[2]_i_2_n_0\,
      O => p_0_in(2)
    );
\scrambler_din_data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[11]_i_3_n_0\,
      I1 => phy_src_address(0),
      I2 => \scrambler_din_data[31]_i_2_n_0\,
      I3 => mod_cod_schemes(2),
      I4 => scrambler_init(17),
      I5 => \scrambler_din_data[31]_i_3_n_0\,
      O => \scrambler_din_data[2]_i_2_n_0\
    );
\scrambler_din_data[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[31]_i_2_n_0\,
      I1 => scrambler_init(13),
      I2 => \scrambler_din_data[31]_i_3_n_0\,
      I3 => num_words(13),
      I4 => control_unit_din_data(30),
      I5 => \scrambler_din_data[31]_i_4_n_0\,
      O => p_0_in(30)
    );
\scrambler_din_data[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[31]_i_2_n_0\,
      I1 => scrambler_init(14),
      I2 => \scrambler_din_data[31]_i_3_n_0\,
      I3 => num_words(14),
      I4 => control_unit_din_data(31),
      I5 => \scrambler_din_data[31]_i_4_n_0\,
      O => p_0_in(31)
    );
\scrambler_din_data[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \control_unit_states.n_reg_n_0_[1]\,
      I1 => state(2),
      I2 => \control_unit_states.n_reg_n_0_[2]\,
      I3 => \scrambler_din_data[31]_i_5_n_0\,
      I4 => \scrambler_din_data[31]_i_6_n_0\,
      I5 => \control_unit_states.n_reg_n_0_[0]\,
      O => \scrambler_din_data[31]_i_2_n_0\
    );
\scrambler_din_data[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \control_unit_states.n_reg_n_0_[1]\,
      I1 => state(2),
      I2 => \control_unit_states.n_reg_n_0_[2]\,
      I3 => \scrambler_din_data[31]_i_5_n_0\,
      I4 => \scrambler_din_data[31]_i_6_n_0\,
      I5 => \control_unit_states.n_reg_n_0_[0]\,
      O => \scrambler_din_data[31]_i_3_n_0\
    );
\scrambler_din_data[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"515555FF"
    )
        port map (
      I0 => state(2),
      I1 => control_unit_din_valid,
      I2 => \control_unit_states.n_reg_n_0_[3]\,
      I3 => state(1),
      I4 => state(0),
      O => \scrambler_din_data[31]_i_4_n_0\
    );
\scrambler_din_data[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \control_unit_states.n_reg_n_0_[3]\,
      I1 => control_unit_din_valid,
      O => \scrambler_din_data[31]_i_5_n_0\
    );
\scrambler_din_data[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \scrambler_din_data[31]_i_6_n_0\
    );
\scrambler_din_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => control_unit_din_data(3),
      I1 => \scrambler_din_data[31]_i_4_n_0\,
      I2 => \scrambler_din_data[3]_i_2_n_0\,
      O => p_0_in(3)
    );
\scrambler_din_data[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[11]_i_3_n_0\,
      I1 => phy_src_address(1),
      I2 => \scrambler_din_data[31]_i_2_n_0\,
      I3 => mod_cod_schemes(3),
      I4 => scrambler_init(18),
      I5 => \scrambler_din_data[31]_i_3_n_0\,
      O => \scrambler_din_data[3]_i_2_n_0\
    );
\scrambler_din_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => control_unit_din_data(4),
      I1 => \scrambler_din_data[31]_i_4_n_0\,
      I2 => \scrambler_din_data[4]_i_2_n_0\,
      O => p_0_in(4)
    );
\scrambler_din_data[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[11]_i_3_n_0\,
      I1 => phy_src_address(2),
      I2 => \scrambler_din_data[31]_i_2_n_0\,
      I3 => mod_cod_schemes(4),
      I4 => scrambler_init(19),
      I5 => \scrambler_din_data[31]_i_3_n_0\,
      O => \scrambler_din_data[4]_i_2_n_0\
    );
\scrambler_din_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => control_unit_din_data(5),
      I1 => \scrambler_din_data[31]_i_4_n_0\,
      I2 => \scrambler_din_data[5]_i_2_n_0\,
      O => p_0_in(5)
    );
\scrambler_din_data[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[11]_i_3_n_0\,
      I1 => phy_src_address(3),
      I2 => \scrambler_din_data[31]_i_2_n_0\,
      I3 => num_streams(0),
      I4 => scrambler_init(20),
      I5 => \scrambler_din_data[31]_i_3_n_0\,
      O => \scrambler_din_data[5]_i_2_n_0\
    );
\scrambler_din_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => control_unit_din_data(6),
      I1 => \scrambler_din_data[31]_i_4_n_0\,
      I2 => \scrambler_din_data[6]_i_2_n_0\,
      O => p_0_in(6)
    );
\scrambler_din_data[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[11]_i_3_n_0\,
      I1 => phy_src_address(4),
      I2 => \scrambler_din_data[31]_i_2_n_0\,
      I3 => num_streams(1),
      I4 => scrambler_init(21),
      I5 => \scrambler_din_data[31]_i_3_n_0\,
      O => \scrambler_din_data[6]_i_2_n_0\
    );
\scrambler_din_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => control_unit_din_data(7),
      I1 => \scrambler_din_data[31]_i_4_n_0\,
      I2 => \scrambler_din_data[7]_i_2_n_0\,
      O => p_0_in(7)
    );
\scrambler_din_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[11]_i_3_n_0\,
      I1 => phy_dest_address(0),
      I2 => \scrambler_din_data[31]_i_2_n_0\,
      I3 => num_streams(2),
      I4 => scrambler_init(22),
      I5 => \scrambler_din_data[31]_i_3_n_0\,
      O => \scrambler_din_data[7]_i_2_n_0\
    );
\scrambler_din_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => control_unit_din_data(8),
      I1 => \scrambler_din_data[31]_i_4_n_0\,
      I2 => \scrambler_din_data[8]_i_2_n_0\,
      O => p_0_in(8)
    );
\scrambler_din_data[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[11]_i_3_n_0\,
      I1 => phy_dest_address(1),
      I2 => \scrambler_din_data[31]_i_2_n_0\,
      I3 => num_streams(3),
      I4 => scrambler_init(23),
      I5 => \scrambler_din_data[31]_i_3_n_0\,
      O => \scrambler_din_data[8]_i_2_n_0\
    );
\scrambler_din_data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => control_unit_din_data(9),
      I1 => \scrambler_din_data[31]_i_4_n_0\,
      I2 => \scrambler_din_data[9]_i_2_n_0\,
      O => p_0_in(9)
    );
\scrambler_din_data[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \scrambler_din_data[11]_i_3_n_0\,
      I1 => phy_dest_address(2),
      I2 => \scrambler_din_data[31]_i_2_n_0\,
      I3 => num_streams(4),
      I4 => scrambler_init(24),
      I5 => \scrambler_din_data[31]_i_3_n_0\,
      O => \scrambler_din_data[9]_i_2_n_0\
    );
\scrambler_din_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(0),
      Q => scrambler_din_data(0)
    );
\scrambler_din_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(10),
      Q => scrambler_din_data(10)
    );
\scrambler_din_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(11),
      Q => scrambler_din_data(11)
    );
\scrambler_din_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(12),
      Q => scrambler_din_data(12)
    );
\scrambler_din_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(13),
      Q => scrambler_din_data(13)
    );
\scrambler_din_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(14),
      Q => scrambler_din_data(14)
    );
\scrambler_din_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(15),
      Q => scrambler_din_data(15)
    );
\scrambler_din_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(16),
      Q => scrambler_din_data(16)
    );
\scrambler_din_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(17),
      Q => scrambler_din_data(17)
    );
\scrambler_din_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(18),
      Q => scrambler_din_data(18)
    );
\scrambler_din_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(19),
      Q => scrambler_din_data(19)
    );
\scrambler_din_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(1),
      Q => scrambler_din_data(1)
    );
\scrambler_din_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(20),
      Q => scrambler_din_data(20)
    );
\scrambler_din_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(21),
      Q => scrambler_din_data(21)
    );
\scrambler_din_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(22),
      Q => scrambler_din_data(22)
    );
\scrambler_din_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(23),
      Q => scrambler_din_data(23)
    );
\scrambler_din_data_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(24),
      Q => scrambler_din_data(24)
    );
\scrambler_din_data_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(25),
      Q => scrambler_din_data(25)
    );
\scrambler_din_data_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(26),
      Q => scrambler_din_data(26)
    );
\scrambler_din_data_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(27),
      Q => scrambler_din_data(27)
    );
\scrambler_din_data_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(28),
      Q => scrambler_din_data(28)
    );
\scrambler_din_data_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(29),
      Q => scrambler_din_data(29)
    );
\scrambler_din_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(2),
      Q => scrambler_din_data(2)
    );
\scrambler_din_data_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(30),
      Q => scrambler_din_data(30)
    );
\scrambler_din_data_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(31),
      Q => scrambler_din_data(31)
    );
\scrambler_din_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(3),
      Q => scrambler_din_data(3)
    );
\scrambler_din_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(4),
      Q => scrambler_din_data(4)
    );
\scrambler_din_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(5),
      Q => scrambler_din_data(5)
    );
\scrambler_din_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(6),
      Q => scrambler_din_data(6)
    );
\scrambler_din_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(7),
      Q => scrambler_din_data(7)
    );
\scrambler_din_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(8),
      Q => scrambler_din_data(8)
    );
\scrambler_din_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(9),
      Q => scrambler_din_data(9)
    );
scrambler_din_last_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AAEAAAAAAA"
    )
        port map (
      I0 => control_unit_end_of_frame,
      I1 => control_unit_din_valid,
      I2 => \control_unit_states.n_reg_n_0_[3]\,
      I3 => state(1),
      I4 => state(0),
      I5 => state(2),
      O => scrambler_din_last_i_1_n_0
    );
scrambler_din_last_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => scrambler_din_last_i_1_n_0,
      Q => scrambler_din_last
    );
scrambler_din_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => control_unit_din_valid,
      O => scrambler_din_valid_i_1_n_0
    );
scrambler_din_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => scrambler_din_valid_i_1_n_0,
      Q => \^scrambler_control_enable\
    );
scrambler_last_frame_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => control_unit_end_of_frame,
      O => scrambler_last_frame_i_1_n_0
    );
scrambler_last_frame_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => scrambler_last_frame_i_1_n_0,
      Q => scrambler_last_frame
    );
\scrambler_seed[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => p_12_in
    );
\scrambler_seed_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(10),
      Q => scrambler_seed(10),
      R => '0'
    );
\scrambler_seed_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(11),
      Q => scrambler_seed(11),
      R => '0'
    );
\scrambler_seed_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(12),
      Q => scrambler_seed(12),
      R => '0'
    );
\scrambler_seed_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(13),
      Q => scrambler_seed(13),
      R => '0'
    );
\scrambler_seed_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(14),
      Q => scrambler_seed(14),
      R => '0'
    );
\scrambler_seed_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(15),
      Q => scrambler_seed(15),
      R => '0'
    );
\scrambler_seed_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(16),
      Q => scrambler_seed(16),
      R => '0'
    );
\scrambler_seed_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(17),
      Q => scrambler_seed(17),
      R => '0'
    );
\scrambler_seed_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(18),
      Q => scrambler_seed(18),
      R => '0'
    );
\scrambler_seed_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(19),
      Q => scrambler_seed(19),
      R => '0'
    );
\scrambler_seed_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(1),
      Q => scrambler_seed(1),
      R => '0'
    );
\scrambler_seed_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(20),
      Q => scrambler_seed(20),
      R => '0'
    );
\scrambler_seed_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(21),
      Q => scrambler_seed(21),
      R => '0'
    );
\scrambler_seed_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(22),
      Q => scrambler_seed(22),
      R => '0'
    );
\scrambler_seed_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(23),
      Q => scrambler_seed(23),
      R => '0'
    );
\scrambler_seed_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(24),
      Q => scrambler_seed(24),
      R => '0'
    );
\scrambler_seed_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(25),
      Q => scrambler_seed(25),
      R => '0'
    );
\scrambler_seed_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(26),
      Q => scrambler_seed(26),
      R => '0'
    );
\scrambler_seed_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(27),
      Q => scrambler_seed(27),
      R => '0'
    );
\scrambler_seed_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(28),
      Q => scrambler_seed(28),
      R => '0'
    );
\scrambler_seed_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(29),
      Q => scrambler_seed(29),
      R => '0'
    );
\scrambler_seed_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(2),
      Q => scrambler_seed(2),
      R => '0'
    );
\scrambler_seed_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(30),
      Q => scrambler_seed(30),
      R => '0'
    );
\scrambler_seed_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(31),
      Q => scrambler_seed(31),
      R => '0'
    );
\scrambler_seed_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(3),
      Q => scrambler_seed(3),
      R => '0'
    );
\scrambler_seed_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(4),
      Q => scrambler_seed(4),
      R => '0'
    );
\scrambler_seed_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(5),
      Q => scrambler_seed(5),
      R => '0'
    );
\scrambler_seed_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(6),
      Q => scrambler_seed(6),
      R => '0'
    );
\scrambler_seed_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(7),
      Q => scrambler_seed(7),
      R => '0'
    );
\scrambler_seed_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(8),
      Q => scrambler_seed(8),
      R => '0'
    );
\scrambler_seed_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_12_in,
      D => scrambler_init(9),
      Q => scrambler_seed(9),
      R => '0'
    );
signal_field_en_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => control_unit_din_valid,
      I1 => \control_unit_states.n_reg_n_0_[3]\,
      O => signal_field_en_i_1_n_0
    );
signal_field_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => encoder_code_rate0,
      D => signal_field_en_i_1_n_0,
      Q => signal_field_en,
      R => '0'
    );
\splitter_data_in_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(0),
      Q => splitter_data_in(0),
      R => '0'
    );
\splitter_data_in_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(10),
      Q => splitter_data_in(10),
      R => '0'
    );
\splitter_data_in_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(11),
      Q => splitter_data_in(11),
      R => '0'
    );
\splitter_data_in_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(12),
      Q => splitter_data_in(12),
      R => '0'
    );
\splitter_data_in_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(13),
      Q => splitter_data_in(13),
      R => '0'
    );
\splitter_data_in_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(14),
      Q => splitter_data_in(14),
      R => '0'
    );
\splitter_data_in_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(15),
      Q => splitter_data_in(15),
      R => '0'
    );
\splitter_data_in_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(16),
      Q => splitter_data_in(16),
      R => '0'
    );
\splitter_data_in_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(17),
      Q => splitter_data_in(17),
      R => '0'
    );
\splitter_data_in_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(18),
      Q => splitter_data_in(18),
      R => '0'
    );
\splitter_data_in_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(19),
      Q => splitter_data_in(19),
      R => '0'
    );
\splitter_data_in_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(1),
      Q => splitter_data_in(1),
      R => '0'
    );
\splitter_data_in_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(20),
      Q => splitter_data_in(20),
      R => '0'
    );
\splitter_data_in_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(21),
      Q => splitter_data_in(21),
      R => '0'
    );
\splitter_data_in_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(22),
      Q => splitter_data_in(22),
      R => '0'
    );
\splitter_data_in_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(23),
      Q => splitter_data_in(23),
      R => '0'
    );
\splitter_data_in_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(24),
      Q => splitter_data_in(24),
      R => '0'
    );
\splitter_data_in_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(25),
      Q => splitter_data_in(25),
      R => '0'
    );
\splitter_data_in_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(26),
      Q => splitter_data_in(26),
      R => '0'
    );
\splitter_data_in_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(27),
      Q => splitter_data_in(27),
      R => '0'
    );
\splitter_data_in_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(28),
      Q => splitter_data_in(28),
      R => '0'
    );
\splitter_data_in_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(29),
      Q => splitter_data_in(29),
      R => '0'
    );
\splitter_data_in_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(2),
      Q => splitter_data_in(2),
      R => '0'
    );
\splitter_data_in_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(30),
      Q => splitter_data_in(30),
      R => '0'
    );
\splitter_data_in_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(31),
      Q => splitter_data_in(31),
      R => '0'
    );
\splitter_data_in_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(3),
      Q => splitter_data_in(3),
      R => '0'
    );
\splitter_data_in_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(4),
      Q => splitter_data_in(4),
      R => '0'
    );
\splitter_data_in_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(5),
      Q => splitter_data_in(5),
      R => '0'
    );
\splitter_data_in_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(6),
      Q => splitter_data_in(6),
      R => '0'
    );
\splitter_data_in_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(7),
      Q => splitter_data_in(7),
      R => '0'
    );
\splitter_data_in_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(8),
      Q => splitter_data_in(8),
      R => '0'
    );
\splitter_data_in_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => interleaver_din_ready015_out,
      D => interleaver_dout_data(9),
      Q => splitter_data_in(9),
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002A2AFFAA"
    )
        port map (
      I0 => state(1),
      I1 => \control_unit_states.n_reg_n_0_[3]\,
      I2 => control_unit_din_valid,
      I3 => start_tx,
      I4 => state(0),
      I5 => state(2),
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007FAA"
    )
        port map (
      I0 => state(1),
      I1 => control_unit_din_valid,
      I2 => \control_unit_states.n_reg_n_0_[3]\,
      I3 => state(0),
      I4 => state(2),
      O => \state[1]_i_1_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFA8FFFEFFFF"
    )
        port map (
      I0 => \control_unit_states.i_reg_n_0_[3]\,
      I1 => \control_unit_states.i_reg_n_0_[1]\,
      I2 => \control_unit_states.i_reg_n_0_[2]\,
      I3 => state(2),
      I4 => state(1),
      I5 => state(0),
      O => \state[2]_i_1_n_0\
    );
\state[2]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(23),
      I1 => \pilot_symbols_reg__0\(22),
      O => \state[2]_i_10_n_0\
    );
\state[2]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(7),
      O => \state[2]_i_11_n_0\
    );
\state[2]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(21),
      I1 => \pilot_symbols_reg__0\(20),
      O => \state[2]_i_12_n_0\
    );
\state[2]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(19),
      I1 => \pilot_symbols_reg__0\(18),
      O => \state[2]_i_13_n_0\
    );
\state[2]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(17),
      I1 => \pilot_symbols_reg__0\(16),
      O => \state[2]_i_14_n_0\
    );
\state[2]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(15),
      I1 => \pilot_symbols_reg__0\(14),
      O => \state[2]_i_15_n_0\
    );
\state[2]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(13),
      I1 => \pilot_symbols_reg__0\(12),
      O => \state[2]_i_16_n_0\
    );
\state[2]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(11),
      I1 => \pilot_symbols_reg__0\(10),
      O => \state[2]_i_17_n_0\
    );
\state[2]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(9),
      I1 => \pilot_symbols_reg__0\(8),
      O => \state[2]_i_18_n_0\
    );
\state[2]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(7),
      I1 => pilot_symbols_reg(6),
      O => \state[2]_i_19_n_0\
    );
\state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000DF00"
    )
        port map (
      I0 => mapper_dout_last,
      I1 => dpd_din_data_I1,
      I2 => interleaver_last_frame,
      I3 => state(2),
      I4 => control_unit_enable_i_3_n_0,
      I5 => \state[2]_i_4_n_0\,
      O => \state[2]_i_2_n_0\
    );
\state[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => \control_unit_states.n_reg_n_0_[3]\,
      I4 => control_unit_din_valid,
      O => \state[2]_i_4_n_0\
    );
\state[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(31),
      I1 => \pilot_symbols_reg__0\(30),
      O => \state[2]_i_6_n_0\
    );
\state[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(29),
      I1 => \pilot_symbols_reg__0\(28),
      O => \state[2]_i_7_n_0\
    );
\state[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(27),
      I1 => \pilot_symbols_reg__0\(26),
      O => \state[2]_i_8_n_0\
    );
\state[2]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pilot_symbols_reg__0\(25),
      I1 => \pilot_symbols_reg__0\(24),
      O => \state[2]_i_9_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state[2]_i_1_n_0\,
      CLR => reset,
      D => \state[0]_i_1_n_0\,
      Q => state(0)
    );
\state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state[2]_i_1_n_0\,
      CLR => reset,
      D => \state[1]_i_1_n_0\,
      Q => state(1)
    );
\state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state[2]_i_1_n_0\,
      CLR => reset,
      D => \state[2]_i_2_n_0\,
      Q => state(2)
    );
\state_reg[2]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \state_reg[2]_i_5_n_0\,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_state_reg[2]_i_3_CO_UNCONNECTED\(7 downto 5),
      CO(4) => dpd_din_data_I1,
      CO(3) => \state_reg[2]_i_3_n_4\,
      CO(2) => \state_reg[2]_i_3_n_5\,
      CO(1) => \state_reg[2]_i_3_n_6\,
      CO(0) => \state_reg[2]_i_3_n_7\,
      DI(7 downto 5) => B"000",
      DI(4) => \pilot_symbols_reg__0\(31),
      DI(3 downto 0) => B"0000",
      O(7 downto 0) => \NLW_state_reg[2]_i_3_O_UNCONNECTED\(7 downto 0),
      S(7 downto 5) => B"000",
      S(4) => \state[2]_i_6_n_0\,
      S(3) => \state[2]_i_7_n_0\,
      S(2) => \state[2]_i_8_n_0\,
      S(1) => \state[2]_i_9_n_0\,
      S(0) => \state[2]_i_10_n_0\
    );
\state_reg[2]_i_5\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \state_reg[2]_i_5_n_0\,
      CO(6) => \state_reg[2]_i_5_n_1\,
      CO(5) => \state_reg[2]_i_5_n_2\,
      CO(4) => \state_reg[2]_i_5_n_3\,
      CO(3) => \state_reg[2]_i_5_n_4\,
      CO(2) => \state_reg[2]_i_5_n_5\,
      CO(1) => \state_reg[2]_i_5_n_6\,
      CO(0) => \state_reg[2]_i_5_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \state[2]_i_11_n_0\,
      O(7 downto 0) => \NLW_state_reg[2]_i_5_O_UNCONNECTED\(7 downto 0),
      S(7) => \state[2]_i_12_n_0\,
      S(6) => \state[2]_i_13_n_0\,
      S(5) => \state[2]_i_14_n_0\,
      S(4) => \state[2]_i_15_n_0\,
      S(3) => \state[2]_i_16_n_0\,
      S(2) => \state[2]_i_17_n_0\,
      S(1) => \state[2]_i_18_n_0\,
      S(0) => \state[2]_i_19_n_0\
    );
\symbol_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CDCFCFCF"
    )
        port map (
      I0 => symbol_counter_reg(8),
      I1 => \data_splitter.index[5]_i_4_n_0\,
      I2 => signal_field_en,
      I3 => symbol_counter_reg(9),
      I4 => symbol_counter_reg(7),
      I5 => symbol_counter_reg(0),
      O => \p_0_in__1\(0)
    );
\symbol_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \symbol_counter[6]_i_2_n_0\,
      I1 => symbol_counter_reg(0),
      I2 => symbol_counter_reg(1),
      O => \p_0_in__1\(1)
    );
\symbol_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \symbol_counter[6]_i_2_n_0\,
      I1 => symbol_counter_reg(1),
      I2 => symbol_counter_reg(0),
      I3 => symbol_counter_reg(2),
      O => \p_0_in__1\(2)
    );
\symbol_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \symbol_counter[6]_i_2_n_0\,
      I1 => symbol_counter_reg(2),
      I2 => symbol_counter_reg(0),
      I3 => symbol_counter_reg(1),
      I4 => symbol_counter_reg(3),
      O => \p_0_in__1\(3)
    );
\symbol_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \symbol_counter[6]_i_2_n_0\,
      I1 => symbol_counter_reg(3),
      I2 => symbol_counter_reg(1),
      I3 => symbol_counter_reg(0),
      I4 => symbol_counter_reg(2),
      I5 => symbol_counter_reg(4),
      O => \p_0_in__1\(4)
    );
\symbol_counter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \symbol_counter[6]_i_2_n_0\,
      I1 => \symbol_counter[5]_i_2_n_0\,
      I2 => symbol_counter_reg(5),
      O => \p_0_in__1\(5)
    );
\symbol_counter[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => symbol_counter_reg(3),
      I1 => symbol_counter_reg(1),
      I2 => symbol_counter_reg(0),
      I3 => symbol_counter_reg(2),
      I4 => symbol_counter_reg(4),
      O => \symbol_counter[5]_i_2_n_0\
    );
\symbol_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \symbol_counter[6]_i_2_n_0\,
      I1 => \symbol_counter[6]_i_3_n_0\,
      I2 => symbol_counter_reg(6),
      O => \p_0_in__1\(6)
    );
\symbol_counter[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF07FF0F"
    )
        port map (
      I0 => symbol_counter_reg(7),
      I1 => symbol_counter_reg(9),
      I2 => signal_field_en,
      I3 => \data_splitter.index[5]_i_4_n_0\,
      I4 => symbol_counter_reg(8),
      O => \symbol_counter[6]_i_2_n_0\
    );
\symbol_counter[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => symbol_counter_reg(4),
      I1 => symbol_counter_reg(2),
      I2 => symbol_counter_reg(0),
      I3 => symbol_counter_reg(1),
      I4 => symbol_counter_reg(3),
      I5 => symbol_counter_reg(5),
      O => \symbol_counter[6]_i_3_n_0\
    );
\symbol_counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA02AA0A55055505"
    )
        port map (
      I0 => \symbol_counter[9]_i_2_n_0\,
      I1 => symbol_counter_reg(9),
      I2 => signal_field_en,
      I3 => \data_splitter.index[5]_i_4_n_0\,
      I4 => symbol_counter_reg(8),
      I5 => symbol_counter_reg(7),
      O => \p_0_in__1\(7)
    );
\symbol_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C43033F0FF0000"
    )
        port map (
      I0 => symbol_counter_reg(9),
      I1 => \symbol_counter[9]_i_2_n_0\,
      I2 => \data_splitter.index[5]_i_4_n_0\,
      I3 => signal_field_en,
      I4 => symbol_counter_reg(8),
      I5 => symbol_counter_reg(7),
      O => \p_0_in__1\(8)
    );
\symbol_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88CFCFCF45000000"
    )
        port map (
      I0 => \symbol_counter[9]_i_2_n_0\,
      I1 => \data_splitter.index[5]_i_4_n_0\,
      I2 => signal_field_en,
      I3 => symbol_counter_reg(8),
      I4 => symbol_counter_reg(7),
      I5 => symbol_counter_reg(9),
      O => \p_0_in__1\(9)
    );
\symbol_counter[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \symbol_counter[6]_i_3_n_0\,
      I1 => symbol_counter_reg(6),
      O => \symbol_counter[9]_i_2_n_0\
    );
\symbol_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mapper_din_valid_i_1_n_0,
      CLR => reset,
      D => \p_0_in__1\(0),
      Q => symbol_counter_reg(0)
    );
\symbol_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mapper_din_valid_i_1_n_0,
      CLR => reset,
      D => \p_0_in__1\(1),
      Q => symbol_counter_reg(1)
    );
\symbol_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mapper_din_valid_i_1_n_0,
      CLR => reset,
      D => \p_0_in__1\(2),
      Q => symbol_counter_reg(2)
    );
\symbol_counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mapper_din_valid_i_1_n_0,
      CLR => reset,
      D => \p_0_in__1\(3),
      Q => symbol_counter_reg(3)
    );
\symbol_counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mapper_din_valid_i_1_n_0,
      CLR => reset,
      D => \p_0_in__1\(4),
      Q => symbol_counter_reg(4)
    );
\symbol_counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mapper_din_valid_i_1_n_0,
      CLR => reset,
      D => \p_0_in__1\(5),
      Q => symbol_counter_reg(5)
    );
\symbol_counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mapper_din_valid_i_1_n_0,
      CLR => reset,
      D => \p_0_in__1\(6),
      Q => symbol_counter_reg(6)
    );
\symbol_counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mapper_din_valid_i_1_n_0,
      CLR => reset,
      D => \p_0_in__1\(7),
      Q => symbol_counter_reg(7)
    );
\symbol_counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mapper_din_valid_i_1_n_0,
      CLR => reset,
      D => \p_0_in__1\(8),
      Q => symbol_counter_reg(8)
    );
\symbol_counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => mapper_din_valid_i_1_n_0,
      CLR => reset,
      D => \p_0_in__1\(9),
      Q => symbol_counter_reg(9)
    );
temp_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEFFFFFEEE0000"
    )
        port map (
      I0 => temp_i_2_n_0,
      I1 => temp_i_3_n_0,
      I2 => \data_splitter.index[5]_i_4_n_0\,
      I3 => interleaver_din_ready_i_3_n_0,
      I4 => temp_i_4_n_0,
      I5 => temp_reg_n_0,
      O => temp_i_1_n_0
    );
temp_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF888A88"
    )
        port map (
      I0 => \data_splitter.index_reg\(2),
      I1 => temp_i_5_n_0,
      I2 => \data_splitter.index[5]_i_3_n_0\,
      I3 => \mapper_din_data[5]_i_11_n_0\,
      I4 => \data_splitter.index_reg\(3),
      I5 => \data_splitter.index[5]_i_4_n_0\,
      O => temp_i_2_n_0
    );
temp_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88FFFFAA88EEC8"
    )
        port map (
      I0 => temp_i_6_n_0,
      I1 => \data_splitter.index_reg\(4),
      I2 => \mapper_din_data[5]_i_11_n_0\,
      I3 => mod_cod_schemes(2),
      I4 => \data_splitter.index[5]_i_4_n_0\,
      I5 => \data_splitter.index_reg\(5),
      O => temp_i_3_n_0
    );
temp_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF44444445"
    )
        port map (
      I0 => mapper_din_valid_i_2_n_0,
      I1 => temp_reg_n_0,
      I2 => \data_splitter.index_reg\(5),
      I3 => mod_cod_schemes(2),
      I4 => \mapper_din_data[5]_i_11_n_0\,
      I5 => \mapper_din_data[5]_i_4_n_0\,
      O => temp_i_4_n_0
    );
temp_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0CEC000"
    )
        port map (
      I0 => \data_splitter.index_reg\(0),
      I1 => \data_splitter.index_reg\(1),
      I2 => mod_cod_schemes(3),
      I3 => mod_cod_schemes(2),
      I4 => mod_cod_schemes(4),
      O => temp_i_5_n_0
    );
temp_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \data_splitter.index[5]_i_4_n_0\,
      I1 => \data_splitter.index_reg\(3),
      I2 => \data_splitter.index_reg\(2),
      I3 => \data_splitter.index_reg\(0),
      I4 => \data_splitter.index_reg\(1),
      O => temp_i_6_n_0
    );
temp_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => temp_i_1_n_0,
      Q => temp_reg_n_0
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
    control_unit_din_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    control_unit_din_valid : in STD_LOGIC;
    control_unit_end_of_frame : in STD_LOGIC;
    control_unit_dout_ready : out STD_LOGIC;
    control_unit_enable : out STD_LOGIC;
    mod_cod_schemes : in STD_LOGIC_VECTOR ( 4 downto 0 );
    num_streams : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ref_distance : in STD_LOGIC_VECTOR ( 7 downto 0 );
    scrambler_init : in STD_LOGIC_VECTOR ( 31 downto 1 );
    num_words : in STD_LOGIC_VECTOR ( 15 downto 0 );
    start_tx : in STD_LOGIC;
    phy_src_address : in STD_LOGIC_VECTOR ( 4 downto 0 );
    phy_dest_address : in STD_LOGIC_VECTOR ( 4 downto 0 );
    scrambler_din_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    scrambler_seed : out STD_LOGIC_VECTOR ( 31 downto 1 );
    scrambler_din_valid : out STD_LOGIC;
    scrambler_din_last : out STD_LOGIC;
    scrambler_control_enable : out STD_LOGIC;
    scrambler_last_frame : out STD_LOGIC;
    encoder_code_rate : out STD_LOGIC_VECTOR ( 1 downto 0 );
    encoder_reset_fifos : out STD_LOGIC;
    interleaver_dout_valid : in STD_LOGIC;
    interleaver_dout_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    interleaver_last_frame : in STD_LOGIC;
    interleaver_din_ready : out STD_LOGIC;
    mapper_dout_last : in STD_LOGIC;
    mapper_selected_mod : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mapper_din_data : out STD_LOGIC_VECTOR ( 5 downto 0 );
    mapper_din_valid : out STD_LOGIC;
    mapper_din_last : out STD_LOGIC;
    dpd_din_valid : out STD_LOGIC;
    dpd_din_data_I : out STD_LOGIC_VECTOR ( 11 downto 0 );
    dpd_din_data_Q : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Design_2_Control_unit_top_0_0,Control_unit_top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Control_unit_top,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^dpd_din_data_i\ : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal NLW_U0_dpd_din_data_I_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_dpd_din_data_Q_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Design_2_clk, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  dpd_din_data_I(11 downto 1) <= \^dpd_din_data_i\(11 downto 1);
  dpd_din_data_I(0) <= \<const1>\;
  dpd_din_data_Q(11) <= \<const0>\;
  dpd_din_data_Q(10) <= \<const0>\;
  dpd_din_data_Q(9) <= \<const0>\;
  dpd_din_data_Q(8) <= \<const0>\;
  dpd_din_data_Q(7) <= \<const0>\;
  dpd_din_data_Q(6) <= \<const0>\;
  dpd_din_data_Q(5) <= \<const0>\;
  dpd_din_data_Q(4) <= \<const0>\;
  dpd_din_data_Q(3) <= \<const0>\;
  dpd_din_data_Q(2) <= \<const0>\;
  dpd_din_data_Q(1) <= \<const0>\;
  dpd_din_data_Q(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Control_unit_top
     port map (
      clk => clk,
      control_unit_din_data(31 downto 0) => control_unit_din_data(31 downto 0),
      control_unit_din_valid => control_unit_din_valid,
      control_unit_dout_ready => control_unit_dout_ready,
      control_unit_enable => control_unit_enable,
      control_unit_end_of_frame => control_unit_end_of_frame,
      dpd_din_data_I(11 downto 1) => \^dpd_din_data_i\(11 downto 1),
      dpd_din_data_I(0) => NLW_U0_dpd_din_data_I_UNCONNECTED(0),
      dpd_din_data_Q(11 downto 0) => NLW_U0_dpd_din_data_Q_UNCONNECTED(11 downto 0),
      dpd_din_valid => dpd_din_valid,
      encoder_code_rate(1 downto 0) => encoder_code_rate(1 downto 0),
      encoder_reset_fifos => encoder_reset_fifos,
      interleaver_din_ready => interleaver_din_ready,
      interleaver_dout_data(31 downto 0) => interleaver_dout_data(31 downto 0),
      interleaver_dout_valid => interleaver_dout_valid,
      interleaver_last_frame => interleaver_last_frame,
      mapper_din_data(5 downto 0) => mapper_din_data(5 downto 0),
      mapper_din_last => mapper_din_last,
      mapper_din_valid => mapper_din_valid,
      mapper_dout_last => mapper_dout_last,
      mapper_selected_mod(2 downto 0) => mapper_selected_mod(2 downto 0),
      mod_cod_schemes(4 downto 0) => mod_cod_schemes(4 downto 0),
      num_streams(4 downto 0) => num_streams(4 downto 0),
      num_words(15 downto 0) => num_words(15 downto 0),
      phy_dest_address(4 downto 0) => phy_dest_address(4 downto 0),
      phy_src_address(4 downto 0) => phy_src_address(4 downto 0),
      ref_distance(7 downto 0) => ref_distance(7 downto 0),
      reset => reset,
      scrambler_control_enable => scrambler_control_enable,
      scrambler_din_data(31 downto 0) => scrambler_din_data(31 downto 0),
      scrambler_din_last => scrambler_din_last,
      scrambler_din_valid => scrambler_din_valid,
      scrambler_init(31 downto 1) => scrambler_init(31 downto 1),
      scrambler_last_frame => scrambler_last_frame,
      scrambler_seed(31 downto 1) => scrambler_seed(31 downto 1),
      start_tx => start_tx
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
