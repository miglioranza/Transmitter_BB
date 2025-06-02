-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Mon Jun  2 15:16:44 2025
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
    data_out_ready : out STD_LOGIC;
    data_out_last : out STD_LOGIC;
    last_frame : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 32 downto 1 );
    data_in_ready : in STD_LOGIC;
    data_in_valid : in STD_LOGIC;
    seed : in STD_LOGIC_VECTOR ( 30 downto 0 );
    control_enable : in STD_LOGIC;
    data_in_last : in STD_LOGIC;
    end_of_frame : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Scrambler_32bits;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Scrambler_32bits is
  signal \data_out[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[16]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[17]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[18]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[19]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[20]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[21]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[22]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[23]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[24]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[25]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[26]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[27]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[28]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[29]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[30]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[31]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_1_n_0\ : STD_LOGIC;
  signal \^data_out_last\ : STD_LOGIC;
  signal data_out_last_i_1_n_0 : STD_LOGIC;
  signal data_out_ready0 : STD_LOGIC;
  signal feedback : STD_LOGIC;
  signal feedback_i_1_n_0 : STD_LOGIC;
  signal \^last_frame\ : STD_LOGIC;
  signal last_frame_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal p_1_in_0 : STD_LOGIC_VECTOR ( 30 downto 1 );
  signal \tmp_seed[30]_i_1_n_0\ : STD_LOGIC;
  signal \tmp_seed_reg_n_0_[30]\ : STD_LOGIC;
begin
  data_out_last <= \^data_out_last\;
  last_frame <= \^last_frame\;
\data_out[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(10),
      I1 => data_in(10),
      O => \data_out[10]_i_1_n_0\
    );
\data_out[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(11),
      I1 => data_in(11),
      O => \data_out[11]_i_1_n_0\
    );
\data_out[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(12),
      I1 => data_in(12),
      O => \data_out[12]_i_1_n_0\
    );
\data_out[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(13),
      I1 => data_in(13),
      O => \data_out[13]_i_1_n_0\
    );
\data_out[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(14),
      I1 => data_in(14),
      O => \data_out[14]_i_1_n_0\
    );
\data_out[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(15),
      I1 => data_in(15),
      O => \data_out[15]_i_1_n_0\
    );
\data_out[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(16),
      I1 => data_in(16),
      O => \data_out[16]_i_1_n_0\
    );
\data_out[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(17),
      I1 => data_in(17),
      O => \data_out[17]_i_1_n_0\
    );
\data_out[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(18),
      I1 => data_in(18),
      O => \data_out[18]_i_1_n_0\
    );
\data_out[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(19),
      I1 => data_in(19),
      O => \data_out[19]_i_1_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(1),
      I1 => data_in(1),
      O => \data_out[1]_i_1_n_0\
    );
\data_out[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(20),
      I1 => data_in(20),
      O => \data_out[20]_i_1_n_0\
    );
\data_out[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(21),
      I1 => data_in(21),
      O => \data_out[21]_i_1_n_0\
    );
\data_out[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(22),
      I1 => data_in(22),
      O => \data_out[22]_i_1_n_0\
    );
\data_out[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(23),
      I1 => data_in(23),
      O => \data_out[23]_i_1_n_0\
    );
\data_out[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(24),
      I1 => data_in(24),
      O => \data_out[24]_i_1_n_0\
    );
\data_out[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(25),
      I1 => data_in(25),
      O => \data_out[25]_i_1_n_0\
    );
\data_out[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(26),
      I1 => data_in(26),
      O => \data_out[26]_i_1_n_0\
    );
\data_out[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(27),
      I1 => data_in(27),
      O => \data_out[27]_i_1_n_0\
    );
\data_out[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(28),
      I1 => data_in(28),
      O => \data_out[28]_i_1_n_0\
    );
\data_out[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(29),
      I1 => data_in(29),
      O => \data_out[29]_i_1_n_0\
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(2),
      I1 => data_in(2),
      O => \data_out[2]_i_1_n_0\
    );
\data_out[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(30),
      I1 => data_in(30),
      O => \data_out[30]_i_1_n_0\
    );
\data_out[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_seed_reg_n_0_[30]\,
      I1 => data_in(31),
      O => \data_out[31]_i_1_n_0\
    );
\data_out[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_in_ready,
      I1 => data_in_valid,
      O => data_out_ready0
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(3),
      I1 => data_in(3),
      O => \data_out[3]_i_1_n_0\
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(4),
      I1 => data_in(4),
      O => \data_out[4]_i_1_n_0\
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(5),
      I1 => data_in(5),
      O => \data_out[5]_i_1_n_0\
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(6),
      I1 => data_in(6),
      O => \data_out[6]_i_1_n_0\
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(7),
      I1 => data_in(7),
      O => \data_out[7]_i_1_n_0\
    );
\data_out[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(8),
      I1 => data_in(8),
      O => \data_out[8]_i_1_n_0\
    );
\data_out[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in_0(9),
      I1 => data_in(9),
      O => \data_out[9]_i_1_n_0\
    );
data_out_last_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAB8B8B8"
    )
        port map (
      I0 => \^data_out_last\,
      I1 => rst,
      I2 => data_in_last,
      I3 => data_in_valid,
      I4 => data_in_ready,
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
      D => data_out_ready0,
      Q => data_out_ready
    );
