-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Thu Feb 27 13:54:22 2025
-- Host        : uxsrv005 running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/miglioranza/Mapper/Mapper.sim/sim_1/synth/func/xsim/mapper_tb_func_synth.vhd
-- Design      : mapper
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mapper is
  port (
    clk : in STD_LOGIC;
    nreset : in STD_LOGIC;
    mod_type : in STD_LOGIC_VECTOR ( 2 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    data_in_valid : in STD_LOGIC;
    data_in_ready : in STD_LOGIC;
    i_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    q_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    data_out_valid : out STD_LOGIC;
    data_out_ready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mapper : entity is true;
end mapper;

architecture STRUCTURE of mapper is
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal data_in_IBUF : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal data_in_ready_IBUF : STD_LOGIC;
  signal data_in_valid_IBUF : STD_LOGIC;
  signal data_out_ready_OBUF : STD_LOGIC;
  signal data_out_valid_OBUF : STD_LOGIC;
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
  signal \g0_b7__4_i_1_n_0\ : STD_LOGIC;
  signal \g0_b7__4_n_0\ : STD_LOGIC;
  signal \g0_b7__5_n_0\ : STD_LOGIC;
  signal \g0_b7__6_n_0\ : STD_LOGIC;
  signal \g0_b7__7_n_0\ : STD_LOGIC;
  signal \g0_b7__8_n_0\ : STD_LOGIC;
  signal \g0_b7__9_n_0\ : STD_LOGIC;
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
  signal \i_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[0]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[10]_i_1_n_0\ : STD_LOGIC;
  signal \i_out[10]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[10]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \i_out[11]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[11]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \i_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[1]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[1]_i_5_n_0\ : STD_LOGIC;
  signal \i_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \i_out[2]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \i_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[3]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \i_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \i_out[5]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[5]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \i_out[6]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \i_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[7]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \i_out[8]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[8]_i_4_n_0\ : STD_LOGIC;
  signal \i_out[8]_i_5_n_0\ : STD_LOGIC;
  signal \i_out[9]_i_1_n_0\ : STD_LOGIC;
  signal \i_out[9]_i_3_n_0\ : STD_LOGIC;
  signal \i_out[9]_i_4_n_0\ : STD_LOGIC;
  signal i_out_OBUF : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \i_out_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \i_out_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \i_out_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \i_out_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \i_out_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \i_out_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \i_out_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \i_out_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \i_out_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \i_out_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \i_out_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \i_out_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal mod_type_IBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal nreset_IBUF : STD_LOGIC;
  signal \q_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[10]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[10]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[10]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[11]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[1]_i_4_n_0\ : STD_LOGIC;
  signal \q_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[2]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[2]_i_4_n_0\ : STD_LOGIC;
  signal \q_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[5]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[5]_i_4_n_0\ : STD_LOGIC;
  signal \q_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[6]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[8]_i_2_n_0\ : STD_LOGIC;
  signal \q_out[8]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[9]_i_1_n_0\ : STD_LOGIC;
  signal \q_out[9]_i_3_n_0\ : STD_LOGIC;
  signal \q_out[9]_i_4_n_0\ : STD_LOGIC;
  signal q_out_OBUF : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \q_out_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \q_out_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \q_out_reg[10]_i_4_n_0\ : STD_LOGIC;
  signal \q_out_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \q_out_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \q_out_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \q_out_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \q_out_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \q_out_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \q_out_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \q_out_reg[6]_i_4_n_0\ : STD_LOGIC;
  signal \q_out_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \q_out_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \q_out_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \q_out_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \q_out_reg[9]_i_2_n_0\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of clk_IBUF_BUFG_inst : label is "BUFG";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of clk_IBUF_BUFG_inst : label is "VCC:CE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \g0_b0__1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \g0_b10__1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \g0_b1__1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \g0_b1__3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \g0_b1__4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of g0_b3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \g0_b3__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \g0_b3__1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \g0_b3__2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \g0_b7__3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \g0_b7__4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \g0_b7__4_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \g0_b7__7\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \g0_b7__8\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \g0_b8__1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \g0_b9__1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i_out[0]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \i_out[10]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i_out[11]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \i_out[1]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i_out[1]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i_out[2]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i_out[3]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_out[5]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i_out[6]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_out[7]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \i_out[8]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i_out[9]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q_out[1]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q_out[2]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q_out[5]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q_out[5]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \q_out[9]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q_out[9]_i_4\ : label is "soft_lutpair15";
begin
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFGCE
    generic map(
      CE_TYPE => "ASYNC",
      SIM_DEVICE => "ULTRASCALE_PLUS",
      STARTUP_SYNC => "FALSE"
    )
        port map (
      CE => '1',
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\data_in_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in(0),
      O => data_in_IBUF(0)
    );
\data_in_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in(1),
      O => data_in_IBUF(1)
    );
\data_in_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in(2),
      O => data_in_IBUF(2)
    );
\data_in_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in(3),
      O => data_in_IBUF(3)
    );
\data_in_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in(4),
      O => data_in_IBUF(4)
    );
\data_in_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in(5),
      O => data_in_IBUF(5)
    );
data_in_ready_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => data_in_ready,
      O => data_in_ready_IBUF
    );
data_in_valid_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => data_in_valid,
      O => data_in_valid_IBUF
    );
data_out_ready_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => data_out_ready_OBUF,
      O => data_out_ready
    );
data_out_ready_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => nreset_IBUF,
      D => data_in_ready_IBUF,
      Q => data_out_ready_OBUF
    );
data_out_valid_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => data_out_valid_OBUF,
      O => data_out_valid
    );
data_out_valid_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => data_in_ready_IBUF,
      CLR => nreset_IBUF,
      D => data_in_valid_IBUF,
      Q => data_out_valid_OBUF
    );
