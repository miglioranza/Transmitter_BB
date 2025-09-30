-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Tue Sep 23 16:31:16 2025
-- Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Design_2_MUX_0_2_sim_netlist.vhdl
-- Design      : Design_2_MUX_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX is
  port (
    mux_I : out STD_LOGIC_VECTOR ( 11 downto 0 );
    mux_Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    I_out : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dpd_I_OUT : in STD_LOGIC_VECTOR ( 11 downto 0 );
    select_signal : in STD_LOGIC;
    Q_out : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dpd_Q_OUT : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mux_I[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \mux_I[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \mux_I[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \mux_I[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \mux_I[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \mux_I[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \mux_I[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \mux_I[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \mux_I[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \mux_I[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \mux_I[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \mux_I[9]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \mux_Q[0]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \mux_Q[10]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \mux_Q[11]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \mux_Q[1]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \mux_Q[2]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mux_Q[3]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mux_Q[4]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \mux_Q[5]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \mux_Q[6]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \mux_Q[7]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \mux_Q[8]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \mux_Q[9]_INST_0\ : label is "soft_lutpair10";
begin
\mux_I[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I_out(0),
      I1 => dpd_I_OUT(0),
      I2 => select_signal,
      O => mux_I(0)
    );
\mux_I[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I_out(10),
      I1 => dpd_I_OUT(10),
      I2 => select_signal,
      O => mux_I(10)
    );
\mux_I[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I_out(11),
      I1 => dpd_I_OUT(11),
      I2 => select_signal,
      O => mux_I(11)
    );
\mux_I[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I_out(1),
      I1 => dpd_I_OUT(1),
      I2 => select_signal,
      O => mux_I(1)
    );
\mux_I[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I_out(2),
      I1 => dpd_I_OUT(2),
      I2 => select_signal,
      O => mux_I(2)
    );
\mux_I[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I_out(3),
      I1 => dpd_I_OUT(3),
      I2 => select_signal,
      O => mux_I(3)
    );
\mux_I[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I_out(4),
      I1 => dpd_I_OUT(4),
      I2 => select_signal,
      O => mux_I(4)
    );
\mux_I[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I_out(5),
      I1 => dpd_I_OUT(5),
      I2 => select_signal,
      O => mux_I(5)
    );
\mux_I[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I_out(6),
      I1 => dpd_I_OUT(6),
      I2 => select_signal,
      O => mux_I(6)
    );
\mux_I[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I_out(7),
      I1 => dpd_I_OUT(7),
      I2 => select_signal,
      O => mux_I(7)
    );
\mux_I[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I_out(8),
      I1 => dpd_I_OUT(8),
      I2 => select_signal,
      O => mux_I(8)
    );
\mux_I[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => I_out(9),
      I1 => dpd_I_OUT(9),
      I2 => select_signal,
      O => mux_I(9)
    );
\mux_Q[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q_out(0),
      I1 => dpd_Q_OUT(0),
      I2 => select_signal,
      O => mux_Q(0)
    );
\mux_Q[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q_out(10),
      I1 => dpd_Q_OUT(10),
      I2 => select_signal,
      O => mux_Q(10)
    );
\mux_Q[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q_out(11),
      I1 => dpd_Q_OUT(11),
      I2 => select_signal,
      O => mux_Q(11)
    );
\mux_Q[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q_out(1),
      I1 => dpd_Q_OUT(1),
      I2 => select_signal,
      O => mux_Q(1)
    );
\mux_Q[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q_out(2),
      I1 => dpd_Q_OUT(2),
      I2 => select_signal,
      O => mux_Q(2)
    );
\mux_Q[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q_out(3),
      I1 => dpd_Q_OUT(3),
      I2 => select_signal,
      O => mux_Q(3)
    );
\mux_Q[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q_out(4),
      I1 => dpd_Q_OUT(4),
      I2 => select_signal,
      O => mux_Q(4)
    );
\mux_Q[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q_out(5),
      I1 => dpd_Q_OUT(5),
      I2 => select_signal,
      O => mux_Q(5)
    );
\mux_Q[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q_out(6),
      I1 => dpd_Q_OUT(6),
      I2 => select_signal,
      O => mux_Q(6)
    );
\mux_Q[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q_out(7),
      I1 => dpd_Q_OUT(7),
      I2 => select_signal,
      O => mux_Q(7)
    );
\mux_Q[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q_out(8),
      I1 => dpd_Q_OUT(8),
      I2 => select_signal,
      O => mux_Q(8)
    );
\mux_Q[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q_out(9),
      I1 => dpd_Q_OUT(9),
      I2 => select_signal,
      O => mux_Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    I_out : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Q_out : in STD_LOGIC_VECTOR ( 11 downto 0 );
    data_out_valid : in STD_LOGIC;
    dpd_I_OUT : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dpd_Q_OUT : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dpd_valid : in STD_LOGIC;
    select_signal : in STD_LOGIC;
    mux_I : out STD_LOGIC_VECTOR ( 11 downto 0 );
    mux_Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    mux_valid : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Design_2_MUX_0_2,MUX,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "MUX,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX
     port map (
      I_out(11 downto 0) => I_out(11 downto 0),
      Q_out(11 downto 0) => Q_out(11 downto 0),
      dpd_I_OUT(11 downto 0) => dpd_I_OUT(11 downto 0),
      dpd_Q_OUT(11 downto 0) => dpd_Q_OUT(11 downto 0),
      mux_I(11 downto 0) => mux_I(11 downto 0),
      mux_Q(11 downto 0) => mux_Q(11 downto 0),
      select_signal => select_signal
    );
mux_valid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_out_valid,
      I1 => select_signal,
      I2 => dpd_valid,
      O => mux_valid
    );
end STRUCTURE;
