-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Fri Mar  7 14:49:46 2025
-- Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_Mapper_tx_0_0_sim_netlist.vhdl
-- Design      : Design_2_Mapper_tx_0_0
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
    data_out_ready : out STD_LOGIC;
    data_out_valid : out STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    mod_type : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    data_in_ready : in STD_LOGIC;
    data_in_valid : in STD_LOGIC;
    nreset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mapper is
  signal data4 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal data_out_valid_i_1_n_0 : STD_LOGIC;
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
  signal \g0_b7__3_n_0\ : STD_LOGIC;
  signal g0_b7_i_1_n_0 : STD_LOGIC;
  signal g0_b7_i_2_n_0 : STD_LOGIC;
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
  signal \i_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[0]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[10]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[10]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[10]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[10]_i_6_n_0\ : STD_LOGIC;
  signal \i_out[10]_i_7_n_0\ : STD_LOGIC;
  signal \i_out[11]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[11]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[11]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[11]_i_5_n_0\ : STD_LOGIC;
  signal \i_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[1]_i_5_n_0\ : STD_LOGIC;
  signal \i_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[2]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[2]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[2]_i_5_n_0\ : STD_LOGIC;
  signal \i_out[2]_i_6_n_0\ : STD_LOGIC;
  signal \i_out[2]_i_7_n_0\ : STD_LOGIC;
  signal \i_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[4]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[5]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[6]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[8]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[8]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[8]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[8]_i_5_n_0\ : STD_LOGIC;
  signal \i_out[9]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[9]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[9]_i_4_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \q_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[10]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[10]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[10]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[11]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[1]_i_4_n_0\ : STD_LOGIC;
  signal \q_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[5]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[6]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[8]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[8]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[8]_i_4_n_0\ : STD_LOGIC;
  signal \q_out[8]_i_5_n_0\ : STD_LOGIC;
  signal \q_out[9]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[9]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[9]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[9]_i_4_n_0\ : STD_LOGIC;
  signal \q_out[9]_i_5_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of data_out_valid_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of g0_b0 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \g0_b0__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \g0_b0__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \g0_b0__2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \g0_b0__3\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \g0_b0__4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of g0_b1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of g0_b10 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \g0_b10__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \g0_b10__2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \g0_b10__3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \g0_b10__4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \g0_b1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \g0_b1__1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \g0_b1__3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \g0_b1__4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of g0_b2 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \g0_b2__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \g0_b2__1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \g0_b2__2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of g0_b3 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \g0_b3__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \g0_b3__1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \g0_b3__2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of g0_b4 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \g0_b4__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \g0_b4__1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \g0_b4__2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of g0_b5 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \g0_b5__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \g0_b5__1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \g0_b5__2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of g0_b6 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \g0_b6__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \g0_b6__1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \g0_b6__2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of g0_b7 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \g0_b7__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \g0_b7__1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \g0_b7__2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \g0_b7__3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of g0_b7_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of g0_b7_i_2 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of g0_b8 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \g0_b8__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \g0_b8__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \g0_b8__3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \g0_b8__4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of g0_b9 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \g0_b9__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \g0_b9__1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \g0_b9__3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \g0_b9__4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i_out[0]_i_3\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \i_out[0]_i_4\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \i_out[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i_out[10]_i_4\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \i_out[10]_i_5\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \i_out[10]_i_6\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \i_out[10]_i_7\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \i_out[11]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \i_out[11]_i_5\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \i_out[1]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \i_out[1]_i_5\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \i_out[2]_i_4\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \i_out[2]_i_5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i_out[2]_i_6\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \i_out[2]_i_7\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \i_out[4]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \i_out[4]_i_4\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \i_out[7]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \i_out[8]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \i_out[8]_i_5\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \i_out[9]_i_5\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \q_out[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \q_out[1]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \q_out[4]_i_3\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \q_out[6]_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \q_out[8]_i_4\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \q_out[8]_i_5\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \q_out[9]_i_5\ : label is "soft_lutpair31";
begin
data_out_ready_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => data_in_ready,
      Q => data_out_ready
    );
data_out_valid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_in_ready,
      I1 => data_in_valid,
      O => data_out_valid_i_1_n_0
    );
data_out_valid_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => data_out_valid_i_1_n_0,
      Q => data_out_valid
    );
g0_b0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"97"
    )
        port map (
      I0 => data_in(2),
      I1 => data_in(3),
      I2 => data_in(4),
      O => g0_b0_n_0
    );
\g0_b0__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B173"
    )
        port map (
      I0 => data_in(2),
      I1 => data_in(3),
      I2 => data_in(4),
      I3 => data_in(5),
      O => \g0_b0__0_n_0\
    );
\g0_b0__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(2),
      I2 => data_in(3),
      O => \g0_b0__1_n_0\
    );
\g0_b0__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(1),
      O => \g0_b0__2_n_0\
    );
\g0_b0__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"67"
    )
        port map (
      I0 => data_in(2),
      I1 => data_in(3),
      I2 => data_in(4),
      O => \g0_b0__3_n_0\
    );