\data_out_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[10]_i_1_n_0\,
      Q => data_out(10)
    );
\data_out_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[11]_i_1_n_0\,
      Q => data_out(11)
    );
\data_out_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[12]_i_1_n_0\,
      Q => data_out(12)
    );
\data_out_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[13]_i_1_n_0\,
      Q => data_out(13)
    );
\data_out_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[14]_i_1_n_0\,
      Q => data_out(14)
    );
\data_out_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[15]_i_1_n_0\,
      Q => data_out(15)
    );
\data_out_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[16]_i_1_n_0\,
      Q => data_out(16)
    );
\data_out_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[17]_i_1_n_0\,
      Q => data_out(17)
    );
\data_out_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[18]_i_1_n_0\,
      Q => data_out(18)
    );
\data_out_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[19]_i_1_n_0\,
      Q => data_out(19)
    );
\data_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[1]_i_1_n_0\,
      Q => data_out(1)
    );
\data_out_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[20]_i_1_n_0\,
      Q => data_out(20)
    );
\data_out_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[21]_i_1_n_0\,
      Q => data_out(21)
    );
\data_out_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[22]_i_1_n_0\,
      Q => data_out(22)
    );
\data_out_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[23]_i_1_n_0\,
      Q => data_out(23)
    );
\data_out_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[24]_i_1_n_0\,
      Q => data_out(24)
    );
\data_out_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[25]_i_1_n_0\,
      Q => data_out(25)
    );
\data_out_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[26]_i_1_n_0\,
      Q => data_out(26)
    );
\data_out_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[27]_i_1_n_0\,
      Q => data_out(27)
    );
\data_out_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[28]_i_1_n_0\,
      Q => data_out(28)
    );
\data_out_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[29]_i_1_n_0\,
      Q => data_out(29)
    );
\data_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[2]_i_1_n_0\,
      Q => data_out(2)
    );
\data_out_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[30]_i_1_n_0\,
      Q => data_out(30)
    );
\data_out_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[31]_i_1_n_0\,
      Q => data_out(31)
    );
\data_out_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => data_in(32),
      Q => data_out(32)
    );
\data_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[3]_i_1_n_0\,
      Q => data_out(3)
    );
\data_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[4]_i_1_n_0\,
      Q => data_out(4)
    );
\data_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[5]_i_1_n_0\,
      Q => data_out(5)
    );
\data_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[6]_i_1_n_0\,
      Q => data_out(6)
    );
\data_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[7]_i_1_n_0\,
      Q => data_out(7)
    );
\data_out_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[8]_i_1_n_0\,
      Q => data_out(8)
    );
