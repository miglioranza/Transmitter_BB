-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Fri Apr  4 13:56:29 2025
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
    current_code_rate : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_out_ready : out STD_LOGIC;
    read_valid : out STD_LOGIC;
    data_in_ready : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    write_en : in STD_LOGIC;
    code_rate : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_block_interleaver;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_block_interleaver is
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal busy_reg_n_0 : STD_LOGIC;
  signal col_cnt : STD_LOGIC;
  signal \col_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \col_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \col_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal current_code_rate0 : STD_LOGIC;
  signal \data_out[31]_i_1_n_0\ : STD_LOGIC;
  signal \^data_out_ready\ : STD_LOGIC;
  signal data_out_ready1 : STD_LOGIC;
  signal \data_out_ready1_inferred__1/i__carry__0_n_6\ : STD_LOGIC;
  signal \data_out_ready1_inferred__1/i__carry__0_n_7\ : STD_LOGIC;
  signal \data_out_ready1_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \data_out_ready1_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \data_out_ready1_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \data_out_ready1_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \data_out_ready1_inferred__1/i__carry_n_4\ : STD_LOGIC;
  signal \data_out_ready1_inferred__1/i__carry_n_5\ : STD_LOGIC;
  signal \data_out_ready1_inferred__1/i__carry_n_6\ : STD_LOGIC;
  signal \data_out_ready1_inferred__1/i__carry_n_7\ : STD_LOGIC;
  signal data_out_ready2 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal data_out_ready_i_1_n_0 : STD_LOGIC;
  signal data_out_ready_i_2_n_0 : STD_LOGIC;
  signal \i__carry__0_i_10_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_11_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_2\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_4\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_5\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_6\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_7\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_9_n_0\ : STD_LOGIC;
  signal \i__carry_i_10_n_0\ : STD_LOGIC;
  signal \i__carry_i_10_n_1\ : STD_LOGIC;
  signal \i__carry_i_10_n_2\ : STD_LOGIC;
  signal \i__carry_i_10_n_3\ : STD_LOGIC;
  signal \i__carry_i_10_n_4\ : STD_LOGIC;
  signal \i__carry_i_10_n_5\ : STD_LOGIC;
  signal \i__carry_i_10_n_6\ : STD_LOGIC;
  signal \i__carry_i_10_n_7\ : STD_LOGIC;
  signal \i__carry_i_11_n_0\ : STD_LOGIC;
  signal \i__carry_i_11_n_1\ : STD_LOGIC;
  signal \i__carry_i_11_n_2\ : STD_LOGIC;
  signal \i__carry_i_11_n_3\ : STD_LOGIC;
  signal \i__carry_i_11_n_4\ : STD_LOGIC;
  signal \i__carry_i_11_n_5\ : STD_LOGIC;
  signal \i__carry_i_11_n_6\ : STD_LOGIC;
  signal \i__carry_i_11_n_7\ : STD_LOGIC;
  signal \i__carry_i_12_n_0\ : STD_LOGIC;
  signal \i__carry_i_13_n_0\ : STD_LOGIC;
  signal \i__carry_i_14_n_0\ : STD_LOGIC;
  signal \i__carry_i_15_n_0\ : STD_LOGIC;
  signal \i__carry_i_16_n_0\ : STD_LOGIC;
  signal \i__carry_i_17_n_0\ : STD_LOGIC;
  signal \i__carry_i_18_n_0\ : STD_LOGIC;
  signal \i__carry_i_19_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_20_n_0\ : STD_LOGIC;
  signal \i__carry_i_21_n_0\ : STD_LOGIC;
  signal \i__carry_i_22_n_0\ : STD_LOGIC;
  signal \i__carry_i_23_n_0\ : STD_LOGIC;
  signal \i__carry_i_24_n_0\ : STD_LOGIC;
  signal \i__carry_i_25_n_0\ : STD_LOGIC;
  signal \i__carry_i_26_n_0\ : STD_LOGIC;
  signal \i__carry_i_27_n_0\ : STD_LOGIC;
  signal \i__carry_i_28_n_0\ : STD_LOGIC;
  signal \i__carry_i_29_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_30_n_0\ : STD_LOGIC;
  signal \i__carry_i_31_n_0\ : STD_LOGIC;
  signal \i__carry_i_32_n_0\ : STD_LOGIC;
  signal \i__carry_i_33_n_0\ : STD_LOGIC;
  signal \i__carry_i_34_n_0\ : STD_LOGIC;
  signal \i__carry_i_35_n_0\ : STD_LOGIC;
  signal \i__carry_i_36_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_9_n_0\ : STD_LOGIC;
  signal \i__carry_i_9_n_1\ : STD_LOGIC;
  signal \i__carry_i_9_n_2\ : STD_LOGIC;
  signal \i__carry_i_9_n_3\ : STD_LOGIC;
  signal \i__carry_i_9_n_4\ : STD_LOGIC;
  signal \i__carry_i_9_n_5\ : STD_LOGIC;
  signal \i__carry_i_9_n_6\ : STD_LOGIC;
  signal \i__carry_i_9_n_7\ : STD_LOGIC;
  signal in13 : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal p_0_in : STD_LOGIC;
  signal p_0_in_carry_n_4 : STD_LOGIC;
  signal p_0_in_carry_n_5 : STD_LOGIC;
  signal p_0_in_carry_n_6 : STD_LOGIC;
  signal p_0_in_carry_n_7 : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_6_in : STD_LOGIC;
  signal p_6_in_carry_i_1_n_0 : STD_LOGIC;
  signal p_6_in_carry_i_2_n_0 : STD_LOGIC;
  signal p_6_in_carry_n_7 : STD_LOGIC;
  signal \read_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[1]_i_2_n_0\ : STD_LOGIC;
  signal \read_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[2]_i_2_n_0\ : STD_LOGIC;
  signal \read_addr[2]_i_3_n_0\ : STD_LOGIC;
  signal \read_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[3]_i_2_n_0\ : STD_LOGIC;
  signal \read_addr[3]_i_3_n_0\ : STD_LOGIC;
  signal \read_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[4]_i_2_n_0\ : STD_LOGIC;
  signal \read_addr[4]_i_3_n_0\ : STD_LOGIC;
  signal \read_addr[4]_i_4_n_0\ : STD_LOGIC;
  signal \read_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \read_addr[5]_i_2_n_0\ : STD_LOGIC;
  signal \read_addr[5]_i_3_n_0\ : STD_LOGIC;
  signal read_addr_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^read_valid\ : STD_LOGIC;
  signal read_valid_i_1_n_0 : STD_LOGIC;
  signal row_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \row_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \row_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \row_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \row_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \row_index[0]_i_10_n_0\ : STD_LOGIC;
  signal \row_index[0]_i_11_n_0\ : STD_LOGIC;
  signal \row_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \row_index[0]_i_3_n_0\ : STD_LOGIC;
  signal \row_index[0]_i_4_n_0\ : STD_LOGIC;
  signal \row_index[0]_i_5_n_0\ : STD_LOGIC;
  signal \row_index[0]_i_6_n_0\ : STD_LOGIC;
  signal \row_index[0]_i_7_n_0\ : STD_LOGIC;
  signal \row_index[0]_i_8_n_0\ : STD_LOGIC;
  signal \row_index[0]_i_9_n_0\ : STD_LOGIC;
  signal \row_index[16]_i_2_n_0\ : STD_LOGIC;
  signal \row_index[16]_i_3_n_0\ : STD_LOGIC;
  signal \row_index[16]_i_4_n_0\ : STD_LOGIC;
  signal \row_index[16]_i_5_n_0\ : STD_LOGIC;
  signal \row_index[16]_i_6_n_0\ : STD_LOGIC;
  signal \row_index[16]_i_7_n_0\ : STD_LOGIC;
  signal \row_index[16]_i_8_n_0\ : STD_LOGIC;
  signal \row_index[16]_i_9_n_0\ : STD_LOGIC;
  signal \row_index[24]_i_2_n_0\ : STD_LOGIC;
  signal \row_index[24]_i_3_n_0\ : STD_LOGIC;
  signal \row_index[24]_i_4_n_0\ : STD_LOGIC;
  signal \row_index[24]_i_5_n_0\ : STD_LOGIC;
  signal \row_index[24]_i_6_n_0\ : STD_LOGIC;
  signal \row_index[24]_i_7_n_0\ : STD_LOGIC;
  signal \row_index[24]_i_8_n_0\ : STD_LOGIC;
  signal \row_index[24]_i_9_n_0\ : STD_LOGIC;
  signal \row_index[8]_i_2_n_0\ : STD_LOGIC;
  signal \row_index[8]_i_3_n_0\ : STD_LOGIC;
  signal \row_index[8]_i_4_n_0\ : STD_LOGIC;
  signal \row_index[8]_i_5_n_0\ : STD_LOGIC;
  signal \row_index[8]_i_6_n_0\ : STD_LOGIC;
  signal \row_index[8]_i_7_n_0\ : STD_LOGIC;
  signal \row_index[8]_i_8_n_0\ : STD_LOGIC;
  signal \row_index[8]_i_9_n_0\ : STD_LOGIC;
  signal row_index_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \row_index_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \row_index_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \row_index_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \row_index_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \row_index_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \row_index_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \row_index_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \row_index_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \row_index_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \row_index_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \row_index_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \row_index_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \row_index_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \row_index_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \row_index_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \row_index_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \row_index_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \row_index_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \row_index_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \row_index_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \row_index_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \row_index_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \row_index_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \row_index_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \row_index_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \row_index_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \row_index_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \row_index_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \row_index_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \row_index_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \row_index_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \row_index_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \row_index_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \row_index_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \row_index_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \row_index_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \row_index_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \row_index_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \row_index_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \row_index_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \row_index_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \row_index_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \row_index_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \row_index_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \row_index_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \row_index_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \row_index_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \row_index_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \row_index_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \row_index_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \row_index_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \row_index_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \row_index_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \row_index_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \row_index_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \row_index_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \row_index_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \row_index_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \row_index_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \row_index_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \row_index_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \row_index_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \row_index_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal write_addr : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \write_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \write_addr[5]_i_2_n_0\ : STD_LOGIC;
  signal \write_addr__0\ : STD_LOGIC;
  signal \NLW_data_out_ready1_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_data_out_ready1_inferred__1/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_data_out_ready1_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_i__carry__0_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_i__carry__0_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_memory_reg_0_63_0_6_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_63_14_20_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_63_21_27_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_63_28_31_DOE_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_63_28_31_DOF_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_63_28_31_DOG_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_63_28_31_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_memory_reg_0_63_7_13_DOH_UNCONNECTED : STD_LOGIC;
  signal NLW_p_0_in_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_p_0_in_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal NLW_p_6_in_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_p_6_in_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_row_index_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "idle:001,write:010,read:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "idle:001,write:010,read:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "idle:001,write:010,read:100,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \col_cnt[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \col_cnt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \col_cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \col_cnt[3]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of data_out_ready_i_2 : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \i__carry__0_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \i__carry_i_10\ : label is 35;
  attribute ADDER_THRESHOLD of \i__carry_i_11\ : label is 35;
  attribute ADDER_THRESHOLD of \i__carry_i_9\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
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
  attribute SOFT_HLUTNM of \read_addr[1]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \read_addr[2]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \read_addr[3]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_addr[4]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \read_addr[4]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \row_cnt[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \row_cnt[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \row_cnt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \row_cnt[3]_i_1\ : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD of \row_index_reg[0]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \row_index_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \row_index_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \row_index_reg[8]_i_1\ : label is 16;
  attribute SOFT_HLUTNM of \write_addr[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \write_addr[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \write_addr[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \write_addr[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \write_addr[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \write_addr[5]_i_2\ : label is "soft_lutpair9";
begin
  data_out_ready <= \^data_out_ready\;
  read_valid <= \^read_valid\;
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888F8888888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => write_en,
      I2 => data_out_ready_i_2_n_0,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => data_in_ready,
      I5 => busy_reg_n_0,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[2]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[2]\,
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
      D => \FSM_onehot_state_reg_n_0_[0]\,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[2]_i_1_n_0\,
      CLR => rst,
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => \FSM_onehot_state_reg_n_0_[2]\
    );
busy_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => rst,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => data_in_ready,
      I3 => busy_reg_n_0,
      O => busy_i_1_n_0
    );
busy_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => busy_i_1_n_0,
      Q => busy_reg_n_0,
      R => '0'
    );
\col_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DFFF"
    )
        port map (
      I0 => data_out_ready1,
      I1 => \col_cnt_reg_n_0_[3]\,
      I2 => \col_cnt_reg_n_0_[2]\,
      I3 => \col_cnt_reg_n_0_[1]\,
      I4 => \col_cnt_reg_n_0_[0]\,
      O => \col_cnt[0]_i_1_n_0\
    );
\col_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFDF00"
    )
        port map (
      I0 => data_out_ready1,
      I1 => \col_cnt_reg_n_0_[3]\,
      I2 => \col_cnt_reg_n_0_[2]\,
      I3 => \col_cnt_reg_n_0_[1]\,
      I4 => \col_cnt_reg_n_0_[0]\,
      O => \col_cnt[1]_i_1_n_0\
    );
\col_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FDFF000"
    )
        port map (
      I0 => data_out_ready1,
      I1 => \col_cnt_reg_n_0_[3]\,
      I2 => \col_cnt_reg_n_0_[1]\,
      I3 => \col_cnt_reg_n_0_[0]\,
      I4 => \col_cnt_reg_n_0_[2]\,
      O => \col_cnt[2]_i_1_n_0\
    );
\col_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080800000800"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => data_in_ready,
      I2 => busy_reg_n_0,
      I3 => data_out_ready1,
      I4 => \read_addr[4]_i_3_n_0\,
      I5 => data_out_ready_i_2_n_0,
      O => col_cnt
    );