\g0_b0__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BD5"
    )
        port map (
      I0 => data_in(2),
      I1 => data_in(3),
      I2 => data_in(4),
      I3 => data_in(5),
      O => \g0_b0__4_n_0\
    );
g0_b1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7D16"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      O => g0_b1_n_0
    );
g0_b10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      O => g0_b10_n_0
    );
\g0_b10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"559A5AAA"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      I4 => data_in(5),
      O => \g0_b10__0_n_0\
    );
\g0_b10__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D3C3C3C3C3C3CBC3"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(1),
      I2 => data_in(2),
      I3 => data_in(3),
      I4 => data_in(4),
      I5 => data_in(5),
      O => \g0_b10__1_n_0\
    );
\g0_b10__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"659A"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      O => \g0_b10__2_n_0\
    );
\g0_b10__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A55A5AA"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      I4 => data_in(5),
      O => \g0_b10__3_n_0\
    );
\g0_b10__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99939989"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(1),
      I2 => data_in(2),
      I3 => data_in(3),
      I4 => mod_type(0),
      O => \g0_b10__4_n_0\
    );
g0_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0F0F0F0F0F0F8F0"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(1),
      I2 => data_in(2),
      I3 => data_in(3),
      I4 => data_in(4),
      I5 => data_in(5),
      O => g0_b11_n_0
    );
\g0_b1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AFEE605"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      I4 => data_in(5),
      O => \g0_b1__0_n_0\
    );
\g0_b1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE3"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(1),
      I2 => data_in(2),
      I3 => data_in(3),
      O => \g0_b1__1_n_0\
    );
\g0_b1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DBCBCBCBCBCBCBCB"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(1),
      I2 => data_in(2),
      I3 => data_in(3),
      I4 => data_in(4),
      I5 => data_in(5),
      O => \g0_b1__2_n_0\
    );
\g0_b1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D716"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      O => \g0_b1__3_n_0\
    );
\g0_b1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE8A6E11"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      I4 => data_in(5),
      O => \g0_b1__4_n_0\
    );
g0_b2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"99D6"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      O => g0_b2_n_0
    );
\g0_b2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"85AA69F9"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      I4 => data_in(5),
      O => \g0_b2__0_n_0\
    );
\g0_b2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"99D6"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      O => \g0_b2__1_n_0\
    );
\g0_b2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA8596ED"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      I4 => data_in(5),
      O => \g0_b2__2_n_0\
    );
g0_b3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A59A"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      O => g0_b3_n_0
    );
\g0_b3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"76995969"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      I4 => data_in(5),
      O => \g0_b3__0_n_0\
    );
\g0_b3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5AA6"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      O => \g0_b3__1_n_0\
    );
\g0_b3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99769569"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      I4 => data_in(5),
      O => \g0_b3__2_n_0\
    );
g0_b4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"969A"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      O => g0_b4_n_0
    );
\g0_b4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9A655A6"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      I4 => data_in(5),
      O => \g0_b4__0_n_0\
    );
\g0_b4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69A6"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      O => \g0_b4__1_n_0\
    );
\g0_b4__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6A9559A"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      I4 => data_in(5),
      O => \g0_b4__2_n_0\
    );
g0_b5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(2),
      I2 => data_in(4),
      O => g0_b5_n_0
    );
\g0_b5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"95AA665A"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      I4 => data_in(5),
      O => \g0_b5__0_n_0\
    );
\g0_b5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(2),
      I2 => data_in(4),
      O => \g0_b5__1_n_0\
    );
\g0_b5__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA956666"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      I4 => data_in(5),
      O => \g0_b5__2_n_0\
    );
g0_b6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"966A"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      O => g0_b6_n_0
    );
\g0_b6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A965AA55"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      I4 => data_in(5),
      O => \g0_b6__0_n_0\
    );
\g0_b6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"696A"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      O => \g0_b6__1_n_0\
    );
\g0_b6__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65A9AA55"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      I4 => data_in(5),
      O => \g0_b6__2_n_0\
    );
g0_b7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59A6"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      O => g0_b7_n_0
    );
\g0_b7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A5695A99"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      I4 => data_in(5),
      O => \g0_b7__0_n_0\
    );
\g0_b7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"959A"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      O => \g0_b7__1_n_0\
    );
\g0_b7__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69A5A5A5"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      I4 => data_in(5),
      O => \g0_b7__2_n_0\
    );
\g0_b7__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444440"
    )
        port map (
      I0 => data_in(1),
      I1 => g0_b7_i_1_n_0,
      I2 => data_in(0),
      I3 => g0_b7_i_2_n_0,
      I4 => mod_type(0),
      O => \g0_b7__3_n_0\
    );
g0_b7_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mod_type(1),
      I1 => mod_type(2),
      O => g0_b7_i_1_n_0
    );
g0_b7_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(3),
      I1 => data_in(2),
      O => g0_b7_i_2_n_0
    );
g0_b8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9959"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      O => g0_b8_n_0
    );
\g0_b8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"655A95A6"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      I4 => data_in(5),
      O => \g0_b8__0_n_0\
    );
\g0_b8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6663"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(1),
      I2 => data_in(2),
      I3 => data_in(3),
      O => \g0_b8__1_n_0\
    );
