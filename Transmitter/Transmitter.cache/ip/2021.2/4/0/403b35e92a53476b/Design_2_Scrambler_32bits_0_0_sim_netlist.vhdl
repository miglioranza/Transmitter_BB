-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Wed Mar  5 18:48:56 2025
-- Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_Scrambler_32bits_0_0_sim_netlist.vhdl
-- Design      : Design_2_Scrambler_32bits_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Scrambler_32bits is
  port (
    data_out : out STD_LOGIC_VECTOR ( 32 downto 1 );
    data_out_valid : out STD_LOGIC;
    data_out_ready : out STD_LOGIC;
    data_out_last : out STD_LOGIC;
    seed : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_in_ready : in STD_LOGIC;
    control_enable : in STD_LOGIC;
    data_in_valid : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 32 downto 1 );
    data_in_last : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Scrambler_32bits;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Scrambler_32bits is
  signal \data_out[32]_i_1_n_0\ : STD_LOGIC;
  signal \^data_out_last\ : STD_LOGIC;
  signal data_out_last_i_1_n_0 : STD_LOGIC;
  signal p_32_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tmp_seed : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal tmp_seed0_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_out[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_out[12]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_out[14]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out[15]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_out[16]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out[17]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_out[18]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[19]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_out[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_out[20]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[21]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_out[22]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[23]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_out[24]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[25]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_out[26]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[27]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_out[28]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[29]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_out[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out[30]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out[31]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_out[32]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_out[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_out[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_out[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[9]_i_1\ : label is "soft_lutpair10";
begin
  data_out_last <= \^data_out_last\;
\data_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(10),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(9)
    );
\data_out[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(11),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(10)
    );
\data_out[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(12),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(11)
    );
\data_out[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(13),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(12)
    );
\data_out[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(14),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(13)
    );
\data_out[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(15),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(14)
    );
\data_out[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(16),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(15)
    );
\data_out[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(17),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(16)
    );
\data_out[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(18),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(17)
    );
\data_out[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(19),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(18)
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(1),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(0)
    );
\data_out[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(20),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(19)
    );
\data_out[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(21),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(20)
    );
\data_out[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(22),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(21)
    );
\data_out[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(23),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(22)
    );
\data_out[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(24),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(23)
    );
\data_out[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(25),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(24)
    );
\data_out[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(26),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(25)
    );
\data_out[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(27),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(26)
    );
\data_out[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(28),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(27)
    );
\data_out[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(29),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(28)
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(2),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(1)
    );
\data_out[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(30),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(29)
    );
\data_out[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(31),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(30)
    );
\data_out[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_in_ready,
      I1 => data_in_valid,
      O => \data_out[32]_i_1_n_0\
    );
\data_out[32]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(32),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(31)
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(3),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(2)
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(4),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(3)
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(5),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(4)
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(6),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(5)
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(7),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(6)
    );
\data_out[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(8),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(7)
    );
\data_out[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(9),
      I1 => tmp_seed(31),
      I2 => tmp_seed(28),
      O => p_32_out(8)
    );
data_out_last_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => data_in_last,
      I1 => data_in_valid,
      I2 => data_in_ready,
      I3 => rst,
      I4 => \^data_out_last\,
      O => data_out_last_i_1_n_0
    );
data_out_last_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data_out_last_i_1_n_0,
      Q => \^data_out_last\,
      R => '0'
    );
data_out_ready_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => data_in_ready,
      Q => data_out_ready
    );
\data_out_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(9),
      Q => data_out(10)
    );
\data_out_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(10),
      Q => data_out(11)
    );
\data_out_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(11),
      Q => data_out(12)
    );
\data_out_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(12),
      Q => data_out(13)
    );
\data_out_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(13),
      Q => data_out(14)
    );
\data_out_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(14),
      Q => data_out(15)
    );
\data_out_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(15),
      Q => data_out(16)
    );
\data_out_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(16),
      Q => data_out(17)
    );
\data_out_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(17),
      Q => data_out(18)
    );
\data_out_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(18),
      Q => data_out(19)
    );
\data_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(0),
      Q => data_out(1)
    );
\data_out_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(19),
      Q => data_out(20)
    );
\data_out_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(20),
      Q => data_out(21)
    );
\data_out_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(21),
      Q => data_out(22)
    );
\data_out_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(22),
      Q => data_out(23)
    );
\data_out_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(23),
      Q => data_out(24)
    );
\data_out_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(24),
      Q => data_out(25)
    );
\data_out_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(25),
      Q => data_out(26)
    );
\data_out_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(26),
      Q => data_out(27)
    );
\data_out_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(27),
      Q => data_out(28)
    );
\data_out_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(28),
      Q => data_out(29)
    );
\data_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(1),
      Q => data_out(2)
    );
\data_out_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(29),
      Q => data_out(30)
    );
\data_out_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(30),
      Q => data_out(31)
    );
\data_out_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(31),
      Q => data_out(32)
    );
\data_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(2),
      Q => data_out(3)
    );
\data_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(3),
      Q => data_out(4)
    );
\data_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(4),
      Q => data_out(5)
    );
\data_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(5),
      Q => data_out(6)
    );
\data_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(6),
      Q => data_out(7)
    );
\data_out_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(7),
      Q => data_out(8)
    );
\data_out_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[32]_i_1_n_0\,
      CLR => rst,
      D => p_32_out(8),
      Q => data_out(9)
    );
data_out_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \data_out[32]_i_1_n_0\,
      Q => data_out_valid
    );
tmp_seed0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002A"
    )
        port map (
      I0 => control_enable,
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => rst,
      O => tmp_seed0_n_0
    );
\tmp_seed_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => tmp_seed0_n_0,
      D => seed(0),
      Q => tmp_seed(28),
      R => '0'
    );
\tmp_seed_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => tmp_seed0_n_0,
      D => seed(1),
      Q => tmp_seed(31),
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
    rst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 32 downto 1 );
    data_in_valid : in STD_LOGIC;
    data_in_ready : in STD_LOGIC;
    data_in_last : in STD_LOGIC;
    seed : in STD_LOGIC_VECTOR ( 30 downto 0 );
    control_enable : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 32 downto 1 );
    data_out_valid : out STD_LOGIC;
    data_out_last : out STD_LOGIC;
    data_out_ready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Design_2_Scrambler_32bits_0_0,Scrambler_32bits,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Scrambler_32bits,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, ASSOCIATED_BUSIF S_AXIS:M_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Design_2_clk, INSERT_VIP 0";
  attribute x_interface_info of data_in_last : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute x_interface_info of data_in_ready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute x_interface_parameter of data_in_ready : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN Design_2_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of data_in_valid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute x_interface_info of data_out_last : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute x_interface_info of data_out_ready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute x_interface_info of data_out_valid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of data_in : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute x_interface_parameter of data_in : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN Design_2_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of data_out : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Scrambler_32bits
     port map (
      clk => clk,
      control_enable => control_enable,
      data_in(32 downto 1) => data_in(32 downto 1),
      data_in_last => data_in_last,
      data_in_ready => data_in_ready,
      data_in_valid => data_in_valid,
      data_out(32 downto 1) => data_out(32 downto 1),
      data_out_last => data_out_last,
      data_out_ready => data_out_ready,
      data_out_valid => data_out_valid,
      rst => rst,
      seed(1) => seed(30),
      seed(0) => seed(27)
    );
end STRUCTURE;