\col_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[0]\,
      I1 => \col_cnt_reg_n_0_[1]\,
      I2 => \col_cnt_reg_n_0_[2]\,
      I3 => \col_cnt_reg_n_0_[3]\,
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
\current_code_rate[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => write_en,
      I2 => rst,
      O => current_code_rate0
    );
\current_code_rate_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => current_code_rate0,
      D => code_rate(0),
      Q => current_code_rate(0),
      R => '0'
    );
\current_code_rate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => current_code_rate0,
      D => code_rate(1),
      Q => current_code_rate(1),
      R => '0'
    );
\data_out[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => busy_reg_n_0,
      I1 => data_in_ready,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \data_out[31]_i_1_n_0\
    );
\data_out_ready1_inferred__1/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \data_out_ready1_inferred__1/i__carry_n_0\,
      CO(6) => \data_out_ready1_inferred__1/i__carry_n_1\,
      CO(5) => \data_out_ready1_inferred__1/i__carry_n_2\,
      CO(4) => \data_out_ready1_inferred__1/i__carry_n_3\,
      CO(3) => \data_out_ready1_inferred__1/i__carry_n_4\,
      CO(2) => \data_out_ready1_inferred__1/i__carry_n_5\,
      CO(1) => \data_out_ready1_inferred__1/i__carry_n_6\,
      CO(0) => \data_out_ready1_inferred__1/i__carry_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_data_out_ready1_inferred__1/i__carry_O_UNCONNECTED\(7 downto 0),
      S(7) => \i__carry_i_1_n_0\,
      S(6) => \i__carry_i_2_n_0\,
      S(5) => \i__carry_i_3_n_0\,
      S(4) => \i__carry_i_4_n_0\,
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\data_out_ready1_inferred__1/i__carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \data_out_ready1_inferred__1/i__carry_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_data_out_ready1_inferred__1/i__carry__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => data_out_ready1,
      CO(1) => \data_out_ready1_inferred__1/i__carry__0_n_6\,
      CO(0) => \data_out_ready1_inferred__1/i__carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_data_out_ready1_inferred__1/i__carry__0_O_UNCONNECTED\(7 downto 0),
      S(7 downto 3) => B"00000",
      S(2) => \i__carry__0_i_1_n_0\,
      S(1) => \i__carry__0_i_2_n_0\,
      S(0) => \i__carry__0_i_3_n_0\
    );