g0_b0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"97"
    )
        port map (
      I0 => data_in_IBUF(2),
      I1 => data_in_IBUF(3),
      I2 => data_in_IBUF(4),
      O => g0_b0_n_0
    );
\g0_b0__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B173"
    )
        port map (
      I0 => data_in_IBUF(2),
      I1 => data_in_IBUF(3),
      I2 => data_in_IBUF(4),
      I3 => data_in_IBUF(5),
      O => \g0_b0__0_n_0\
    );
\g0_b0__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      O => \g0_b0__1_n_0\
    );
\g0_b0__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(1),
      O => \g0_b0__2_n_0\
    );
\g0_b0__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"67"
    )
        port map (
      I0 => data_in_IBUF(2),
      I1 => data_in_IBUF(3),
      I2 => data_in_IBUF(4),
      O => \g0_b0__3_n_0\
    );
\g0_b0__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1BD5"
    )
        port map (
      I0 => data_in_IBUF(2),
      I1 => data_in_IBUF(3),
      I2 => data_in_IBUF(4),
      I3 => data_in_IBUF(5),
      O => \g0_b0__4_n_0\
    );
g0_b1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7D16"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      O => g0_b1_n_0
    );
g0_b10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      O => g0_b10_n_0
    );
\g0_b10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"559A5AAA"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      I4 => data_in_IBUF(5),
      O => \g0_b10__0_n_0\
    );
\g0_b10__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9993"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(1),
      I2 => data_in_IBUF(2),
      I3 => data_in_IBUF(3),
      O => \g0_b10__1_n_0\
    );
\g0_b10__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D3C3C3C3C3C3CBC3"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(1),
      I2 => data_in_IBUF(2),
      I3 => data_in_IBUF(3),
      I4 => data_in_IBUF(4),
      I5 => data_in_IBUF(5),
      O => \g0_b10__2_n_0\
    );
\g0_b10__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"659A"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      O => \g0_b10__3_n_0\
    );
\g0_b10__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A55A5AA"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      I4 => data_in_IBUF(5),
      O => \g0_b10__4_n_0\
    );
g0_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0F0F0F0F0F0F8F0"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(1),
      I2 => data_in_IBUF(2),
      I3 => data_in_IBUF(3),
      I4 => data_in_IBUF(4),
      I5 => data_in_IBUF(5),
      O => g0_b11_n_0
    );
\g0_b1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AFEE605"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      I4 => data_in_IBUF(5),
      O => \g0_b1__0_n_0\
    );
\g0_b1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE3"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(1),
      I2 => data_in_IBUF(2),
      I3 => data_in_IBUF(3),
      O => \g0_b1__1_n_0\
    );
\g0_b1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DBCBCBCBCBCBCBCB"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(1),
      I2 => data_in_IBUF(2),
      I3 => data_in_IBUF(3),
      I4 => data_in_IBUF(4),
      I5 => data_in_IBUF(5),
      O => \g0_b1__2_n_0\
    );
\g0_b1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D716"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      O => \g0_b1__3_n_0\
    );
\g0_b1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE8A6E11"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      I4 => data_in_IBUF(5),
      O => \g0_b1__4_n_0\
    );
g0_b2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"99D6"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      O => g0_b2_n_0
    );
\g0_b2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"85AA69F9"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      I4 => data_in_IBUF(5),
      O => \g0_b2__0_n_0\
    );
\g0_b2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"99D6"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      O => \g0_b2__1_n_0\
    );
\g0_b2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA8596ED"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      I4 => data_in_IBUF(5),
      O => \g0_b2__2_n_0\
    );
g0_b3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A59A"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      O => g0_b3_n_0
    );
\g0_b3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"76995969"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      I4 => data_in_IBUF(5),
      O => \g0_b3__0_n_0\
    );
\g0_b3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5AA6"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      O => \g0_b3__1_n_0\
    );
\g0_b3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99769569"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      I4 => data_in_IBUF(5),
      O => \g0_b3__2_n_0\
    );
g0_b4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"969A"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      O => g0_b4_n_0
    );
\g0_b4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9A655A6"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      I4 => data_in_IBUF(5),
      O => \g0_b4__0_n_0\
    );
\g0_b4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69A6"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      O => \g0_b4__1_n_0\
    );
\g0_b4__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6A9559A"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      I4 => data_in_IBUF(5),
      O => \g0_b4__2_n_0\
    );
g0_b5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(4),
      O => g0_b5_n_0
    );
\g0_b5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"95AA665A"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      I4 => data_in_IBUF(5),
      O => \g0_b5__0_n_0\
    );
\g0_b5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(4),
      O => \g0_b5__1_n_0\
    );
\g0_b5__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA956666"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      I4 => data_in_IBUF(5),
      O => \g0_b5__2_n_0\
    );
g0_b6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"966A"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      O => g0_b6_n_0
    );
\g0_b6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A965AA55"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      I4 => data_in_IBUF(5),
      O => \g0_b6__0_n_0\
    );
\g0_b6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"696A"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      O => \g0_b6__1_n_0\
    );
\g0_b6__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65A9AA55"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      I4 => data_in_IBUF(5),
      O => \g0_b6__2_n_0\
    );
g0_b7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59A6"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      O => g0_b7_n_0
    );
\g0_b7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A5695A99"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      I4 => data_in_IBUF(5),
      O => \g0_b7__0_n_0\
    );
\g0_b7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"959A"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      O => \g0_b7__1_n_0\
    );
\g0_b7__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69A5A5A5"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      I4 => data_in_IBUF(5),
      O => \g0_b7__2_n_0\
    );
\g0_b7__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5545"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(0),
      I2 => data_in_IBUF(2),
      I3 => data_in_IBUF(3),
      O => \g0_b7__3_n_0\
    );
\g0_b7__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C5C5C5C0"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => \g0_b9__1_n_0\,
      I2 => mod_type_IBUF(0),
      I3 => data_in_IBUF(0),
      I4 => \g0_b7__4_i_1_n_0\,
      O => \g0_b7__4_n_0\
    );