\g0_b8__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F0F0F0F0F0F070F"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(1),
      I2 => data_in(2),
      I3 => data_in(3),
      I4 => data_in(4),
      I5 => data_in(5),
      O => \g0_b8__2_n_0\
    );
\g0_b8__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9965"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      O => \g0_b8__3_n_0\
    );
\g0_b8__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A65599A"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      I4 => data_in(5),
      O => \g0_b8__4_n_0\
    );
g0_b9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A6A"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      O => g0_b9_n_0
    );
\g0_b9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5566A666"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      I4 => data_in(5),
      O => \g0_b9__0_n_0\
    );
\g0_b9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(2),
      I2 => data_in(3),
      O => \g0_b9__1_n_0\
    );
\g0_b9__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7969696969696169"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(1),
      I2 => data_in(2),
      I3 => data_in(3),
      I4 => data_in(4),
      I5 => data_in(5),
      O => \g0_b9__2_n_0\
    );
\g0_b9__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A56A"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      O => \g0_b9__3_n_0\
    );
\g0_b9__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66556A5A"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => data_in(4),
      I4 => data_in(5),
      O => \g0_b9__4_n_0\
    );
\i_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00FC00"
    )
        port map (
      I0 => \i_out[0]_i_2_n_0\,
      I1 => \i_out[9]_i_2_n_0\,
      I2 => \i_out[0]_i_3_n_0\,
      I3 => data_out_valid_i_1_n_0,
      I4 => mod_type(2),
      O => p_0_in(0)
    );
\i_out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF5FCF50C05FC050"
    )
        port map (
      I0 => \i_out[0]_i_4_n_0\,
      I1 => \g0_b0__0_n_0\,
      I2 => mod_type(0),
      I3 => mod_type(1),
      I4 => data4(0),
      I5 => g0_b0_n_0,
      O => \i_out[0]_i_2_n_0\
    );
\i_out[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => data_in(2),
      I1 => data_in(3),
      I2 => data_in(0),
      O => \i_out[0]_i_3_n_0\
    );
\i_out[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data_in(2),
      I1 => data_in(3),
      O => \i_out[0]_i_4_n_0\
    );
\i_out[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00F7FFFFFFFF"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(1),
      I2 => data_in(2),
      I3 => data_in(4),
      I4 => data_in(5),
      I5 => data_in(3),
      O => data4(0)
    );
\i_out[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \i_out[10]_i_2_n_0\,
      I1 => data_in_valid,
      I2 => data_in_ready,
      I3 => mod_type(2),
      I4 => \i_out[10]_i_3_n_0\,
      O => p_0_in(10)
    );
\i_out[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \i_out[10]_i_4_n_0\,
      I1 => \g0_b10__0_n_0\,
      I2 => mod_type(0),
      I3 => mod_type(1),
      I4 => data4(10),
      I5 => g0_b10_n_0,
      O => \i_out[10]_i_2_n_0\
    );
\i_out[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA882800008828"
    )
        port map (
      I0 => \i_out[10]_i_6_n_0\,
      I1 => data_in(0),
      I2 => mod_type(0),
      I3 => data_in(1),
      I4 => mod_type(1),
      I5 => \i_out[10]_i_7_n_0\,
      O => \i_out[10]_i_3_n_0\
    );
\i_out[10]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(2),
      O => \i_out[10]_i_4_n_0\
    );
\i_out[10]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_in(5),
      I1 => data_in(4),
      O => data4(10)
    );
\i_out[10]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data_in_valid,
      I1 => data_in_ready,
      I2 => mod_type(2),
      O => \i_out[10]_i_6_n_0\
    );
\i_out[10]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0CF3F60"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(4),
      I2 => mod_type(0),
      I3 => data_in(3),
      I4 => data_in(2),
      O => \i_out[10]_i_7_n_0\
    );
\i_out[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => \i_out[11]_i_3_n_0\,
      I1 => \i_out[11]_i_4_n_0\,
      I2 => data_in_valid,
      I3 => data_in_ready,
      I4 => mod_type(2),
      O => p_0_in(11)
    );
\i_out[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => nreset,
      O => \i_out[11]_i_2_n_0\
    );
\i_out[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFDFDFC01010100"
    )
        port map (
      I0 => data_in(5),
      I1 => mod_type(1),
      I2 => mod_type(0),
      I3 => data_in(4),
      I4 => \i_out[11]_i_5_n_0\,
      I5 => data_in(0),
      O => \i_out[11]_i_3_n_0\
    );
\i_out[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"305030AF3F503FAF"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(4),
      I2 => mod_type(0),
      I3 => mod_type(1),
      I4 => data_in(0),
      I5 => data_in(3),
      O => \i_out[11]_i_4_n_0\
    );
\i_out[11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => data_in(3),
      I1 => data_in(2),
      I2 => data_in(1),
      I3 => data_in(0),
      O => \i_out[11]_i_5_n_0\
    );