data_out_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAEAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => data_out_ready_i_2_n_0,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => data_in_ready,
      I4 => busy_reg_n_0,
      I5 => \^data_out_ready\,
      O => data_out_ready_i_1_n_0
    );
data_out_ready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[0]\,
      I1 => \col_cnt_reg_n_0_[1]\,
      I2 => \col_cnt_reg_n_0_[2]\,
      I3 => \col_cnt_reg_n_0_[3]\,
      I4 => data_out_ready1,
      O => data_out_ready_i_2_n_0
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
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_out_ready2(30),
      I1 => data_out_ready2(31),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(26),
      O => \i__carry__0_i_10_n_0\
    );
\i__carry__0_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(25),
      O => \i__carry__0_i_11_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => data_out_ready2(28),
      I1 => data_out_ready2(27),
      I2 => data_out_ready2(29),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => data_out_ready2(25),
      I1 => data_out_ready2(24),
      I2 => data_out_ready2(26),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => \i__carry_i_9_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_i__carry__0_i_4_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \i__carry__0_i_4_n_2\,
      CO(4) => \i__carry__0_i_4_n_3\,
      CO(3) => \i__carry__0_i_4_n_4\,
      CO(2) => \i__carry__0_i_4_n_5\,
      CO(1) => \i__carry__0_i_4_n_6\,
      CO(0) => \i__carry__0_i_4_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_i__carry__0_i_4_O_UNCONNECTED\(7),
      O(6 downto 0) => data_out_ready2(31 downto 25),
      S(7) => '0',
      S(6) => \i__carry__0_i_5_n_0\,
      S(5) => \i__carry__0_i_6_n_0\,
      S(4) => \i__carry__0_i_7_n_0\,
      S(3) => \i__carry__0_i_8_n_0\,
      S(2) => \i__carry__0_i_9_n_0\,
      S(1) => \i__carry__0_i_10_n_0\,
      S(0) => \i__carry__0_i_11_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(31),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(30),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(29),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(28),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__0_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(27),
      O => \i__carry__0_i_9_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => data_out_ready2(22),
      I1 => data_out_ready2(21),
      I2 => data_out_ready2(23),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_10\: unisim.vcomponents.CARRY8
     port map (
      CI => \i__carry_i_11_n_0\,
      CI_TOP => '0',
      CO(7) => \i__carry_i_10_n_0\,
      CO(6) => \i__carry_i_10_n_1\,
      CO(5) => \i__carry_i_10_n_2\,
      CO(4) => \i__carry_i_10_n_3\,
      CO(3) => \i__carry_i_10_n_4\,
      CO(2) => \i__carry_i_10_n_5\,
      CO(1) => \i__carry_i_10_n_6\,
      CO(0) => \i__carry_i_10_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => data_out_ready2(16 downto 9),
      S(7) => \i__carry_i_20_n_0\,
      S(6) => \i__carry_i_21_n_0\,
      S(5) => \i__carry_i_22_n_0\,
      S(4) => \i__carry_i_23_n_0\,
      S(3) => \i__carry_i_24_n_0\,
      S(2) => \i__carry_i_25_n_0\,
      S(1) => \i__carry_i_26_n_0\,
      S(0) => \i__carry_i_27_n_0\
    );