\g0_b7__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in_IBUF(3),
      I1 => data_in_IBUF(2),
      O => \g0_b7__4_i_1_n_0\
    );
\g0_b7__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555400"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(0),
      I2 => \g0_b7__4_i_1_n_0\,
      I3 => mod_type_IBUF(1),
      I4 => mod_type_IBUF(0),
      O => \g0_b7__5_n_0\
    );
\g0_b7__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55AA5400"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(0),
      I2 => \g0_b7__4_i_1_n_0\,
      I3 => mod_type_IBUF(1),
      I4 => mod_type_IBUF(0),
      O => \g0_b7__6_n_0\
    );
\g0_b7__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => mod_type_IBUF(0),
      I2 => data_in_IBUF(0),
      O => \g0_b7__7_n_0\
    );
\g0_b7__8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => mod_type_IBUF(0),
      I2 => data_in_IBUF(0),
      O => \g0_b7__8_n_0\
    );
\g0_b7__9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F666600FF3333"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(0),
      I2 => data_in_IBUF(4),
      I3 => data_in_IBUF(3),
      I4 => mod_type_IBUF(1),
      I5 => mod_type_IBUF(0),
      O => \g0_b7__9_n_0\
    );
g0_b8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9959"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      O => g0_b8_n_0
    );
\g0_b8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"655A95A6"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      I4 => data_in_IBUF(5),
      O => \g0_b8__0_n_0\
    );
\g0_b8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6663"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(1),
      I2 => data_in_IBUF(2),
      I3 => data_in_IBUF(3),
      O => \g0_b8__1_n_0\
    );
\g0_b8__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F0F0F0F0F0F070F"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(1),
      I2 => data_in_IBUF(2),
      I3 => data_in_IBUF(3),
      I4 => data_in_IBUF(4),
      I5 => data_in_IBUF(5),
      O => \g0_b8__2_n_0\
    );
\g0_b8__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9965"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      O => \g0_b8__3_n_0\
    );
\g0_b8__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A65599A"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      I4 => data_in_IBUF(5),
      O => \g0_b8__4_n_0\
    );
g0_b9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A6A"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      O => g0_b9_n_0
    );
\g0_b9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5566A666"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      I4 => data_in_IBUF(5),
      O => \g0_b9__0_n_0\
    );
\g0_b9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      O => \g0_b9__1_n_0\
    );
\g0_b9__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7969696969696169"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(1),
      I2 => data_in_IBUF(2),
      I3 => data_in_IBUF(3),
      I4 => data_in_IBUF(4),
      I5 => data_in_IBUF(5),
      O => \g0_b9__2_n_0\
    );
\g0_b9__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A56A"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      O => \g0_b9__3_n_0\
    );
\g0_b9__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66556A5A"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(4),
      I4 => data_in_IBUF(5),
      O => \g0_b9__4_n_0\
    );
\i_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFA0AFCFCFCFCF"
    )
        port map (
      I0 => \i_out_reg[0]_i_2_n_0\,
      I1 => \i_out[0]_i_3_n_0\,
      I2 => mod_type_IBUF(2),
      I3 => mod_type_IBUF(0),
      I4 => \i_out[0]_i_4_n_0\,
      I5 => mod_type_IBUF(1),
      O => \i_out[0]_i_1_n_0\
    );
\i_out[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8833BB338833B830"
    )
        port map (
      I0 => data_in_IBUF(2),
      I1 => mod_type_IBUF(0),
      I2 => data_in_IBUF(5),
      I3 => data_in_IBUF(3),
      I4 => data_in_IBUF(4),
      I5 => \i_out[11]_i_4_n_0\,
      O => \i_out[0]_i_3_n_0\
    );
\i_out[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      O => \i_out[0]_i_4_n_0\
    );
\i_out[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i_out_reg[10]_i_2_n_0\,
      I1 => \i_out[10]_i_3_n_0\,
      I2 => mod_type_IBUF(2),
      I3 => \i_out[10]_i_4_n_0\,
      I4 => mod_type_IBUF(1),
      I5 => \g0_b7__7_n_0\,
      O => \i_out[10]_i_1_n_0\
    );
\i_out[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"606F6F60"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => mod_type_IBUF(0),
      I3 => data_in_IBUF(5),
      I4 => data_in_IBUF(4),
      O => \i_out[10]_i_3_n_0\
    );
\i_out[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A05FAF60"
    )
        port map (
      I0 => data_in_IBUF(4),
      I1 => data_in_IBUF(0),
      I2 => mod_type_IBUF(0),
      I3 => data_in_IBUF(2),
      I4 => data_in_IBUF(3),
      O => \i_out[10]_i_4_n_0\
    );
\i_out[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_in_ready_IBUF,
      I1 => data_in_valid_IBUF,
      O => \i_out[11]_i_1_n_0\
    );
\i_out[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8C8C8C8CDCDCDC8"
    )
        port map (
      I0 => mod_type_IBUF(1),
      I1 => data_in_IBUF(0),
      I2 => mod_type_IBUF(0),
      I3 => data_in_IBUF(4),
      I4 => \i_out[11]_i_4_n_0\,
      I5 => data_in_IBUF(5),
      O => \i_out[11]_i_3_n_0\
    );
\i_out[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(0),
      O => \i_out[11]_i_4_n_0\
    );
\i_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i_out_reg[1]_i_2_n_0\,
      I1 => \i_out[1]_i_3_n_0\,
      I2 => mod_type_IBUF(2),
      I3 => \i_out[1]_i_4_n_0\,
      I4 => mod_type_IBUF(1),
      I5 => \g0_b7__7_n_0\,
      O => \i_out[1]_i_1_n_0\
    );