\i_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA8A808080"
    )
        port map (
      I0 => data_out_valid_i_1_n_0,
      I1 => \i_out[1]_i_2_n_0\,
      I2 => mod_type(2),
      I3 => \i_out[1]_i_3_n_0\,
      I4 => mod_type(1),
      I5 => \i_out[8]_i_4_n_0\,
      O => p_0_in(1)
    );
\i_out[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0EE00CCF0EE"
    )
        port map (
      I0 => data4(1),
      I1 => \i_out[1]_i_5_n_0\,
      I2 => g0_b1_n_0,
      I3 => mod_type(1),
      I4 => mod_type(0),
      I5 => \g0_b1__0_n_0\,
      O => \i_out[1]_i_2_n_0\
    );
\i_out[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CCCECFC"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(3),
      I2 => mod_type(0),
      I3 => data_in(4),
      I4 => data_in(2),
      O => \i_out[1]_i_3_n_0\
    );
\i_out[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFFFFFF2000"
    )
        port map (
      I0 => data_in(3),
      I1 => data_in(2),
      I2 => data_in(1),
      I3 => data_in(0),
      I4 => data_in(5),
      I5 => data_in(4),
      O => data4(1)
    );
\i_out[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F00"
    )
        port map (
      I0 => data_in(2),
      I1 => data_in(0),
      I2 => data_in(3),
      I3 => mod_type(0),
      O => \i_out[1]_i_5_n_0\
    );
\i_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEEE0000"
    )
        port map (
      I0 => \i_out[2]_i_2_n_0\,
      I1 => \i_out[2]_i_3_n_0\,
      I2 => \i_out[2]_i_4_n_0\,
      I3 => g0_b2_n_0,
      I4 => \i_out[2]_i_5_n_0\,
      I5 => \i_out[10]_i_3_n_0\,
      O => p_0_in(2)
    );
\i_out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA00003FF00000"
    )
        port map (
      I0 => \g0_b2__0_n_0\,
      I1 => data_in(2),
      I2 => data_in(0),
      I3 => data_in(3),
      I4 => mod_type(0),
      I5 => mod_type(1),
      O => \i_out[2]_i_2_n_0\
    );
\i_out[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888A888888"
    )
        port map (
      I0 => \i_out[2]_i_6_n_0\,
      I1 => data_in(5),
      I2 => data_in(4),
      I3 => data_in(0),
      I4 => data_in(1),
      I5 => \i_out[2]_i_7_n_0\,
      O => \i_out[2]_i_3_n_0\
    );
\i_out[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mod_type(1),
      I1 => mod_type(0),
      O => \i_out[2]_i_4_n_0\
    );
\i_out[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => data_in_valid,
      I1 => data_in_ready,
      I2 => mod_type(2),
      O => \i_out[2]_i_5_n_0\
    );
\i_out[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mod_type(1),
      I1 => mod_type(0),
      O => \i_out[2]_i_6_n_0\
    );
\i_out[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(2),
      I1 => data_in(3),
      O => \i_out[2]_i_7_n_0\
    );
\i_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888000"
    )
        port map (
      I0 => data_in_valid,
      I1 => data_in_ready,
      I2 => \i_out[3]_i_2_n_0\,
      I3 => mod_type(2),
      I4 => \i_out[7]_i_3_n_0\,
      I5 => \i_out[4]_i_3_n_0\,
      O => p_0_in(3)
    );
\i_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data_in(0),
      I1 => \g0_b3__0_n_0\,
      I2 => mod_type(0),
      I3 => mod_type(1),
      I4 => data4(9),
      I5 => g0_b3_n_0,
      O => \i_out[3]_i_2_n_0\
    );
\i_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888000"
    )
        port map (
      I0 => data_in_valid,
      I1 => data_in_ready,
      I2 => \i_out[4]_i_2_n_0\,
      I3 => mod_type(2),
      I4 => \i_out[8]_i_3_n_0\,
      I5 => \i_out[4]_i_3_n_0\,
      O => p_0_in(4)
    );
\i_out[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33F0AA0033F0AA"
    )
        port map (
      I0 => data4(10),
      I1 => \i_out[4]_i_4_n_0\,
      I2 => g0_b4_n_0,
      I3 => mod_type(1),
      I4 => mod_type(0),
      I5 => \g0_b4__0_n_0\,
      O => \i_out[4]_i_2_n_0\
    );
\i_out[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01101010"
    )
        port map (
      I0 => mod_type(1),
      I1 => mod_type(2),
      I2 => data_in(0),
      I3 => mod_type(0),
      I4 => data_in(1),
      O => \i_out[4]_i_3_n_0\
    );
\i_out[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => data_in(3),
      I1 => data_in(2),
      I2 => data_in(0),
      O => \i_out[4]_i_4_n_0\
    );
\i_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA080000"
    )
        port map (
      I0 => data_out_valid_i_1_n_0,
      I1 => \g0_b5__0_n_0\,
      I2 => \i_out[9]_i_2_n_0\,
      I3 => \i_out[5]_i_2_n_0\,
      I4 => mod_type(2),
      I5 => \i_out[5]_i_3_n_0\,
      O => p_0_in(5)
    );