\i__carry_i_11\: unisim.vcomponents.CARRY8
     port map (
      CI => \i__carry_i_28_n_0\,
      CI_TOP => '0',
      CO(7) => \i__carry_i_11_n_0\,
      CO(6) => \i__carry_i_11_n_1\,
      CO(5) => \i__carry_i_11_n_2\,
      CO(4) => \i__carry_i_11_n_3\,
      CO(3) => \i__carry_i_11_n_4\,
      CO(2) => \i__carry_i_11_n_5\,
      CO(1) => \i__carry_i_11_n_6\,
      CO(0) => \i__carry_i_11_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => data_out_ready2(8 downto 1),
      S(7) => \i__carry_i_29_n_0\,
      S(6) => \i__carry_i_30_n_0\,
      S(5) => \i__carry_i_31_n_0\,
      S(4) => \i__carry_i_32_n_0\,
      S(3) => \i__carry_i_33_n_0\,
      S(2) => \i__carry_i_34_n_0\,
      S(1) => \i__carry_i_35_n_0\,
      S(0) => \i__carry_i_36_n_0\
    );
\i__carry_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(24),
      O => \i__carry_i_12_n_0\
    );
\i__carry_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(23),
      O => \i__carry_i_13_n_0\
    );
\i__carry_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(22),
      O => \i__carry_i_14_n_0\
    );
\i__carry_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(21),
      O => \i__carry_i_15_n_0\
    );
\i__carry_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(20),
      O => \i__carry_i_16_n_0\
    );
\i__carry_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(19),
      O => \i__carry_i_17_n_0\
    );
\i__carry_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(18),
      O => \i__carry_i_18_n_0\
    );
\i__carry_i_19\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(17),
      O => \i__carry_i_19_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => data_out_ready2(19),
      I1 => data_out_ready2(18),
      I2 => data_out_ready2(20),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_20\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(16),
      O => \i__carry_i_20_n_0\
    );
\i__carry_i_21\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(15),
      O => \i__carry_i_21_n_0\
    );
\i__carry_i_22\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(14),
      O => \i__carry_i_22_n_0\
    );
\i__carry_i_23\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(13),
      O => \i__carry_i_23_n_0\
    );
\i__carry_i_24\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(12),
      O => \i__carry_i_24_n_0\
    );
\i__carry_i_25\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(11),
      O => \i__carry_i_25_n_0\
    );
\i__carry_i_26\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(10),
      O => \i__carry_i_26_n_0\
    );
\i__carry_i_27\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(9),
      O => \i__carry_i_27_n_0\
    );
\i__carry_i_28\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(0),
      O => \i__carry_i_28_n_0\
    );
\i__carry_i_29\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(8),
      O => \i__carry_i_29_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => data_out_ready2(16),
      I1 => data_out_ready2(15),
      I2 => data_out_ready2(17),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_30\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(7),
      O => \i__carry_i_30_n_0\
    );
\i__carry_i_31\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(6),
      O => \i__carry_i_31_n_0\
    );
\i__carry_i_32\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(5),
      O => \i__carry_i_32_n_0\
    );
\i__carry_i_33\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(4),
      O => \i__carry_i_33_n_0\
    );
\i__carry_i_34\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(3),
      O => \i__carry_i_34_n_0\
    );
\i__carry_i_35\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(2),
      O => \i__carry_i_35_n_0\
    );