\data_out_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => data_out_ready0,
      CLR => rst,
      D => \data_out[9]_i_1_n_0\,
      Q => data_out(9)
    );
feedback_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF6FFF00006000"
    )
        port map (
      I0 => p_1_in_0(28),
      I1 => \tmp_seed_reg_n_0_[30]\,
      I2 => data_in_valid,
      I3 => data_in_ready,
      I4 => rst,
      I5 => feedback,
      O => feedback_i_1_n_0
    );
feedback_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => feedback_i_1_n_0,
      Q => feedback,
      R => '0'
    );
last_frame_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F800080808"
    )
        port map (
      I0 => data_in_last,
      I1 => end_of_frame,
      I2 => rst,
      I3 => data_in_valid,
      I4 => data_in_ready,
      I5 => \^last_frame\,
      O => last_frame_i_1_n_0
    );
last_frame_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => last_frame_i_1_n_0,
      Q => \^last_frame\,
      R => '0'
    );
\tmp_seed[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => feedback,
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(0),
      O => p_1_in(0)
    );
\tmp_seed[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(10),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(10),
      O => p_1_in(10)
    );
\tmp_seed[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(11),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(11),
      O => p_1_in(11)
    );
\tmp_seed[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(12),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(12),
      O => p_1_in(12)
    );
\tmp_seed[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(13),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(13),
      O => p_1_in(13)
    );
\tmp_seed[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(14),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(14),
      O => p_1_in(14)
    );
\tmp_seed[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(15),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(15),
      O => p_1_in(15)
    );
\tmp_seed[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(16),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(16),
      O => p_1_in(16)
    );
\tmp_seed[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(17),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(17),
      O => p_1_in(17)
    );
\tmp_seed[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(18),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(18),
      O => p_1_in(18)
    );
\tmp_seed[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(19),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(19),
      O => p_1_in(19)
    );
\tmp_seed[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(1),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(1),
      O => p_1_in(1)
    );
\tmp_seed[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(20),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(20),
      O => p_1_in(20)
    );
\tmp_seed[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(21),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(21),
      O => p_1_in(21)
    );
\tmp_seed[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(22),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(22),
      O => p_1_in(22)
    );
\tmp_seed[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(23),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(23),
      O => p_1_in(23)
    );
\tmp_seed[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(24),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(24),
      O => p_1_in(24)
    );
\tmp_seed[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(25),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(25),
      O => p_1_in(25)
    );
\tmp_seed[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(26),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(26),
      O => p_1_in(26)
    );
\tmp_seed[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(27),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(27),
      O => p_1_in(27)
    );
\tmp_seed[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(28),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(28),
      O => p_1_in(28)
    );
\tmp_seed[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(29),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(29),
      O => p_1_in(29)
    );
\tmp_seed[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(2),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(2),
      O => p_1_in(2)
    );
\tmp_seed[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => data_in_valid,
      I1 => data_in_ready,
      I2 => control_enable,
      O => \tmp_seed[30]_i_1_n_0\
    );
\tmp_seed[30]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(30),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(30),
      O => p_1_in(30)
    );
\tmp_seed[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(3),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(3),
      O => p_1_in(3)
    );
\tmp_seed[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(4),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(4),
      O => p_1_in(4)
    );
\tmp_seed[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(5),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(5),
      O => p_1_in(5)
    );
\tmp_seed[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(6),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(6),
      O => p_1_in(6)
    );
\tmp_seed[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(7),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(7),
      O => p_1_in(7)
    );
\tmp_seed[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(8),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(8),
      O => p_1_in(8)
    );
\tmp_seed[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_1_in_0(9),
      I1 => data_in_ready,
      I2 => data_in_valid,
      I3 => seed(9),
      O => p_1_in(9)
    );
\tmp_seed_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(0),
      PRE => rst,
      Q => p_1_in_0(1)
    );
\tmp_seed_reg[10]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(10),
      PRE => rst,
      Q => p_1_in_0(11)
    );