\i_out[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3300B8B80033B8B8"
    )
        port map (
      I0 => g0_b5_n_0,
      I1 => mod_type(1),
      I2 => data4(8),
      I3 => \i_out[10]_i_4_n_0\,
      I4 => mod_type(0),
      I5 => data_in(3),
      O => \i_out[5]_i_2_n_0\
    );
\i_out[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF6A2E0000"
    )
        port map (
      I0 => data_in(3),
      I1 => mod_type(0),
      I2 => data_in(4),
      I3 => data_in(2),
      I4 => g0_b7_i_1_n_0,
      I5 => \i_out[8]_i_4_n_0\,
      O => \i_out[5]_i_3_n_0\
    );
\i_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA080000"
    )
        port map (
      I0 => data_out_valid_i_1_n_0,
      I1 => \g0_b6__0_n_0\,
      I2 => \i_out[9]_i_2_n_0\,
      I3 => \i_out[6]_i_2_n_0\,
      I4 => mod_type(2),
      I5 => \i_out[6]_i_3_n_0\,
      O => p_0_in(6)
    );
\i_out[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3300B8B80033B8B8"
    )
        port map (
      I0 => g0_b6_n_0,
      I1 => mod_type(1),
      I2 => data4(9),
      I3 => data_in(0),
      I4 => mod_type(0),
      I5 => data_in(3),
      O => \i_out[6]_i_2_n_0\
    );
\i_out[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAAA00003FC0"
    )
        port map (
      I0 => \i_out[10]_i_7_n_0\,
      I1 => data_in(1),
      I2 => mod_type(0),
      I3 => data_in(0),
      I4 => mod_type(2),
      I5 => mod_type(1),
      O => \i_out[6]_i_3_n_0\
    );
\i_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888000"
    )
        port map (
      I0 => data_in_valid,
      I1 => data_in_ready,
      I2 => \i_out[7]_i_2_n_0\,
      I3 => mod_type(2),
      I4 => \i_out[7]_i_3_n_0\,
      I5 => \i_out[8]_i_4_n_0\,
      O => p_0_in(7)
    );
\i_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAFEFAAEAAFEAAA"
    )
        port map (
      I0 => \i_out[8]_i_5_n_0\,
      I1 => \g0_b7__0_n_0\,
      I2 => mod_type(0),
      I3 => mod_type(1),
      I4 => data4(10),
      I5 => g0_b7_n_0,
      O => \i_out[7]_i_2_n_0\
    );
\i_out[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => mod_type(2),
      I1 => mod_type(1),
      I2 => data_in(3),
      I3 => mod_type(0),
      I4 => data_in(4),
      O => \i_out[7]_i_3_n_0\
    );
\i_out[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888000"
    )
        port map (
      I0 => data_in_valid,
      I1 => data_in_ready,
      I2 => \i_out[8]_i_2_n_0\,
      I3 => mod_type(2),
      I4 => \i_out[8]_i_3_n_0\,
      I5 => \i_out[8]_i_4_n_0\,
      O => p_0_in(8)
    );
\i_out[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAFEFAAEAAFEAAA"
    )
        port map (
      I0 => \i_out[8]_i_5_n_0\,
      I1 => \g0_b8__0_n_0\,
      I2 => mod_type(0),
      I3 => mod_type(1),
      I4 => data4(8),
      I5 => g0_b8_n_0,
      O => \i_out[8]_i_2_n_0\
    );
\i_out[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A28282880288228"
    )
        port map (
      I0 => g0_b7_i_1_n_0,
      I1 => data_in(2),
      I2 => data_in(3),
      I3 => mod_type(0),
      I4 => data_in(0),
      I5 => data_in(4),
      O => \i_out[8]_i_3_n_0\
    );
\i_out[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10100110"
    )
        port map (
      I0 => mod_type(1),
      I1 => mod_type(2),
      I2 => data_in(0),
      I3 => mod_type(0),
      I4 => data_in(1),
      O => \i_out[8]_i_4_n_0\
    );
\i_out[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04400404"
    )
        port map (
      I0 => mod_type(1),
      I1 => mod_type(0),
      I2 => data_in(0),
      I3 => data_in(2),
      I4 => data_in(3),
      O => \i_out[8]_i_5_n_0\
    );
\i_out[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00004000"
    )
        port map (
      I0 => data_in(2),
      I1 => data_in(3),
      I2 => data_in(1),
      I3 => data_in(0),
      I4 => data_in(4),
      I5 => data_in(5),
      O => data4(8)
    );
\i_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA080000"
    )
        port map (
      I0 => data_out_valid_i_1_n_0,
      I1 => \g0_b9__0_n_0\,
      I2 => \i_out[9]_i_2_n_0\,
      I3 => \i_out[9]_i_3_n_0\,
      I4 => mod_type(2),
      I5 => \i_out[9]_i_4_n_0\,
      O => p_0_in(9)
    );
\i_out[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => mod_type(1),
      I1 => mod_type(0),
      O => \i_out[9]_i_2_n_0\
    );
\i_out[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8B83300B8B8"
    )
        port map (
      I0 => g0_b9_n_0,
      I1 => mod_type(1),
      I2 => data4(9),
      I3 => \i_out[10]_i_4_n_0\,
      I4 => mod_type(0),
      I5 => data_in(3),
      O => \i_out[9]_i_3_n_0\
    );