\i__carry_i_36\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => row_index_reg(1),
      O => \i__carry_i_36_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => data_out_ready2(13),
      I1 => data_out_ready2(12),
      I2 => data_out_ready2(14),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => data_out_ready2(10),
      I1 => data_out_ready2(9),
      I2 => data_out_ready2(11),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => data_out_ready2(7),
      I1 => data_out_ready2(6),
      I2 => data_out_ready2(8),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => data_out_ready2(5),
      I1 => data_out_ready2(4),
      I2 => data_out_ready2(3),
      I3 => row_cnt(3),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => row_cnt(2),
      I1 => data_out_ready2(2),
      I2 => row_index_reg(0),
      I3 => row_cnt(0),
      I4 => data_out_ready2(1),
      I5 => row_cnt(1),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_9\: unisim.vcomponents.CARRY8
     port map (
      CI => \i__carry_i_10_n_0\,
      CI_TOP => '0',
      CO(7) => \i__carry_i_9_n_0\,
      CO(6) => \i__carry_i_9_n_1\,
      CO(5) => \i__carry_i_9_n_2\,
      CO(4) => \i__carry_i_9_n_3\,
      CO(3) => \i__carry_i_9_n_4\,
      CO(2) => \i__carry_i_9_n_5\,
      CO(1) => \i__carry_i_9_n_6\,
      CO(0) => \i__carry_i_9_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => data_out_ready2(24 downto 17),
      S(7) => \i__carry_i_12_n_0\,
      S(6) => \i__carry_i_13_n_0\,
      S(5) => \i__carry_i_14_n_0\,
      S(4) => \i__carry_i_15_n_0\,
      S(3) => \i__carry_i_16_n_0\,
      S(2) => \i__carry_i_17_n_0\,
      S(1) => \i__carry_i_18_n_0\,
      S(0) => \i__carry_i_19_n_0\
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
memory_reg_0_63_0_6_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A8"
    )
        port map (
      I0 => write_en,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => rst,
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
p_0_in_carry: unisim.vcomponents.CARRY8
     port map (
      CI => write_addr(0),
      CI_TOP => '0',
      CO(7 downto 4) => NLW_p_0_in_carry_CO_UNCONNECTED(7 downto 4),
      CO(3) => p_0_in_carry_n_4,
      CO(2) => p_0_in_carry_n_5,
      CO(1) => p_0_in_carry_n_6,
      CO(0) => p_0_in_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 5) => NLW_p_0_in_carry_O_UNCONNECTED(7 downto 5),
      O(4 downto 0) => in13(5 downto 1),
      S(7 downto 5) => B"000",
      S(4 downto 0) => write_addr(5 downto 1)
    );
p_6_in_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7 downto 2) => NLW_p_6_in_carry_CO_UNCONNECTED(7 downto 2),
      CO(1) => p_6_in,
      CO(0) => p_6_in_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => NLW_p_6_in_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 2) => B"000000",
      S(1) => p_6_in_carry_i_1_n_0,
      S(0) => p_6_in_carry_i_2_n_0
    );
p_6_in_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[3]\,
      O => p_6_in_carry_i_1_n_0
    );
p_6_in_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[0]\,
      I1 => \col_cnt_reg_n_0_[1]\,
      I2 => \col_cnt_reg_n_0_[2]\,
      O => p_6_in_carry_i_2_n_0
    );
\read_addr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF00BFBF00FF"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[3]\,
      I1 => \col_cnt_reg_n_0_[2]\,
      I2 => \col_cnt_reg_n_0_[1]\,
      I3 => row_cnt(0),
      I4 => data_out_ready1,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \read_addr[0]_i_1_n_0\
    );
\read_addr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51010151"
    )
        port map (
      I0 => data_out_ready_i_2_n_0,
      I1 => \read_addr[1]_i_2_n_0\,
      I2 => \read_addr[4]_i_3_n_0\,
      I3 => \col_cnt_reg_n_0_[1]\,
      I4 => \col_cnt_reg_n_0_[0]\,
      O => \read_addr[1]_i_1_n_0\
    );
\read_addr[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0E54F1A"
    )
        port map (
      I0 => data_out_ready1,
      I1 => row_cnt(0),
      I2 => \col_cnt_reg_n_0_[0]\,
      I3 => row_cnt(1),
      I4 => \col_cnt_reg_n_0_[1]\,
      O => \read_addr[1]_i_2_n_0\
    );
\read_addr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE2222E"
    )
        port map (
      I0 => \read_addr[2]_i_2_n_0\,
      I1 => \read_addr[4]_i_3_n_0\,
      I2 => \col_cnt_reg_n_0_[1]\,
      I3 => \col_cnt_reg_n_0_[0]\,
      I4 => \col_cnt_reg_n_0_[2]\,
      I5 => data_out_ready_i_2_n_0,
      O => \read_addr[2]_i_1_n_0\
    );
\read_addr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF0F0F069696969"
    )
        port map (
      I0 => \read_addr[2]_i_3_n_0\,
      I1 => row_cnt(2),
      I2 => \col_cnt_reg_n_0_[2]\,
      I3 => \col_cnt_reg_n_0_[0]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => data_out_ready1,
      O => \read_addr[2]_i_2_n_0\
    );
\read_addr[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => row_cnt(0),
      I1 => \col_cnt_reg_n_0_[0]\,
      I2 => \col_cnt_reg_n_0_[1]\,
      I3 => row_cnt(1),
      O => \read_addr[2]_i_3_n_0\
    );
\read_addr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51010151"
    )
        port map (
      I0 => data_out_ready_i_2_n_0,
      I1 => \read_addr[3]_i_2_n_0\,
      I2 => \read_addr[4]_i_3_n_0\,
      I3 => \read_addr[4]_i_2_n_0\,
      I4 => \col_cnt_reg_n_0_[3]\,
      O => \read_addr[3]_i_1_n_0\
    );
\read_addr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F099F066F066F099"
    )
        port map (
      I0 => row_cnt(0),
      I1 => row_cnt(3),
      I2 => \read_addr[3]_i_3_n_0\,
      I3 => data_out_ready1,
      I4 => \read_addr[5]_i_3_n_0\,
      I5 => \col_cnt_reg_n_0_[3]\,
      O => \read_addr[3]_i_2_n_0\
    );