\i_out[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FFF4F00"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => mod_type_IBUF(0),
      I4 => \i_out[1]_i_5_n_0\,
      O => \i_out[1]_i_3_n_0\
    );
\i_out[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFFCB00"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(4),
      I2 => data_in_IBUF(2),
      I3 => mod_type_IBUF(0),
      I4 => data_in_IBUF(3),
      O => \i_out[1]_i_4_n_0\
    );
\i_out[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FF55AEAAAAAA"
    )
        port map (
      I0 => data_in_IBUF(5),
      I1 => data_in_IBUF(0),
      I2 => data_in_IBUF(2),
      I3 => data_in_IBUF(3),
      I4 => data_in_IBUF(1),
      I5 => data_in_IBUF(4),
      O => \i_out[1]_i_5_n_0\
    );
\i_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i_out_reg[2]_i_2_n_0\,
      I1 => \i_out[2]_i_3_n_0\,
      I2 => mod_type_IBUF(2),
      I3 => \i_out[10]_i_4_n_0\,
      I4 => mod_type_IBUF(1),
      I5 => \g0_b7__7_n_0\,
      O => \i_out[2]_i_1_n_0\
    );
\i_out[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7CFF7C00"
    )
        port map (
      I0 => data_in_IBUF(2),
      I1 => data_in_IBUF(0),
      I2 => data_in_IBUF(3),
      I3 => mod_type_IBUF(0),
      I4 => \i_out[5]_i_4_n_0\,
      O => \i_out[2]_i_3_n_0\
    );
\i_out[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data_in_IBUF(4),
      I1 => mod_type_IBUF(0),
      I2 => data_in_IBUF(3),
      I3 => mod_type_IBUF(1),
      I4 => \g0_b7__8_n_0\,
      O => \i_out[3]_i_2_n_0\
    );
\i_out[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b3__0_n_0\,
      I1 => g0_b3_n_0,
      I2 => mod_type_IBUF(1),
      I3 => data_in_IBUF(0),
      I4 => mod_type_IBUF(0),
      I5 => \i_out[3]_i_4_n_0\,
      O => \i_out[3]_i_3_n_0\
    );
\i_out[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_in_IBUF(5),
      I1 => data_in_IBUF(4),
      I2 => data_in_IBUF(3),
      O => \i_out[3]_i_4_n_0\
    );
\i_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i_out_reg[4]_i_2_n_0\,
      I1 => \i_out[4]_i_3_n_0\,
      I2 => mod_type_IBUF(2),
      I3 => \i_out[8]_i_4_n_0\,
      I4 => mod_type_IBUF(1),
      I5 => \g0_b7__8_n_0\,
      O => \i_out[4]_i_1_n_0\
    );
\i_out[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A009AFF9AFF9A00"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => mod_type_IBUF(0),
      I4 => data_in_IBUF(5),
      I5 => data_in_IBUF(4),
      O => \i_out[4]_i_3_n_0\
    );
\i_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i_out_reg[5]_i_2_n_0\,
      I1 => \i_out[5]_i_3_n_0\,
      I2 => mod_type_IBUF(2),
      I3 => \i_out[9]_i_4_n_0\,
      I4 => mod_type_IBUF(1),
      I5 => \g0_b7__7_n_0\,
      O => \i_out[5]_i_1_n_0\
    );
\i_out[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69FF6900"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => mod_type_IBUF(0),
      I4 => \i_out[5]_i_4_n_0\,
      O => \i_out[5]_i_3_n_0\
    );
\i_out[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00400000"
    )
        port map (
      I0 => data_in_IBUF(4),
      I1 => data_in_IBUF(1),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(2),
      I4 => data_in_IBUF(0),
      I5 => data_in_IBUF(5),
      O => \i_out[5]_i_4_n_0\
    );
\i_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i_out_reg[6]_i_2_n_0\,
      I1 => \i_out[6]_i_3_n_0\,
      I2 => mod_type_IBUF(2),
      I3 => \i_out[10]_i_4_n_0\,
      I4 => mod_type_IBUF(1),
      I5 => \g0_b7__8_n_0\,
      O => \i_out[6]_i_1_n_0\
    );
\i_out[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B88B4774"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => mod_type_IBUF(0),
      I2 => data_in_IBUF(5),
      I3 => data_in_IBUF(4),
      I4 => data_in_IBUF(3),
      O => \i_out[6]_i_3_n_0\
    );
\i_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i_out_reg[7]_i_2_n_0\,
      I1 => \i_out[7]_i_3_n_0\,
      I2 => mod_type_IBUF(2),
      I3 => \i_out[7]_i_4_n_0\,
      I4 => mod_type_IBUF(1),
      I5 => \g0_b7__7_n_0\,
      O => \i_out[7]_i_1_n_0\
    );
\i_out[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"590059FF59FF5900"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(3),
      I2 => data_in_IBUF(2),
      I3 => mod_type_IBUF(0),
      I4 => data_in_IBUF(5),
      I5 => data_in_IBUF(4),
      O => \i_out[7]_i_3_n_0\
    );
\i_out[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in_IBUF(4),
      I1 => mod_type_IBUF(0),
      I2 => data_in_IBUF(3),
      O => \i_out[7]_i_4_n_0\
    );
\i_out[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i_out_reg[8]_i_2_n_0\,
      I1 => \i_out[8]_i_3_n_0\,
      I2 => mod_type_IBUF(2),
      I3 => \i_out[8]_i_4_n_0\,
      I4 => mod_type_IBUF(1),
      I5 => \g0_b7__7_n_0\,
      O => \i_out[8]_i_1_n_0\
    );
\i_out[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FFFF5500BAAA00"
    )
        port map (
      I0 => mod_type_IBUF(0),
      I1 => data_in_IBUF(4),
      I2 => data_in_IBUF(1),
      I3 => \i_out[8]_i_5_n_0\,
      I4 => data_in_IBUF(0),
      I5 => data_in_IBUF(5),
      O => \i_out[8]_i_3_n_0\
    );