\i_out[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF6A2E0000"
    )
        port map (
      I0 => data_in(3),
      I1 => mod_type(0),
      I2 => data_in(4),
      I3 => data_in(2),
      I4 => g0_b7_i_1_n_0,
      I5 => \i_out[4]_i_3_n_0\,
      O => \i_out[9]_i_4_n_0\
    );
\i_out[9]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in(3),
      I1 => data_in(5),
      I2 => data_in(4),
      O => data4(9)
    );
\i_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => p_0_in(0),
      Q => i_out(0)
    );
\i_out_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => p_0_in(10),
      Q => i_out(10)
    );
\i_out_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => p_0_in(11),
      Q => i_out(11)
    );
\i_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => p_0_in(1),
      Q => i_out(1)
    );
\i_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => p_0_in(2),
      Q => i_out(2)
    );
\i_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => p_0_in(3),
      Q => i_out(3)
    );
\i_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => p_0_in(4),
      Q => i_out(4)
    );
\i_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => p_0_in(5),
      Q => i_out(5)
    );
\i_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => p_0_in(6),
      Q => i_out(6)
    );
\i_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => p_0_in(7),
      Q => i_out(7)
    );
\i_out_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => p_0_in(8),
      Q => i_out(8)
    );
\i_out_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => p_0_in(9),
      Q => i_out(9)
    );
\q_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C000"
    )
        port map (
      I0 => \q_out[0]_i_2_n_0\,
      I1 => \q_out[0]_i_3_n_0\,
      I2 => data_in_valid,
      I3 => data_in_ready,
      I4 => mod_type(2),
      O => \q_out[0]_i_1_n_0\
    );
\q_out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF5FCF50C05FC050"
    )
        port map (
      I0 => \i_out[0]_i_4_n_0\,
      I1 => \g0_b0__4_n_0\,
      I2 => mod_type(0),
      I3 => mod_type(1),
      I4 => \g0_b0__2_n_0\,
      I5 => \g0_b0__3_n_0\,
      O => \q_out[0]_i_2_n_0\
    );
\q_out[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFFFFFC0000"
    )
        port map (
      I0 => \g0_b0__1_n_0\,
      I1 => g0_b7_i_2_n_0,
      I2 => data_in(1),
      I3 => data_in(0),
      I4 => mod_type(1),
      I5 => mod_type(0),
      O => \q_out[0]_i_3_n_0\
    );
\q_out[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBA000000"
    )
        port map (
      I0 => \q_out[10]_i_2_n_0\,
      I1 => \i_out[9]_i_2_n_0\,
      I2 => \g0_b10__3_n_0\,
      I3 => data_out_valid_i_1_n_0,
      I4 => mod_type(2),
      I5 => \q_out[10]_i_3_n_0\,
      O => \q_out[10]_i_1_n_0\
    );
\q_out[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8B83300B8B8"
    )
        port map (
      I0 => \g0_b10__2_n_0\,
      I1 => mod_type(1),
      I2 => \g0_b10__1_n_0\,
      I3 => data_in(1),
      I4 => mod_type(0),
      I5 => data_in(3),
      O => \q_out[10]_i_2_n_0\
    );
\q_out[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444040000000400"
    )
        port map (
      I0 => mod_type(2),
      I1 => data_out_valid_i_1_n_0,
      I2 => data_in(1),
      I3 => mod_type(0),
      I4 => mod_type(1),
      I5 => \g0_b10__4_n_0\,
      O => \q_out[10]_i_3_n_0\
    );
\q_out[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFE100000"
    )
        port map (
      I0 => mod_type(0),
      I1 => mod_type(1),
      I2 => g0_b11_n_0,
      I3 => data_in(1),
      I4 => \i_out[2]_i_5_n_0\,
      I5 => \q_out[11]_i_2_n_0\,
      O => \q_out[11]_i_1_n_0\
    );
\q_out[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800A800A820"
    )
        port map (
      I0 => \i_out[10]_i_6_n_0\,
      I1 => mod_type(0),
      I2 => mod_type(1),
      I3 => data_in(1),
      I4 => g0_b7_i_2_n_0,
      I5 => data_in(0),
      O => \q_out[11]_i_2_n_0\
    );
\q_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABA0000FF000000"
    )
        port map (
      I0 => \q_out[1]_i_2_n_0\,
      I1 => \i_out[9]_i_2_n_0\,
      I2 => \g0_b1__4_n_0\,
      I3 => \q_out[1]_i_3_n_0\,
      I4 => data_out_valid_i_1_n_0,
      I5 => mod_type(2),
      O => \q_out[1]_i_1_n_0\
    );
\q_out[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33BB33BB00B833B8"
    )
        port map (
      I0 => \g0_b1__3_n_0\,
      I1 => mod_type(1),
      I2 => \g0_b1__2_n_0\,
      I3 => mod_type(0),
      I4 => data_in(2),
      I5 => \q_out[1]_i_4_n_0\,
      O => \q_out[1]_i_2_n_0\
    );