\read_addr[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9555"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[3]\,
      I1 => \col_cnt_reg_n_0_[2]\,
      I2 => \col_cnt_reg_n_0_[1]\,
      I3 => \col_cnt_reg_n_0_[0]\,
      O => \read_addr[3]_i_3_n_0\
    );
\read_addr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202F20202020202F"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[3]\,
      I1 => \read_addr[4]_i_2_n_0\,
      I2 => \read_addr[4]_i_3_n_0\,
      I3 => data_out_ready1,
      I4 => \read_addr[5]_i_2_n_0\,
      I5 => \read_addr[4]_i_4_n_0\,
      O => \read_addr[4]_i_1_n_0\
    );
\read_addr[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[0]\,
      I1 => \col_cnt_reg_n_0_[1]\,
      I2 => \col_cnt_reg_n_0_[2]\,
      O => \read_addr[4]_i_2_n_0\
    );
\read_addr[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => row_cnt(1),
      I1 => row_cnt(0),
      I2 => row_cnt(2),
      I3 => p_6_in,
      I4 => row_cnt(3),
      O => \read_addr[4]_i_3_n_0\
    );
\read_addr[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"43CC"
    )
        port map (
      I0 => row_cnt(2),
      I1 => row_cnt(1),
      I2 => row_cnt(0),
      I3 => row_cnt(3),
      O => \read_addr[4]_i_4_n_0\
    );
\read_addr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1455010015054050"
    )
        port map (
      I0 => data_out_ready1,
      I1 => row_cnt(0),
      I2 => row_cnt(1),
      I3 => row_cnt(3),
      I4 => row_cnt(2),
      I5 => \read_addr[5]_i_2_n_0\,
      O => \read_addr[5]_i_1_n_0\
    );
\read_addr[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7117"
    )
        port map (
      I0 => \col_cnt_reg_n_0_[3]\,
      I1 => \read_addr[5]_i_3_n_0\,
      I2 => row_cnt(0),
      I3 => row_cnt(3),
      O => \read_addr[5]_i_2_n_0\
    );
\read_addr[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44D40000FFFF44D4"
    )
        port map (
      I0 => row_cnt(1),
      I1 => \col_cnt_reg_n_0_[1]\,
      I2 => \col_cnt_reg_n_0_[0]\,
      I3 => row_cnt(0),
      I4 => \col_cnt_reg_n_0_[2]\,
      I5 => row_cnt(2),
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
      INIT => X"AAAAAABFAAAAAA80"
    )
        port map (
      I0 => \data_out[31]_i_1_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => write_en,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
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
\row_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000D"
    )
        port map (
      I0 => data_out_ready1,
      I1 => \read_addr[4]_i_3_n_0\,
      I2 => data_out_ready_i_2_n_0,
      I3 => row_cnt(0),
      O => \row_cnt[0]_i_1_n_0\
    );
\row_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => row_cnt(1),
      I1 => row_cnt(0),
      I2 => data_out_ready1,
      O => \row_cnt[1]_i_1_n_0\
    );
\row_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => data_out_ready1,
      I1 => row_cnt(0),
      I2 => row_cnt(1),
      I3 => row_cnt(2),
      O => \row_cnt[2]_i_1_n_0\
    );
\row_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => row_cnt(2),
      I1 => row_cnt(1),
      I2 => row_cnt(0),
      I3 => row_cnt(3),
      I4 => data_out_ready1,
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
      Q => row_cnt(0)
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
      Q => row_cnt(1)
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
      Q => row_cnt(2)
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
      Q => row_cnt(3)
    );
\row_index[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000E000000"
    )
        port map (
      I0 => data_out_ready_i_2_n_0,
      I1 => \read_addr[4]_i_3_n_0\,
      I2 => busy_reg_n_0,
      I3 => data_in_ready,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => rst,
      O => \row_index[0]_i_1_n_0\
    );
\row_index[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(1),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[0]_i_10_n_0\
    );
\row_index[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555551555555"
    )
        port map (
      I0 => row_index_reg(0),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[0]_i_11_n_0\
    );
\row_index[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDFFF"
    )
        port map (
      I0 => data_out_ready1,
      I1 => \col_cnt_reg_n_0_[3]\,
      I2 => \col_cnt_reg_n_0_[2]\,
      I3 => \col_cnt_reg_n_0_[1]\,
      I4 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[0]_i_3_n_0\
    );
\row_index[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(7),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[0]_i_4_n_0\
    );
\row_index[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(6),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[0]_i_5_n_0\
    );
\row_index[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(5),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[0]_i_6_n_0\
    );
\row_index[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(4),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[0]_i_7_n_0\
    );
\row_index[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(3),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[0]_i_8_n_0\
    );
\row_index[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(2),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[0]_i_9_n_0\
    );
\row_index[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(23),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[16]_i_2_n_0\
    );
\row_index[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(22),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[16]_i_3_n_0\
    );
\row_index[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(21),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[16]_i_4_n_0\
    );
\row_index[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(20),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[16]_i_5_n_0\
    );
\row_index[16]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(19),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[16]_i_6_n_0\
    );
\row_index[16]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(18),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[16]_i_7_n_0\
    );
\row_index[16]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(17),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[16]_i_8_n_0\
    );
\row_index[16]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(16),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[16]_i_9_n_0\
    );
\row_index[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(31),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[24]_i_2_n_0\
    );
\row_index[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(30),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[24]_i_3_n_0\
    );
\row_index[24]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(29),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[24]_i_4_n_0\
    );
\row_index[24]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(28),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[24]_i_5_n_0\
    );
\row_index[24]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(27),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[24]_i_6_n_0\
    );
\row_index[24]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(26),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[24]_i_7_n_0\
    );
\row_index[24]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(25),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[24]_i_8_n_0\
    );
\row_index[24]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(24),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[24]_i_9_n_0\
    );
\row_index[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(15),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[8]_i_2_n_0\
    );