\i_out[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50AFAF90"
    )
        port map (
      I0 => data_in_IBUF(4),
      I1 => data_in_IBUF(0),
      I2 => mod_type_IBUF(0),
      I3 => data_in_IBUF(2),
      I4 => data_in_IBUF(3),
      O => \i_out[8]_i_4_n_0\
    );
\i_out[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in_IBUF(2),
      I1 => data_in_IBUF(3),
      O => \i_out[8]_i_5_n_0\
    );
\i_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \i_out_reg[9]_i_2_n_0\,
      I1 => \i_out[9]_i_3_n_0\,
      I2 => mod_type_IBUF(2),
      I3 => \i_out[9]_i_4_n_0\,
      I4 => mod_type_IBUF(1),
      I5 => \g0_b7__8_n_0\,
      O => \i_out[9]_i_1_n_0\
    );
\i_out[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F90909F606F6F60"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(2),
      I2 => mod_type_IBUF(0),
      I3 => data_in_IBUF(5),
      I4 => data_in_IBUF(4),
      I5 => data_in_IBUF(3),
      O => \i_out[9]_i_3_n_0\
    );
\i_out[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5F90"
    )
        port map (
      I0 => data_in_IBUF(4),
      I1 => data_in_IBUF(2),
      I2 => mod_type_IBUF(0),
      I3 => data_in_IBUF(3),
      O => \i_out[9]_i_4_n_0\
    );
\i_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => i_out_OBUF(0),
      O => i_out(0)
    );
\i_out_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => i_out_OBUF(10),
      O => i_out(10)
    );
\i_out_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => i_out_OBUF(11),
      O => i_out(11)
    );
\i_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => i_out_OBUF(1),
      O => i_out(1)
    );
\i_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => i_out_OBUF(2),
      O => i_out(2)
    );
\i_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => i_out_OBUF(3),
      O => i_out(3)
    );
\i_out_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => i_out_OBUF(4),
      O => i_out(4)
    );
\i_out_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => i_out_OBUF(5),
      O => i_out(5)
    );
\i_out_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => i_out_OBUF(6),
      O => i_out(6)
    );
\i_out_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => i_out_OBUF(7),
      O => i_out(7)
    );
\i_out_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => i_out_OBUF(8),
      O => i_out(8)
    );
\i_out_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => i_out_OBUF(9),
      O => i_out(9)
    );
\i_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_out[11]_i_1_n_0\,
      CLR => nreset_IBUF,
      D => \i_out[0]_i_1_n_0\,
      Q => i_out_OBUF(0)
    );
\i_out_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b0_n_0,
      I1 => \g0_b0__0_n_0\,
      O => \i_out_reg[0]_i_2_n_0\,
      S => mod_type_IBUF(0)
    );
\i_out_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_out[11]_i_1_n_0\,
      CLR => nreset_IBUF,
      D => \i_out[10]_i_1_n_0\,
      Q => i_out_OBUF(10)
    );
\i_out_reg[10]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b10_n_0,
      I1 => \g0_b10__0_n_0\,
      O => \i_out_reg[10]_i_2_n_0\,
      S => mod_type_IBUF(0)
    );
\i_out_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_out[11]_i_1_n_0\,
      CLR => nreset_IBUF,
      D => \i_out_reg[11]_i_2_n_0\,
      Q => i_out_OBUF(11)
    );
\i_out_reg[11]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b7__9_n_0\,
      I1 => \i_out[11]_i_3_n_0\,
      O => \i_out_reg[11]_i_2_n_0\,
      S => mod_type_IBUF(2)
    );
\i_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_out[11]_i_1_n_0\,
      CLR => nreset_IBUF,
      D => \i_out[1]_i_1_n_0\,
      Q => i_out_OBUF(1)
    );
\i_out_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b1_n_0,
      I1 => \g0_b1__0_n_0\,
      O => \i_out_reg[1]_i_2_n_0\,
      S => mod_type_IBUF(0)
    );
\i_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_out[11]_i_1_n_0\,
      CLR => nreset_IBUF,
      D => \i_out[2]_i_1_n_0\,
      Q => i_out_OBUF(2)
    );
\i_out_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b2_n_0,
      I1 => \g0_b2__0_n_0\,
      O => \i_out_reg[2]_i_2_n_0\,
      S => mod_type_IBUF(0)
    );
\i_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_out[11]_i_1_n_0\,
      CLR => nreset_IBUF,
      D => \i_out_reg[3]_i_1_n_0\,
      Q => i_out_OBUF(3)
    );
\i_out_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \i_out[3]_i_2_n_0\,
      I1 => \i_out[3]_i_3_n_0\,
      O => \i_out_reg[3]_i_1_n_0\,
      S => mod_type_IBUF(2)
    );
\i_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_out[11]_i_1_n_0\,
      CLR => nreset_IBUF,
      D => \i_out[4]_i_1_n_0\,
      Q => i_out_OBUF(4)
    );
\i_out_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b4_n_0,
      I1 => \g0_b4__0_n_0\,
      O => \i_out_reg[4]_i_2_n_0\,
      S => mod_type_IBUF(0)
    );
\i_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_out[11]_i_1_n_0\,
      CLR => nreset_IBUF,
      D => \i_out[5]_i_1_n_0\,
      Q => i_out_OBUF(5)
    );
\i_out_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b5_n_0,
      I1 => \g0_b5__0_n_0\,
      O => \i_out_reg[5]_i_2_n_0\,
      S => mod_type_IBUF(0)
    );
\i_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_out[11]_i_1_n_0\,
      CLR => nreset_IBUF,
      D => \i_out[6]_i_1_n_0\,
      Q => i_out_OBUF(6)
    );
\i_out_reg[6]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b6_n_0,
      I1 => \g0_b6__0_n_0\,
      O => \i_out_reg[6]_i_2_n_0\,
      S => mod_type_IBUF(0)
    );