\q_out[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA00FF00FC0000"
    )
        port map (
      I0 => \g0_b1__1_n_0\,
      I1 => data_in(0),
      I2 => g0_b7_i_2_n_0,
      I3 => data_in(1),
      I4 => mod_type(1),
      I5 => mod_type(0),
      O => \q_out[1]_i_3_n_0\
    );
\q_out[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => data_in(3),
      I1 => mod_type(0),
      I2 => data_in(1),
      O => \q_out[1]_i_4_n_0\
    );
\q_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBA000000"
    )
        port map (
      I0 => \q_out[2]_i_2_n_0\,
      I1 => \i_out[9]_i_2_n_0\,
      I2 => \g0_b2__2_n_0\,
      I3 => data_out_valid_i_1_n_0,
      I4 => mod_type(2),
      I5 => \q_out[10]_i_3_n_0\,
      O => \q_out[2]_i_1_n_0\
    );
\q_out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33330033B8B8B8B8"
    )
        port map (
      I0 => \g0_b2__1_n_0\,
      I1 => mod_type(1),
      I2 => \g0_b8__2_n_0\,
      I3 => g0_b7_i_2_n_0,
      I4 => \q_out[9]_i_4_n_0\,
      I5 => mod_type(0),
      O => \q_out[2]_i_2_n_0\
    );
\q_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888000"
    )
        port map (
      I0 => data_in_valid,
      I1 => data_in_ready,
      I2 => \q_out[3]_i_2_n_0\,
      I3 => mod_type(2),
      I4 => \g0_b7__3_n_0\,
      I5 => \q_out[6]_i_3_n_0\,
      O => \q_out[3]_i_1_n_0\
    );
\q_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data_in(1),
      I1 => \g0_b3__2_n_0\,
      I2 => mod_type(0),
      I3 => mod_type(1),
      I4 => \g0_b9__2_n_0\,
      I5 => \g0_b3__1_n_0\,
      O => \q_out[3]_i_2_n_0\
    );
\q_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888000"
    )
        port map (
      I0 => data_in_valid,
      I1 => data_in_ready,
      I2 => \q_out[4]_i_2_n_0\,
      I3 => mod_type(2),
      I4 => \q_out[8]_i_3_n_0\,
      I5 => \q_out[6]_i_3_n_0\,
      O => \q_out[4]_i_1_n_0\
    );
\q_out[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33F0AA0033F0AA"
    )
        port map (
      I0 => \g0_b10__1_n_0\,
      I1 => \q_out[4]_i_3_n_0\,
      I2 => \g0_b4__1_n_0\,
      I3 => mod_type(1),
      I4 => mod_type(0),
      I5 => \g0_b4__2_n_0\,
      O => \q_out[4]_i_2_n_0\
    );
\q_out[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => data_in(2),
      I1 => data_in(3),
      I2 => data_in(1),
      O => \q_out[4]_i_3_n_0\
    );
\q_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA080000"
    )
        port map (
      I0 => data_out_valid_i_1_n_0,
      I1 => \g0_b5__2_n_0\,
      I2 => \i_out[9]_i_2_n_0\,
      I3 => \q_out[5]_i_2_n_0\,
      I4 => mod_type(2),
      I5 => \q_out[5]_i_3_n_0\,
      O => \q_out[5]_i_1_n_0\
    );
\q_out[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3300B8B80033B8B8"
    )
        port map (
      I0 => \g0_b5__1_n_0\,
      I1 => mod_type(1),
      I2 => \g0_b8__2_n_0\,
      I3 => \q_out[9]_i_4_n_0\,
      I4 => mod_type(0),
      I5 => data_in(3),
      O => \q_out[5]_i_2_n_0\
    );
\q_out[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A3A3000000F0"
    )
        port map (
      I0 => \g0_b9__1_n_0\,
      I1 => \q_out[9]_i_5_n_0\,
      I2 => mod_type(0),
      I3 => data_in(1),
      I4 => mod_type(2),
      I5 => mod_type(1),
      O => \q_out[5]_i_3_n_0\
    );
\q_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA8A808080"
    )
        port map (
      I0 => data_out_valid_i_1_n_0,
      I1 => \q_out[6]_i_2_n_0\,
      I2 => mod_type(2),
      I3 => \g0_b10__4_n_0\,
      I4 => mod_type(1),
      I5 => \q_out[6]_i_3_n_0\,
      O => \q_out[6]_i_1_n_0\
    );
\q_out[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33F0AA0033F0AA"
    )
        port map (
      I0 => \g0_b9__2_n_0\,
      I1 => \q_out[9]_i_4_n_0\,
      I2 => \g0_b6__1_n_0\,
      I3 => mod_type(1),
      I4 => mod_type(0),
      I5 => \g0_b6__2_n_0\,
      O => \q_out[6]_i_2_n_0\
    );
\q_out[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => mod_type(1),
      I1 => mod_type(2),
      I2 => data_in(1),
      I3 => mod_type(0),
      O => \q_out[6]_i_3_n_0\
    );