\row_index[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(14),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[8]_i_3_n_0\
    );
\row_index[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(13),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[8]_i_4_n_0\
    );
\row_index[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(12),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[8]_i_5_n_0\
    );
\row_index[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(11),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[8]_i_6_n_0\
    );
\row_index[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(10),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[8]_i_7_n_0\
    );
\row_index[8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(9),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[8]_i_8_n_0\
    );
\row_index[8]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA2AAAAAA"
    )
        port map (
      I0 => row_index_reg(8),
      I1 => data_out_ready1,
      I2 => \col_cnt_reg_n_0_[3]\,
      I3 => \col_cnt_reg_n_0_[2]\,
      I4 => \col_cnt_reg_n_0_[1]\,
      I5 => \col_cnt_reg_n_0_[0]\,
      O => \row_index[8]_i_9_n_0\
    );
\row_index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[0]_i_2_n_15\,
      Q => row_index_reg(0),
      R => '0'
    );
\row_index_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \row_index_reg[0]_i_2_n_0\,
      CO(6) => \row_index_reg[0]_i_2_n_1\,
      CO(5) => \row_index_reg[0]_i_2_n_2\,
      CO(4) => \row_index_reg[0]_i_2_n_3\,
      CO(3) => \row_index_reg[0]_i_2_n_4\,
      CO(2) => \row_index_reg[0]_i_2_n_5\,
      CO(1) => \row_index_reg[0]_i_2_n_6\,
      CO(0) => \row_index_reg[0]_i_2_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \row_index[0]_i_3_n_0\,
      O(7) => \row_index_reg[0]_i_2_n_8\,
      O(6) => \row_index_reg[0]_i_2_n_9\,
      O(5) => \row_index_reg[0]_i_2_n_10\,
      O(4) => \row_index_reg[0]_i_2_n_11\,
      O(3) => \row_index_reg[0]_i_2_n_12\,
      O(2) => \row_index_reg[0]_i_2_n_13\,
      O(1) => \row_index_reg[0]_i_2_n_14\,
      O(0) => \row_index_reg[0]_i_2_n_15\,
      S(7) => \row_index[0]_i_4_n_0\,
      S(6) => \row_index[0]_i_5_n_0\,
      S(5) => \row_index[0]_i_6_n_0\,
      S(4) => \row_index[0]_i_7_n_0\,
      S(3) => \row_index[0]_i_8_n_0\,
      S(2) => \row_index[0]_i_9_n_0\,
      S(1) => \row_index[0]_i_10_n_0\,
      S(0) => \row_index[0]_i_11_n_0\
    );
\row_index_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[8]_i_1_n_13\,
      Q => row_index_reg(10),
      R => '0'
    );
\row_index_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[8]_i_1_n_12\,
      Q => row_index_reg(11),
      R => '0'
    );
\row_index_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[8]_i_1_n_11\,
      Q => row_index_reg(12),
      R => '0'
    );
\row_index_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[8]_i_1_n_10\,
      Q => row_index_reg(13),
      R => '0'
    );
\row_index_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[8]_i_1_n_9\,
      Q => row_index_reg(14),
      R => '0'
    );
\row_index_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[8]_i_1_n_8\,
      Q => row_index_reg(15),
      R => '0'
    );
\row_index_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[16]_i_1_n_15\,
      Q => row_index_reg(16),
      R => '0'
    );
\row_index_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \row_index_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \row_index_reg[16]_i_1_n_0\,
      CO(6) => \row_index_reg[16]_i_1_n_1\,
      CO(5) => \row_index_reg[16]_i_1_n_2\,
      CO(4) => \row_index_reg[16]_i_1_n_3\,
      CO(3) => \row_index_reg[16]_i_1_n_4\,
      CO(2) => \row_index_reg[16]_i_1_n_5\,
      CO(1) => \row_index_reg[16]_i_1_n_6\,
      CO(0) => \row_index_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \row_index_reg[16]_i_1_n_8\,
      O(6) => \row_index_reg[16]_i_1_n_9\,
      O(5) => \row_index_reg[16]_i_1_n_10\,
      O(4) => \row_index_reg[16]_i_1_n_11\,
      O(3) => \row_index_reg[16]_i_1_n_12\,
      O(2) => \row_index_reg[16]_i_1_n_13\,
      O(1) => \row_index_reg[16]_i_1_n_14\,
      O(0) => \row_index_reg[16]_i_1_n_15\,
      S(7) => \row_index[16]_i_2_n_0\,
      S(6) => \row_index[16]_i_3_n_0\,
      S(5) => \row_index[16]_i_4_n_0\,
      S(4) => \row_index[16]_i_5_n_0\,
      S(3) => \row_index[16]_i_6_n_0\,
      S(2) => \row_index[16]_i_7_n_0\,
      S(1) => \row_index[16]_i_8_n_0\,
      S(0) => \row_index[16]_i_9_n_0\
    );
\row_index_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[16]_i_1_n_14\,
      Q => row_index_reg(17),
      R => '0'
    );
\row_index_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[16]_i_1_n_13\,
      Q => row_index_reg(18),
      R => '0'
    );
\row_index_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[16]_i_1_n_12\,
      Q => row_index_reg(19),
      R => '0'
    );
\row_index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[0]_i_2_n_14\,
      Q => row_index_reg(1),
      R => '0'
    );
\row_index_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[16]_i_1_n_11\,
      Q => row_index_reg(20),
      R => '0'
    );
\row_index_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[16]_i_1_n_10\,
      Q => row_index_reg(21),
      R => '0'
    );
\row_index_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[16]_i_1_n_9\,
      Q => row_index_reg(22),
      R => '0'
    );
\row_index_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[16]_i_1_n_8\,
      Q => row_index_reg(23),
      R => '0'
    );
\row_index_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[24]_i_1_n_15\,
      Q => row_index_reg(24),
      R => '0'
    );