\tmp_seed_reg[11]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(11),
      PRE => rst,
      Q => p_1_in_0(12)
    );
\tmp_seed_reg[12]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(12),
      PRE => rst,
      Q => p_1_in_0(13)
    );
\tmp_seed_reg[13]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(13),
      PRE => rst,
      Q => p_1_in_0(14)
    );
\tmp_seed_reg[14]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(14),
      PRE => rst,
      Q => p_1_in_0(15)
    );
\tmp_seed_reg[15]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(15),
      PRE => rst,
      Q => p_1_in_0(16)
    );
\tmp_seed_reg[16]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(16),
      PRE => rst,
      Q => p_1_in_0(17)
    );
\tmp_seed_reg[17]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(17),
      PRE => rst,
      Q => p_1_in_0(18)
    );
\tmp_seed_reg[18]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(18),
      PRE => rst,
      Q => p_1_in_0(19)
    );
\tmp_seed_reg[19]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(19),
      PRE => rst,
      Q => p_1_in_0(20)
    );
\tmp_seed_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(1),
      PRE => rst,
      Q => p_1_in_0(2)
    );
\tmp_seed_reg[20]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(20),
      PRE => rst,
      Q => p_1_in_0(21)
    );
\tmp_seed_reg[21]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(21),
      PRE => rst,
      Q => p_1_in_0(22)
    );
\tmp_seed_reg[22]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(22),
      PRE => rst,
      Q => p_1_in_0(23)
    );
\tmp_seed_reg[23]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(23),
      PRE => rst,
      Q => p_1_in_0(24)
    );
\tmp_seed_reg[24]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(24),
      PRE => rst,
      Q => p_1_in_0(25)
    );
\tmp_seed_reg[25]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(25),
      PRE => rst,
      Q => p_1_in_0(26)
    );
\tmp_seed_reg[26]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(26),
      PRE => rst,
      Q => p_1_in_0(27)
    );
\tmp_seed_reg[27]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(27),
      PRE => rst,
      Q => p_1_in_0(28)
    );
\tmp_seed_reg[28]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(28),
      PRE => rst,
      Q => p_1_in_0(29)
    );
\tmp_seed_reg[29]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(29),
      PRE => rst,
      Q => p_1_in_0(30)
    );
\tmp_seed_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(2),
      PRE => rst,
      Q => p_1_in_0(3)
    );
\tmp_seed_reg[30]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(30),
      PRE => rst,
      Q => \tmp_seed_reg_n_0_[30]\
    );
\tmp_seed_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(3),
      PRE => rst,
      Q => p_1_in_0(4)
    );
\tmp_seed_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(4),
      PRE => rst,
      Q => p_1_in_0(5)
    );
\tmp_seed_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(5),
      PRE => rst,
      Q => p_1_in_0(6)
    );
\tmp_seed_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(6),
      PRE => rst,
      Q => p_1_in_0(7)
    );
\tmp_seed_reg[7]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(7),
      PRE => rst,
      Q => p_1_in_0(8)
    );
\tmp_seed_reg[8]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(8),
      PRE => rst,
      Q => p_1_in_0(9)
    );
\tmp_seed_reg[9]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \tmp_seed[30]_i_1_n_0\,
      D => p_1_in(9),
      PRE => rst,
      Q => p_1_in_0(10)
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
    end_of_frame : in STD_LOGIC;
    seed : in STD_LOGIC_VECTOR ( 30 downto 0 );
    control_enable : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 32 downto 1 );
    data_out_valid : out STD_LOGIC;
    data_out_last : out STD_LOGIC;
    last_frame : out STD_LOGIC;
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
  signal \^data_out_ready\ : STD_LOGIC;
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
  data_out_ready <= \^data_out_ready\;
  data_out_valid <= \^data_out_ready\;
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
      data_out_ready => \^data_out_ready\,
      end_of_frame => end_of_frame,
      last_frame => last_frame,
      rst => rst,
      seed(30 downto 0) => seed(30 downto 0)
    );
end STRUCTURE;