\i_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_out[11]_i_1_n_0\,
      CLR => nreset_IBUF,
      D => \i_out[7]_i_1_n_0\,
      Q => i_out_OBUF(7)
    );
\i_out_reg[7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b7_n_0,
      I1 => \g0_b7__0_n_0\,
      O => \i_out_reg[7]_i_2_n_0\,
      S => mod_type_IBUF(0)
    );
\i_out_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_out[11]_i_1_n_0\,
      CLR => nreset_IBUF,
      D => \i_out[8]_i_1_n_0\,
      Q => i_out_OBUF(8)
    );
\i_out_reg[8]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b8_n_0,
      I1 => \g0_b8__0_n_0\,
      O => \i_out_reg[8]_i_2_n_0\,
      S => mod_type_IBUF(0)
    );
\i_out_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_out[11]_i_1_n_0\,
      CLR => nreset_IBUF,
      D => \i_out[9]_i_1_n_0\,
      Q => i_out_OBUF(9)
    );
\i_out_reg[9]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b9_n_0,
      I1 => \g0_b9__0_n_0\,
      O => \i_out_reg[9]_i_2_n_0\,
      S => mod_type_IBUF(0)
    );
\mod_type_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mod_type(0),
      O => mod_type_IBUF(0)
    );
\mod_type_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mod_type(1),
      O => mod_type_IBUF(1)
    );
\mod_type_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mod_type(2),
      O => mod_type_IBUF(2)
    );
nreset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => nreset,
      O => nreset_IBUF
    );
\q_out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFFFFFC0000"
    )
        port map (
      I0 => \g0_b0__1_n_0\,
      I1 => data_in_IBUF(1),
      I2 => \g0_b7__4_i_1_n_0\,
      I3 => data_in_IBUF(0),
      I4 => mod_type_IBUF(1),
      I5 => mod_type_IBUF(0),
      O => \q_out[0]_i_2_n_0\
    );
\q_out[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => \q_out_reg[0]_i_4_n_0\,
      I1 => mod_type_IBUF(1),
      I2 => data_in_IBUF(3),
      I3 => data_in_IBUF(2),
      I4 => mod_type_IBUF(0),
      I5 => \g0_b0__2_n_0\,
      O => \q_out[0]_i_3_n_0\
    );
\q_out[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \q_out[10]_i_2_n_0\,
      I1 => mod_type_IBUF(2),
      I2 => \q_out[10]_i_3_n_0\,
      I3 => mod_type_IBUF(1),
      I4 => mod_type_IBUF(0),
      I5 => data_in_IBUF(1),
      O => \q_out[10]_i_1_n_0\
    );
\q_out[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8BBBB8BB88888"
    )
        port map (
      I0 => \q_out_reg[10]_i_4_n_0\,
      I1 => mod_type_IBUF(1),
      I2 => data_in_IBUF(1),
      I3 => data_in_IBUF(3),
      I4 => mod_type_IBUF(0),
      I5 => \g0_b10__2_n_0\,
      O => \q_out[10]_i_2_n_0\
    );
\q_out[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B88B8B888B"
    )
        port map (
      I0 => \g0_b10__1_n_0\,
      I1 => mod_type_IBUF(0),
      I2 => data_in_IBUF(0),
      I3 => data_in_IBUF(2),
      I4 => data_in_IBUF(3),
      I5 => data_in_IBUF(1),
      O => \q_out[10]_i_3_n_0\
    );
\q_out[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8FFFFCDC80000"
    )
        port map (
      I0 => mod_type_IBUF(1),
      I1 => data_in_IBUF(1),
      I2 => mod_type_IBUF(0),
      I3 => g0_b11_n_0,
      I4 => mod_type_IBUF(2),
      I5 => \q_out[11]_i_2_n_0\,
      O => \q_out[11]_i_1_n_0\
    );
\q_out[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF001000"
    )
        port map (
      I0 => data_in_IBUF(0),
      I1 => data_in_IBUF(3),
      I2 => data_in_IBUF(2),
      I3 => mod_type_IBUF(1),
      I4 => data_in_IBUF(1),
      I5 => mod_type_IBUF(0),
      O => \q_out[11]_i_2_n_0\
    );
\q_out[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0C0AFC0"
    )
        port map (
      I0 => \g0_b1__1_n_0\,
      I1 => \g0_b7__3_n_0\,
      I2 => mod_type_IBUF(1),
      I3 => mod_type_IBUF(0),
      I4 => data_in_IBUF(1),
      O => \q_out[1]_i_2_n_0\
    );
\q_out[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \g0_b1__4_n_0\,
      I1 => mod_type_IBUF(0),
      I2 => \g0_b1__3_n_0\,
      I3 => mod_type_IBUF(1),
      I4 => \q_out[1]_i_4_n_0\,
      O => \q_out[1]_i_3_n_0\
    );
\q_out[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FFF4F00"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(3),
      I2 => data_in_IBUF(2),
      I3 => mod_type_IBUF(0),
      I4 => \g0_b1__2_n_0\,
      O => \q_out[1]_i_4_n_0\
    );
\q_out[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \q_out_reg[2]_i_2_n_0\,
      I1 => mod_type_IBUF(1),
      I2 => \q_out[2]_i_3_n_0\,
      I3 => mod_type_IBUF(2),
      I4 => \q_out[2]_i_4_n_0\,
      O => \q_out[2]_i_1_n_0\
    );
\q_out[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7CFF7C00"
    )
        port map (
      I0 => data_in_IBUF(3),
      I1 => data_in_IBUF(1),
      I2 => data_in_IBUF(2),
      I3 => mod_type_IBUF(0),
      I4 => \g0_b8__2_n_0\,
      O => \q_out[2]_i_3_n_0\
    );