\row_index_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \row_index_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_row_index_reg[24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \row_index_reg[24]_i_1_n_1\,
      CO(5) => \row_index_reg[24]_i_1_n_2\,
      CO(4) => \row_index_reg[24]_i_1_n_3\,
      CO(3) => \row_index_reg[24]_i_1_n_4\,
      CO(2) => \row_index_reg[24]_i_1_n_5\,
      CO(1) => \row_index_reg[24]_i_1_n_6\,
      CO(0) => \row_index_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \row_index_reg[24]_i_1_n_8\,
      O(6) => \row_index_reg[24]_i_1_n_9\,
      O(5) => \row_index_reg[24]_i_1_n_10\,
      O(4) => \row_index_reg[24]_i_1_n_11\,
      O(3) => \row_index_reg[24]_i_1_n_12\,
      O(2) => \row_index_reg[24]_i_1_n_13\,
      O(1) => \row_index_reg[24]_i_1_n_14\,
      O(0) => \row_index_reg[24]_i_1_n_15\,
      S(7) => \row_index[24]_i_2_n_0\,
      S(6) => \row_index[24]_i_3_n_0\,
      S(5) => \row_index[24]_i_4_n_0\,
      S(4) => \row_index[24]_i_5_n_0\,
      S(3) => \row_index[24]_i_6_n_0\,
      S(2) => \row_index[24]_i_7_n_0\,
      S(1) => \row_index[24]_i_8_n_0\,
      S(0) => \row_index[24]_i_9_n_0\
    );
\row_index_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[24]_i_1_n_14\,
      Q => row_index_reg(25),
      R => '0'
    );
\row_index_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[24]_i_1_n_13\,
      Q => row_index_reg(26),
      R => '0'
    );
\row_index_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[24]_i_1_n_12\,
      Q => row_index_reg(27),
      R => '0'
    );
\row_index_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[24]_i_1_n_11\,
      Q => row_index_reg(28),
      R => '0'
    );
\row_index_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[24]_i_1_n_10\,
      Q => row_index_reg(29),
      R => '0'
    );
\row_index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[0]_i_2_n_13\,
      Q => row_index_reg(2),
      R => '0'
    );
\row_index_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[24]_i_1_n_9\,
      Q => row_index_reg(30),
      R => '0'
    );
\row_index_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[24]_i_1_n_8\,
      Q => row_index_reg(31),
      R => '0'
    );
\row_index_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[0]_i_2_n_12\,
      Q => row_index_reg(3),
      R => '0'
    );
\row_index_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[0]_i_2_n_11\,
      Q => row_index_reg(4),
      R => '0'
    );
\row_index_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[0]_i_2_n_10\,
      Q => row_index_reg(5),
      R => '0'
    );
\row_index_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[0]_i_2_n_9\,
      Q => row_index_reg(6),
      R => '0'
    );
\row_index_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[0]_i_2_n_8\,
      Q => row_index_reg(7),
      R => '0'
    );
\row_index_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[8]_i_1_n_15\,
      Q => row_index_reg(8),
      R => '0'
    );
\row_index_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \row_index_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \row_index_reg[8]_i_1_n_0\,
      CO(6) => \row_index_reg[8]_i_1_n_1\,
      CO(5) => \row_index_reg[8]_i_1_n_2\,
      CO(4) => \row_index_reg[8]_i_1_n_3\,
      CO(3) => \row_index_reg[8]_i_1_n_4\,
      CO(2) => \row_index_reg[8]_i_1_n_5\,
      CO(1) => \row_index_reg[8]_i_1_n_6\,
      CO(0) => \row_index_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \row_index_reg[8]_i_1_n_8\,
      O(6) => \row_index_reg[8]_i_1_n_9\,
      O(5) => \row_index_reg[8]_i_1_n_10\,
      O(4) => \row_index_reg[8]_i_1_n_11\,
      O(3) => \row_index_reg[8]_i_1_n_12\,
      O(2) => \row_index_reg[8]_i_1_n_13\,
      O(1) => \row_index_reg[8]_i_1_n_14\,
      O(0) => \row_index_reg[8]_i_1_n_15\,
      S(7) => \row_index[8]_i_2_n_0\,
      S(6) => \row_index[8]_i_3_n_0\,
      S(5) => \row_index[8]_i_4_n_0\,
      S(4) => \row_index[8]_i_5_n_0\,
      S(3) => \row_index[8]_i_6_n_0\,
      S(2) => \row_index[8]_i_7_n_0\,
      S(1) => \row_index[8]_i_8_n_0\,
      S(0) => \row_index[8]_i_9_n_0\
    );
\row_index_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \row_index[0]_i_1_n_0\,
      D => \row_index_reg[8]_i_1_n_14\,
      Q => row_index_reg(9),
      R => '0'
    );
\write_addr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => write_addr(0),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \write_addr[0]_i_1_n_0\
    );
\write_addr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in13(1),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \write_addr[1]_i_1_n_0\
    );
\write_addr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in13(2),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \write_addr[2]_i_1_n_0\
    );
\write_addr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in13(3),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \write_addr[3]_i_1_n_0\
    );
\write_addr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in13(4),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \write_addr[4]_i_1_n_0\
    );
\write_addr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => write_en,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \write_addr__0\
    );
\write_addr[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in13(5),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \write_addr[5]_i_2_n_0\
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
      D => \write_addr[5]_i_2_n_0\,
      Q => write_addr(5)
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
    current_code_rate : out STD_LOGIC_VECTOR ( 1 downto 0 );
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
      current_code_rate(1 downto 0) => current_code_rate(1 downto 0),
      data_in(31 downto 0) => data_in(31 downto 0),
      data_in_ready => data_in_ready,
      data_out(31 downto 0) => data_out(31 downto 0),
      data_out_ready => data_out_ready,
      read_valid => read_valid,
      rst => rst,
      write_en => write_en
    );
end STRUCTURE;