\q_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888000"
    )
        port map (
      I0 => data_in_valid,
      I1 => data_in_ready,
      I2 => \q_out[7]_i_2_n_0\,
      I3 => mod_type(2),
      I4 => \g0_b7__3_n_0\,
      I5 => \q_out[8]_i_4_n_0\,
      O => \q_out[7]_i_1_n_0\
    );
\q_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAFEFAAEAAFEAAA"
    )
        port map (
      I0 => \q_out[8]_i_5_n_0\,
      I1 => \g0_b7__2_n_0\,
      I2 => mod_type(0),
      I3 => mod_type(1),
      I4 => \g0_b10__1_n_0\,
      I5 => \g0_b7__1_n_0\,
      O => \q_out[7]_i_2_n_0\
    );
\q_out[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888000"
    )
        port map (
      I0 => data_in_valid,
      I1 => data_in_ready,
      I2 => \q_out[8]_i_2_n_0\,
      I3 => mod_type(2),
      I4 => \q_out[8]_i_3_n_0\,
      I5 => \q_out[8]_i_4_n_0\,
      O => \q_out[8]_i_1_n_0\
    );
\q_out[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAFEFAAEAAFEAAA"
    )
        port map (
      I0 => \q_out[8]_i_5_n_0\,
      I1 => \g0_b8__4_n_0\,
      I2 => mod_type(0),
      I3 => mod_type(1),
      I4 => \g0_b8__2_n_0\,
      I5 => \g0_b8__3_n_0\,
      O => \q_out[8]_i_2_n_0\
    );
\q_out[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA828000008280"
    )
        port map (
      I0 => g0_b7_i_1_n_0,
      I1 => data_in(0),
      I2 => data_in(1),
      I3 => g0_b7_i_2_n_0,
      I4 => mod_type(0),
      I5 => \g0_b8__1_n_0\,
      O => \q_out[8]_i_3_n_0\
    );
\q_out[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => mod_type(1),
      I1 => mod_type(2),
      I2 => data_in(1),
      I3 => mod_type(0),
      O => \q_out[8]_i_4_n_0\
    );
\q_out[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04400404"
    )
        port map (
      I0 => mod_type(1),
      I1 => mod_type(0),
      I2 => data_in(1),
      I3 => data_in(3),
      I4 => data_in(2),
      O => \q_out[8]_i_5_n_0\
    );
\q_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA080000"
    )
        port map (
      I0 => data_out_valid_i_1_n_0,
      I1 => \g0_b9__4_n_0\,
      I2 => \i_out[9]_i_2_n_0\,
      I3 => \q_out[9]_i_2_n_0\,
      I4 => mod_type(2),
      I5 => \q_out[9]_i_3_n_0\,
      O => \q_out[9]_i_1_n_0\
    );
\q_out[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8B83300B8B8"
    )
        port map (
      I0 => \g0_b9__3_n_0\,
      I1 => mod_type(1),
      I2 => \g0_b9__2_n_0\,
      I3 => \q_out[9]_i_4_n_0\,
      I4 => mod_type(0),
      I5 => data_in(3),
      O => \q_out[9]_i_2_n_0\
    );
\q_out[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A3A30000F000"
    )
        port map (
      I0 => \g0_b9__1_n_0\,
      I1 => \q_out[9]_i_5_n_0\,
      I2 => mod_type(0),
      I3 => data_in(1),
      I4 => mod_type(2),
      I5 => mod_type(1),
      O => \q_out[9]_i_3_n_0\
    );
\q_out[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_in(2),
      I1 => data_in(1),
      O => \q_out[9]_i_4_n_0\
    );
\q_out[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF10"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(3),
      I2 => data_in(2),
      I3 => data_in(1),
      O => \q_out[9]_i_5_n_0\
    );
\q_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => \q_out[0]_i_1_n_0\,
      Q => q_out(0)
    );
\q_out_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => \q_out[10]_i_1_n_0\,
      Q => q_out(10)
    );
\q_out_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => \q_out[11]_i_1_n_0\,
      Q => q_out(11)
    );
\q_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => \q_out[1]_i_1_n_0\,
      Q => q_out(1)
    );
\q_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => \q_out[2]_i_1_n_0\,
      Q => q_out(2)
    );
\q_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => \q_out[3]_i_1_n_0\,
      Q => q_out(3)
    );
\q_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => \q_out[4]_i_1_n_0\,
      Q => q_out(4)
    );
\q_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => \q_out[5]_i_1_n_0\,
      Q => q_out(5)
    );
\q_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => \q_out[6]_i_1_n_0\,
      Q => q_out(6)
    );
\q_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => \q_out[7]_i_1_n_0\,
      Q => q_out(7)
    );
\q_out_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => \q_out[8]_i_1_n_0\,
      Q => q_out(8)
    );
\q_out_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \i_out[11]_i_2_n_0\,
      D => \q_out[9]_i_1_n_0\,
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
    nreset : in STD_LOGIC;
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
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Design_2_Mapper_tx_0_0,mapper,{}";
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
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Design_2_clk, INSERT_VIP 0";
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
      nreset => nreset,
      q_out(11 downto 0) => q_out(11 downto 0)
    );
end STRUCTURE;