\q_out[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00CC00AAFF3000"
    )
        port map (
      I0 => \g0_b10__1_n_0\,
      I1 => data_in_IBUF(0),
      I2 => \g0_b7__4_i_1_n_0\,
      I3 => mod_type_IBUF(1),
      I4 => mod_type_IBUF(0),
      I5 => data_in_IBUF(1),
      O => \q_out[2]_i_4_n_0\
    );
\q_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \g0_b3__2_n_0\,
      I1 => \g0_b3__1_n_0\,
      I2 => mod_type_IBUF(1),
      I3 => data_in_IBUF(1),
      I4 => mod_type_IBUF(0),
      I5 => \g0_b9__2_n_0\,
      O => \q_out[3]_i_2_n_0\
    );
\q_out[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA00CC003000"
    )
        port map (
      I0 => \g0_b8__1_n_0\,
      I1 => data_in_IBUF(0),
      I2 => \g0_b7__4_i_1_n_0\,
      I3 => mod_type_IBUF(1),
      I4 => data_in_IBUF(1),
      I5 => mod_type_IBUF(0),
      O => \q_out[4]_i_2_n_0\
    );
\q_out[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88BBBBBB88B8888"
    )
        port map (
      I0 => \q_out_reg[4]_i_4_n_0\,
      I1 => mod_type_IBUF(1),
      I2 => data_in_IBUF(1),
      I3 => \g0_b7__4_i_1_n_0\,
      I4 => mod_type_IBUF(0),
      I5 => \g0_b10__2_n_0\,
      O => \q_out[4]_i_3_n_0\
    );
\q_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_out_reg[5]_i_2_n_0\,
      I1 => \q_out[5]_i_3_n_0\,
      I2 => mod_type_IBUF(2),
      I3 => \g0_b7__4_n_0\,
      I4 => mod_type_IBUF(1),
      I5 => \q_out[5]_i_4_n_0\,
      O => \q_out[5]_i_1_n_0\
    );
\q_out[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69FF6900"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => mod_type_IBUF(0),
      I4 => \g0_b8__2_n_0\,
      O => \q_out[5]_i_3_n_0\
    );
\q_out[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mod_type_IBUF(0),
      I1 => data_in_IBUF(1),
      O => \q_out[5]_i_4_n_0\
    );
\q_out[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA00CC003000"
    )
        port map (
      I0 => \g0_b10__1_n_0\,
      I1 => data_in_IBUF(0),
      I2 => \g0_b7__4_i_1_n_0\,
      I3 => mod_type_IBUF(1),
      I4 => data_in_IBUF(1),
      I5 => mod_type_IBUF(0),
      O => \q_out[6]_i_2_n_0\
    );
\q_out[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88BBBBBB88B8888"
    )
        port map (
      I0 => \q_out_reg[6]_i_4_n_0\,
      I1 => mod_type_IBUF(1),
      I2 => data_in_IBUF(1),
      I3 => data_in_IBUF(2),
      I4 => mod_type_IBUF(0),
      I5 => \g0_b9__2_n_0\,
      O => \q_out[6]_i_3_n_0\
    );
\q_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8BBBB8BB88888"
    )
        port map (
      I0 => \q_out_reg[7]_i_3_n_0\,
      I1 => mod_type_IBUF(1),
      I2 => data_in_IBUF(1),
      I3 => \g0_b7__4_i_1_n_0\,
      I4 => mod_type_IBUF(0),
      I5 => \g0_b10__2_n_0\,
      O => \q_out[7]_i_2_n_0\
    );
\q_out[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00CC00AAFF3000"
    )
        port map (
      I0 => \g0_b8__1_n_0\,
      I1 => data_in_IBUF(0),
      I2 => \g0_b7__4_i_1_n_0\,
      I3 => mod_type_IBUF(1),
      I4 => mod_type_IBUF(0),
      I5 => data_in_IBUF(1),
      O => \q_out[8]_i_2_n_0\
    );
\q_out[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8BBBB8BB88888"
    )
        port map (
      I0 => \q_out_reg[8]_i_4_n_0\,
      I1 => mod_type_IBUF(1),
      I2 => data_in_IBUF(1),
      I3 => \g0_b7__4_i_1_n_0\,
      I4 => mod_type_IBUF(0),
      I5 => \g0_b8__2_n_0\,
      O => \q_out[8]_i_3_n_0\
    );
\q_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_out_reg[9]_i_2_n_0\,
      I1 => \q_out[9]_i_3_n_0\,
      I2 => mod_type_IBUF(2),
      I3 => \g0_b7__4_n_0\,
      I4 => mod_type_IBUF(1),
      I5 => \q_out[9]_i_4_n_0\,
      O => \q_out[9]_i_1_n_0\
    );
\q_out[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96FF9600"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => data_in_IBUF(2),
      I2 => data_in_IBUF(3),
      I3 => mod_type_IBUF(0),
      I4 => \g0_b9__2_n_0\,
      O => \q_out[9]_i_3_n_0\
    );
\q_out[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_in_IBUF(1),
      I1 => mod_type_IBUF(0),
      O => \q_out[9]_i_4_n_0\
    );
\q_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_out_OBUF(0),
      O => q_out(0)
    );
\q_out_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_out_OBUF(10),
      O => q_out(10)
    );
\q_out_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_out_OBUF(11),
      O => q_out(11)
    );
\q_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_out_OBUF(1),
      O => q_out(1)
    );
\q_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_out_OBUF(2),
      O => q_out(2)
    );
\q_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_out_OBUF(3),
      O => q_out(3)
    );
\q_out_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_out_OBUF(4),
      O => q_out(4)
    );
\q_out_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_out_OBUF(5),
      O => q_out(5)
    );
\q_out_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_out_OBUF(6),
      O => q_out(6)
    );
\q_out_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_out_OBUF(7),
      O => q_out(7)
    );
\q_out_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_out_OBUF(8),
      O => q_out(8)
    );
\q_out_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => q_out_OBUF(9),
      O => q_out(9)
    );
\q_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_out[11]_i_1_n_0\,
      CLR => nreset_IBUF,
      D => \q_out_reg[0]_i_1_n_0\,
      Q => q_out_OBUF(0)
    );
\q_out_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q_out[0]_i_2_n_0\,
      I1 => \q_out[0]_i_3_n_0\,
      O => \q_out_reg[0]_i_1_n_0\,
      S => mod_type_IBUF(2)
    );
\q_out_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__3_n_0\,
      I1 => \g0_b0__4_n_0\,
      O => \q_out_reg[0]_i_4_n_0\,
      S => mod_type_IBUF(0)
    );
\q_out_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_out[11]_i_1_n_0\,
      CLR => nreset_IBUF,
      D => \q_out[10]_i_1_n_0\,
      Q => q_out_OBUF(10)
    );
\q_out_reg[10]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b10__3_n_0\,
      I1 => \g0_b10__4_n_0\,
      O => \q_out_reg[10]_i_4_n_0\,
      S => mod_type_IBUF(0)
    );
\q_out_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_out[11]_i_1_n_0\,
      CLR => nreset_IBUF,
      D => \q_out[11]_i_1_n_0\,
      Q => q_out_OBUF(11)
    );
\q_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_out[11]_i_1_n_0\,
      CLR => nreset_IBUF,
      D => \q_out_reg[1]_i_1_n_0\,
      Q => q_out_OBUF(1)
    );
\q_out_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q_out[1]_i_2_n_0\,
      I1 => \q_out[1]_i_3_n_0\,
      O => \q_out_reg[1]_i_1_n_0\,
      S => mod_type_IBUF(2)
    );
\q_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_out[11]_i_1_n_0\,
      CLR => nreset_IBUF,
      D => \q_out[2]_i_1_n_0\,
      Q => q_out_OBUF(2)
    );
\q_out_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__1_n_0\,
      I1 => \g0_b2__2_n_0\,
      O => \q_out_reg[2]_i_2_n_0\,
      S => mod_type_IBUF(0)
    );
\q_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_out[11]_i_1_n_0\,
      CLR => nreset_IBUF,
      D => \q_out_reg[3]_i_1_n_0\,
      Q => q_out_OBUF(3)
    );
\q_out_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b7__6_n_0\,
      I1 => \q_out[3]_i_2_n_0\,
      O => \q_out_reg[3]_i_1_n_0\,
      S => mod_type_IBUF(2)
    );
\q_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_out[11]_i_1_n_0\,
      CLR => nreset_IBUF,
      D => \q_out_reg[4]_i_1_n_0\,
      Q => q_out_OBUF(4)
    );
\q_out_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q_out[4]_i_2_n_0\,
      I1 => \q_out[4]_i_3_n_0\,
      O => \q_out_reg[4]_i_1_n_0\,
      S => mod_type_IBUF(2)
    );
\q_out_reg[4]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__1_n_0\,
      I1 => \g0_b4__2_n_0\,
      O => \q_out_reg[4]_i_4_n_0\,
      S => mod_type_IBUF(0)
    );
\q_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_out[11]_i_1_n_0\,
      CLR => nreset_IBUF,
      D => \q_out[5]_i_1_n_0\,
      Q => q_out_OBUF(5)
    );
\q_out_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b5__1_n_0\,
      I1 => \g0_b5__2_n_0\,
      O => \q_out_reg[5]_i_2_n_0\,
      S => mod_type_IBUF(0)
    );
\q_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_out[11]_i_1_n_0\,
      CLR => nreset_IBUF,
      D => \q_out_reg[6]_i_1_n_0\,
      Q => q_out_OBUF(6)
    );
\q_out_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q_out[6]_i_2_n_0\,
      I1 => \q_out[6]_i_3_n_0\,
      O => \q_out_reg[6]_i_1_n_0\,
      S => mod_type_IBUF(2)
    );
\q_out_reg[6]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b6__1_n_0\,
      I1 => \g0_b6__2_n_0\,
      O => \q_out_reg[6]_i_4_n_0\,
      S => mod_type_IBUF(0)
    );
\q_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_out[11]_i_1_n_0\,
      CLR => nreset_IBUF,
      D => \q_out_reg[7]_i_1_n_0\,
      Q => q_out_OBUF(7)
    );
\q_out_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b7__5_n_0\,
      I1 => \q_out[7]_i_2_n_0\,
      O => \q_out_reg[7]_i_1_n_0\,
      S => mod_type_IBUF(2)
    );
\q_out_reg[7]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b7__1_n_0\,
      I1 => \g0_b7__2_n_0\,
      O => \q_out_reg[7]_i_3_n_0\,
      S => mod_type_IBUF(0)
    );
\q_out_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_out[11]_i_1_n_0\,
      CLR => nreset_IBUF,
      D => \q_out_reg[8]_i_1_n_0\,
      Q => q_out_OBUF(8)
    );
\q_out_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q_out[8]_i_2_n_0\,
      I1 => \q_out[8]_i_3_n_0\,
      O => \q_out_reg[8]_i_1_n_0\,
      S => mod_type_IBUF(2)
    );
\q_out_reg[8]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b8__3_n_0\,
      I1 => \g0_b8__4_n_0\,
      O => \q_out_reg[8]_i_4_n_0\,
      S => mod_type_IBUF(0)
    );
\q_out_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_out[11]_i_1_n_0\,
      CLR => nreset_IBUF,
      D => \q_out[9]_i_1_n_0\,
      Q => q_out_OBUF(9)
    );
\q_out_reg[9]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b9__3_n_0\,
      I1 => \g0_b9__4_n_0\,
      O => \q_out_reg[9]_i_2_n_0\,
      S => mod_type_IBUF(0)
    );
end STRUCTURE;
